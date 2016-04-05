package com.google.kagegamesgson;

import java.lang.reflect.Type;

public abstract interface InstanceCreator<T>
{
  public abstract T createInstance(Type paramType);
}

/* Location:
 * Qualified Name:     com.google.kagegamesgson.InstanceCreator
 * Java Class Version: 1.2 (46.0)
 * JD-Core Version:    0.7.1
 */