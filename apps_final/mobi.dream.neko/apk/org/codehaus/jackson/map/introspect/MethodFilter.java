package org.codehaus.jackson.map.introspect;

import java.lang.reflect.Method;

public abstract interface MethodFilter
{
  public abstract boolean includeMethod(Method paramMethod);
}

/* Location:
 * Qualified Name:     org.codehaus.jackson.map.introspect.MethodFilter
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */