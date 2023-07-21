__global__ void addArrays(float* a, float* b, float* result, int size) {
    int tid = blockIdx.x * blockDim.x + threadIdx.x;
    if (tid < size) {
        result[tid] = a[tid] + b[tid];
    }
}
