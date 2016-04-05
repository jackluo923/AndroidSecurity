package org.simpleframework.xml.core;

import java.lang.annotation.Annotation;
import java.lang.reflect.Constructor;
import org.simpleframework.xml.ElementList;
import org.simpleframework.xml.stream.Format;

class ElementListParameter
  extends TemplateParameter
{
  private final ElementListParameter.Contact contact;
  private final Expression expression;
  private final int index;
  private final Object key;
  private final Label label;
  private final String name;
  private final String path;
  private final Class type;
  
  public ElementListParameter(Constructor paramConstructor, ElementList paramElementList, Format paramFormat, int paramInt)
  {
    contact = new ElementListParameter.Contact(paramElementList, paramConstructor, paramInt);
    label = new ElementListLabel(contact, paramElementList, paramFormat);
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
 * Qualified Name:     org.simpleframework.xml.core.ElementListParameter
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */