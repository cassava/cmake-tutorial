CXXFLAGS += -Wall -pedantic

target_hello := hello
target_hello_objects := hello.o

${target_hello}: ${target_hello_objects}
	${CXX} -o $@ $<

%.o: %.cpp
	${CXX} -c ${CXXFLAGS} -o $@ $<
