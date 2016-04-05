package org.codehaus.jackson.node;

import java.io.IOException;
import java.math.BigDecimal;
import java.math.BigInteger;
import org.codehaus.jackson.JsonGenerator;
import org.codehaus.jackson.JsonParser.NumberType;
import org.codehaus.jackson.JsonProcessingException;
import org.codehaus.jackson.JsonToken;
import org.codehaus.jackson.io.NumberOutput;
import org.codehaus.jackson.map.SerializerProvider;

public final class LongNode
  extends NumericNode
{
  final long _value;
  
  public LongNode(long paramLong)
  {
    _value = paramLong;
  }
  
  public static LongNode valueOf(long paramLong)
  {
    return new LongNode(paramLong);
  }
  
  public boolean asBoolean(boolean paramBoolean)
  {
    return _value != 0L;
  }
  
  public String asText()
  {
    return NumberOutput.toString(_value);
  }
  
  public JsonToken asToken()
  {
    return JsonToken.VALUE_NUMBER_INT;
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
    } while (_value == _value);
    return false;
  }
  
  public BigInteger getBigIntegerValue()
  {
    return BigInteger.valueOf(_value);
  }
  
  public BigDecimal getDecimalValue()
  {
    return BigDecimal.valueOf(_value);
  }
  
  public double getDoubleValue()
  {
    return _value;
  }
  
  public int getIntValue()
  {
    return (int)_value;
  }
  
  public long getLongValue()
  {
    return _value;
  }
  
  public JsonParser.NumberType getNumberType()
  {
    return JsonParser.NumberType.LONG;
  }
  
  public Number getNumberValue()
  {
    return Long.valueOf(_value);
  }
  
  public int hashCode()
  {
    return (int)_value ^ (int)(_value >> 32);
  }
  
  public boolean isIntegralNumber()
  {
    return true;
  }
  
  public boolean isLong()
  {
    return true;
  }
  
  public final void serialize(JsonGenerator paramJsonGenerator, SerializerProvider paramSerializerProvider)
    throws IOException, JsonProcessingException
  {
    paramJsonGenerator.writeNumber(_value);
  }
}

/* Location:
 * Qualified Name:     org.codehaus.jackson.node.LongNode
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */