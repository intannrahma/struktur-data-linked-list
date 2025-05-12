class DNode<T> {
  T? nodeValue;
  DNode<T>? prev;
  DNode<T>? next;

  // Satu constructor aja, tapi pakai parameter opsional
  DNode([T? item]) {
    nodeValue = item;
    next = this;
    prev = this;
  }
}
