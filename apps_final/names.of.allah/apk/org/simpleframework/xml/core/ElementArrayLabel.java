package org.simpleframework.xml.core;

import java.lang.annotation.Annotation;
import org.simpleframework.xml.ElementArray;
import org.simpleframework.xml.strategy.Type;
import org.simpleframework.xml.stream.Format;
import org.simpleframework.xml.stream.Style;

class ElementArrayLabel
  extends TemplateLabel
{
  private boolean data;
  private Decorator decorator;
  private Introspector detail;
  private String entry;
  private Format format;
  private ElementArray label;
  private String name;
  private Expression path;
  private boolean required;
  private Class type;
  
  public ElementArrayLabel(Contact paramContact, ElementArray paramElementArray, Format paramFormat)
  {
    detail = new Introspector(paramContact, this, paramFormat);
    decorator = new Qualifier(paramContact);
    required = paramElementArray.required();
    type = paramContact.getType();
    entry = paramElementArray.entry();
    data = paramElementArray.data();
    name = paramElementArray.name();
    format = paramFormat;
    label = paramElementArray;
  }
  
  private Converter getConverter(Context paramContext, String paramString)
  {
    Type localType = getDependent();
    Contact localContact = getContact();
    if (!paramContext.isPrimitive(localType)) {
      return new CompositeArray(paramContext, localContact, localType, paramString);
    }
    return new PrimitiveArray(paramContext, localContact, localType, paramString);
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
    String str = getEntry();
    if (!type.isArray()) {
      throw new InstantiationException("Type is not an array %s for %s", new Object[] { type, localContact });
    }
    return getConverter(paramContext, str);
  }
  
  public Decorator getDecorator()
  {
    return decorator;
  }
  
  public Type getDependent()
  {
    Class localClass = type.getComponentType();
    if (localClass == null) {
      return new ClassType(type);
    }
    return new ClassType(localClass);
  }
  
  public Object getEmpty(Context paramContext)
  {
    paramContext = new ArrayFactory(paramContext, new ClassType(type));
    if (!label.empty()) {
      return paramContext.getInstance();
    }
    return null;
  }
  
  public String getEntry()
  {
    Style localStyle = format.getStyle();
    if (detail.isEmpty(entry)) {
      entry = detail.getEntry();
    }
    return localStyle.getElement(entry);
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
    return format.getStyle().getElement(detail.getName());
  }
  
  public String getOverride()
  {
    return name;
  }
  
  public String getPath()
  {
    return getExpression().getElement(getName());
  }
  
  public Class getType()
  {
    return type;
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
 * Qualified Name:     org.simpleframework.xml.core.ElementArrayLabel
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */