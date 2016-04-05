package org.simpleframework.xml.core;

import java.lang.annotation.Annotation;

class LabelKey
{
  private final Class label;
  private final String name;
  private final Class owner;
  private final Class type;
  
  public LabelKey(Contact paramContact, Annotation paramAnnotation)
  {
    owner = paramContact.getDeclaringClass();
    label = paramAnnotation.annotationType();
    name = paramContact.getName();
    type = paramContact.getType();
  }
  
  private boolean equals(LabelKey paramLabelKey)
  {
    boolean bool2 = false;
    boolean bool1;
    if (paramLabelKey == this) {
      bool1 = true;
    }
    do
    {
      do
      {
        do
        {
          return bool1;
          bool1 = bool2;
        } while (label != label);
        bool1 = bool2;
      } while (owner != owner);
      bool1 = bool2;
    } while (type != type);
    return name.equals(name);
  }
  
  public boolean equals(Object paramObject)
  {
    if ((paramObject instanceof LabelKey)) {
      return equals((LabelKey)paramObject);
    }
    return false;
  }
  
  public int hashCode()
  {
    return name.hashCode() ^ owner.hashCode();
  }
  
  public String toString()
  {
    return String.format("key '%s' for %s", new Object[] { name, owner });
  }
}

/* Location:
 * Qualified Name:     org.simpleframework.xml.core.LabelKey
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */