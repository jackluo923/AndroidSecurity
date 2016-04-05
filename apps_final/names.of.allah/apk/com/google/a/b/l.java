package com.google.a.b;

import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;

final class l
  implements ae<T>
{
  l(f paramf, Constructor paramConstructor) {}
  
  public final T a()
  {
    try
    {
      Object localObject = a.newInstance(null);
      return (T)localObject;
    }
    catch (InstantiationException localInstantiationException)
    {
      throw new RuntimeException("Failed to invoke " + a + " with no args", localInstantiationException);
    }
    catch (InvocationTargetException localInvocationTargetException)
    {
      throw new RuntimeException("Failed to invoke " + a + " with no args", localInvocationTargetException.getTargetException());
    }
    catch (IllegalAccessException localIllegalAccessException)
    {
      throw new AssertionError(localIllegalAccessException);
    }
  }
}

/* Location:
 * Qualified Name:     com.google.a.b.l
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */