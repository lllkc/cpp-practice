#include <algorithm>
#include <iostream>
#include <set>
#include <string>
#include <vector>

bool icompare_pred(unsigned char a, unsigned char b)
{
    return std::tolower(a) == std::tolower(b);
}

bool icompare(std::string const& a, std::string const& b)
{
    if (a.length() == b.length()) {
        return std::equal(b.begin(), b.end(),
            a.begin(), icompare_pred);
    } else {
        return false;
    }
}
struct StringCompIgnoreCase {
    bool operator()(const std::string s1, const std::string s2) const
    {
        return icompare(s1, s2);
    }
};

int main(int argc, char* argv[])
{
    // do not use vector<bool>!!
    std::vector<bool> v;
    v.emplace_back(true);
    //bool* pb = &v[0]; can not compile

    std::set<std::string, StringCompIgnoreCase> s;
    s.insert("Persephone");
    s.insert("persephone");
    std::cout << "set.find: " << (s.find("Persephone") == s.end()) << std::endl;
    std::cout << "std::find: " << (std::find(s.begin(), s.end(), "Persephone") == s.end()) << std::endl;
    return 0;
}
