class Node:
    def __init__(self,key):
        self.left = None
        self.right = None
        self.val = key

def insert(root,node):
    if root is None:
        root=node
    else:
        if root.val<node.val:
            if root.right is None:
                root.right= node
            else:
                insert(root.right,node)
        else:
            if root.left is None:
                root.left=node
            else:
                insert(root.left,node)

def search(root,value):
    if root is None:
        print("Not found")
        return
    if(root.val==value):
        print("Found")
        return
    elif(root.val<value):
        search(root.right,value)
    else:
        search(root.left,value)

def inorder(root):
    if root:
        inorder(root.left)
        print(root.val)
        inorder(root.right)

n=int(input("Enter number of nodes: "))
key=int(input("Enter value of root"))
root = Node(key)
for i in range(1,n):
    key=int(input("Enter the value: "))
    insert(root,Node(key))
inorder(root)
val=int(input("Enter value to find: "))
search(root,val)
val=int(input("Enter value to find: "))
search(root,val)
