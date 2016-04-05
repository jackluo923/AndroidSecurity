package com.millennialmedia.google.gson;

import com.millennialmedia.google.gson.reflect.TypeToken;

public abstract interface TypeAdapterFactory
{
  public abstract <T> TypeAdapter<T> create(Gson paramGson, TypeToken<T> paramTypeToken);
}

/* Location:
 * Qualified Name:     com.millennialmedia.google.gson.TypeAdapterFactory
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */