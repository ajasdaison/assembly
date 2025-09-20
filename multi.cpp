#include <omp.h>

#include <algorithm>

#include "matmul.hpp"

constexpr int kBlock = 128;

void matmul_3d_vect_omp(const float* a, const float* b, float* result, int m,
                        int n, int p) {
#pragma omp parallel for collapse(2) schedule(dynamic) default(none) \
    shared(a, b, result, m, n, p)
  for (int ii = 0; ii < m; ii += kBlock) {
    for (int kk = 0; kk < n; kk += kBlock) {
      for (int jj = 0; jj < p; jj += kBlock) {
        for (int i = ii; i < std::min(ii + kBlock, m); i++) {
          for (int k = kk; k < std::min(kk + kBlock, n); k++) {
            float cache = a[(i * n) + k];

            int j = jj;
            for (; j + 4 <= std::min(jj + kBlock, p); j += 4) {
              result[(i * p) + j + 0] += cache * b[(k * p) + j + 0];
              result[(i * p) + j + 1] += cache * b[(k * p) + j + 1];
              result[(i * p) + j + 2] += cache * b[(k * p) + j + 2];
              result[(i * p) + j + 3] += cache * b[(k * p) + j + 3];
            }
            for (; j < std::min(jj + kBlock, p); j++) {
              result[(i * p) + j] += cache * b[(k * p) + j];
            }
          }
        }
      }
    }
  }
}
