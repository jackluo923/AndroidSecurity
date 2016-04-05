package com.millennialmedia.google.gson.internal.bind;

import com.millennialmedia.google.gson.JsonSyntaxException;
import com.millennialmedia.google.gson.TypeAdapter;
import com.millennialmedia.google.gson.stream.JsonReader;
import com.millennialmedia.google.gson.stream.JsonToken;
import com.millennialmedia.google.gson.stream.JsonWriter;
import java.math.BigInteger;

final class TypeAdapters$15
  extends TypeAdapter<BigInteger>
{
  public final BigInteger read(JsonReader paramJsonReader)
  {
    if (paramJsonReader.peek() == JsonToken.NULL)
    {
      paramJsonReader.nextNull();
      return null;
    }
    try
    {
      paramJsonReader = new BigInteger(paramJsonReader.nextString());
      return paramJsonReader;
    }
    catch (NumberFormatException paramJsonReader)
    {
      throw new JsonSyntaxException(paramJsonReader);
    }
  }
  
  public final void write(JsonWriter paramJsonWriter, BigInteger paramBigInteger)
  {
    paramJsonWriter.value(paramBigInteger);
  }
}

/* Location:
 * Qualified Name:     com.millennialmedia.google.gson.internal.bind.TypeAdapters.15
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */