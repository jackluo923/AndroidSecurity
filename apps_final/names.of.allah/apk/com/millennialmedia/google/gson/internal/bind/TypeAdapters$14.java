package com.millennialmedia.google.gson.internal.bind;

import com.millennialmedia.google.gson.JsonSyntaxException;
import com.millennialmedia.google.gson.TypeAdapter;
import com.millennialmedia.google.gson.stream.JsonReader;
import com.millennialmedia.google.gson.stream.JsonToken;
import com.millennialmedia.google.gson.stream.JsonWriter;
import java.math.BigDecimal;

final class TypeAdapters$14
  extends TypeAdapter<BigDecimal>
{
  public final BigDecimal read(JsonReader paramJsonReader)
  {
    if (paramJsonReader.peek() == JsonToken.NULL)
    {
      paramJsonReader.nextNull();
      return null;
    }
    try
    {
      paramJsonReader = new BigDecimal(paramJsonReader.nextString());
      return paramJsonReader;
    }
    catch (NumberFormatException paramJsonReader)
    {
      throw new JsonSyntaxException(paramJsonReader);
    }
  }
  
  public final void write(JsonWriter paramJsonWriter, BigDecimal paramBigDecimal)
  {
    paramJsonWriter.value(paramBigDecimal);
  }
}

/* Location:
 * Qualified Name:     com.millennialmedia.google.gson.internal.bind.TypeAdapters.14
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */