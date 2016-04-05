package com.millennialmedia.google.gson.internal.bind;

import com.millennialmedia.google.gson.TypeAdapter;
import com.millennialmedia.google.gson.stream.JsonReader;
import com.millennialmedia.google.gson.stream.JsonToken;
import com.millennialmedia.google.gson.stream.JsonWriter;
import java.net.URL;

final class TypeAdapters$18
  extends TypeAdapter<URL>
{
  public final URL read(JsonReader paramJsonReader)
  {
    if (paramJsonReader.peek() == JsonToken.NULL) {
      paramJsonReader.nextNull();
    }
    do
    {
      return null;
      paramJsonReader = paramJsonReader.nextString();
    } while ("null".equals(paramJsonReader));
    return new URL(paramJsonReader);
  }
  
  public final void write(JsonWriter paramJsonWriter, URL paramURL)
  {
    if (paramURL == null) {}
    for (paramURL = null;; paramURL = paramURL.toExternalForm())
    {
      paramJsonWriter.value(paramURL);
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.millennialmedia.google.gson.internal.bind.TypeAdapters.18
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */