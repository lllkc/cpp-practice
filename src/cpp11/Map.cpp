#include <functional>
#include <iostream>
#include <string>
#include <unordered_map>

struct KEY {
    int first;
    int second;

    KEY(int f, int s)
        : first(f)
        , second(s)
    {
    }
};
struct KeyHash {
    std::size_t operator()(const KEY& key) const
    {
        using std::size_t;
        using std::hash;

        return (std::hash<int>()(key.first) ^ (std::hash<int>()(key.second)));
    }
};

struct KeyEqual {
    bool operator()(const KEY& lhs, const KEY& rhs) const
    {
        return lhs.first == rhs.first && lhs.second == rhs.second;
    }
};

int main()
{
    std::unordered_map<KEY, std::string, KeyHash, KeyEqual> map = {
        { { 1, 2 }, "one" },
        { { 11, 12 }, "two" },
    };

    KEY key(11, 12);
    auto iter = map.find(key);
    if (iter != map.end()) {
        std::cout << iter->second << std::endl;
    }

    return 0;
}
