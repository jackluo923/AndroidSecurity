package org.codehaus.jackson.map.util;

final class ObjectBuffer$Node
{
  final Object[] _data;
  Node _next;
  
  public ObjectBuffer$Node(Object[] paramArrayOfObject)
  {
    _data = paramArrayOfObject;
  }
  
  public Object[] getData()
  {
    return _data;
  }
  
  public void linkNext(Node paramNode)
  {
    if (_next != null) {
      throw new IllegalStateException();
    }
    _next = paramNode;
  }
  
  public Node next()
  {
    return _next;
  }
}

/* Location:
 * Qualified Name:     org.codehaus.jackson.map.util.ObjectBuffer.Node
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */