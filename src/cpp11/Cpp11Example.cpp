#include <algorithm>
#include <iostream>
#include <map>
#include <memory>
#include <string>
#include <vector>

using namespace std;
class B {
public:
    virtual void f(int) const { std::cout << "B::f " << std::endl; }
};

class D : public B {
public:
    virtual void f(int) const { std::cout << "D::f" << std::endl; }
};

struct tt {
    int i;
    string s;
};

void foo(int* p)
{
    std::cout << *p << std::endl;
}

template <typename T, size_t Size>
class Vector_ {
    static_assert(Size >= 3, "Size is too small");
    T _points[Size];
};

int c_function(int a, int b)
{
    return a + b;
}

// 函数对象
class Functor {
public:
    int operator()(int a, int b)
    {
        return a + b;
    }
};

int main()
{
    /**
     * auto
     */
    auto i = 12;
    auto j = 14;
    cout << i << "\t" << j << endl;

    /**
     * nullptr
     */
    int* p = nullptr;
    int* w = NULL;
    if (p == w) {
        cout << "equal!" << endl;
    }

    /**
     * Range-based for loops
     */
    map<string, vector<int> > map;
    vector<int> v;
    v.push_back(1);
    v.push_back(2);
    v.push_back(3);
    map["one"] = v;

    for (const auto& kvp : map) {
        cout << kvp.first << endl;
        for (auto v : kvp.second) {
            cout << v << endl;
        }
    }

    int arr[] = { 1, 2, 3, 4, 5 };
    for (int& e : arr) {
        e = e * e;
    }
    for (int& e : arr) {
        cout << e << "\t";
    }
    cout << endl;

    /**
     * override and final
     * override，表示函数应当重写基类中的虚函数,否则将触发一个编译错误。
     * final，表示派生类不应当重写这个虚函数。
     */

    /**
     * Strongly-typed enums 强类型枚举
     */
    enum class Options { None,
        One,
        All };
    Options o = Options::All;

    B* pp = new D();
    pp->f(1);

    /**
     * Smart Pointers 智能指针
     *
     * unique_ptr/shared_ptr/weak_ptr
     */
    std::unique_ptr<int> p1(new int(42));
    std::unique_ptr<int> p2 = std::move(p1);
    if (p1)
        foo(p1.get());

    (*p2)++;

    if (p2)
        foo(p2.get());

    std::shared_ptr<int> p3(new int(4)); // auto p3 = std::make_shared<int>(4);
    std::shared_ptr<int> p4 = p3;
    ++(*p3);
    foo(p4.get());

    auto p5 = std::make_shared<int>(33);
    std::weak_ptr<int> wp = p5;
    {
        auto sp = wp.lock();
        cout << *sp << endl;
    }
    p5.reset();
    if (wp.expired())
        cout << "expired" << endl;

    /**
     * Lambdas
     */
    vector<int> v2;
    v2.push_back(1);
    v2.push_back(2);
    v2.push_back(3);

    for_each(std::begin(v2), std::end(v2), [](int n) { cout << n << endl; });
    auto is_odd = [](int n) { return n % 2 == 1; };
    auto pos = std::find_if(std::begin(v2), std::end(v2), is_odd);
    if (pos != std::end(v2))
        cout << *pos << endl;

    /**
     * 非成员begin()和end()
     */
    int arr2[] = { 1, 2, 3 };
    std::for_each(std::begin(arr2), std::end(arr2), [](int n) { std::cout << n << std::endl; });

    auto pos2 = std::find_if(std::begin(arr2), std::end(arr2), is_odd);
    if (pos2 != std::end(arr2))
        std::cout << *pos2 << std::endl;

    /**
     * static_assert和 type traits
     */
    Vector_<int, 3> v3;
    static_assert(2 < 3, "Size is too small");

    /**
     * std::function
     */
    Functor functor;
    std::vector<std::function<int(int, int)> > callables;
    callables.push_back(c_function);
    callables.push_back(functor);
    callables.push_back([](int x, int y) -> int {
        return x + y;
    });
    for (const auto& e : callables) {
        cout << e(3, 4) << endl;
    }

    std::vector<tt> tv = {
        {.i = 1, .s = "test" }
    };
    std::cout << "tv size()=" << tv.size() << std::endl;
    return 0;
}
