package org.simpleframework.xml.core;

import java.lang.annotation.Annotation;
import org.simpleframework.xml.Element;
import org.simpleframework.xml.ElementUnion;
import org.simpleframework.xml.strategy.Type;
import org.simpleframework.xml.stream.Format;

class ElementUnionLabel
  extends TemplateLabel
{
  private Contact contact;
  private GroupExtractor extractor;
  private Label label;
  private Expression path;
  private ElementUnion union;
  
  public ElementUnionLabel(Contact paramContact, ElementUnion paramElementUnion, Element paramElement, Format paramFormat)
  {
    extractor = new GroupExtractor(paramContact, paramElementUnion, paramFormat);
    label = new ElementLabel(paramContact, paramElement, paramFormat);
    contact = paramContact;
    union = paramElementUnion;
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
    return new CompositeUnion(paramContext, extractor, localExpression, localContact);
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
    Contact localContact = getContact();
    if (!extractor.isValid(paramClass)) {
      throw new UnionException("No type matches %s in %s for %s", new Object[] { paramClass, union, localContact });
    }
    return extractor.getLabel(paramClass);
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
    Contact localContact = getContact();
    if (!extractor.isValid(paramClass)) {
      throw new UnionException("No type matches %s in %s for %s", new Object[] { paramClass, union, localContact });
    }
    if (extractor.isDeclared(paramClass)) {
      return new OverrideType(localContact, paramClass);
    }
    return localContact;
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
 * Qualified Name:     org.simpleframework.xml.core.ElementUnionLabel
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */