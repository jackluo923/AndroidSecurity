package com.google.kagegamesgson;

class SyntheticFieldExclusionStrategy
  implements ExclusionStrategy
{
  private final boolean skipSyntheticFields;
  
  SyntheticFieldExclusionStrategy(boolean paramBoolean)
  {
    skipSyntheticFields = paramBoolean;
  }
  
  public boolean shouldSkipClass(Class<?> paramClass)
  {
    boolean bool = false;
    return bool;
  }
  
  public boolean shouldSkipField(FieldAttributes paramFieldAttributes)
  {
    boolean bool = skipSyntheticFields;
    if (bool)
    {
      bool = paramFieldAttributes.isSynthetic();
      if (!bool) {}
    }
    for (bool = true;; bool = false) {
      return bool;
    }
  }
}

/* Location:
 * Qualified Name:     com.google.kagegamesgson.SyntheticFieldExclusionStrategy
 * Java Class Version: 1.2 (46.0)
 * JD-Core Version:    0.7.1
 */