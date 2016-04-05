package org.codehaus.jackson.xc;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.lang.reflect.Type;
import javax.activation.DataHandler;
import org.codehaus.jackson.JsonGenerator;
import org.codehaus.jackson.JsonNode;
import org.codehaus.jackson.JsonProcessingException;
import org.codehaus.jackson.map.SerializerProvider;
import org.codehaus.jackson.map.ser.std.SerializerBase;
import org.codehaus.jackson.node.ObjectNode;

public class DataHandlerJsonSerializer
  extends SerializerBase<DataHandler>
{
  public DataHandlerJsonSerializer()
  {
    super(DataHandler.class);
  }
  
  public JsonNode getSchema(SerializerProvider paramSerializerProvider, Type paramType)
  {
    paramSerializerProvider = createSchemaNode("array", true);
    paramSerializerProvider.put("items", createSchemaNode("string"));
    return paramSerializerProvider;
  }
  
  public void serialize(DataHandler paramDataHandler, JsonGenerator paramJsonGenerator, SerializerProvider paramSerializerProvider)
    throws IOException, JsonProcessingException
  {
    paramSerializerProvider = new ByteArrayOutputStream();
    byte[] arrayOfByte = new byte['က'];
    paramDataHandler = paramDataHandler.getInputStream();
    for (int i = paramDataHandler.read(arrayOfByte); i > 0; i = paramDataHandler.read(arrayOfByte)) {
      paramSerializerProvider.write(arrayOfByte, 0, i);
    }
    paramJsonGenerator.writeBinary(paramSerializerProvider.toByteArray());
  }
}

/* Location:
 * Qualified Name:     org.codehaus.jackson.xc.DataHandlerJsonSerializer
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */