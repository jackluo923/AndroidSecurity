package org.simpleframework.xml.core;

import java.lang.reflect.Constructor;
import org.simpleframework.xml.stream.Format;

class LabelExtractor$LabelBuilder
{
  private final Class entry;
  private final Class label;
  private final Class type;
  
  public LabelExtractor$LabelBuilder(Class paramClass1, Class paramClass2)
  {
    this(paramClass1, paramClass2, null);
  }
  
  public LabelExtractor$LabelBuilder(Class paramClass1, Class paramClass2, Class paramClass3)
  {
    entry = paramClass3;
    label = paramClass2;
    type = paramClass1;
  }
  
  private Constructor getConstructor(Class paramClass)
  {
    return type.getConstructor(new Class[] { Contact.class, paramClass, Format.class });
  }
  
  private Constructor getConstructor(Class paramClass1, Class paramClass2)
  {
    return type.getConstructor(new Class[] { Contact.class, paramClass1, paramClass2, Format.class });
  }
  
  public Constructor getConstructor()
  {
    if (entry != null) {
      return getConstructor(label, entry);
    }
    return getConstructor(label);
  }
}

/* Location:
 * Qualified Name:     org.simpleframework.xml.core.LabelExtractor.LabelBuilder
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */