package org.simpleframework.xml.core;

import java.lang.annotation.Annotation;
import java.lang.reflect.Constructor;
import org.simpleframework.xml.Text;
import org.simpleframework.xml.stream.Format;

class TextParameter
  extends TemplateParameter
{
  private final TextParameter.Contact contact;
  private final Expression expression;
  private final int index;
  private final Object key;
  private final Label label;
  private final String name;
  private final String path;
  private final Class type;
  
  public TextParameter(Constructor paramConstructor, Text paramText, Format paramFormat, int paramInt)
  {
    contact = new TextParameter.Contact(paramText, paramConstructor, paramInt);
    label = new TextLabel(contact, paramText, paramFormat);
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
  
  public String getName(Context paramContext)
  {
    return getName();
  }
  
  public String getPath()
  {
    return path;
  }
  
  public String getPath(Context paramContext)
  {
    return getPath();
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
  
  public boolean isText()
  {
    return true;
  }
  
  public String toString()
  {
    return contact.toString();
  }
}

/* Location:
 * Qualified Name:     org.simpleframework.xml.core.TextParameter
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */