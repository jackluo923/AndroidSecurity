package com.millennialmedia.google.gson.internal.bind;

import com.millennialmedia.google.gson.JsonIOException;
import com.millennialmedia.google.gson.TypeAdapter;
import com.millennialmedia.google.gson.stream.JsonReader;
import com.millennialmedia.google.gson.stream.JsonToken;
import com.millennialmedia.google.gson.stream.JsonWriter;
import java.net.URI;
import java.net.URISyntaxException;

final class TypeAdapters$19
  extends TypeAdapter<URI>
{
  public final URI read(JsonReader paramJsonReader)
  {
    if (paramJsonReader.peek() == JsonToken.NULL) {
      paramJsonReader.nextNull();
    }
    for (;;)
    {
      return null;
      try
      {
        paramJsonReader = paramJsonReader.nextString();
        if ("null".equals(paramJsonReader)) {
          continue;
        }
        paramJsonReader = new URI(paramJsonReader);
        return paramJsonReader;
      }
      catch (URISyntaxException paramJsonReader)
      {
        throw new JsonIOException(paramJsonReader);
      }
    }
  }
  
  public final void write(JsonWriter paramJsonWriter, URI paramURI)
  {
    if (paramURI == null) {}
    for (paramURI = null;; paramURI = paramURI.toASCIIString())
    {
      paramJsonWriter.value(paramURI);
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.millennialmedia.google.gson.internal.bind.TypeAdapters.19
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */