package com.millennialmedia.google.gson.internal;

import com.millennialmedia.google.gson.Gson;
import com.millennialmedia.google.gson.TypeAdapter;
import com.millennialmedia.google.gson.reflect.TypeToken;
import com.millennialmedia.google.gson.stream.JsonReader;
import com.millennialmedia.google.gson.stream.JsonWriter;

class Excluder$1
  extends TypeAdapter<T>
{
  private TypeAdapter<T> delegate;
  
  Excluder$1(Excluder paramExcluder, boolean paramBoolean1, boolean paramBoolean2, Gson paramGson, TypeToken paramTypeToken) {}
  
  private TypeAdapter<T> delegate()
  {
    TypeAdapter localTypeAdapter = delegate;
    if (localTypeAdapter != null) {
      return localTypeAdapter;
    }
    localTypeAdapter = val$gson.getDelegateAdapter(this$0, val$type);
    delegate = localTypeAdapter;
    return localTypeAdapter;
  }
  
  public T read(JsonReader paramJsonReader)
  {
    if (val$skipDeserialize)
    {
      paramJsonReader.skipValue();
      return null;
    }
    return (T)delegate().read(paramJsonReader);
  }
  
  public void write(JsonWriter paramJsonWriter, T paramT)
  {
    if (val$skipSerialize)
    {
      paramJsonWriter.nullValue();
      return;
    }
    delegate().write(paramJsonWriter, paramT);
  }
}

/* Location:
 * Qualified Name:     com.millennialmedia.google.gson.internal.Excluder.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */