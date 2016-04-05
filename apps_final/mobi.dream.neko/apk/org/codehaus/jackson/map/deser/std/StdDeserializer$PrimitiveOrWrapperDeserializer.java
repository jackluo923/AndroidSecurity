package org.codehaus.jackson.map.deser.std;

public abstract class StdDeserializer$PrimitiveOrWrapperDeserializer<T>
  extends StdScalarDeserializer<T>
{
  final T _nullValue;
  
  protected StdDeserializer$PrimitiveOrWrapperDeserializer(Class<T> paramClass, T paramT)
  {
    super(paramClass);
    _nullValue = paramT;
  }
  
  public final T getNullValue()
  {
    return (T)_nullValue;
  }
}

/* Location:
 * Qualified Name:     org.codehaus.jackson.map.deser.std.StdDeserializer.PrimitiveOrWrapperDeserializer
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */