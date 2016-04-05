package org.codehaus.jackson.map.deser;

import java.io.IOException;
import java.text.DateFormat;
import java.text.ParseException;
import java.util.Calendar;
import java.util.Date;
import org.codehaus.jackson.JsonParser;
import org.codehaus.jackson.JsonProcessingException;
import org.codehaus.jackson.JsonToken;
import org.codehaus.jackson.map.BeanProperty;
import org.codehaus.jackson.map.DeserializationConfig;
import org.codehaus.jackson.map.DeserializationContext;
import org.codehaus.jackson.map.DeserializationProblemHandler;
import org.codehaus.jackson.map.DeserializerProvider;
import org.codehaus.jackson.map.InjectableValues;
import org.codehaus.jackson.map.JsonDeserializer;
import org.codehaus.jackson.map.JsonMappingException;
import org.codehaus.jackson.map.exc.UnrecognizedPropertyException;
import org.codehaus.jackson.map.util.ArrayBuilders;
import org.codehaus.jackson.map.util.ClassUtil;
import org.codehaus.jackson.map.util.LinkedNode;
import org.codehaus.jackson.map.util.ObjectBuffer;
import org.codehaus.jackson.type.JavaType;

public class StdDeserializationContext
  extends DeserializationContext
{
  static final int MAX_ERROR_STR_LEN = 500;
  protected ArrayBuilders _arrayBuilders;
  protected DateFormat _dateFormat;
  protected final DeserializerProvider _deserProvider;
  protected final InjectableValues _injectableValues;
  protected ObjectBuffer _objectBuffer;
  protected JsonParser _parser;
  
  public StdDeserializationContext(DeserializationConfig paramDeserializationConfig, JsonParser paramJsonParser, DeserializerProvider paramDeserializerProvider, InjectableValues paramInjectableValues)
  {
    super(paramDeserializationConfig);
    _parser = paramJsonParser;
    _deserProvider = paramDeserializerProvider;
    _injectableValues = paramInjectableValues;
  }
  
  protected String _calcName(Class<?> paramClass)
  {
    if (paramClass.isArray()) {
      return _calcName(paramClass.getComponentType()) + "[]";
    }
    return paramClass.getName();
  }
  
  protected String _desc(String paramString)
  {
    String str = paramString;
    if (paramString.length() > 500) {
      str = paramString.substring(0, 500) + "]...[" + paramString.substring(paramString.length() - 500);
    }
    return str;
  }
  
  protected String _valueDesc()
  {
    try
    {
      String str = _desc(_parser.getText());
      return str;
    }
    catch (Exception localException) {}
    return "[N/A]";
  }
  
  public Calendar constructCalendar(Date paramDate)
  {
    Calendar localCalendar = Calendar.getInstance();
    localCalendar.setTime(paramDate);
    return localCalendar;
  }
  
  protected String determineClassName(Object paramObject)
  {
    return ClassUtil.getClassDescription(paramObject);
  }
  
  public Object findInjectableValue(Object paramObject1, BeanProperty paramBeanProperty, Object paramObject2)
  {
    if (_injectableValues == null) {
      throw new IllegalStateException("No 'injectableValues' configured, can not inject value with id [" + paramObject1 + "]");
    }
    return _injectableValues.findInjectableValue(paramObject1, this, paramBeanProperty, paramObject2);
  }
  
  public final ArrayBuilders getArrayBuilders()
  {
    if (_arrayBuilders == null) {
      _arrayBuilders = new ArrayBuilders();
    }
    return _arrayBuilders;
  }
  
  protected DateFormat getDateFormat()
  {
    if (_dateFormat == null) {
      _dateFormat = ((DateFormat)_config.getDateFormat().clone());
    }
    return _dateFormat;
  }
  
  public DeserializerProvider getDeserializerProvider()
  {
    return _deserProvider;
  }
  
  public JsonParser getParser()
  {
    return _parser;
  }
  
  public boolean handleUnknownProperty(JsonParser paramJsonParser, JsonDeserializer<?> paramJsonDeserializer, Object paramObject, String paramString)
    throws IOException, JsonProcessingException
  {
    LinkedNode localLinkedNode = _config.getProblemHandlers();
    if (localLinkedNode != null)
    {
      localJsonParser = _parser;
      _parser = paramJsonParser;
      paramJsonParser = localLinkedNode;
    }
    for (;;)
    {
      if (paramJsonParser != null) {}
      try
      {
        boolean bool = ((DeserializationProblemHandler)paramJsonParser.value()).handleUnknownProperty(this, paramJsonDeserializer, paramObject, paramString);
        if (bool) {
          return true;
        }
        paramJsonParser = paramJsonParser.next();
      }
      finally
      {
        _parser = localJsonParser;
      }
    }
    _parser = localJsonParser;
    return false;
  }
  
  public JsonMappingException instantiationException(Class<?> paramClass, String paramString)
  {
    return JsonMappingException.from(_parser, "Can not construct instance of " + paramClass.getName() + ", problem: " + paramString);
  }
  
  public JsonMappingException instantiationException(Class<?> paramClass, Throwable paramThrowable)
  {
    return JsonMappingException.from(_parser, "Can not construct instance of " + paramClass.getName() + ", problem: " + paramThrowable.getMessage(), paramThrowable);
  }
  
  public final ObjectBuffer leaseObjectBuffer()
  {
    ObjectBuffer localObjectBuffer = _objectBuffer;
    if (localObjectBuffer == null) {
      return new ObjectBuffer();
    }
    _objectBuffer = null;
    return localObjectBuffer;
  }
  
  public JsonMappingException mappingException(Class<?> paramClass)
  {
    return mappingException(paramClass, _parser.getCurrentToken());
  }
  
  public JsonMappingException mappingException(Class<?> paramClass, JsonToken paramJsonToken)
  {
    paramClass = _calcName(paramClass);
    return JsonMappingException.from(_parser, "Can not deserialize instance of " + paramClass + " out of " + paramJsonToken + " token");
  }
  
  public Date parseDate(String paramString)
    throws IllegalArgumentException
  {
    try
    {
      paramString = getDateFormat().parse(paramString);
      return paramString;
    }
    catch (ParseException paramString)
    {
      throw new IllegalArgumentException(paramString.getMessage());
    }
  }
  
  public final void returnObjectBuffer(ObjectBuffer paramObjectBuffer)
  {
    if ((_objectBuffer == null) || (paramObjectBuffer.initialCapacity() >= _objectBuffer.initialCapacity())) {
      _objectBuffer = paramObjectBuffer;
    }
  }
  
  public JsonMappingException unknownFieldException(Object paramObject, String paramString)
  {
    return UnrecognizedPropertyException.from(_parser, paramObject, paramString);
  }
  
  public JsonMappingException unknownTypeException(JavaType paramJavaType, String paramString)
  {
    return JsonMappingException.from(_parser, "Could not resolve type id '" + paramString + "' into a subtype of " + paramJavaType);
  }
  
  public JsonMappingException weirdKeyException(Class<?> paramClass, String paramString1, String paramString2)
  {
    return JsonMappingException.from(_parser, "Can not construct Map key of type " + paramClass.getName() + " from String \"" + _desc(paramString1) + "\": " + paramString2);
  }
  
  public JsonMappingException weirdNumberException(Class<?> paramClass, String paramString)
  {
    return JsonMappingException.from(_parser, "Can not construct instance of " + paramClass.getName() + " from number value (" + _valueDesc() + "): " + paramString);
  }
  
  public JsonMappingException weirdStringException(Class<?> paramClass, String paramString)
  {
    return JsonMappingException.from(_parser, "Can not construct instance of " + paramClass.getName() + " from String value '" + _valueDesc() + "': " + paramString);
  }
  
  public JsonMappingException wrongTokenException(JsonParser paramJsonParser, JsonToken paramJsonToken, String paramString)
  {
    return JsonMappingException.from(paramJsonParser, "Unexpected token (" + paramJsonParser.getCurrentToken() + "), expected " + paramJsonToken + ": " + paramString);
  }
}

/* Location:
 * Qualified Name:     org.codehaus.jackson.map.deser.StdDeserializationContext
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */