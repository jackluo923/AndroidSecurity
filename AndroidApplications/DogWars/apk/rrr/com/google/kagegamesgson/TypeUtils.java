package com.google.kagegamesgson;

import java.lang.reflect.Array;
import java.lang.reflect.GenericArrayType;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.lang.reflect.WildcardType;

final class TypeUtils
{
  static Type getActualTypeForFirstTypeVariable(Type paramType)
  {
    boolean bool1 = paramType instanceof Class;
    Class localClass;
    if (bool1) {
      localClass = Object.class;
    }
    for (;;)
    {
      return localClass;
      boolean bool2 = paramType instanceof ParameterizedType;
      if (bool2)
      {
        paramType = (ParameterizedType)paramType;
        Object localObject1 = paramType.getActualTypeArguments();
        int i = 0;
        localObject1 = localObject1[i];
      }
      else
      {
        boolean bool3 = paramType instanceof GenericArrayType;
        if (!bool3) {
          break;
        }
        paramType = (GenericArrayType)paramType;
        localObject2 = paramType.getGenericComponentType();
        localObject2 = getActualTypeForFirstTypeVariable((Type)localObject2);
      }
    }
    Object localObject2 = new java/lang/IllegalArgumentException;
    Object localObject3 = new java/lang/StringBuilder;
    ((StringBuilder)localObject3).<init>();
    String str = "Type '";
    localObject3 = ((StringBuilder)localObject3).append(str);
    localObject3 = ((StringBuilder)localObject3).append(paramType);
    str = "' is not a Class, ";
    localObject3 = ((StringBuilder)localObject3).append(str);
    str = "ParameterizedType, or GenericArrayType. Can't extract class.";
    localObject3 = ((StringBuilder)localObject3).append(str);
    localObject3 = ((StringBuilder)localObject3).toString();
    ((IllegalArgumentException)localObject2).<init>((String)localObject3);
    throw ((Throwable)localObject2);
  }
  
  static boolean isArray(Type paramType)
  {
    boolean bool = paramType instanceof Class;
    if (bool)
    {
      paramType = (Class)paramType;
      bool = paramType.isArray();
    }
    for (;;)
    {
      return bool;
      bool = paramType instanceof GenericArrayType;
      if (bool) {
        bool = true;
      } else {
        bool = false;
      }
    }
  }
  
  static Class<?> toRawClass(Type paramType)
  {
    boolean bool1 = paramType instanceof Class;
    Type localType;
    if (bool1)
    {
      paramType = (Class)paramType;
      localType = paramType;
    }
    for (;;)
    {
      return localType;
      boolean bool2 = paramType instanceof ParameterizedType;
      Object localObject1;
      Object localObject2;
      if (bool2)
      {
        localObject1 = paramType;
        localObject1 = (ParameterizedType)localObject1;
        localObject2 = localObject1;
        Object localObject4 = ((ParameterizedType)localObject2).getRawType();
        localObject4 = toRawClass((Type)localObject4);
      }
      else
      {
        boolean bool3 = paramType instanceof GenericArrayType;
        if (bool3)
        {
          localObject1 = paramType;
          localObject1 = (GenericArrayType)localObject1;
          localObject2 = localObject1;
          Object localObject5 = ((GenericArrayType)localObject2).getGenericComponentType();
          Class localClass = toRawClass((Type)localObject5);
          localObject5 = wrapWithArray(localClass);
        }
        else
        {
          boolean bool4 = paramType instanceof WildcardType;
          if (!bool4) {
            break;
          }
          localObject1 = paramType;
          localObject1 = (WildcardType)localObject1;
          Object localObject3 = localObject1;
          localObject6 = ((WildcardType)localObject3).getUpperBounds();
          int i = 0;
          localObject6 = localObject6[i];
          localObject6 = toRawClass((Type)localObject6);
        }
      }
    }
    Object localObject6 = new java/lang/IllegalArgumentException;
    Object localObject7 = new java/lang/StringBuilder;
    ((StringBuilder)localObject7).<init>();
    String str = "Type '";
    localObject7 = ((StringBuilder)localObject7).append(str);
    localObject7 = ((StringBuilder)localObject7).append(paramType);
    str = "' is not a Class, ";
    localObject7 = ((StringBuilder)localObject7).append(str);
    str = "ParameterizedType, or GenericArrayType. Can't extract class.";
    localObject7 = ((StringBuilder)localObject7).append(str);
    localObject7 = ((StringBuilder)localObject7).toString();
    ((IllegalArgumentException)localObject6).<init>((String)localObject7);
    throw ((Throwable)localObject6);
  }
  
  static Class<?> wrapWithArray(Class<?> paramClass)
  {
    int i = 0;
    Object localObject = Array.newInstance(paramClass, i);
    localObject = localObject.getClass();
    return (Class<?>)localObject;
  }
}

/* Location:
 * Qualified Name:     com.google.kagegamesgson.TypeUtils
 * Java Class Version: 5 (49.0)
 * JD-Core Version:    0.7.1
 */