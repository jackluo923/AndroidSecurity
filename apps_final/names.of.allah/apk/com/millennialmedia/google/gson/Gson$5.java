package com.millennialmedia.google.gson;

import com.millennialmedia.google.gson.stream.JsonReader;
import com.millennialmedia.google.gson.stream.JsonToken;
import com.millennialmedia.google.gson.stream.JsonWriter;

class Gson$5
  extends TypeAdapter<Number>
{
  Gson$5(Gson paramGson) {}
  
  public Number read(JsonReader paramJsonReader)
  {
    if (paramJsonReader.peek() == JsonToken.NULL)
    {
      paramJsonReader.nextNull();
      return null;
    }
    return Long.valueOf(paramJsonReader.nextLong());
  }
  
  public void write(JsonWriter paramJsonWriter, Number paramNumber)
  {
    if (paramNumber == null)
    {
      paramJsonWriter.nullValue();
      return;
    }
    paramJsonWriter.value(paramNumber.toString());
  }
}

/* Location:
 * Qualified Name:     com.millennialmedia.google.gson.Gson.5
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */