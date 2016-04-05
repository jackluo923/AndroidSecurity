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

public final class IntNode
  extends NumericNode
{
  private static final IntNode[] CANONICALS = new IntNode[12];
  static final int MAX_CANONICAL = 10;
  static final int MIN_CANONICAL = -1;
  final int _value;
  
  static
  {
    int i = 0;
    while (i < 12)
    {
      CANONICALS[i] = new IntNode(i - 1);
      i += 1;
    }
  }
  
  public IntNode(int paramInt)
  {
    _value = paramInt;
  }
  
  public static IntNode valueOf(int paramInt)
  {
    if ((paramInt > 10) || (paramInt < -1)) {
      return new IntNode(paramInt);
    }
    return CANONICALS[(paramInt + 1)];
  }
  
  public boolean asBoolean(boolean paramBoolean)
  {
    return _value != 0;
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
    return _value;
  }
  
  public long getLongValue()
  {
    return _value;
  }
  
  public JsonParser.NumberType getNumberType()
  {
    return JsonParser.NumberType.INT;
  }
  
  public Number getNumberValue()
  {
    return Integer.valueOf(_value);
  }
  
  public int hashCode()
  {
    return _value;
  }
  
  public boolean isInt()
  {
    return true;
  }
  
  public boolean isIntegralNumber()
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
 * Qualified Name:     org.codehaus.jackson.node.IntNode
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */