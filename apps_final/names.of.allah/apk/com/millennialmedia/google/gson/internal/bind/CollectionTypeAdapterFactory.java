package com.millennialmedia.google.gson.internal.bind;

import com.millennialmedia.google.gson.Gson;
import com.millennialmedia.google.gson.TypeAdapter;
import com.millennialmedia.google.gson.TypeAdapterFactory;
import com.millennialmedia.google.gson.internal..Gson.Types;
import com.millennialmedia.google.gson.internal.ConstructorConstructor;
import com.millennialmedia.google.gson.reflect.TypeToken;
import java.lang.reflect.Type;
import java.util.Collection;

public final class CollectionTypeAdapterFactory
  implements TypeAdapterFactory
{
  private final ConstructorConstructor constructorConstructor;
  
  public CollectionTypeAdapterFactory(ConstructorConstructor paramConstructorConstructor)
  {
    constructorConstructor = paramConstructorConstructor;
  }
  
  public final <T> TypeAdapter<T> create(Gson paramGson, TypeToken<T> paramTypeToken)
  {
    Type localType = paramTypeToken.getType();
    Class localClass = paramTypeToken.getRawType();
    if (!Collection.class.isAssignableFrom(localClass)) {
      return null;
    }
    localType = .Gson.Types.getCollectionElementType(localType, localClass);
    return new CollectionTypeAdapterFactory.Adapter(paramGson, localType, paramGson.getAdapter(TypeToken.get(localType)), constructorConstructor.get(paramTypeToken));
  }
}

/* Location:
 * Qualified Name:     com.millennialmedia.google.gson.internal.bind.CollectionTypeAdapterFactory
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */