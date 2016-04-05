package com.google.kagegamesgson;

import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.Arrays;

final class ParameterizedTypeImpl
  implements ParameterizedType
{
  private final Type[] actualTypeArguments;
  private final Type owner;
  private final Type rawType;
  
  public ParameterizedTypeImpl(Type paramType1, Type[] paramArrayOfType, Type paramType2)
  {
    rawType = paramType1;
    actualTypeArguments = paramArrayOfType;
    owner = paramType2;
  }
  
  public boolean equals(Object paramObject)
  {
    boolean bool6 = true;
    boolean bool5 = false;
    boolean bool1 = paramObject instanceof ParameterizedType;
    if (!bool1) {}
    Object localObject2;
    for (bool1 = bool5;; bool1 = bool6)
    {
      return bool1;
      Object localObject1 = paramObject;
      localObject1 = (ParameterizedType)localObject1;
      localObject2 = localObject1;
      if (this != localObject2) {
        break;
      }
    }
    Type localType1 = ((ParameterizedType)localObject2).getOwnerType();
    Type localType2 = ((ParameterizedType)localObject2).getRawType();
    Object localObject3 = owner;
    if (localObject3 == null)
    {
      if (localType1 != null) {
        break label149;
      }
      label78:
      localObject3 = rawType;
      if (localObject3 != null) {
        break label156;
      }
      if (localType2 != null) {
        break label149;
      }
    }
    for (;;)
    {
      localObject3 = actualTypeArguments;
      Type[] arrayOfType = ((ParameterizedType)localObject2).getActualTypeArguments();
      boolean bool2 = Arrays.equals((Object[])localObject3, arrayOfType);
      boolean bool3;
      if (bool2)
      {
        bool2 = bool6;
        break;
        Type localType3 = owner;
        bool3 = localType3.equals(localType1);
        if (bool3) {
          break label78;
        }
      }
      label149:
      label156:
      boolean bool4;
      do
      {
        bool3 = bool5;
        break;
        Type localType4 = rawType;
        bool4 = localType4.equals(localType2);
      } while (!bool4);
    }
  }
  
  public Type[] getActualTypeArguments()
  {
    Type[] arrayOfType = actualTypeArguments;
    return arrayOfType;
  }
  
  public Type getOwnerType()
  {
    Type localType = owner;
    return localType;
  }
  
  public Type getRawType()
  {
    Type localType = rawType;
    return localType;
  }
  
  public int hashCode()
  {
    Type localType4 = 0;
    Type[] arrayOfType = actualTypeArguments;
    Type localType1 = Arrays.hashCode(arrayOfType);
    Type localType2 = owner;
    if (localType2 == null)
    {
      localType2 = localType4;
      localType1 ^= localType2;
      localType2 = rawType;
      if (localType2 != null) {
        break label58;
      }
    }
    label58:
    Type localType3;
    int j;
    for (localType2 = localType4;; j = localType3.hashCode())
    {
      localType1 ^= localType2;
      return localType1;
      localType2 = owner;
      int i = localType2.hashCode();
      break;
      localType3 = rawType;
    }
  }
}

/* Location:
 * Qualified Name:     com.google.kagegamesgson.ParameterizedTypeImpl
 * Java Class Version: 1.2 (46.0)
 * JD-Core Version:    0.7.1
 */