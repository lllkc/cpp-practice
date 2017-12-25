#include <algorithm>
#include <iostream>

using namespace std;

int main() {
    vector<int> numbers;

    numbers.emplace_back(10);
    numbers.emplace_back(20);
    numbers.emplace_back(10);
    numbers.emplace_back(15);
    numbers.emplace_back(12);
    numbers.emplace_back(7);
    numbers.emplace_back(9);

    cout << "Befor calling remove" << endl
         << "Numbers {";
    for (auto it = numbers.begin(); it != numbers.end(); it++) {
        cout << *it << "\t";
    }

    cout << " }\n"
         << endl;
    auto ret = std::remove(numbers.begin(), numbers.end(), 10);
    cout << "After calling remove" << endl
         << "Numbers { ";
    for (auto it = numbers.begin(); it != numbers.end(); it++) {
        cout << *it << "\t";
    }
    cout << " }\n"
         << endl;
    cout << "Total number of elements removed from Numbers = "
         << numbers.end() - ret << endl;

    cout << "Valid elements of Numbers { ";

    for (auto it = numbers.begin(); it != ret; it++) {
        cout << *it << "\t";
    }
    cout << "}\n"
         << endl;

    numbers.clear();
    numbers.emplace_back(10);
    numbers.emplace_back(20);
    numbers.emplace_back(10);
    numbers.emplace_back(15);
    numbers.emplace_back(12);
    numbers.emplace_back(7);
    numbers.emplace_back(9);
    cout << "numbers size = " << numbers.size() << endl;
    numbers.erase(remove(numbers.begin(), numbers.end(), 10), numbers.end());

    cout << "[after erase]numbers size = " << numbers.size() << endl;
    return 0;
}
