package org.codehaus.jackson.node;

import java.io.IOException;
import java.math.BigDecimal;
import java.math.BigInteger;
import org.codehaus.jackson.JsonGenerator;
import org.codehaus.jackson.JsonParser.NumberType;
import org.codehaus.jackson.JsonProcessingException;
import org.codehaus.jackson.JsonToken;
import org.codehaus.jackson.map.SerializerProvider;

public final class BigIntegerNode
  extends NumericNode
{
  protected final BigInteger _value;
  
  public BigIntegerNode(BigInteger paramBigInteger)
  {
    _value = paramBigInteger;
  }
  
  public static BigIntegerNode valueOf(BigInteger paramBigInteger)
  {
    return new BigIntegerNode(paramBigInteger);
  }
  
  public boolean asBoolean(boolean paramBoolean)
  {
    return !BigInteger.ZERO.equals(_value);
  }
  
  public String asText()
  {
    return _value.toString();
  }
  
  public JsonToken asToken()
  {
    return JsonToken.VALUE_NUMBER_INT;
  }
  
  public boolean equals(Object paramObject)
  {
    boolean bool2 = false;
    boolean bool1;
    if (paramObject == this) {
      bool1 = true;
    }
    do
    {
      do
      {
        return bool1;
        bool1 = bool2;
      } while (paramObject == null);
      bool1 = bool2;
    } while (paramObject.getClass() != getClass());
    return _value.equals(_value);
  }
  
  public BigInteger getBigIntegerValue()
  {
    return _value;
  }
  
  public BigDecimal getDecimalValue()
  {
    return new BigDecimal(_value);
  }
  
  public double getDoubleValue()
  {
    return _value.doubleValue();
  }
  
  public int getIntValue()
  {
    return _value.intValue();
  }
  
  public long getLongValue()
  {
    return _value.longValue();
  }
  
  public JsonParser.NumberType getNumberType()
  {
    return JsonParser.NumberType.BIG_INTEGER;
  }
  
  public Number getNumberValue()
  {
    return _value;
  }
  
  public int hashCode()
  {
    return _value.hashCode();
  }
  
  public boolean isBigInteger()
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
 * Qualified Name:     org.codehaus.jackson.node.BigIntegerNode
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */