package com.google.kagegamesgson;

import com.google.kagegamesgson.annotations.Since;
import com.google.kagegamesgson.annotations.Until;

final class VersionExclusionStrategy
  implements ExclusionStrategy
{
  private final double version;
  
  public VersionExclusionStrategy(double paramDouble)
  {
    double d = 0.0D;
    boolean bool = paramDouble < d;
    if (!bool) {}
    for (bool = true;; bool = false)
    {
      Preconditions.checkArgument(bool);
      version = paramDouble;
      return;
    }
  }
  
  private boolean isValidSince(Since paramSince)
  {
    if (paramSince != null)
    {
      double d1 = paramSince.value();
      double d2 = version;
      bool = d1 < d2;
      if (!bool) {}
    }
    for (boolean bool = false;; bool = true) {
      return bool;
    }
  }
  
  private boolean isValidUntil(Until paramUntil)
  {
    if (paramUntil != null)
    {
      double d1 = paramUntil.value();
      double d2 = version;
      bool = d1 < d2;
      if (bool) {}
    }
    for (boolean bool = false;; bool = true) {
      return bool;
    }
  }
  
  private boolean isValidVersion(Since paramSince, Until paramUntil)
  {
    boolean bool = isValidSince(paramSince);
    if (bool)
    {
      bool = isValidUntil(paramUntil);
      if (!bool) {}
    }
    for (bool = true;; bool = false) {
      return bool;
    }
  }
  
  public boolean shouldSkipClass(Class<?> paramClass)
  {
    Object localObject1 = Since.class;
    localObject1 = paramClass.getAnnotation((Class)localObject1);
    localObject1 = (Since)localObject1;
    Object localObject2 = Until.class;
    localObject2 = paramClass.getAnnotation((Class)localObject2);
    localObject2 = (Until)localObject2;
    boolean bool = isValidVersion((Since)localObject1, (Until)localObject2);
    if (!bool) {}
    for (bool = true;; bool = false) {
      return bool;
    }
  }
  
  public boolean shouldSkipField(FieldAttributes paramFieldAttributes)
  {
    Object localObject1 = Since.class;
    localObject1 = paramFieldAttributes.getAnnotation((Class)localObject1);
    localObject1 = (Since)localObject1;
    Object localObject2 = Until.class;
    localObject2 = paramFieldAttributes.getAnnotation((Class)localObject2);
    localObject2 = (Until)localObject2;
    boolean bool = isValidVersion((Since)localObject1, (Until)localObject2);
    if (!bool) {}
    for (bool = true;; bool = false) {
      return bool;
    }
  }
}

/* Location:
 * Qualified Name:     com.google.kagegamesgson.VersionExclusionStrategy
 * Java Class Version: 5 (49.0)
 * JD-Core Version:    0.7.1
 */