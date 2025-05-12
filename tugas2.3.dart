class DNode<T> {
  T? nodeValue;
  DNode<T>? next;
  DNode<T>? prev;

  // Konstruktor
  DNode(this.nodeValue);
}

class DoubleLinkedList<T> {
  DNode<T>? head;

  // Menambahkan node setelah node target dengan pembacaan maju
  void tambahNode_Setelah(DNode<T> newNode, DNode<T> target) {
    DNode<T>? current = target;

    // Jika target adalah node terakhir (next null), maka tambahkan node baru setelah target
    if (current?.next == null) {
      current?.next = newNode;
      newNode.prev = current;
    } else {
      // Menyisipkan node baru setelah target
      newNode.next = current?.next;
      newNode.prev = current;
      current?.next?.prev = newNode;
      current?.next = newNode;
    }
  }

  // Menampilkan list (untuk testing)
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

  // Membuat node baru
  var node1 = DNode<int>(10);
  var node2 = DNode<int>(20);
  var node3 = DNode<int>(30);

  // Menambahkan node ke list
  list.head = node1;
  node1.next = node2;
  node2.prev = node1;
  node2.next = node3;
  node3.prev = node2;

  // Menampilkan list sebelum menambah node
  print("Sebelum menambah node:");
  list.tampilkanList();

  // Menambahkan node baru setelah node dengan nilai 20
  var newNode = DNode<int>(25);
  list.tambahNode_Setelah(newNode, node2);

  // Menampilkan list setelah menambah node
  print("\nSetelah menambah node:");
  list.tampilkanList();
}
