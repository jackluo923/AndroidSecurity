package org.codehaus.jackson.map.deser.std;

import java.io.IOException;
import java.net.InetAddress;
import org.codehaus.jackson.map.DeserializationContext;

public class FromStringDeserializer$InetAddressDeserializer
  extends FromStringDeserializer<InetAddress>
{
  public FromStringDeserializer$InetAddressDeserializer()
  {
    super(InetAddress.class);
  }
  
  protected InetAddress _deserialize(String paramString, DeserializationContext paramDeserializationContext)
    throws IOException
  {
    return InetAddress.getByName(paramString);
  }
}

/* Location:
 * Qualified Name:     org.codehaus.jackson.map.deser.std.FromStringDeserializer.InetAddressDeserializer
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */