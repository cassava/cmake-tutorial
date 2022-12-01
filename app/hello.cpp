#include <iostream>
#include <optional>
#include <string>

#include <mylib.hpp>

int main() {
    std::optional<std::string> who{};

    std::cout << "Hello " << (who ? *who : "world") << "!" << std::endl;

    std::cout << "Answer is " << mylib::get_answer() << "." << std::endl;

    return 0;
}
