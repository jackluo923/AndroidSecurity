package org.simpleframework.xml.core;

import org.simpleframework.xml.strategy.Type;

abstract class TemplateLabel
  implements Label
{
  private final KeyBuilder builder = new KeyBuilder(this);
  
  public Type getDependent()
  {
    return null;
  }
  
  public String getEntry()
  {
    return null;
  }
  
  public Object getKey()
  {
    return builder.getKey();
  }
  
  public Label getLabel(Class paramClass)
  {
    return this;
  }
  
  public String[] getNames()
  {
    return new String[] { getPath(), getName() };
  }
  
  public String[] getPaths()
  {
    return new String[] { getPath() };
  }
  
  public Type getType(Class paramClass)
  {
    return getContact();
  }
  
  public boolean isAttribute()
  {
    return false;
  }
  
  public boolean isCollection()
  {
    return false;
  }
  
  public boolean isInline()
  {
    return false;
  }
  
  public boolean isText()
  {
    return false;
  }
  
  public boolean isTextList()
  {
    return false;
  }
  
  public boolean isUnion()
  {
    return false;
  }
}

/* Location:
 * Qualified Name:     org.simpleframework.xml.core.TemplateLabel
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */