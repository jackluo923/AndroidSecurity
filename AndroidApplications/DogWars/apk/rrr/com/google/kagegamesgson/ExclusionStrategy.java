package com.google.kagegamesgson;

public abstract interface ExclusionStrategy
{
  public abstract boolean shouldSkipClass(Class<?> paramClass);
  
  public abstract boolean shouldSkipField(FieldAttributes paramFieldAttributes);
}

/* Location:
 * Qualified Name:     com.google.kagegamesgson.ExclusionStrategy
 * Java Class Version: 1.2 (46.0)
 * JD-Core Version:    0.7.1
 */