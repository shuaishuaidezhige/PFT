#include "seidel_kernel.hu"
__global__ void kernel0(float *a, float *b)
{
    int b0 = blockIdx.y, b1 = blockIdx.x;
    int t0 = threadIdx.y, t1 = threadIdx.x;

    #define ppcg_min(x,y)    ({ __typeof__(x) _x = (x); __typeof__(y) _y = (y); _x < _y ? _x : _y; })
    if (32 * b0 + t0 <= 1021)
      for (int c3 = t1; c3 <= ppcg_min(31, -32 * b1 + 1021); c3 += 16)
        b[(32 * b0 + t0 + 1) * 1024 + (32 * b1 + c3 + 1)] = (((((((((a[(32 * b0 + t0) * 1024 + (32 * b1 + c3)] + a[(32 * b0 + t0) * 1024 + (32 * b1 + c3 + 1)]) + a[(32 * b0 + t0) * 1024 + (32 * b1 + c3 + 2)]) + a[(32 * b0 + t0 + 1) * 1024 + (32 * b1 + c3)]) + a[(32 * b0 + t0 + 1) * 1024 + (32 * b1 + c3 + 1)]) + a[(32 * b0 + t0 + 1) * 1024 + (32 * b1 + c3 + 2)]) + a[(32 * b0 + t0 + 2) * 1024 + (32 * b1 + c3)]) + a[(32 * b0 + t0 + 2) * 1024 + (32 * b1 + c3 + 1)]) + a[(32 * b0 + t0 + 2) * 1024 + (32 * b1 + c3 + 2)]) / 9.0);
}
