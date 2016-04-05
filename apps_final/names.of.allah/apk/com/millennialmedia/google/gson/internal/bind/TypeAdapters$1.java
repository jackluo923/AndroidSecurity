package com.millennialmedia.google.gson.internal.bind;

import com.millennialmedia.google.gson.TypeAdapter;
import com.millennialmedia.google.gson.stream.JsonReader;
import com.millennialmedia.google.gson.stream.JsonToken;
import com.millennialmedia.google.gson.stream.JsonWriter;

final class TypeAdapters$1
  extends TypeAdapter<Class>
{
  public final Class read(JsonReader paramJsonReader)
  {
    if (paramJsonReader.peek() == JsonToken.NULL)
    {
      paramJsonReader.nextNull();
      return null;
    }
    throw new UnsupportedOperationException("Attempted to deserialize a java.lang.Class. Forgot to register a type adapter?");
  }
  
  public final void write(JsonWriter paramJsonWriter, Class paramClass)
  {
    if (paramClass == null)
    {
      paramJsonWriter.nullValue();
      return;
    }
    throw new UnsupportedOperationException("Attempted to serialize java.lang.Class: " + paramClass.getName() + ". Forgot to register a type adapter?");
  }
}

/* Location:
 * Qualified Name:     com.millennialmedia.google.gson.internal.bind.TypeAdapters.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */