package org.codehaus.jackson.map.ser;

import org.codehaus.jackson.map.annotate.JacksonStdImpl;

@Deprecated
@JacksonStdImpl
public final class ToStringSerializer
  extends org.codehaus.jackson.map.ser.std.ToStringSerializer
{
  public static final ToStringSerializer instance = new ToStringSerializer();
}

/* Location:
 * Qualified Name:     org.codehaus.jackson.map.ser.ToStringSerializer
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */