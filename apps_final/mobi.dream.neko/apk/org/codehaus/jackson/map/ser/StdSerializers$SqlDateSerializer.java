package org.codehaus.jackson.map.ser;

import java.io.IOException;
import java.lang.reflect.Type;
import java.sql.Date;
import org.codehaus.jackson.JsonGenerationException;
import org.codehaus.jackson.JsonGenerator;
import org.codehaus.jackson.JsonNode;
import org.codehaus.jackson.map.SerializerProvider;
import org.codehaus.jackson.map.annotate.JacksonStdImpl;
import org.codehaus.jackson.map.ser.std.ScalarSerializerBase;

@JacksonStdImpl
public final class StdSerializers$SqlDateSerializer
  extends ScalarSerializerBase<Date>
{
  public StdSerializers$SqlDateSerializer()
  {
    super(Date.class);
  }
  
  public JsonNode getSchema(SerializerProvider paramSerializerProvider, Type paramType)
  {
    return createSchemaNode("string", true);
  }
  
  public void serialize(Date paramDate, JsonGenerator paramJsonGenerator, SerializerProvider paramSerializerProvider)
    throws IOException, JsonGenerationException
  {
    paramJsonGenerator.writeString(paramDate.toString());
  }
}

/* Location:
 * Qualified Name:     org.codehaus.jackson.map.ser.StdSerializers.SqlDateSerializer
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */