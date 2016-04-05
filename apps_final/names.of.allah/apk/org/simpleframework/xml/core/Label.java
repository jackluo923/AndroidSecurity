package org.simpleframework.xml.core;

import java.lang.annotation.Annotation;
import org.simpleframework.xml.strategy.Type;

abstract interface Label
{
  public abstract Annotation getAnnotation();
  
  public abstract Contact getContact();
  
  public abstract Converter getConverter(Context paramContext);
  
  public abstract Decorator getDecorator();
  
  public abstract Type getDependent();
  
  public abstract Object getEmpty(Context paramContext);
  
  public abstract String getEntry();
  
  public abstract Expression getExpression();
  
  public abstract Object getKey();
  
  public abstract Label getLabel(Class paramClass);
  
  public abstract String getName();
  
  public abstract String[] getNames();
  
  public abstract String getOverride();
  
  public abstract String getPath();
  
  public abstract String[] getPaths();
  
  public abstract Class getType();
  
  public abstract Type getType(Class paramClass);
  
  public abstract boolean isAttribute();
  
  public abstract boolean isCollection();
  
  public abstract boolean isData();
  
  public abstract boolean isInline();
  
  public abstract boolean isRequired();
  
  public abstract boolean isText();
  
  public abstract boolean isTextList();
  
  public abstract boolean isUnion();
  
  public abstract String toString();
}

/* Location:
 * Qualified Name:     org.simpleframework.xml.core.Label
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */