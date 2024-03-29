package com.millennialmedia.google.gson.internal.bind;

import com.millennialmedia.google.gson.JsonSyntaxException;
import com.millennialmedia.google.gson.TypeAdapter;
import com.millennialmedia.google.gson.stream.JsonReader;
import com.millennialmedia.google.gson.stream.JsonToken;
import com.millennialmedia.google.gson.stream.JsonWriter;

final class TypeAdapters$8
  extends TypeAdapter<Number>
{
  public final Number read(JsonReader paramJsonReader)
  {
    if (paramJsonReader.peek() == JsonToken.NULL)
    {
      paramJsonReader.nextNull();
      return null;
    }
    try
    {
      long l = paramJsonReader.nextLong();
      return Long.valueOf(l);
    }
    catch (NumberFormatException paramJsonReader)
    {
      throw new JsonSyntaxException(paramJsonReader);
    }
  }
  
  public final void write(JsonWriter paramJsonWriter, Number paramNumber)
  {
    paramJsonWriter.value(paramNumber);
  }
}

/* Location:
 * Qualified Name:     com.millennialmedia.google.gson.internal.bind.TypeAdapters.8
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */