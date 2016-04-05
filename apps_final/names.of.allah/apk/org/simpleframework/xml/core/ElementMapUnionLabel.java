package org.simpleframework.xml.core;

import java.lang.annotation.Annotation;
import org.simpleframework.xml.ElementMap;
import org.simpleframework.xml.ElementMapUnion;
import org.simpleframework.xml.strategy.Type;
import org.simpleframework.xml.stream.Format;

class ElementMapUnionLabel
  extends TemplateLabel
{
  private Contact contact;
  private GroupExtractor extractor;
  private Label label;
  private Expression path;
  
  public ElementMapUnionLabel(Contact paramContact, ElementMapUnion paramElementMapUnion, ElementMap paramElementMap, Format paramFormat)
  {
    extractor = new GroupExtractor(paramContact, paramElementMapUnion, paramFormat);
    label = new ElementMapLabel(paramContact, paramElementMap, paramFormat);
    contact = paramContact;
  }
  
  public Annotation getAnnotation()
  {
    return label.getAnnotation();
  }
  
  public Contact getContact()
  {
    return contact;
  }
  
  public Converter getConverter(Context paramContext)
  {
    Expression localExpression = getExpression();
    Contact localContact = getContact();
    if (localContact == null) {
      throw new UnionException("Union %s was not declared on a field or method", new Object[] { label });
    }
    return new CompositeMapUnion(paramContext, extractor, localExpression, localContact);
  }
  
  public Decorator getDecorator()
  {
    return label.getDecorator();
  }
  
  public Type getDependent()
  {
    return label.getDependent();
  }
  
  public Object getEmpty(Context paramContext)
  {
    return label.getEmpty(paramContext);
  }
  
  public String getEntry()
  {
    return label.getEntry();
  }
  
  public Expression getExpression()
  {
    if (path == null) {
      path = label.getExpression();
    }
    return path;
  }
  
  public Label getLabel(Class paramClass)
  {
    return this;
  }
  
  public String getName()
  {
    return label.getName();
  }
  
  public String[] getNames()
  {
    return extractor.getNames();
  }
  
  public String getOverride()
  {
    return label.getOverride();
  }
  
  public String getPath()
  {
    return label.getPath();
  }
  
  public String[] getPaths()
  {
    return extractor.getPaths();
  }
  
  public Class getType()
  {
    return label.getType();
  }
  
  public Type getType(Class paramClass)
  {
    return getContact();
  }
  
  public boolean isCollection()
  {
    return label.isCollection();
  }
  
  public boolean isData()
  {
    return label.isData();
  }
  
  public boolean isInline()
  {
    return label.isInline();
  }
  
  public boolean isRequired()
  {
    return label.isRequired();
  }
  
  public boolean isUnion()
  {
    return true;
  }
  
  public String toString()
  {
    return label.toString();
  }
}

/* Location:
 * Qualified Name:     org.simpleframework.xml.core.ElementMapUnionLabel
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */