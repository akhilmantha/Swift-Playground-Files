//
//  main.cpp
//  binarytree
//
//  Created by akhil mantha on 13/05/17.
//  Copyright © 2017 akhil mantha. All rights reserved.
//

#include <iostream>

using namespace std;
struct node
{
    int key_value;
    node *left;
    node *right;
    
};

class btree
{
    public :
    btree();
    ~btree();
    
    //member functions
    void insert(int key);
    node *search(int key);
    void destroy_tree();
    
     private :
    
    void insert(int key , node *leaf);
    void destroy_tree(node *leaf);
    node *search(int key, node *leaf);
    
    node *root;
};

btree::~btree()
{
    destroy_tree();
}
void btree:: destroy_tree(node *leaf)
{
    if (leaf != NULL)
    {
        destroy_tree(leaf->left);
        destroy_tree(leaf->right);
        delete leaf;
    }
}
void btree:: insert(int key, node *leaf)
{
    if (key<leaf->key_value)
    {
        if(leaf->left != NULL)
            insert(key,leaf->left);
        else{
            leaf->left = new node;
            leaf->left->key_value = key;
            leaf->left->left = NULL;
            leaf->left->right = NULL;
            
        }
    }
    else if(key>leaf->key_value)
    {
        if(leaf->right !=NULL)
            insert(key, leaf->right);
    }
    else{
        leaf->right = new node;
        leaf->right->key_value = key;
        leaf->right->left = NULL;
        leaf->right->right = NULL;
    }
}


int main(int argc, const char * argv[]) {
    // insert code here...
    cout << "Hello, World!\n";
    
    return 0;
}
