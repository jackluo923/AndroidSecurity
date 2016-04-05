package com.google.kagegamesgson;

final class Preconditions
{
  public static void checkArgument(boolean paramBoolean)
  {
    if (!paramBoolean)
    {
      IllegalArgumentException localIllegalArgumentException = new java/lang/IllegalArgumentException;
      Object localObject = new java/lang/StringBuilder;
      ((StringBuilder)localObject).<init>();
      String str = "condition failed: ";
      localObject = ((StringBuilder)localObject).append(str);
      localObject = ((StringBuilder)localObject).append(paramBoolean);
      localObject = ((StringBuilder)localObject).toString();
      localIllegalArgumentException.<init>((String)localObject);
      throw localIllegalArgumentException;
    }
  }
  
  public static void checkNotNull(Object paramObject)
  {
    if (paramObject != null) {}
    for (boolean bool = true;; bool = false)
    {
      checkArgument(bool);
      return;
    }
  }
  
  public static void checkState(boolean paramBoolean)
  {
    if (!paramBoolean)
    {
      IllegalArgumentException localIllegalArgumentException = new java/lang/IllegalArgumentException;
      Object localObject = new java/lang/StringBuilder;
      ((StringBuilder)localObject).<init>();
      String str = "condition failed: ";
      localObject = ((StringBuilder)localObject).append(str);
      localObject = ((StringBuilder)localObject).append(paramBoolean);
      localObject = ((StringBuilder)localObject).toString();
      localIllegalArgumentException.<init>((String)localObject);
      throw localIllegalArgumentException;
    }
  }
}

/* Location:
 * Qualified Name:     com.google.kagegamesgson.Preconditions
 * Java Class Version: 1.2 (46.0)
 * JD-Core Version:    0.7.1
 */