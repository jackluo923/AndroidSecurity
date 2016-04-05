package org.codehaus.jackson.map.deser;

import org.codehaus.jackson.map.util.EnumResolver;

@Deprecated
public class EnumDeserializer
  extends org.codehaus.jackson.map.deser.std.EnumDeserializer
{
  public EnumDeserializer(EnumResolver<?> paramEnumResolver)
  {
    super(paramEnumResolver);
  }
}

/* Location:
 * Qualified Name:     org.codehaus.jackson.map.deser.EnumDeserializer
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */