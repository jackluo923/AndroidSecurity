package org.simpleframework.xml.core;

import java.lang.annotation.Annotation;
import org.simpleframework.xml.Attribute;
import org.simpleframework.xml.stream.Format;
import org.simpleframework.xml.stream.Style;

class AttributeLabel
  extends TemplateLabel
{
  private Decorator decorator;
  private Introspector detail;
  private String empty;
  private Format format;
  private Attribute label;
  private String name;
  private Expression path;
  private boolean required;
  private Class type;
  
  public AttributeLabel(Contact paramContact, Attribute paramAttribute, Format paramFormat)
  {
    detail = new Introspector(paramContact, this, paramFormat);
    decorator = new Qualifier(paramContact);
    required = paramAttribute.required();
    type = paramContact.getType();
    empty = paramAttribute.empty();
    name = paramAttribute.name();
    format = paramFormat;
    label = paramAttribute;
  }
  
  public Annotation getAnnotation()
  {
    return label;
  }
  
  public Contact getContact()
  {
    return detail.getContact();
  }
  
  public Converter getConverter(Context paramContext)
  {
    String str = getEmpty(paramContext);
    return new Primitive(paramContext, getContact(), str);
  }
  
  public Decorator getDecorator()
  {
    return decorator;
  }
  
  public String getEmpty(Context paramContext)
  {
    if (detail.isEmpty(empty)) {
      return null;
    }
    return empty;
  }
  
  public Expression getExpression()
  {
    if (path == null) {
      path = detail.getExpression();
    }
    return path;
  }
  
  public String getName()
  {
    return format.getStyle().getAttribute(detail.getName());
  }
  
  public String getOverride()
  {
    return name;
  }
  
  public String getPath()
  {
    return getExpression().getAttribute(getName());
  }
  
  public Class getType()
  {
    return type;
  }
  
  public boolean isAttribute()
  {
    return true;
  }
  
  public boolean isData()
  {
    return false;
  }
  
  public boolean isRequired()
  {
    return required;
  }
  
  public String toString()
  {
    return detail.toString();
  }
}

/* Location:
 * Qualified Name:     org.simpleframework.xml.core.AttributeLabel
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */