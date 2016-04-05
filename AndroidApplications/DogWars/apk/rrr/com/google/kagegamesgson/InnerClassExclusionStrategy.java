package com.google.kagegamesgson;

class InnerClassExclusionStrategy
  implements ExclusionStrategy
{
  private boolean isInnerClass(Class<?> paramClass)
  {
    boolean bool = paramClass.isMemberClass();
    if (bool)
    {
      bool = isStatic(paramClass);
      if (bool) {}
    }
    for (bool = true;; bool = false) {
      return bool;
    }
  }
  
  private boolean isStatic(Class<?> paramClass)
  {
    int i = paramClass.getModifiers();
    i &= 0x8;
    if (i != 0) {}
    int j;
    for (i = 1;; j = 0) {
      return i;
    }
  }
  
  public boolean shouldSkipClass(Class<?> paramClass)
  {
    boolean bool = isInnerClass(paramClass);
    return bool;
  }
  
  public boolean shouldSkipField(FieldAttributes paramFieldAttributes)
  {
    Class localClass = paramFieldAttributes.getDeclaredClass();
    boolean bool = isInnerClass(localClass);
    return bool;
  }
}

/* Location:
 * Qualified Name:     com.google.kagegamesgson.InnerClassExclusionStrategy
 * Java Class Version: 1.2 (46.0)
 * JD-Core Version:    0.7.1
 */