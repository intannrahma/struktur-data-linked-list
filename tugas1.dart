class Node<T> {
  T? nodeValue;
  Node<T>? next;

  // Default constructor
  Node();

  // Named constructor
  Node.withValue(T item) {
    nodeValue = item;
    next = null;
  }
}

void main() {
  var nodeKosong = Node<int>();
  var nodeIsi = Node<int>.withValue(10);

  print(nodeIsi.nodeValue); // Output: 10
}

