package org.codehaus.jackson.map.ser.std;

import java.io.IOException;
import java.lang.reflect.Type;
import java.util.Date;
import org.codehaus.jackson.JsonGenerationException;
import org.codehaus.jackson.JsonGenerator;
import org.codehaus.jackson.JsonNode;
import org.codehaus.jackson.map.JsonMappingException;
import org.codehaus.jackson.map.SerializerProvider;

public class StdKeySerializer
  extends SerializerBase<Object>
{
  static final StdKeySerializer instace = new StdKeySerializer();
  
  public StdKeySerializer()
  {
    super(Object.class);
  }
  
  public JsonNode getSchema(SerializerProvider paramSerializerProvider, Type paramType)
    throws JsonMappingException
  {
    return createSchemaNode("string");
  }
  
  public void serialize(Object paramObject, JsonGenerator paramJsonGenerator, SerializerProvider paramSerializerProvider)
    throws IOException, JsonGenerationException
  {
    if ((paramObject instanceof Date))
    {
      paramSerializerProvider.defaultSerializeDateKey((Date)paramObject, paramJsonGenerator);
      return;
    }
    paramJsonGenerator.writeFieldName(paramObject.toString());
  }
}

/* Location:
 * Qualified Name:     org.codehaus.jackson.map.ser.std.StdKeySerializer
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */