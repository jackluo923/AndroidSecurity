package com.google.kagegamesgson;

import java.lang.reflect.Type;

abstract interface ObjectConstructor
{
  public abstract <T> T construct(Type paramType);
  
  public abstract Object constructArray(Type paramType, int paramInt);
}

/* Location:
 * Qualified Name:     com.google.kagegamesgson.ObjectConstructor
 * Java Class Version: 1.2 (46.0)
 * JD-Core Version:    0.7.1
 */