package org.codehaus.jackson.map.ext;

import java.io.IOException;
import java.util.Arrays;
import java.util.Collection;
import java.util.GregorianCalendar;
import javax.xml.datatype.DatatypeConfigurationException;
import javax.xml.datatype.DatatypeFactory;
import javax.xml.datatype.Duration;
import javax.xml.datatype.XMLGregorianCalendar;
import javax.xml.namespace.QName;
import org.codehaus.jackson.JsonParser;
import org.codehaus.jackson.JsonProcessingException;
import org.codehaus.jackson.map.DeserializationContext;
import org.codehaus.jackson.map.deser.std.FromStringDeserializer;
import org.codehaus.jackson.map.deser.std.StdDeserializer;
import org.codehaus.jackson.map.deser.std.StdScalarDeserializer;
import org.codehaus.jackson.map.util.Provider;

public class CoreXMLDeserializers
  implements Provider<StdDeserializer<?>>
{
  static final DatatypeFactory _dataTypeFactory;
  
  static
  {
    try
    {
      _dataTypeFactory = DatatypeFactory.newInstance();
      return;
    }
    catch (DatatypeConfigurationException localDatatypeConfigurationException)
    {
      throw new RuntimeException(localDatatypeConfigurationException);
    }
  }
  
  public Collection<StdDeserializer<?>> provide()
  {
    return Arrays.asList(new StdDeserializer[] { new DurationDeserializer(), new GregorianCalendarDeserializer(), new QNameDeserializer() });
  }
  
  public static class DurationDeserializer
    extends FromStringDeserializer<Duration>
  {
    public DurationDeserializer()
    {
      super();
    }
    
    protected Duration _deserialize(String paramString, DeserializationContext paramDeserializationContext)
      throws IllegalArgumentException
    {
      return CoreXMLDeserializers._dataTypeFactory.newDuration(paramString);
    }
  }
  
  public static class GregorianCalendarDeserializer
    extends StdScalarDeserializer<XMLGregorianCalendar>
  {
    public GregorianCalendarDeserializer()
    {
      super();
    }
    
    public XMLGregorianCalendar deserialize(JsonParser paramJsonParser, DeserializationContext paramDeserializationContext)
      throws IOException, JsonProcessingException
    {
      paramJsonParser = _parseDate(paramJsonParser, paramDeserializationContext);
      if (paramJsonParser == null) {
        return null;
      }
      paramDeserializationContext = new GregorianCalendar();
      paramDeserializationContext.setTime(paramJsonParser);
      return CoreXMLDeserializers._dataTypeFactory.newXMLGregorianCalendar(paramDeserializationContext);
    }
  }
  
  public static class QNameDeserializer
    extends FromStringDeserializer<QName>
  {
    public QNameDeserializer()
    {
      super();
    }
    
    protected QName _deserialize(String paramString, DeserializationContext paramDeserializationContext)
      throws IllegalArgumentException
    {
      return QName.valueOf(paramString);
    }
  }
}

/* Location:
 * Qualified Name:     org.codehaus.jackson.map.ext.CoreXMLDeserializers
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */