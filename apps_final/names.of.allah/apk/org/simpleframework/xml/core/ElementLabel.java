package org.simpleframework.xml.core;

import java.lang.annotation.Annotation;
import org.simpleframework.xml.Element;
import org.simpleframework.xml.strategy.Type;
import org.simpleframework.xml.stream.Format;
import org.simpleframework.xml.stream.Style;

class ElementLabel
  extends TemplateLabel
{
  private Expression cache;
  private boolean data;
  private Decorator decorator;
  private Introspector detail;
  private Class expect;
  private Format format;
  private Element label;
  private String name;
  private String override;
  private String path;
  private boolean required;
  private Class type;
  
  public ElementLabel(Contact paramContact, Element paramElement, Format paramFormat)
  {
    detail = new Introspector(paramContact, this, paramFormat);
    decorator = new Qualifier(paramContact);
    required = paramElement.required();
    type = paramContact.getType();
    override = paramElement.name();
    expect = paramElement.type();
    data = paramElement.data();
    format = paramFormat;
    label = paramElement;
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
    Contact localContact = getContact();
    if (paramContext.isPrimitive(localContact)) {
      return new Primitive(paramContext, localContact);
    }
    if (expect == Void.TYPE) {
      return new Composite(paramContext, localContact);
    }
    return new Composite(paramContext, localContact, expect);
  }
  
  public Decorator getDecorator()
  {
    return decorator;
  }
  
  public Object getEmpty(Context paramContext)
  {
    return null;
  }
  
  public Expression getExpression()
  {
    if (cache == null) {
      cache = detail.getExpression();
    }
    return cache;
  }
  
  public String getName()
  {
    if (name == null) {
      name = format.getStyle().getElement(detail.getName());
    }
    return name;
  }
  
  public String getOverride()
  {
    return override;
  }
  
  public String getPath()
  {
    if (path == null) {
      path = getExpression().getElement(getName());
    }
    return path;
  }
  
  public Class getType()
  {
    if (expect == Void.TYPE) {
      return type;
    }
    return expect;
  }
  
  public Type getType(Class paramClass)
  {
    paramClass = getContact();
    if (expect == Void.TYPE) {
      return paramClass;
    }
    return new OverrideType(paramClass, expect);
  }
  
  public boolean isData()
  {
    return data;
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
 * Qualified Name:     org.simpleframework.xml.core.ElementLabel
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */