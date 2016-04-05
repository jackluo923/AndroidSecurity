package com.google.kagegamesgson;

final class AnonymousAndLocalClassExclusionStrategy
  implements ExclusionStrategy
{
  private boolean isAnonymousOrLocal(Class<?> paramClass)
  {
    Class localClass = Enum.class;
    boolean bool = localClass.isAssignableFrom(paramClass);
    if (!bool)
    {
      bool = paramClass.isAnonymousClass();
      if (!bool)
      {
        bool = paramClass.isLocalClass();
        if (!bool) {
          break label36;
        }
      }
    }
    label36:
    for (bool = true;; bool = false) {
      return bool;
    }
  }
  
  public boolean shouldSkipClass(Class<?> paramClass)
  {
    boolean bool = isAnonymousOrLocal(paramClass);
    return bool;
  }
  
  public boolean shouldSkipField(FieldAttributes paramFieldAttributes)
  {
    Class localClass = paramFieldAttributes.getDeclaredClass();
    boolean bool = isAnonymousOrLocal(localClass);
    return bool;
  }
}

/* Location:
 * Qualified Name:     com.google.kagegamesgson.AnonymousAndLocalClassExclusionStrategy
 * Java Class Version: 5 (49.0)
 * JD-Core Version:    0.7.1
 */