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

public final class DoubleNode
  extends NumericNode
{
  protected final double _value;
  
  public DoubleNode(double paramDouble)
  {
    _value = paramDouble;
  }
  
  public static DoubleNode valueOf(double paramDouble)
  {
    return new DoubleNode(paramDouble);
  }
  
  public String asText()
  {
    return NumberOutput.toString(_value);
  }
  
  public JsonToken asToken()
  {
    return JsonToken.VALUE_NUMBER_FLOAT;
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
    return getDecimalValue().toBigInteger();
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
    return JsonParser.NumberType.DOUBLE;
  }
  
  public Number getNumberValue()
  {
    return Double.valueOf(_value);
  }
  
  public int hashCode()
  {
    long l = Double.doubleToLongBits(_value);
    return (int)l ^ (int)(l >> 32);
  }
  
  public boolean isDouble()
  {
    return true;
  }
  
  public boolean isFloatingPointNumber()
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
 * Qualified Name:     org.codehaus.jackson.node.DoubleNode
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */