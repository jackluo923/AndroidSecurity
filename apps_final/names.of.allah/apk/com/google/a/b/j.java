package com.google.a.b;

import java.lang.reflect.Type;

final class j
  implements ae<T>
{
  private final ah d = ah.a();
  
  j(f paramf, Class paramClass, Type paramType) {}
  
  public final T a()
  {
    try
    {
      Object localObject = d.a(a);
      return (T)localObject;
    }
    catch (Exception localException)
    {
      throw new RuntimeException("Unable to invoke no-args constructor for " + b + ". Register an InstanceCreator with Gson for this type may fix this problem.", localException);
    }
  }
}

/* Location:
 * Qualified Name:     com.google.a.b.j
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */