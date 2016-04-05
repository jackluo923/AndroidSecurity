package com.millennialmedia.google.gson;

import com.millennialmedia.google.gson.internal.Streams;
import com.millennialmedia.google.gson.reflect.TypeToken;
import com.millennialmedia.google.gson.stream.JsonReader;
import com.millennialmedia.google.gson.stream.JsonWriter;

final class TreeTypeAdapter<T>
  extends TypeAdapter<T>
{
  private TypeAdapter<T> delegate;
  private final JsonDeserializer<T> deserializer;
  private final Gson gson;
  private final JsonSerializer<T> serializer;
  private final TypeAdapterFactory skipPast;
  private final TypeToken<T> typeToken;
  
  private TreeTypeAdapter(JsonSerializer<T> paramJsonSerializer, JsonDeserializer<T> paramJsonDeserializer, Gson paramGson, TypeToken<T> paramTypeToken, TypeAdapterFactory paramTypeAdapterFactory)
  {
    serializer = paramJsonSerializer;
    deserializer = paramJsonDeserializer;
    gson = paramGson;
    typeToken = paramTypeToken;
    skipPast = paramTypeAdapterFactory;
  }
  
  private TypeAdapter<T> delegate()
  {
    TypeAdapter localTypeAdapter = delegate;
    if (localTypeAdapter != null) {
      return localTypeAdapter;
    }
    localTypeAdapter = gson.getDelegateAdapter(skipPast, typeToken);
    delegate = localTypeAdapter;
    return localTypeAdapter;
  }
  
  public static TypeAdapterFactory newFactory(TypeToken<?> paramTypeToken, Object paramObject)
  {
    return new TreeTypeAdapter.SingleTypeFactory(paramObject, paramTypeToken, false, null, null);
  }
  
  public static TypeAdapterFactory newFactoryWithMatchRawType(TypeToken<?> paramTypeToken, Object paramObject)
  {
    if (paramTypeToken.getType() == paramTypeToken.getRawType()) {}
    for (boolean bool = true;; bool = false) {
      return new TreeTypeAdapter.SingleTypeFactory(paramObject, paramTypeToken, bool, null, null);
    }
  }
  
  public static TypeAdapterFactory newTypeHierarchyFactory(Class<?> paramClass, Object paramObject)
  {
    return new TreeTypeAdapter.SingleTypeFactory(paramObject, null, false, paramClass, null);
  }
  
  public final T read(JsonReader paramJsonReader)
  {
    if (deserializer == null) {
      return (T)delegate().read(paramJsonReader);
    }
    paramJsonReader = Streams.parse(paramJsonReader);
    if (paramJsonReader.isJsonNull()) {
      return null;
    }
    return (T)deserializer.deserialize(paramJsonReader, typeToken.getType(), gson.deserializationContext);
  }
  
  public final void write(JsonWriter paramJsonWriter, T paramT)
  {
    if (serializer == null)
    {
      delegate().write(paramJsonWriter, paramT);
      return;
    }
    if (paramT == null)
    {
      paramJsonWriter.nullValue();
      return;
    }
    Streams.write(serializer.serialize(paramT, typeToken.getType(), gson.serializationContext), paramJsonWriter);
  }
}

/* Location:
 * Qualified Name:     com.millennialmedia.google.gson.TreeTypeAdapter
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */