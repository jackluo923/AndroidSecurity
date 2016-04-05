package org.simpleframework.xml.core;

import java.lang.annotation.Annotation;
import org.simpleframework.xml.ElementMap;
import org.simpleframework.xml.strategy.Type;
import org.simpleframework.xml.stream.Format;
import org.simpleframework.xml.stream.Style;

class ElementMapLabel
  extends TemplateLabel
{
  private Expression cache;
  private boolean data;
  private Decorator decorator;
  private Introspector detail;
  private Entry entry;
  private Format format;
  private boolean inline;
  private Class[] items;
  private ElementMap label;
  private String name;
  private String override;
  private String parent;
  private String path;
  private boolean required;
  private Class type;
  
  public ElementMapLabel(Contact paramContact, ElementMap paramElementMap, Format paramFormat)
  {
    detail = new Introspector(paramContact, this, paramFormat);
    decorator = new Qualifier(paramContact);
    entry = new Entry(paramContact, paramElementMap);
    required = paramElementMap.required();
    type = paramContact.getType();
    inline = paramElementMap.inline();
    override = paramElementMap.name();
    data = paramElementMap.data();
    format = paramFormat;
    label = paramElementMap;
  }
  
  private Type getMap()
  {
    return new ClassType(type);
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
    Type localType = getMap();
    if (!label.inline()) {
      return new CompositeMap(paramContext, entry, localType);
    }
    return new CompositeInlineMap(paramContext, entry, localType);
  }
  
  public Decorator getDecorator()
  {
    return decorator;
  }
  
  public Type getDependent()
  {
    Contact localContact = getContact();
    if (items == null) {
      items = localContact.getDependents();
    }
    if (items == null) {
      throw new ElementException("Unable to determine type for %s", new Object[] { localContact });
    }
    if (items.length == 0) {
      return new ClassType(Object.class);
    }
    return new ClassType(items[0]);
  }
  
  public Object getEmpty(Context paramContext)
  {
    paramContext = new MapFactory(paramContext, new ClassType(type));
    if (!label.empty()) {
      return paramContext.getInstance();
    }
    return null;
  }
  
  public String getEntry()
  {
    Style localStyle = format.getStyle();
    if (detail.isEmpty(parent)) {
      parent = detail.getEntry();
    }
    return localStyle.getElement(parent);
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
    if (name == null)
    {
      Style localStyle = format.getStyle();
      String str = entry.getEntry();
      if (!label.inline()) {
        str = detail.getName();
      }
      name = localStyle.getElement(str);
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
 * Qualified Name:     org.simpleframework.xml.core.ElementMapLabel
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */