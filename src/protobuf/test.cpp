#include <fstream>
#include <iostream>
#include "test.pb.h"

using namespace std;
int main(int argc, char *argv[])
{
      

    test::resp data;
    auto* Foo = data.add_data();
    Foo->set_name("test");
    Foo->set_money(111);
    data.add_data();
    fstream output("test.txt", ios::out | ios::trunc | ios::binary);
    if (!data.SerializeToOstream(&output)) {
      cout << "Failed to write address book." << endl;
      return -1;
    }
    output.close();
    
    cout<<"============="<<endl;
    test::resp rData;
    ifstream input("test.txt", ios::in | ios::binary);
    if (!rData.ParseFromIstream(&input)) {
      cout << "Failed to parse address book." << endl;
      return -1;
    }
    cout<<"data size:"<<rData.data_size()<<endl;
    for(auto& d:rData.data())
    {
        cout<<d.has_name()<<"\t"<<d.has_money()<<endl;
        cout<<d.name()<<"\t"<<d.money()<<endl;
    }
    return 0;
}

