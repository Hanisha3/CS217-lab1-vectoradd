#include <stdio.h>

__global__ void VecAdd(int n, const float *A, const float *B, float* C) {

    /********************************************************************
     *
     * Compute C = A + B
     *   where A is a (1 * n) vector
     *   where B is a (1 * n) vector
     *   where C is a (1 * n) vector
     *
     ********************************************************************/
     
    /*************************************************************************/
    // INSERT CODE HERE
	int i = blockIdx.x * blockDim.x + threadIdx.x;

	if(i < n )	
		C[i] = A[i] + B[i];


    /*************************************************************************/
	 
}

void basicVecAdd( float *A,  float *B, float *C, int n)
{

    // Initialize thread block and kernel grid dimensions ---------------------

    const unsigned int BLOCK_SIZE = 512; 

    /*************************************************************************/
    // INSERT CODE HERE
	const unsigned int GRID_SIZE = (int) ceil((float)n / BLOCK_SIZE);

	VecAdd<<<GRID_SIZE, BLOCK_SIZE>>>(n, A, B, C); 

    /*************************************************************************/
}

