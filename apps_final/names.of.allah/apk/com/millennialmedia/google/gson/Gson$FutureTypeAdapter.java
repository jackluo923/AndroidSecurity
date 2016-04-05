package com.millennialmedia.google.gson;

import com.millennialmedia.google.gson.stream.JsonReader;
import com.millennialmedia.google.gson.stream.JsonWriter;

class Gson$FutureTypeAdapter<T>
  extends TypeAdapter<T>
{
  private TypeAdapter<T> delegate;
  
  public T read(JsonReader paramJsonReader)
  {
    if (delegate == null) {
      throw new IllegalStateException();
    }
    return (T)delegate.read(paramJsonReader);
  }
  
  public void setDelegate(TypeAdapter<T> paramTypeAdapter)
  {
    if (delegate != null) {
      throw new AssertionError();
    }
    delegate = paramTypeAdapter;
  }
  
  public void write(JsonWriter paramJsonWriter, T paramT)
  {
    if (delegate == null) {
      throw new IllegalStateException();
    }
    delegate.write(paramJsonWriter, paramT);
  }
}

/* Location:
 * Qualified Name:     com.millennialmedia.google.gson.Gson.FutureTypeAdapter
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */