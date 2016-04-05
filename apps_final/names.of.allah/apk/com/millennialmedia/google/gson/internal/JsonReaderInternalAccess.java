package com.millennialmedia.google.gson.internal;

import com.millennialmedia.google.gson.stream.JsonReader;

public abstract class JsonReaderInternalAccess
{
  public static JsonReaderInternalAccess INSTANCE;
  
  public abstract void promoteNameToValue(JsonReader paramJsonReader);
}

/* Location:
 * Qualified Name:     com.millennialmedia.google.gson.internal.JsonReaderInternalAccess
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */