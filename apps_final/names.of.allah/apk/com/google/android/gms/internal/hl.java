package com.google.android.gms.internal;

import java.util.Arrays;

public final class hl
{
  public static hl.a e(Object paramObject)
  {
    return new hl.a(paramObject, null);
  }
  
  public static boolean equal(Object paramObject1, Object paramObject2)
  {
    return (paramObject1 == paramObject2) || ((paramObject1 != null) && (paramObject1.equals(paramObject2)));
  }
  
  public static int hashCode(Object... paramVarArgs)
  {
    return Arrays.hashCode(paramVarArgs);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.hl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */