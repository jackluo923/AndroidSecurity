package org.codehaus.jackson.map.ser.std;

import java.io.IOException;
import org.codehaus.jackson.JsonGenerationException;
import org.codehaus.jackson.JsonGenerator;
import org.codehaus.jackson.map.SerializerProvider;

public class StdKeySerializers$StringKeySerializer
  extends SerializerBase<String>
{
  public StdKeySerializers$StringKeySerializer()
  {
    super(String.class);
  }
  
  public void serialize(String paramString, JsonGenerator paramJsonGenerator, SerializerProvider paramSerializerProvider)
    throws IOException, JsonGenerationException
  {
    paramJsonGenerator.writeFieldName(paramString);
  }
}

/* Location:
 * Qualified Name:     org.codehaus.jackson.map.ser.std.StdKeySerializers.StringKeySerializer
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */