package org.codehaus.jackson.map.ser.std;

import java.io.IOException;
import java.util.Date;
import org.codehaus.jackson.JsonGenerationException;
import org.codehaus.jackson.JsonGenerator;
import org.codehaus.jackson.map.JsonSerializer;
import org.codehaus.jackson.map.SerializerProvider;

public class StdKeySerializers$DateKeySerializer
  extends SerializerBase<Date>
{
  protected static final JsonSerializer<?> instance = new DateKeySerializer();
  
  public StdKeySerializers$DateKeySerializer()
  {
    super(Date.class);
  }
  
  public void serialize(Date paramDate, JsonGenerator paramJsonGenerator, SerializerProvider paramSerializerProvider)
    throws IOException, JsonGenerationException
  {
    paramSerializerProvider.defaultSerializeDateKey(paramDate, paramJsonGenerator);
  }
}

/* Location:
 * Qualified Name:     org.codehaus.jackson.map.ser.std.StdKeySerializers.DateKeySerializer
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */