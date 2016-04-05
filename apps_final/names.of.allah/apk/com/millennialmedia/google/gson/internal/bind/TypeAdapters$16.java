package com.millennialmedia.google.gson.internal.bind;

import com.millennialmedia.google.gson.TypeAdapter;
import com.millennialmedia.google.gson.stream.JsonReader;
import com.millennialmedia.google.gson.stream.JsonToken;
import com.millennialmedia.google.gson.stream.JsonWriter;

final class TypeAdapters$16
  extends TypeAdapter<StringBuilder>
{
  public final StringBuilder read(JsonReader paramJsonReader)
  {
    if (paramJsonReader.peek() == JsonToken.NULL)
    {
      paramJsonReader.nextNull();
      return null;
    }
    return new StringBuilder(paramJsonReader.nextString());
  }
  
  public final void write(JsonWriter paramJsonWriter, StringBuilder paramStringBuilder)
  {
    if (paramStringBuilder == null) {}
    for (paramStringBuilder = null;; paramStringBuilder = paramStringBuilder.toString())
    {
      paramJsonWriter.value(paramStringBuilder);
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.millennialmedia.google.gson.internal.bind.TypeAdapters.16
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */