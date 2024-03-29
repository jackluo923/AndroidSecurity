package org.codehaus.jackson.map.ser.std;

import java.io.IOException;
import java.util.Calendar;
import java.util.Date;
import org.codehaus.jackson.JsonGenerationException;
import org.codehaus.jackson.JsonGenerator;
import org.codehaus.jackson.map.JsonSerializer;
import org.codehaus.jackson.map.SerializerProvider;
import org.codehaus.jackson.type.JavaType;

public class StdKeySerializers
{
  protected static final JsonSerializer<Object> DEFAULT_KEY_SERIALIZER = new StdKeySerializer();
  protected static final JsonSerializer<Object> DEFAULT_STRING_SERIALIZER = new StringKeySerializer();
  
  public static JsonSerializer<Object> getStdKeySerializer(JavaType paramJavaType)
  {
    if (paramJavaType == null) {
      return DEFAULT_KEY_SERIALIZER;
    }
    paramJavaType = paramJavaType.getRawClass();
    if (paramJavaType == String.class) {
      return DEFAULT_STRING_SERIALIZER;
    }
    if (paramJavaType == Object.class) {
      return DEFAULT_KEY_SERIALIZER;
    }
    if (Date.class.isAssignableFrom(paramJavaType)) {
      return DateKeySerializer.instance;
    }
    if (Calendar.class.isAssignableFrom(paramJavaType)) {
      return CalendarKeySerializer.instance;
    }
    return DEFAULT_KEY_SERIALIZER;
  }
  
  public static class CalendarKeySerializer
    extends SerializerBase<Calendar>
  {
    protected static final JsonSerializer<?> instance = new CalendarKeySerializer();
    
    public CalendarKeySerializer()
    {
      super();
    }
    
    public void serialize(Calendar paramCalendar, JsonGenerator paramJsonGenerator, SerializerProvider paramSerializerProvider)
      throws IOException, JsonGenerationException
    {
      paramSerializerProvider.defaultSerializeDateKey(paramCalendar.getTimeInMillis(), paramJsonGenerator);
    }
  }
  
  public static class DateKeySerializer
    extends SerializerBase<Date>
  {
    protected static final JsonSerializer<?> instance = new DateKeySerializer();
    
    public DateKeySerializer()
    {
      super();
    }
    
    public void serialize(Date paramDate, JsonGenerator paramJsonGenerator, SerializerProvider paramSerializerProvider)
      throws IOException, JsonGenerationException
    {
      paramSerializerProvider.defaultSerializeDateKey(paramDate, paramJsonGenerator);
    }
  }
  
  public static class StringKeySerializer
    extends SerializerBase<String>
  {
    public StringKeySerializer()
    {
      super();
    }
    
    public void serialize(String paramString, JsonGenerator paramJsonGenerator, SerializerProvider paramSerializerProvider)
      throws IOException, JsonGenerationException
    {
      paramJsonGenerator.writeFieldName(paramString);
    }
  }
}

/* Location:
 * Qualified Name:     org.codehaus.jackson.map.ser.std.StdKeySerializers
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */