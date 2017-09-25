#include <iostream>
#include <string>

class People {
public:
    std::string name_;
    People(std::string&& name)
        : name_(std::move(name)){};
};
int main()
{
    People a("Alice");
    std::string bn = "bob";
    People b(std::move(bn));
    std::cout << bn << std::endl;
    std::cout << b.name_ << std::endl;
    std::cout << "People name addr: " << &b.name_ << std::endl;
    std::cout << "bn name addr: " << &bn << std::endl;

    return 0;
}
