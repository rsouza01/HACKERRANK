/*
  Insert Node at the end of a linked list 
  head pointer input could be NULL as well for empty list
  Node is defined as 
  struct Node
  {
     int data;
     struct Node *next;
  }
*/
Node* Insert(Node *head,int data)
{
    Node* returnNode = NULL;
    
    Node* newNode = new Node();
    newNode->data = data;
    newNode->data = data;
    newNode->next = NULL;
    
    if(head == NULL) {
        returnNode = newNode;
    } else {
        Node* node = head;
        while(node->next != NULL) {
            node = node->next;
        }

        node->next = newNode;
        
        returnNode = head;
    }

    return returnNode;
}
