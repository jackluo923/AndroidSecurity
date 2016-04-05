package org.simpleframework.xml.core;

import java.lang.annotation.Annotation;
import org.simpleframework.xml.ElementList;
import org.simpleframework.xml.strategy.Type;
import org.simpleframework.xml.stream.Format;
import org.simpleframework.xml.stream.Style;

class ElementListLabel
  extends TemplateLabel
{
  private Expression cache;
  private boolean data;
  private Decorator decorator;
  private Introspector detail;
  private String entry;
  private Format format;
  private boolean inline;
  private Class item;
  private ElementList label;
  private String name;
  private String override;
  private String path;
  private boolean required;
  private Class type;
  
  public ElementListLabel(Contact paramContact, ElementList paramElementList, Format paramFormat)
  {
    detail = new Introspector(paramContact, this, paramFormat);
    decorator = new Qualifier(paramContact);
    required = paramElementList.required();
    type = paramContact.getType();
    override = paramElementList.name();
    inline = paramElementList.inline();
    entry = paramElementList.entry();
    data = paramElementList.data();
    item = paramElementList.type();
    format = paramFormat;
    label = paramElementList;
  }
  
  private Converter getConverter(Context paramContext, String paramString)
  {
    Type localType = getDependent();
    Contact localContact = getContact();
    if (!paramContext.isPrimitive(localType)) {
      return new CompositeList(paramContext, localContact, localType, paramString);
    }
    return new PrimitiveList(paramContext, localContact, localType, paramString);
  }
  
  private Converter getInlineConverter(Context paramContext, String paramString)
  {
    Type localType = getDependent();
    Contact localContact = getContact();
    if (!paramContext.isPrimitive(localType)) {
      return new CompositeInlineList(paramContext, localContact, localType, paramString);
    }
    return new PrimitiveInlineList(paramContext, localContact, localType, paramString);
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
    String str = getEntry();
    if (!label.inline()) {
      return getConverter(paramContext, str);
    }
    return getInlineConverter(paramContext, str);
  }
  
  public Decorator getDecorator()
  {
    return decorator;
  }
  
  public Type getDependent()
  {
    Contact localContact = getContact();
    if (item == Void.TYPE) {
      item = localContact.getDependent();
    }
    if (item == null) {
      throw new ElementException("Unable to determine generic type for %s", new Object[] { localContact });
    }
    return new ClassType(item);
  }
  
  public Object getEmpty(Context paramContext)
  {
    paramContext = new CollectionFactory(paramContext, new ClassType(type));
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
    return type;
  }
  
  public boolean isCollection()
  {
    return true;
  }
  
  public boolean isData()
  {
    return data;
  }
  
  public boolean isInline()
  {
    return inline;
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
 * Qualified Name:     org.simpleframework.xml.core.ElementListLabel
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */