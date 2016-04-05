package com.millennialmedia.google.gson.internal;

import com.millennialmedia.google.gson.JsonElement;
import com.millennialmedia.google.gson.JsonIOException;
import com.millennialmedia.google.gson.JsonNull;
import com.millennialmedia.google.gson.JsonSyntaxException;
import com.millennialmedia.google.gson.TypeAdapter;
import com.millennialmedia.google.gson.internal.bind.TypeAdapters;
import com.millennialmedia.google.gson.stream.JsonReader;
import com.millennialmedia.google.gson.stream.JsonWriter;
import com.millennialmedia.google.gson.stream.MalformedJsonException;
import java.io.EOFException;
import java.io.IOException;
import java.io.Writer;

public final class Streams
{
  public static JsonElement parse(JsonReader paramJsonReader)
  {
    int i = 1;
    try
    {
      paramJsonReader.peek();
      i = 0;
      paramJsonReader = (JsonElement)TypeAdapters.JSON_ELEMENT.read(paramJsonReader);
      return paramJsonReader;
    }
    catch (EOFException paramJsonReader)
    {
      if (i != 0) {
        return JsonNull.INSTANCE;
      }
      throw new JsonSyntaxException(paramJsonReader);
    }
    catch (MalformedJsonException paramJsonReader)
    {
      throw new JsonSyntaxException(paramJsonReader);
    }
    catch (IOException paramJsonReader)
    {
      throw new JsonIOException(paramJsonReader);
    }
    catch (NumberFormatException paramJsonReader)
    {
      throw new JsonSyntaxException(paramJsonReader);
    }
  }
  
  public static void write(JsonElement paramJsonElement, JsonWriter paramJsonWriter)
  {
    TypeAdapters.JSON_ELEMENT.write(paramJsonWriter, paramJsonElement);
  }
  
  public static Writer writerForAppendable(Appendable paramAppendable)
  {
    if ((paramAppendable instanceof Writer)) {
      return (Writer)paramAppendable;
    }
    return new Streams.AppendableWriter(paramAppendable, null);
  }
}

/* Location:
 * Qualified Name:     com.millennialmedia.google.gson.internal.Streams
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */