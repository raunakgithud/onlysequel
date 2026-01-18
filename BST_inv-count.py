'''

                            Online Python Compiler.
                Code, Compile, Run and Debug python program online.
Write your code in this editor and press "Run" button to execute it.

'''

print("Hello World")

print('Array')

#searching in bst 

def search_BST(root,key):
    if root is None or root.value == key:
        return root
    elif key < root.value:
        return search_BST(root.left,key)
    else:
        return search_BST(root.right,key)
        
        

class node:
    def __init__(self,key):
        self.key = key
        self.left = None
        self.right = None
        
    def insert(root,key):
        if root is None:
            return node(key)
        elif key > root:
            root.right = insert(root,key)
        else:
            root.left = insert(root,key)
        return root
        
    def search_BST(root,key):
        if root is None or root == key:
            return root
        elif key < root.value:
            return search_BST(root.left,key)
        else:
            return search_BST(root.right,key)
            
            
# invertion count


def merge(arr,temp,left,mid,right):
    i = left
    j = mid + 1 
    k = left
    inv_c = 0 
    mid = len(arr)//2 
    temp = []
    
    while i < mid and j < right:
        if arr[i] < arr[j]:
            temp[k] = arr[i]
            i += 1 
            k += 1 
        else:
            temp[k] = arr[j]
            j += 1 
            k += 1 
            inv_c += (mid - i + 1)
        
    while i < mid:
        temp[k] = arr[i]
        k += 1 
        i += 1 
    while j < right:
        temp[k] = arr[j]
        k += 1 
        j += 1 
        
    for idx in range(left,right+1):
        arr[idx] = temp[idx]
    return inv_c
    
    
            
            
            
            


            




        
        
        
            