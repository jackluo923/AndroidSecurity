package com.millennialmedia.google.gson.internal.bind;

import com.millennialmedia.google.gson.Gson;
import com.millennialmedia.google.gson.TypeAdapter;
import com.millennialmedia.google.gson.internal.ObjectConstructor;
import com.millennialmedia.google.gson.stream.JsonReader;
import com.millennialmedia.google.gson.stream.JsonToken;
import com.millennialmedia.google.gson.stream.JsonWriter;
import java.lang.reflect.Type;
import java.util.Collection;
import java.util.Iterator;

final class CollectionTypeAdapterFactory$Adapter<E>
  extends TypeAdapter<Collection<E>>
{
  private final ObjectConstructor<? extends Collection<E>> constructor;
  private final TypeAdapter<E> elementTypeAdapter;
  
  public CollectionTypeAdapterFactory$Adapter(Gson paramGson, Type paramType, TypeAdapter<E> paramTypeAdapter, ObjectConstructor<? extends Collection<E>> paramObjectConstructor)
  {
    elementTypeAdapter = new TypeAdapterRuntimeTypeWrapper(paramGson, paramTypeAdapter, paramType);
    constructor = paramObjectConstructor;
  }
  
  public final Collection<E> read(JsonReader paramJsonReader)
  {
    if (paramJsonReader.peek() == JsonToken.NULL)
    {
      paramJsonReader.nextNull();
      return null;
    }
    Collection localCollection = (Collection)constructor.construct();
    paramJsonReader.beginArray();
    while (paramJsonReader.hasNext()) {
      localCollection.add(elementTypeAdapter.read(paramJsonReader));
    }
    paramJsonReader.endArray();
    return localCollection;
  }
  
  public final void write(JsonWriter paramJsonWriter, Collection<E> paramCollection)
  {
    if (paramCollection == null)
    {
      paramJsonWriter.nullValue();
      return;
    }
    paramJsonWriter.beginArray();
    paramCollection = paramCollection.iterator();
    while (paramCollection.hasNext())
    {
      Object localObject = paramCollection.next();
      elementTypeAdapter.write(paramJsonWriter, localObject);
    }
    paramJsonWriter.endArray();
  }
}

/* Location:
 * Qualified Name:     com.millennialmedia.google.gson.internal.bind.CollectionTypeAdapterFactory.Adapter
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */