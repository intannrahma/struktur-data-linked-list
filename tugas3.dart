class Node<T> {
  T? nodeValue;
  Node<T>? next;

  Node();
  Node.withValue(this.nodeValue);
}

class SingleLinkedList {
  Node<int>? head;

  // Mencari node yang memiliki nilai 'data'
  Node<int>? findNode(int data) {
    Node<int>? current = head;

    while (current != null) {
      if (current.nodeValue == data) {
        return current; // Node ditemukan
      }
      current = current.next;
    }

    return null; // Node tidak ditemukan
  }
}

void main() {
  var list = SingleLinkedList();
  list.head = Node<int>.withValue(10);
  list.head!.next = Node<int>.withValue(20);
  list.head!.next!.next = Node<int>.withValue(30);

  var result = list.findNode(20);
  if (result != null) {
    print('Node ditemukan dengan nilai: ${result.nodeValue}');
  } else {
    print('Node tidak ditemukan');
  }
}
