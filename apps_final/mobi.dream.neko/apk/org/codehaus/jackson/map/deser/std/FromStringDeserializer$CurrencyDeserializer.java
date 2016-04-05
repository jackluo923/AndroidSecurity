package org.codehaus.jackson.map.deser.std;

import java.util.Currency;
import org.codehaus.jackson.map.DeserializationContext;

public class FromStringDeserializer$CurrencyDeserializer
  extends FromStringDeserializer<Currency>
{
  public FromStringDeserializer$CurrencyDeserializer()
  {
    super(Currency.class);
  }
  
  protected Currency _deserialize(String paramString, DeserializationContext paramDeserializationContext)
    throws IllegalArgumentException
  {
    return Currency.getInstance(paramString);
  }
}

/* Location:
 * Qualified Name:     org.codehaus.jackson.map.deser.std.FromStringDeserializer.CurrencyDeserializer
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */