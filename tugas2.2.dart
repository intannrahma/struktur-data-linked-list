class DNode<T> {
  T? nodeValue;
  DNode<T>? next;
  DNode<T>? prev;

  // Konstruktor
  DNode(this.nodeValue);
}

class DoubleLinkedList<T> {
  DNode<T>? head;

  // Menambahkan node sebelum node target dengan pembacaan mundur
  void tambahNode_SebelumBacaMundur(DNode<T> newNode, DNode<T> target) {
    DNode<T>? current = target;

    // Mencari node yang pertama kali memiliki nilai yang sama dengan target
    while (current?.prev != null) {
      current = current?.prev;
    }

    // Jika target adalah head, node baru akan menjadi head
    if (current == head) {
      newNode.next = head;
      head?.prev = newNode;
      head = newNode;
    } else {
      // Menyisipkan node baru sebelum target
      newNode.prev = current?.prev;
      newNode.next = current;
      current?.prev?.next = newNode;
      current?.prev = newNode;
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

  // Menambahkan node baru sebelum node dengan nilai 20
  var newNode = DNode<int>(15);
  list.tambahNode_SebelumBacaMundur(newNode, node2);

  // Menampilkan list setelah menambah node
  print("\nSetelah menambah node:");
  list.tampilkanList();
}
