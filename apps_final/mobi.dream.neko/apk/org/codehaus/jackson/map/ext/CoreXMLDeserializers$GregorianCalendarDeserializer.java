package org.codehaus.jackson.map.ext;

import java.io.IOException;
import java.util.GregorianCalendar;
import javax.xml.datatype.DatatypeFactory;
import javax.xml.datatype.XMLGregorianCalendar;
import org.codehaus.jackson.JsonParser;
import org.codehaus.jackson.JsonProcessingException;
import org.codehaus.jackson.map.DeserializationContext;
import org.codehaus.jackson.map.deser.std.StdScalarDeserializer;

public class CoreXMLDeserializers$GregorianCalendarDeserializer
  extends StdScalarDeserializer<XMLGregorianCalendar>
{
  public CoreXMLDeserializers$GregorianCalendarDeserializer()
  {
    super(XMLGregorianCalendar.class);
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

/* Location:
 * Qualified Name:     org.codehaus.jackson.map.ext.CoreXMLDeserializers.GregorianCalendarDeserializer
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */