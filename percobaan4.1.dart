void printList(Dnode? node) {
  Dnode? tail;
  tail = null;
  print("Traversal in Forward Direction: ");
  while (node != null) {
    stdout.write("${node.nodeValue} ");
    tail = node;
    node = node.next;
  }
  print("");
  print("Traversal in Reverse Direction: ");
  while (tail != null) {
    stdout.write("${tail.nodeValue} ");
    tail = tail.prev;
  }
  print("");
}
