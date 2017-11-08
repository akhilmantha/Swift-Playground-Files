//
//  main.cpp
//  file operations
//
//  Created by akhil mantha on 13/05/17.
//  Copyright © 2017 akhil mantha. All rights reserved.
//

#include <iostream>
#include <fstream>
using namespace std;

int main(int argc, const char * argv[]) {
    
    char str[10];
    ofstream f_out("foo.txt");
    f_out<<"this text will now be inside foo.txt";
    f_out.close();
    ifstream f_in("foo.txt");
    f_in>> str;
    cout<<str;
    std::cout << "Hello, World!\n";
    return 0;
}
