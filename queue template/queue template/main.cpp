//
//  main.cpp
//  queue template
//
//  Created by akhil mantha on 15/05/17.
//  Copyright © 2017 akhil mantha. All rights reserved.
//

#include <iostream>
#include<assert.h>
template <class Elem>
class Queue{
  
public:
    Queue(int Max_Size = 100);
    Queue(const Queue<Elem> &OtherQueue);
    ~Queue(void);
    
    void Enqueue(const Elem &Item);
    Elem Dequeue(void);
    inline int ElemNum(void);
    
protected:
    
    Elem *Data;
    const int Max_Num;
    int Beginning , End ;
    int ElemCount;
    
};

template <class Elem>
Queue<Elem>:: Queue(int Max_Size):Max_Num(Max_Size)
{
    Data = new Elem(Max_Num+1);
    Beginning = 0;
    End = 0;
    ElemCount = 0;
}
template <class Elem>
Queue<Elem>:: Queue(const Queue &otherQueue):Max_Num(otherQueue.Max_NUM)
{
    Beginning = otherQueue.Beginning;
    End = otherQueue.End;
    ElemCount = otherQueue.ElemCount;
}

int main(int argc, const char * argv[]) {
    // insert code here...
    std::cout << "Hello, World!\n";
    return 0;
}
