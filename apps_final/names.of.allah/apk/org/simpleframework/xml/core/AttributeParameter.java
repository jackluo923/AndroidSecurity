package org.simpleframework.xml.core;

import java.lang.annotation.Annotation;
import java.lang.reflect.Constructor;
import org.simpleframework.xml.Attribute;
import org.simpleframework.xml.stream.Format;

class AttributeParameter
  extends TemplateParameter
{
  private final AttributeParameter.Contact contact;
  private final Expression expression;
  private final int index;
  private final Object key;
  private final Label label;
  private final String name;
  private final String path;
  private final Class type;
  
  public AttributeParameter(Constructor paramConstructor, Attribute paramAttribute, Format paramFormat, int paramInt)
  {
    contact = new AttributeParameter.Contact(paramAttribute, paramConstructor, paramInt);
    label = new AttributeLabel(contact, paramAttribute, paramFormat);
    expression = label.getExpression();
    path = label.getPath();
    type = label.getType();
    name = label.getName();
    key = label.getKey();
    index = paramInt;
  }
  
  public Annotation getAnnotation()
  {
    return contact.getAnnotation();
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
    return true;
  }
  
  public boolean isPrimitive()
  {
    return type.isPrimitive();
  }
  
  public boolean isRequired()
  {
    return label.isRequired();
  }
  
  public String toString()
  {
    return contact.toString();
  }
}

/* Location:
 * Qualified Name:     org.simpleframework.xml.core.AttributeParameter
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */