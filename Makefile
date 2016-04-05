NVCC_FLAGS=--std=c++11 -arch=sm_50 -lineinfo -Xptxas -v
NVCC=nvcc

tensor: tensor.cu
	${NVCC} ${NVCC_FLAGS} -o $@ $^

clean:
	$(RM) tensor
