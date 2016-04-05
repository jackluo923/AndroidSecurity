package org.codehaus.jackson.node;

import java.io.IOException;
import org.codehaus.jackson.JsonGenerator;
import org.codehaus.jackson.JsonProcessingException;
import org.codehaus.jackson.JsonToken;
import org.codehaus.jackson.map.SerializerProvider;

public final class POJONode
  extends ValueNode
{
  protected final Object _value;
  
  public POJONode(Object paramObject)
  {
    _value = paramObject;
  }
  
  public boolean asBoolean(boolean paramBoolean)
  {
    boolean bool = paramBoolean;
    if (_value != null)
    {
      bool = paramBoolean;
      if ((_value instanceof Boolean)) {
        bool = ((Boolean)_value).booleanValue();
      }
    }
    return bool;
  }
  
  public double asDouble(double paramDouble)
  {
    if ((_value instanceof Number)) {
      paramDouble = ((Number)_value).doubleValue();
    }
    return paramDouble;
  }
  
  public int asInt(int paramInt)
  {
    if ((_value instanceof Number)) {
      paramInt = ((Number)_value).intValue();
    }
    return paramInt;
  }
  
  public long asLong(long paramLong)
  {
    if ((_value instanceof Number)) {
      paramLong = ((Number)_value).longValue();
    }
    return paramLong;
  }
  
  public String asText()
  {
    if (_value == null) {
      return "null";
    }
    return _value.toString();
  }
  
  public JsonToken asToken()
  {
    return JsonToken.VALUE_EMBEDDED_OBJECT;
  }
  
  public boolean equals(Object paramObject)
  {
    if (paramObject == this) {}
    do
    {
      return true;
      if (paramObject == null) {
        return false;
      }
      if (paramObject.getClass() != getClass()) {
        return false;
      }
      paramObject = (POJONode)paramObject;
      if (_value != null) {
        break;
      }
    } while (_value == null);
    return false;
    return _value.equals(_value);
  }
  
  public byte[] getBinaryValue()
    throws IOException
  {
    if ((_value instanceof byte[])) {
      return (byte[])_value;
    }
    return super.getBinaryValue();
  }
  
  public Object getPojo()
  {
    return _value;
  }
  
  public int hashCode()
  {
    return _value.hashCode();
  }
  
  public boolean isPojo()
  {
    return true;
  }
  
  public final void serialize(JsonGenerator paramJsonGenerator, SerializerProvider paramSerializerProvider)
    throws IOException, JsonProcessingException
  {
    if (_value == null)
    {
      paramJsonGenerator.writeNull();
      return;
    }
    paramJsonGenerator.writeObject(_value);
  }
  
  public String toString()
  {
    return String.valueOf(_value);
  }
}

/* Location:
 * Qualified Name:     org.codehaus.jackson.node.POJONode
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */