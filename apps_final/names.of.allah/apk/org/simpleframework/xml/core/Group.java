package org.simpleframework.xml.core;

abstract interface Group
{
  public abstract LabelMap getElements();
  
  public abstract Label getLabel(Class paramClass);
  
  public abstract Label getText();
  
  public abstract boolean isInline();
  
  public abstract boolean isTextList();
  
  public abstract String toString();
}

/* Location:
 * Qualified Name:     org.simpleframework.xml.core.Group
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */