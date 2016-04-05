package org.codehaus.jackson.xc;

import java.io.IOException;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import javax.xml.bind.annotation.adapters.XmlAdapter;
import org.codehaus.jackson.JsonGenerator;
import org.codehaus.jackson.JsonNode;
import org.codehaus.jackson.map.JsonMappingException;
import org.codehaus.jackson.map.JsonSerializer;
import org.codehaus.jackson.map.SerializerProvider;
import org.codehaus.jackson.map.ser.std.SerializerBase;
import org.codehaus.jackson.schema.JsonSchema;
import org.codehaus.jackson.schema.SchemaAware;

public class XmlAdapterJsonSerializer
  extends SerializerBase<Object>
  implements SchemaAware
{
  private final XmlAdapter<Object, Object> xmlAdapter;
  
  public XmlAdapterJsonSerializer(XmlAdapter<Object, Object> paramXmlAdapter)
  {
    super(Object.class);
    xmlAdapter = paramXmlAdapter;
  }
  
  private Class<?> findValueClass()
  {
    for (Type localType = xmlAdapter.getClass().getGenericSuperclass(); ((localType instanceof ParameterizedType)) && (XmlAdapter.class != ((ParameterizedType)localType).getRawType()); localType = ((Class)((ParameterizedType)localType).getRawType()).getGenericSuperclass()) {}
    return (Class)((ParameterizedType)localType).getActualTypeArguments()[0];
  }
  
  public JsonNode getSchema(SerializerProvider paramSerializerProvider, Type paramType)
    throws JsonMappingException
  {
    paramType = paramSerializerProvider.findValueSerializer(findValueClass(), null);
    if ((paramType instanceof SchemaAware)) {
      return ((SchemaAware)paramType).getSchema(paramSerializerProvider, null);
    }
    return JsonSchema.getDefaultSchemaNode();
  }
  
  public void serialize(Object paramObject, JsonGenerator paramJsonGenerator, SerializerProvider paramSerializerProvider)
    throws IOException
  {
    try
    {
      paramObject = xmlAdapter.marshal(paramObject);
      if (paramObject == null)
      {
        paramSerializerProvider.getNullValueSerializer().serialize(null, paramJsonGenerator, paramSerializerProvider);
        return;
      }
    }
    catch (Exception paramObject)
    {
      throw new JsonMappingException("Unable to marshal: " + ((Exception)paramObject).getMessage(), (Throwable)paramObject);
    }
    paramSerializerProvider.findTypedValueSerializer(paramObject.getClass(), true, null).serialize(paramObject, paramJsonGenerator, paramSerializerProvider);
  }
}

/* Location:
 * Qualified Name:     org.codehaus.jackson.xc.XmlAdapterJsonSerializer
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */