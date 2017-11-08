//
//  main.cpp
//  stack template
//
//  Created by akhil mantha on 13/05/17.
//  Copyright © 2017 akhil mantha. All rights reserved.
//
//#ifndef _StackClassH_
//#define _StackClassH_
#include <iostream>
#include <assert.h>

template <class Elem>
class Stack
{
    public :
    Stack(int MaxSize = 100);
    Stack(const Stack<Elem> &OtherStack);
    ~Stack(void);
    //member functions
    inline void push(const Elem &Item);
    inline Elem pop(void);
    inline const Elem &Peek(int Depth) const;
    
    protected:
    Elem *Data;
    int CurrElemNum;
    const int Max_Num;
    
    
};
//stack constructor function
template <class Elem>
Stack<Elem>::Stack(int MaxSize) : Max_Num(MaxSize)
{
    Data = new Elem[Max_Num];
    CurrElemNum = 0;
    
    
}

//stack destructor function
template <class Elem>
Stack<Elem>::~Stack(void)
{
    delete [] Data;
    
}
//push() function
template <class Elem>
inline void Stack<Elem>:: push(const Elem &Item)
{
    //error check with assert
    assert(CurrElemNum < Max_Num);
    Data[CurrElemNum++] = Item;
    
}
//pop() function
template <class Elem>
inline Elem Stack<Elem>:: pop(void)
{
    //error check using assert
    
    assert(CurrElemNum > 0);
    return Data[--CurrElemNum];
    
    
}
//peek() function
template <class Elem>
inline const Elem &Stack<Elem>:: Peek(int Depth) const
{
    //error check using assert
    assert(Depth < CurrElemNum);
    return Data[CurrElemNum - (Depth+1)];
}

int main(int argc, const char * argv[]) {
    // insert code here...
    std::cout << "Hello, World!\n";
    return 0;
}
