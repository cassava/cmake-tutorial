#include <iostream>
#include <optional>
#include <string>

#include <mylib.hpp>

int main() {
    std::optional<std::string> who{};

    std::cout << "Hello " << (who ? *who : "world") << "!" << std::endl;

    std::cout << "Answer is " << mylib::get_answer() << "." << std::endl;

    std::cout << "Seconds since 1970 are " << mylib::get_seconds() << "." << std::endl;

    return 0;
}
