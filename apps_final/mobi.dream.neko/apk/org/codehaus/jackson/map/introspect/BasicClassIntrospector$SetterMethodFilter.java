package org.codehaus.jackson.map.introspect;

import java.lang.reflect.Method;
import java.lang.reflect.Modifier;

@Deprecated
public class BasicClassIntrospector$SetterMethodFilter
  implements MethodFilter
{
  public boolean includeMethod(Method paramMethod)
  {
    if (Modifier.isStatic(paramMethod.getModifiers())) {
      return false;
    }
    switch (paramMethod.getParameterTypes().length)
    {
    default: 
      return false;
    case 1: 
      return true;
    }
    return true;
  }
}

/* Location:
 * Qualified Name:     org.codehaus.jackson.map.introspect.BasicClassIntrospector.SetterMethodFilter
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */