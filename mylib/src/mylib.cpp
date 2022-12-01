#include <mylib.hpp>

#include <boost/chrono.hpp>

namespace mylib {

int get_answer() {
    return 42;
}

uint64_t get_seconds() {
    boost::chrono::system_clock clock;
    auto current = clock.now();
    return static_cast<uint64_t>(clock.to_time_t(current));
}

}
