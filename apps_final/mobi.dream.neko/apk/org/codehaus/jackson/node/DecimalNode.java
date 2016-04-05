package org.codehaus.jackson.node;

import java.io.IOException;
import java.math.BigDecimal;
import java.math.BigInteger;
import org.codehaus.jackson.JsonGenerator;
import org.codehaus.jackson.JsonParser.NumberType;
import org.codehaus.jackson.JsonProcessingException;
import org.codehaus.jackson.JsonToken;
import org.codehaus.jackson.map.SerializerProvider;

public final class DecimalNode
  extends NumericNode
{
  protected final BigDecimal _value;
  
  public DecimalNode(BigDecimal paramBigDecimal)
  {
    _value = paramBigDecimal;
  }
  
  public static DecimalNode valueOf(BigDecimal paramBigDecimal)
  {
    return new DecimalNode(paramBigDecimal);
  }
  
  public String asText()
  {
    return _value.toString();
  }
  
  public JsonToken asToken()
  {
    return JsonToken.VALUE_NUMBER_FLOAT;
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
    return _value.toBigInteger();
  }
  
  public BigDecimal getDecimalValue()
  {
    return _value;
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
    return JsonParser.NumberType.BIG_DECIMAL;
  }
  
  public Number getNumberValue()
  {
    return _value;
  }
  
  public int hashCode()
  {
    return _value.hashCode();
  }
  
  public boolean isBigDecimal()
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
 * Qualified Name:     org.codehaus.jackson.node.DecimalNode
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */