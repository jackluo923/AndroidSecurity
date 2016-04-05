package org.simpleframework.xml.core;

abstract class TemplateParameter
  implements Parameter
{
  public boolean isAttribute()
  {
    return false;
  }
  
  public boolean isText()
  {
    return false;
  }
}

/* Location:
 * Qualified Name:     org.simpleframework.xml.core.TemplateParameter
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */