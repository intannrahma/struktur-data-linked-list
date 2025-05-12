class DNode<T> {
  T? nodeValue;
  DNode<T>? next;
  DNode<T>? prev;

  DNode(this.nodeValue);
}

class DoubleLinkedList<T> {
  DNode<T>? head;

  void tambahNode_Sebelum(DNode<T> newNode, DNode<T> target) {
    if (target == head) {
      newNode.next = head;
      head?.prev = newNode;
      head = newNode;
    } else {
      newNode.prev = target.prev;
      newNode.next = target;
      target.prev?.next = newNode;
      target.prev = newNode;
    }
  }

  void tampilkanList() {
    DNode<T>? current = head;
    while (current != null) {
      print(current.nodeValue);
      current = current.next;
    }
  }
}

void main() {
  var list = DoubleLinkedList<int>();

  var node1 = DNode<int>(10);
  var node2 = DNode<int>(20);
  var node3 = DNode<int>(30);

  list.head = node1;
  node1.next = node2;
  node2.prev = node1;
  node2.next = node3;
  node3.prev = node2;

  print("Sebelum menambah node:");
  list.tampilkanList();

  var newNode = DNode<int>(15);
  list.tambahNode_Sebelum(newNode, node2);

  print("\nSetelah menambah node:");
  list.tampilkanList();
}
