#include <iostream>
#include <optional>
#include <string>

int main() {
    std::optional<std::string> who{};

    std::cout << "Hello " << (who ? *who : "world") << "!" << std::endl;

    return 0;
}
