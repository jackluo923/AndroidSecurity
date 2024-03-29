package org.codehaus.jackson.map;

import org.codehaus.jackson.map.introspect.AnnotatedField;
import org.codehaus.jackson.map.introspect.AnnotatedMethod;
import org.codehaus.jackson.map.introspect.AnnotatedParameter;

public abstract class PropertyNamingStrategy$PropertyNamingStrategyBase
  extends PropertyNamingStrategy
{
  public String nameForConstructorParameter(MapperConfig<?> paramMapperConfig, AnnotatedParameter paramAnnotatedParameter, String paramString)
  {
    return translate(paramString);
  }
  
  public String nameForField(MapperConfig<?> paramMapperConfig, AnnotatedField paramAnnotatedField, String paramString)
  {
    return translate(paramString);
  }
  
  public String nameForGetterMethod(MapperConfig<?> paramMapperConfig, AnnotatedMethod paramAnnotatedMethod, String paramString)
  {
    return translate(paramString);
  }
  
  public String nameForSetterMethod(MapperConfig<?> paramMapperConfig, AnnotatedMethod paramAnnotatedMethod, String paramString)
  {
    return translate(paramString);
  }
  
  public abstract String translate(String paramString);
}

/* Location:
 * Qualified Name:     org.codehaus.jackson.map.PropertyNamingStrategy.PropertyNamingStrategyBase
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */