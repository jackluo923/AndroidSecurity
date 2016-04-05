package org.codehaus.jackson.smile;

public class SmileBufferRecycler<T>
{
  public static final int DEFAULT_NAME_BUFFER_LENGTH = 64;
  public static final int DEFAULT_STRING_VALUE_BUFFER_LENGTH = 64;
  protected T[] _seenNamesBuffer;
  protected T[] _seenStringValuesBuffer;
  
  public T[] allocSeenNamesBuffer()
  {
    Object[] arrayOfObject = _seenNamesBuffer;
    if (arrayOfObject != null) {
      _seenNamesBuffer = null;
    }
    return arrayOfObject;
  }
  
  public T[] allocSeenStringValuesBuffer()
  {
    Object[] arrayOfObject = _seenStringValuesBuffer;
    if (arrayOfObject != null) {
      _seenStringValuesBuffer = null;
    }
    return arrayOfObject;
  }
  
  public void releaseSeenNamesBuffer(T[] paramArrayOfT)
  {
    _seenNamesBuffer = paramArrayOfT;
  }
  
  public void releaseSeenStringValuesBuffer(T[] paramArrayOfT)
  {
    _seenStringValuesBuffer = paramArrayOfT;
  }
}

/* Location:
 * Qualified Name:     org.codehaus.jackson.smile.SmileBufferRecycler
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */