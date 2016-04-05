package org.simpleframework.xml.core;

import java.lang.annotation.Annotation;
import org.simpleframework.xml.strategy.Type;

class CacheLabel
  implements Label
{
  private final Annotation annotation;
  private final boolean attribute;
  private final boolean collection;
  private final Contact contact;
  private final boolean data;
  private final Decorator decorator;
  private final Type depend;
  private final String entry;
  private final Expression expression;
  private final boolean inline;
  private final Object key;
  private final Label label;
  private final boolean list;
  private final String name;
  private final String[] names;
  private final String override;
  private final String path;
  private final String[] paths;
  private final boolean required;
  private final boolean text;
  private final Class type;
  private final boolean union;
  
  public CacheLabel(Label paramLabel)
  {
    annotation = paramLabel.getAnnotation();
    expression = paramLabel.getExpression();
    decorator = paramLabel.getDecorator();
    attribute = paramLabel.isAttribute();
    collection = paramLabel.isCollection();
    contact = paramLabel.getContact();
    depend = paramLabel.getDependent();
    required = paramLabel.isRequired();
    override = paramLabel.getOverride();
    list = paramLabel.isTextList();
    inline = paramLabel.isInline();
    union = paramLabel.isUnion();
    names = paramLabel.getNames();
    paths = paramLabel.getPaths();
    path = paramLabel.getPath();
    type = paramLabel.getType();
    name = paramLabel.getName();
    entry = paramLabel.getEntry();
    data = paramLabel.isData();
    text = paramLabel.isText();
    key = paramLabel.getKey();
    label = paramLabel;
  }
  
  public Annotation getAnnotation()
  {
    return annotation;
  }
  
  public Contact getContact()
  {
    return contact;
  }
  
  public Converter getConverter(Context paramContext)
  {
    return label.getConverter(paramContext);
  }
  
  public Decorator getDecorator()
  {
    return decorator;
  }
  
  public Type getDependent()
  {
    return depend;
  }
  
  public Object getEmpty(Context paramContext)
  {
    return label.getEmpty(paramContext);
  }
  
  public String getEntry()
  {
    return entry;
  }
  
  public Expression getExpression()
  {
    return expression;
  }
  
  public Object getKey()
  {
    return key;
  }
  
  public Label getLabel(Class paramClass)
  {
    return label.getLabel(paramClass);
  }
  
  public String getName()
  {
    return name;
  }
  
  public String[] getNames()
  {
    return names;
  }
  
  public String getOverride()
  {
    return override;
  }
  
  public String getPath()
  {
    return path;
  }
  
  public String[] getPaths()
  {
    return paths;
  }
  
  public Class getType()
  {
    return type;
  }
  
  public Type getType(Class paramClass)
  {
    return label.getType(paramClass);
  }
  
  public boolean isAttribute()
  {
    return attribute;
  }
  
  public boolean isCollection()
  {
    return collection;
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
  
  public boolean isText()
  {
    return text;
  }
  
  public boolean isTextList()
  {
    return list;
  }
  
  public boolean isUnion()
  {
    return union;
  }
  
  public String toString()
  {
    return label.toString();
  }
}

/* Location:
 * Qualified Name:     org.simpleframework.xml.core.CacheLabel
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */