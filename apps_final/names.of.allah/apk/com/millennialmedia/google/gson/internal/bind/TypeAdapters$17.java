package com.millennialmedia.google.gson.internal.bind;

import com.millennialmedia.google.gson.TypeAdapter;
import com.millennialmedia.google.gson.stream.JsonReader;
import com.millennialmedia.google.gson.stream.JsonToken;
import com.millennialmedia.google.gson.stream.JsonWriter;

final class TypeAdapters$17
  extends TypeAdapter<StringBuffer>
{
  public final StringBuffer read(JsonReader paramJsonReader)
  {
    if (paramJsonReader.peek() == JsonToken.NULL)
    {
      paramJsonReader.nextNull();
      return null;
    }
    return new StringBuffer(paramJsonReader.nextString());
  }
  
  public final void write(JsonWriter paramJsonWriter, StringBuffer paramStringBuffer)
  {
    if (paramStringBuffer == null) {}
    for (paramStringBuffer = null;; paramStringBuffer = paramStringBuffer.toString())
    {
      paramJsonWriter.value(paramStringBuffer);
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.millennialmedia.google.gson.internal.bind.TypeAdapters.17
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */