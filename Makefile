CC=nvcc
#ARCH=-arch=sm_52
SOURCES=main.cu
CFLAGS = --std=c++03
OBJECTS=$(SOURCES:.cpp=.o)
EXECUTABLE=vector_add
all: $(SOURCES) $(EXECUTABLE)
    
$(EXECUTABLE): $(OBJECTS) 
	$(CC) $(ARCH) $(CFLAGS) $(OBJECTS) -o $@
.PHONY : clean
clean :
	-rm $(EXECUTABLE)

