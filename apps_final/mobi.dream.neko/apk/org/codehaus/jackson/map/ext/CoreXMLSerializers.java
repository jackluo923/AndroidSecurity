package org.codehaus.jackson.map.ext;

import java.io.IOException;
import java.lang.reflect.Type;
import java.util.Collection;
import java.util.HashMap;
import java.util.Map.Entry;
import javax.xml.datatype.Duration;
import javax.xml.datatype.XMLGregorianCalendar;
import javax.xml.namespace.QName;
import org.codehaus.jackson.JsonGenerationException;
import org.codehaus.jackson.JsonGenerator;
import org.codehaus.jackson.JsonNode;
import org.codehaus.jackson.map.JsonMappingException;
import org.codehaus.jackson.map.JsonSerializer;
import org.codehaus.jackson.map.SerializerProvider;
import org.codehaus.jackson.map.ser.std.CalendarSerializer;
import org.codehaus.jackson.map.ser.std.SerializerBase;
import org.codehaus.jackson.map.ser.std.ToStringSerializer;
import org.codehaus.jackson.map.util.Provider;

public class CoreXMLSerializers
  implements Provider<Map.Entry<Class<?>, JsonSerializer<?>>>
{
  static final HashMap<Class<?>, JsonSerializer<?>> _serializers = new HashMap();
  
  static
  {
    ToStringSerializer localToStringSerializer = ToStringSerializer.instance;
    _serializers.put(Duration.class, localToStringSerializer);
    _serializers.put(XMLGregorianCalendar.class, new XMLGregorianCalendarSerializer());
    _serializers.put(QName.class, localToStringSerializer);
  }
  
  public Collection<Map.Entry<Class<?>, JsonSerializer<?>>> provide()
  {
    return _serializers.entrySet();
  }
  
  public static class XMLGregorianCalendarSerializer
    extends SerializerBase<XMLGregorianCalendar>
  {
    public XMLGregorianCalendarSerializer()
    {
      super();
    }
    
    public JsonNode getSchema(SerializerProvider paramSerializerProvider, Type paramType)
      throws JsonMappingException
    {
      return CalendarSerializer.instance.getSchema(paramSerializerProvider, paramType);
    }
    
    public void serialize(XMLGregorianCalendar paramXMLGregorianCalendar, JsonGenerator paramJsonGenerator, SerializerProvider paramSerializerProvider)
      throws IOException, JsonGenerationException
    {
      CalendarSerializer.instance.serialize(paramXMLGregorianCalendar.toGregorianCalendar(), paramJsonGenerator, paramSerializerProvider);
    }
  }
}

/* Location:
 * Qualified Name:     org.codehaus.jackson.map.ext.CoreXMLSerializers
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */