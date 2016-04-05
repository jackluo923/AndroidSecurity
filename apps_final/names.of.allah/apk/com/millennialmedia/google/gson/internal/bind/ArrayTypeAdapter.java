package com.millennialmedia.google.gson.internal.bind;

import com.millennialmedia.google.gson.Gson;
import com.millennialmedia.google.gson.TypeAdapter;
import com.millennialmedia.google.gson.TypeAdapterFactory;
import com.millennialmedia.google.gson.stream.JsonReader;
import com.millennialmedia.google.gson.stream.JsonToken;
import com.millennialmedia.google.gson.stream.JsonWriter;
import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.List;

public final class ArrayTypeAdapter<E>
  extends TypeAdapter<Object>
{
  public static final TypeAdapterFactory FACTORY = new ArrayTypeAdapter.1();
  private final Class<E> componentType;
  private final TypeAdapter<E> componentTypeAdapter;
  
  public ArrayTypeAdapter(Gson paramGson, TypeAdapter<E> paramTypeAdapter, Class<E> paramClass)
  {
    componentTypeAdapter = new TypeAdapterRuntimeTypeWrapper(paramGson, paramTypeAdapter, paramClass);
    componentType = paramClass;
  }
  
  public final Object read(JsonReader paramJsonReader)
  {
    if (paramJsonReader.peek() == JsonToken.NULL)
    {
      paramJsonReader.nextNull();
      return null;
    }
    ArrayList localArrayList = new ArrayList();
    paramJsonReader.beginArray();
    while (paramJsonReader.hasNext()) {
      localArrayList.add(componentTypeAdapter.read(paramJsonReader));
    }
    paramJsonReader.endArray();
    paramJsonReader = Array.newInstance(componentType, localArrayList.size());
    int i = 0;
    while (i < localArrayList.size())
    {
      Array.set(paramJsonReader, i, localArrayList.get(i));
      i += 1;
    }
    return paramJsonReader;
  }
  
  public final void write(JsonWriter paramJsonWriter, Object paramObject)
  {
    if (paramObject == null)
    {
      paramJsonWriter.nullValue();
      return;
    }
    paramJsonWriter.beginArray();
    int i = 0;
    int j = Array.getLength(paramObject);
    while (i < j)
    {
      Object localObject = Array.get(paramObject, i);
      componentTypeAdapter.write(paramJsonWriter, localObject);
      i += 1;
    }
    paramJsonWriter.endArray();
  }
}

/* Location:
 * Qualified Name:     com.millennialmedia.google.gson.internal.bind.ArrayTypeAdapter
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */