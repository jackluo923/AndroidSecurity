package com.j256.ormlite.table;

import java.lang.reflect.Constructor;

public abstract interface ObjectFactory<T>
{
  public abstract T createObject(Constructor<T> paramConstructor, Class<T> paramClass);
}

/* Location:
 * Qualified Name:     com.j256.ormlite.table.ObjectFactory
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */