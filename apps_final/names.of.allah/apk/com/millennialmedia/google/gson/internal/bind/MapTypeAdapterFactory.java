package com.millennialmedia.google.gson.internal.bind;

import com.millennialmedia.google.gson.Gson;
import com.millennialmedia.google.gson.TypeAdapter;
import com.millennialmedia.google.gson.TypeAdapterFactory;
import com.millennialmedia.google.gson.internal..Gson.Types;
import com.millennialmedia.google.gson.internal.ConstructorConstructor;
import com.millennialmedia.google.gson.reflect.TypeToken;
import java.lang.reflect.Type;
import java.util.Map;

public final class MapTypeAdapterFactory
  implements TypeAdapterFactory
{
  private final boolean complexMapKeySerialization;
  private final ConstructorConstructor constructorConstructor;
  
  public MapTypeAdapterFactory(ConstructorConstructor paramConstructorConstructor, boolean paramBoolean)
  {
    constructorConstructor = paramConstructorConstructor;
    complexMapKeySerialization = paramBoolean;
  }
  
  private TypeAdapter<?> getKeyAdapter(Gson paramGson, Type paramType)
  {
    if ((paramType == Boolean.TYPE) || (paramType == Boolean.class)) {
      return TypeAdapters.BOOLEAN_AS_STRING;
    }
    return paramGson.getAdapter(TypeToken.get(paramType));
  }
  
  public final <T> TypeAdapter<T> create(Gson paramGson, TypeToken<T> paramTypeToken)
  {
    Object localObject = paramTypeToken.getType();
    if (!Map.class.isAssignableFrom(paramTypeToken.getRawType())) {
      return null;
    }
    localObject = .Gson.Types.getMapKeyAndValueTypes((Type)localObject, .Gson.Types.getRawType((Type)localObject));
    TypeAdapter localTypeAdapter1 = getKeyAdapter(paramGson, localObject[0]);
    TypeAdapter localTypeAdapter2 = paramGson.getAdapter(TypeToken.get(localObject[1]));
    paramTypeToken = constructorConstructor.get(paramTypeToken);
    return new MapTypeAdapterFactory.Adapter(this, paramGson, localObject[0], localTypeAdapter1, localObject[1], localTypeAdapter2, paramTypeToken);
  }
}

/* Location:
 * Qualified Name:     com.millennialmedia.google.gson.internal.bind.MapTypeAdapterFactory
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */