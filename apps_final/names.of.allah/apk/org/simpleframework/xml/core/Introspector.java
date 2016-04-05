package org.simpleframework.xml.core;

import java.lang.annotation.Annotation;
import org.simpleframework.xml.Path;
import org.simpleframework.xml.Root;
import org.simpleframework.xml.strategy.Type;
import org.simpleframework.xml.stream.Format;

class Introspector
{
  private final Contact contact;
  private final Format format;
  private final Label label;
  private final Annotation marker;
  
  public Introspector(Contact paramContact, Label paramLabel, Format paramFormat)
  {
    marker = paramContact.getAnnotation();
    contact = paramContact;
    format = paramFormat;
    label = paramLabel;
  }
  
  private String getDefault()
  {
    String str = label.getOverride();
    if (!isEmpty(str)) {
      return str;
    }
    return contact.getName();
  }
  
  private String getName(Class paramClass)
  {
    String str = getRoot(paramClass);
    if (str != null) {
      return str;
    }
    return Reflector.getName(paramClass.getSimpleName());
  }
  
  private String getRoot(Class paramClass)
  {
    for (Class localClass = paramClass; localClass != null; localClass = localClass.getSuperclass())
    {
      String str = getRoot(paramClass, localClass);
      if (str != null) {
        return str;
      }
    }
    return null;
  }
  
  private String getRoot(Class<?> paramClass1, Class<?> paramClass2)
  {
    paramClass1 = paramClass2.getSimpleName();
    paramClass2 = (Root)paramClass2.getAnnotation(Root.class);
    if (paramClass2 != null)
    {
      paramClass2 = paramClass2.name();
      if (!isEmpty(paramClass2)) {
        return paramClass2;
      }
      return Reflector.getName(paramClass1);
    }
    return null;
  }
  
  public Contact getContact()
  {
    return contact;
  }
  
  public Type getDependent()
  {
    return label.getDependent();
  }
  
  public String getEntry()
  {
    Class localClass2 = getDependent().getType();
    Class localClass1 = localClass2;
    if (localClass2.isArray()) {
      localClass1 = localClass2.getComponentType();
    }
    return getName(localClass1);
  }
  
  public Expression getExpression()
  {
    String str = getPath();
    if (str != null) {
      return new PathParser(str, contact, format);
    }
    return new EmptyExpression(format);
  }
  
  public String getName()
  {
    String str = label.getEntry();
    if (!label.isInline()) {
      str = getDefault();
    }
    return str;
  }
  
  public String getPath()
  {
    Path localPath = (Path)contact.getAnnotation(Path.class);
    if (localPath == null) {
      return null;
    }
    return localPath.value();
  }
  
  public boolean isEmpty(String paramString)
  {
    return (paramString == null) || (paramString.length() == 0);
  }
  
  public String toString()
  {
    return String.format("%s on %s", new Object[] { marker, contact });
  }
}

/* Location:
 * Qualified Name:     org.simpleframework.xml.core.Introspector
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */