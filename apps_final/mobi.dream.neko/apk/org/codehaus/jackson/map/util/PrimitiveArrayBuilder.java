package org.codehaus.jackson.map.util;

public abstract class PrimitiveArrayBuilder<T>
{
  static final int INITIAL_CHUNK_SIZE = 12;
  static final int MAX_CHUNK_SIZE = 262144;
  static final int SMALL_CHUNK_SIZE = 16384;
  Node<T> _bufferHead;
  Node<T> _bufferTail;
  int _bufferedEntryCount;
  T _freeBuffer;
  
  protected abstract T _constructArray(int paramInt);
  
  protected void _reset()
  {
    if (_bufferTail != null) {
      _freeBuffer = _bufferTail.getData();
    }
    _bufferTail = null;
    _bufferHead = null;
    _bufferedEntryCount = 0;
  }
  
  public final T appendCompletedChunk(T paramT, int paramInt)
  {
    paramT = new Node(paramT, paramInt);
    if (_bufferHead == null)
    {
      _bufferTail = paramT;
      _bufferHead = paramT;
      _bufferedEntryCount += paramInt;
      if (paramInt >= 16384) {
        break label70;
      }
      paramInt += paramInt;
    }
    for (;;)
    {
      return (T)_constructArray(paramInt);
      _bufferTail.linkNext(paramT);
      _bufferTail = paramT;
      break;
      label70:
      paramInt += (paramInt >> 2);
    }
  }
  
  public T completeAndClearBuffer(T paramT, int paramInt)
  {
    int j = paramInt + _bufferedEntryCount;
    Object localObject = _constructArray(j);
    int i = 0;
    for (Node localNode = _bufferHead; localNode != null; localNode = localNode.next()) {
      i = localNode.copyData(localObject, i);
    }
    System.arraycopy(paramT, 0, localObject, i, paramInt);
    paramInt = i + paramInt;
    if (paramInt != j) {
      throw new IllegalStateException("Should have gotten " + j + " entries, got " + paramInt);
    }
    return (T)localObject;
  }
  
  public T resetAndStart()
  {
    _reset();
    if (_freeBuffer == null) {
      return (T)_constructArray(12);
    }
    return (T)_freeBuffer;
  }
  
  static final class Node<T>
  {
    final T _data;
    final int _dataLength;
    Node<T> _next;
    
    public Node(T paramT, int paramInt)
    {
      _data = paramT;
      _dataLength = paramInt;
    }
    
    public int copyData(T paramT, int paramInt)
    {
      System.arraycopy(_data, 0, paramT, paramInt, _dataLength);
      return paramInt + _dataLength;
    }
    
    public T getData()
    {
      return (T)_data;
    }
    
    public void linkNext(Node<T> paramNode)
    {
      if (_next != null) {
        throw new IllegalStateException();
      }
      _next = paramNode;
    }
    
    public Node<T> next()
    {
      return _next;
    }
  }
}

/* Location:
 * Qualified Name:     org.codehaus.jackson.map.util.PrimitiveArrayBuilder
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */