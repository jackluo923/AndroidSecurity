package org.codehaus.jackson.map.introspect;

import java.lang.reflect.Method;
import java.util.Collection;
import java.util.Map;
import org.codehaus.jackson.map.util.ClassUtil;

@Deprecated
public final class BasicClassIntrospector$SetterAndGetterMethodFilter
  extends BasicClassIntrospector.SetterMethodFilter
{
  public boolean includeMethod(Method paramMethod)
  {
    if (super.includeMethod(paramMethod)) {}
    do
    {
      return true;
      if (!ClassUtil.hasGetterSignature(paramMethod)) {
        return false;
      }
      paramMethod = paramMethod.getReturnType();
    } while ((Collection.class.isAssignableFrom(paramMethod)) || (Map.class.isAssignableFrom(paramMethod)));
    return false;
  }
}

/* Location:
 * Qualified Name:     org.codehaus.jackson.map.introspect.BasicClassIntrospector.SetterAndGetterMethodFilter
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */