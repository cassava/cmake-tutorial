CXXFLAGS += -Wall -pedantic

hello: hello.cpp
	${CXX} ${CXXFLAGS} -o $@ $<
