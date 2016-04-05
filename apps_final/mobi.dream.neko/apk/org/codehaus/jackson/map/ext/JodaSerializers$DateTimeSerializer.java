package org.codehaus.jackson.map.ext;

import java.io.IOException;
import java.lang.reflect.Type;
import org.codehaus.jackson.JsonGenerationException;
import org.codehaus.jackson.JsonGenerator;
import org.codehaus.jackson.JsonNode;
import org.codehaus.jackson.map.SerializationConfig.Feature;
import org.codehaus.jackson.map.SerializerProvider;
import org.joda.time.DateTime;

public final class JodaSerializers$DateTimeSerializer
  extends JodaSerializers.JodaSerializer<DateTime>
{
  public JodaSerializers$DateTimeSerializer()
  {
    super(DateTime.class);
  }
  
  public JsonNode getSchema(SerializerProvider paramSerializerProvider, Type paramType)
  {
    if (paramSerializerProvider.isEnabled(SerializationConfig.Feature.WRITE_DATES_AS_TIMESTAMPS)) {}
    for (paramSerializerProvider = "number";; paramSerializerProvider = "string") {
      return createSchemaNode(paramSerializerProvider, true);
    }
  }
  
  public void serialize(DateTime paramDateTime, JsonGenerator paramJsonGenerator, SerializerProvider paramSerializerProvider)
    throws IOException, JsonGenerationException
  {
    if (paramSerializerProvider.isEnabled(SerializationConfig.Feature.WRITE_DATES_AS_TIMESTAMPS))
    {
      paramJsonGenerator.writeNumber(paramDateTime.getMillis());
      return;
    }
    paramJsonGenerator.writeString(paramDateTime.toString());
  }
}

/* Location:
 * Qualified Name:     org.codehaus.jackson.map.ext.JodaSerializers.DateTimeSerializer
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */