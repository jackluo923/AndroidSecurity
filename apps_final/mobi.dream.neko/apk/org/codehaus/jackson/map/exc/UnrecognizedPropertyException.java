package org.codehaus.jackson.map.exc;

import org.codehaus.jackson.JsonLocation;
import org.codehaus.jackson.JsonParser;
import org.codehaus.jackson.map.JsonMappingException;

public class UnrecognizedPropertyException
  extends JsonMappingException
{
  private static final long serialVersionUID = 1L;
  protected final Class<?> _referringClass;
  protected final String _unrecognizedPropertyName;
  
  public UnrecognizedPropertyException(String paramString1, JsonLocation paramJsonLocation, Class<?> paramClass, String paramString2)
  {
    super(paramString1, paramJsonLocation);
    _referringClass = paramClass;
    _unrecognizedPropertyName = paramString2;
  }
  
  public static UnrecognizedPropertyException from(JsonParser paramJsonParser, Object paramObject, String paramString)
  {
    if (paramObject == null) {
      throw new IllegalArgumentException();
    }
    if ((paramObject instanceof Class)) {}
    for (Class localClass = (Class)paramObject;; localClass = paramObject.getClass())
    {
      paramJsonParser = new UnrecognizedPropertyException("Unrecognized field \"" + paramString + "\" (Class " + localClass.getName() + "), not marked as ignorable", paramJsonParser.getCurrentLocation(), localClass, paramString);
      paramJsonParser.prependPath(paramObject, paramString);
      return paramJsonParser;
    }
  }
  
  public Class<?> getReferringClass()
  {
    return _referringClass;
  }
  
  public String getUnrecognizedPropertyName()
  {
    return _unrecognizedPropertyName;
  }
}

/* Location:
 * Qualified Name:     org.codehaus.jackson.map.exc.UnrecognizedPropertyException
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */