package org.codehaus.jackson.map.introspect;

import java.lang.reflect.Method;
import java.lang.reflect.Modifier;

class BasicClassIntrospector$MinimalMethodFilter
  implements MethodFilter
{
  public boolean includeMethod(Method paramMethod)
  {
    if (Modifier.isStatic(paramMethod.getModifiers())) {}
    while (paramMethod.getParameterTypes().length > 2) {
      return false;
    }
    return true;
  }
}

/* Location:
 * Qualified Name:     org.codehaus.jackson.map.introspect.BasicClassIntrospector.MinimalMethodFilter
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */