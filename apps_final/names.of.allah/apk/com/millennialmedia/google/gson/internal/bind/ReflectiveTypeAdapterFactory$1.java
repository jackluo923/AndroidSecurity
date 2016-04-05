package com.millennialmedia.google.gson.internal.bind;

import com.millennialmedia.google.gson.Gson;
import com.millennialmedia.google.gson.TypeAdapter;
import com.millennialmedia.google.gson.reflect.TypeToken;
import com.millennialmedia.google.gson.stream.JsonReader;
import com.millennialmedia.google.gson.stream.JsonWriter;
import java.lang.reflect.Field;

class ReflectiveTypeAdapterFactory$1
  extends ReflectiveTypeAdapterFactory.BoundField
{
  final TypeAdapter<?> typeAdapter = val$context.getAdapter(val$fieldType);
  
  ReflectiveTypeAdapterFactory$1(ReflectiveTypeAdapterFactory paramReflectiveTypeAdapterFactory, String paramString, boolean paramBoolean1, boolean paramBoolean2, Gson paramGson, TypeToken paramTypeToken, Field paramField, boolean paramBoolean3)
  {
    super(paramString, paramBoolean1, paramBoolean2);
  }
  
  void read(JsonReader paramJsonReader, Object paramObject)
  {
    paramJsonReader = typeAdapter.read(paramJsonReader);
    if ((paramJsonReader != null) || (!val$isPrimitive)) {
      val$field.set(paramObject, paramJsonReader);
    }
  }
  
  void write(JsonWriter paramJsonWriter, Object paramObject)
  {
    paramObject = val$field.get(paramObject);
    new TypeAdapterRuntimeTypeWrapper(val$context, typeAdapter, val$fieldType.getType()).write(paramJsonWriter, paramObject);
  }
}

/* Location:
 * Qualified Name:     com.millennialmedia.google.gson.internal.bind.ReflectiveTypeAdapterFactory.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */