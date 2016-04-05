package org.codehaus.jackson.map.introspect;

import java.lang.reflect.Method;
import org.codehaus.jackson.map.util.ClassUtil;

@Deprecated
public class BasicClassIntrospector$GetterMethodFilter
  implements MethodFilter
{
  public boolean includeMethod(Method paramMethod)
  {
    return ClassUtil.hasGetterSignature(paramMethod);
  }
}

/* Location:
 * Qualified Name:     org.codehaus.jackson.map.introspect.BasicClassIntrospector.GetterMethodFilter
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */