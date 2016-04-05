package com.millennialmedia.google.gson.internal.bind;

import com.millennialmedia.google.gson.TypeAdapter;
import com.millennialmedia.google.gson.stream.JsonReader;
import com.millennialmedia.google.gson.stream.JsonToken;
import com.millennialmedia.google.gson.stream.JsonWriter;

final class TypeAdapters$13
  extends TypeAdapter<String>
{
  public final String read(JsonReader paramJsonReader)
  {
    JsonToken localJsonToken = paramJsonReader.peek();
    if (localJsonToken == JsonToken.NULL)
    {
      paramJsonReader.nextNull();
      return null;
    }
    if (localJsonToken == JsonToken.BOOLEAN) {
      return Boolean.toString(paramJsonReader.nextBoolean());
    }
    return paramJsonReader.nextString();
  }
  
  public final void write(JsonWriter paramJsonWriter, String paramString)
  {
    paramJsonWriter.value(paramString);
  }
}

/* Location:
 * Qualified Name:     com.millennialmedia.google.gson.internal.bind.TypeAdapters.13
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */