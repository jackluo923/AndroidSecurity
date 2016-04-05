package com.google.kagegamesgson;

import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.Collection;

final class TypeInfoCollection
{
  private final ParameterizedType collectionType;
  
  public TypeInfoCollection(Type paramType)
  {
    boolean bool1 = paramType instanceof ParameterizedType;
    if (!bool1)
    {
      localObject1 = new java/lang/IllegalArgumentException;
      localObject2 = "Collection objects need to be parameterized unless you use a custom serializer. Use the com.google.gson.reflect.TypeToken to extract the ParameterizedType.";
      ((IllegalArgumentException)localObject1).<init>((String)localObject2);
      throw ((Throwable)localObject1);
    }
    TypeInfo localTypeInfo = new com/google/kagegamesgson/TypeInfo;
    localTypeInfo.<init>(paramType);
    Object localObject1 = Collection.class;
    Object localObject2 = localTypeInfo.getRawClass();
    boolean bool2 = ((Class)localObject1).isAssignableFrom((Class)localObject2);
    Preconditions.checkArgument(bool2);
    paramType = (ParameterizedType)paramType;
    collectionType = paramType;
  }
  
  public Type getElementType()
  {
    Object localObject = collectionType;
    localObject = ((ParameterizedType)localObject).getActualTypeArguments();
    int i = 0;
    localObject = localObject[i];
    return (Type)localObject;
  }
}

/* Location:
 * Qualified Name:     com.google.kagegamesgson.TypeInfoCollection
 * Java Class Version: 5 (49.0)
 * JD-Core Version:    0.7.1
 */