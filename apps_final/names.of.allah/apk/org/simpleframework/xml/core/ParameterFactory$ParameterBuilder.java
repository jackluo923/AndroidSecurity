package org.simpleframework.xml.core;

import java.lang.reflect.Constructor;
import org.simpleframework.xml.stream.Format;

class ParameterFactory$ParameterBuilder
{
  private final Class entry;
  private final Class label;
  private final Class type;
  
  public ParameterFactory$ParameterBuilder(Class paramClass1, Class paramClass2)
  {
    this(paramClass1, paramClass2, null);
  }
  
  public ParameterFactory$ParameterBuilder(Class paramClass1, Class paramClass2, Class paramClass3)
  {
    label = paramClass2;
    entry = paramClass3;
    type = paramClass1;
  }
  
  private Constructor getConstructor(Class... paramVarArgs)
  {
    return type.getConstructor(paramVarArgs);
  }
  
  public Constructor getConstructor()
  {
    if (entry != null) {
      return getConstructor(label, entry);
    }
    return getConstructor(label);
  }
  
  public Constructor getConstructor(Class paramClass)
  {
    return getConstructor(new Class[] { Constructor.class, paramClass, Format.class, Integer.TYPE });
  }
  
  public Constructor getConstructor(Class paramClass1, Class paramClass2)
  {
    return getConstructor(new Class[] { Constructor.class, paramClass1, paramClass2, Format.class, Integer.TYPE });
  }
}

/* Location:
 * Qualified Name:     org.simpleframework.xml.core.ParameterFactory.ParameterBuilder
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */