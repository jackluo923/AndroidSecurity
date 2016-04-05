package org.simpleframework.xml.core;

import java.lang.annotation.Annotation;

class CacheParameter
  implements Parameter
{
  private final Annotation annotation;
  private final boolean attribute;
  private final Expression expression;
  private final int index;
  private final Object key;
  private final String name;
  private final String path;
  private final boolean primitive;
  private final boolean required;
  private final String string;
  private final boolean text;
  private final Class type;
  
  public CacheParameter(Parameter paramParameter, Label paramLabel)
  {
    annotation = paramParameter.getAnnotation();
    expression = paramParameter.getExpression();
    attribute = paramParameter.isAttribute();
    primitive = paramParameter.isPrimitive();
    required = paramLabel.isRequired();
    string = paramParameter.toString();
    text = paramParameter.isText();
    index = paramParameter.getIndex();
    name = paramParameter.getName();
    path = paramParameter.getPath();
    type = paramParameter.getType();
    key = paramLabel.getKey();
  }
  
  public Annotation getAnnotation()
  {
    return annotation;
  }
  
  public Expression getExpression()
  {
    return expression;
  }
  
  public int getIndex()
  {
    return index;
  }
  
  public Object getKey()
  {
    return key;
  }
  
  public String getName()
  {
    return name;
  }
  
  public String getPath()
  {
    return path;
  }
  
  public Class getType()
  {
    return type;
  }
  
  public boolean isAttribute()
  {
    return attribute;
  }
  
  public boolean isPrimitive()
  {
    return primitive;
  }
  
  public boolean isRequired()
  {
    return required;
  }
  
  public boolean isText()
  {
    return text;
  }
  
  public String toString()
  {
    return string;
  }
}

/* Location:
 * Qualified Name:     org.simpleframework.xml.core.CacheParameter
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */