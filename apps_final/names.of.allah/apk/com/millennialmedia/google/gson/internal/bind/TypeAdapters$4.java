package com.millennialmedia.google.gson.internal.bind;

import com.millennialmedia.google.gson.TypeAdapter;
import com.millennialmedia.google.gson.stream.JsonReader;
import com.millennialmedia.google.gson.stream.JsonToken;
import com.millennialmedia.google.gson.stream.JsonWriter;

final class TypeAdapters$4
  extends TypeAdapter<Boolean>
{
  public final Boolean read(JsonReader paramJsonReader)
  {
    if (paramJsonReader.peek() == JsonToken.NULL)
    {
      paramJsonReader.nextNull();
      return null;
    }
    return Boolean.valueOf(paramJsonReader.nextString());
  }
  
  public final void write(JsonWriter paramJsonWriter, Boolean paramBoolean)
  {
    if (paramBoolean == null) {}
    for (paramBoolean = "null";; paramBoolean = paramBoolean.toString())
    {
      paramJsonWriter.value(paramBoolean);
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.millennialmedia.google.gson.internal.bind.TypeAdapters.4
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */