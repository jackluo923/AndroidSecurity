package com.millennialmedia.google.gson;

import com.millennialmedia.google.gson.stream.JsonReader;
import com.millennialmedia.google.gson.stream.JsonToken;
import com.millennialmedia.google.gson.stream.JsonWriter;

class TypeAdapter$1
  extends TypeAdapter<T>
{
  TypeAdapter$1(TypeAdapter paramTypeAdapter) {}
  
  public T read(JsonReader paramJsonReader)
  {
    if (paramJsonReader.peek() == JsonToken.NULL)
    {
      paramJsonReader.nextNull();
      return null;
    }
    return (T)this$0.read(paramJsonReader);
  }
  
  public void write(JsonWriter paramJsonWriter, T paramT)
  {
    if (paramT == null)
    {
      paramJsonWriter.nullValue();
      return;
    }
    this$0.write(paramJsonWriter, paramT);
  }
}

/* Location:
 * Qualified Name:     com.millennialmedia.google.gson.TypeAdapter.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */