package org.codehaus.jackson.map.ser;

import java.io.IOException;
import java.lang.reflect.Type;
import org.codehaus.jackson.JsonGenerationException;
import org.codehaus.jackson.JsonGenerator;
import org.codehaus.jackson.JsonNode;
import org.codehaus.jackson.map.SerializerProvider;
import org.codehaus.jackson.map.annotate.JacksonStdImpl;
import org.codehaus.jackson.map.ser.std.NonTypedScalarSerializerBase;

@JacksonStdImpl
public final class StdSerializers$BooleanSerializer
  extends NonTypedScalarSerializerBase<Boolean>
{
  final boolean _forPrimitive;
  
  public StdSerializers$BooleanSerializer(boolean paramBoolean)
  {
    super(Boolean.class);
    _forPrimitive = paramBoolean;
  }
  
  public JsonNode getSchema(SerializerProvider paramSerializerProvider, Type paramType)
  {
    if (!_forPrimitive) {}
    for (boolean bool = true;; bool = false) {
      return createSchemaNode("boolean", bool);
    }
  }
  
  public void serialize(Boolean paramBoolean, JsonGenerator paramJsonGenerator, SerializerProvider paramSerializerProvider)
    throws IOException, JsonGenerationException
  {
    paramJsonGenerator.writeBoolean(paramBoolean.booleanValue());
  }
}

/* Location:
 * Qualified Name:     org.codehaus.jackson.map.ser.StdSerializers.BooleanSerializer
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */