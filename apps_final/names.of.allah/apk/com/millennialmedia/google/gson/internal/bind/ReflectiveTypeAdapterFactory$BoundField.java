package com.millennialmedia.google.gson.internal.bind;

import com.millennialmedia.google.gson.stream.JsonReader;
import com.millennialmedia.google.gson.stream.JsonWriter;

abstract class ReflectiveTypeAdapterFactory$BoundField
{
  final boolean deserialized;
  final String name;
  final boolean serialized;
  
  protected ReflectiveTypeAdapterFactory$BoundField(String paramString, boolean paramBoolean1, boolean paramBoolean2)
  {
    name = paramString;
    serialized = paramBoolean1;
    deserialized = paramBoolean2;
  }
  
  abstract void read(JsonReader paramJsonReader, Object paramObject);
  
  abstract void write(JsonWriter paramJsonWriter, Object paramObject);
}

/* Location:
 * Qualified Name:     com.millennialmedia.google.gson.internal.bind.ReflectiveTypeAdapterFactory.BoundField
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */