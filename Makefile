CXXFLAGS += -Wall -pedantic

target_hello := hello
target_hello_objects := hello.o

${target_hello}: ${target_hello_objects}
	${CXX} -o $@ $<

%.o: %.cpp
	${CXX} -c ${CXXFLAGS} -o $@ $<

.PHONY: clean
clean:
	for file in ${target_hello_objects} ${target_hello}; do \
		[ -f $$file ] && rm $$file; \
	done
