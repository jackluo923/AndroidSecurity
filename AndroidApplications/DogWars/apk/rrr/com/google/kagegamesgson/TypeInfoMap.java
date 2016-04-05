package com.google.kagegamesgson;

import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.Map;
import java.util.Properties;

final class TypeInfoMap
{
  private final Type keyType;
  private final Type valueType;
  
  public TypeInfoMap(Type paramType)
  {
    boolean bool1 = paramType instanceof Class;
    Class localClass3;
    Object localObject1;
    Class localClass1;
    if (bool1)
    {
      localClass3 = Properties.class;
      localObject1 = paramType;
      localObject1 = (Class)localObject1;
      Object localObject3 = localObject1;
      boolean bool2 = localClass3.isAssignableFrom((Class)localObject3);
      if (bool2)
      {
        localClass1 = String.class;
        keyType = localClass1;
        localClass1 = String.class;
      }
    }
    for (valueType = localClass1;; valueType = ((Type)localObject4))
    {
      return;
      boolean bool3 = paramType instanceof ParameterizedType;
      if (!bool3) {
        break;
      }
      TypeInfo localTypeInfo = new com/google/kagegamesgson/TypeInfo;
      localTypeInfo.<init>(paramType);
      Class localClass2 = Map.class;
      localClass3 = localTypeInfo.getRawClass();
      boolean bool4 = localClass2.isAssignableFrom(localClass3);
      Preconditions.checkArgument(bool4);
      localObject1 = paramType;
      localObject1 = (ParameterizedType)localObject1;
      Object localObject2 = localObject1;
      localObject4 = ((ParameterizedType)localObject2).getActualTypeArguments();
      int i = 0;
      localObject4 = localObject4[i];
      keyType = ((Type)localObject4);
      localObject4 = ((ParameterizedType)localObject2).getActualTypeArguments();
      i = 1;
      localObject4 = localObject4[i];
    }
    Object localObject4 = new java/lang/IllegalArgumentException;
    String str = "Map objects need to be parameterized unless you use a custom serializer. Use the com.google.gson.reflect.TypeToken to extract the ParameterizedType.";
    ((IllegalArgumentException)localObject4).<init>(str);
    throw ((Throwable)localObject4);
  }
  
  public Type getKeyType()
  {
    Type localType = keyType;
    return localType;
  }
  
  public Type getValueType()
  {
    Type localType = valueType;
    return localType;
  }
}

/* Location:
 * Qualified Name:     com.google.kagegamesgson.TypeInfoMap
 * Java Class Version: 5 (49.0)
 * JD-Core Version:    0.7.1
 */