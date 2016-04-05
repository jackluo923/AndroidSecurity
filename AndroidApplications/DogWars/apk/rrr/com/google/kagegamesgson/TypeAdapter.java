package com.google.kagegamesgson;

abstract interface TypeAdapter
{
  public abstract <T> T adaptType(Object paramObject, Class<T> paramClass);
}

/* Location:
 * Qualified Name:     com.google.kagegamesgson.TypeAdapter
 * Java Class Version: 1.2 (46.0)
 * JD-Core Version:    0.7.1
 */