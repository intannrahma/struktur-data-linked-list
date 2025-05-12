class Dnode<T> {
  T nodeValue; // data value of the node
  Dnode? prev; // previous node in the list
  Dnode? next; // next node in the list

  /* default constructor; creates an object with the value set to null
  and whose references point to the node itself */
  Dnode(this.nodeValue) : next = null, prev = null;
}
