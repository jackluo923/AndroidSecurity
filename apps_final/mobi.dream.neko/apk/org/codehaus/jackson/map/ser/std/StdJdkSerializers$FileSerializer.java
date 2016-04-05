package org.codehaus.jackson.map.ser.std;

import java.io.File;
import java.io.IOException;
import java.lang.reflect.Type;
import org.codehaus.jackson.JsonGenerationException;
import org.codehaus.jackson.JsonGenerator;
import org.codehaus.jackson.JsonNode;
import org.codehaus.jackson.map.SerializerProvider;

public final class StdJdkSerializers$FileSerializer
  extends ScalarSerializerBase<File>
{
  public StdJdkSerializers$FileSerializer()
  {
    super(File.class);
  }
  
  public JsonNode getSchema(SerializerProvider paramSerializerProvider, Type paramType)
  {
    return createSchemaNode("string", true);
  }
  
  public void serialize(File paramFile, JsonGenerator paramJsonGenerator, SerializerProvider paramSerializerProvider)
    throws IOException, JsonGenerationException
  {
    paramJsonGenerator.writeString(paramFile.getAbsolutePath());
  }
}

/* Location:
 * Qualified Name:     org.codehaus.jackson.map.ser.std.StdJdkSerializers.FileSerializer
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */