package com.google.kagegamesgson;

import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

final class Primitives
{
  public static final Map PRIMITIVE_TO_WRAPPER_TYPE;
  public static final Map WRAPPER_TO_PRIMITIVE_TYPE;
  
  static
  {
    int i = 16;
    HashMap localHashMap1 = new java/util/HashMap;
    localHashMap1.<init>(i);
    HashMap localHashMap2 = new java/util/HashMap;
    localHashMap2.<init>(i);
    Object localObject = Boolean.TYPE;
    Class localClass = Boolean.class;
    add(localHashMap1, localHashMap2, (Class)localObject, localClass);
    localObject = Byte.TYPE;
    localClass = Byte.class;
    add(localHashMap1, localHashMap2, (Class)localObject, localClass);
    localObject = Character.TYPE;
    localClass = Character.class;
    add(localHashMap1, localHashMap2, (Class)localObject, localClass);
    localObject = Double.TYPE;
    localClass = Double.class;
    add(localHashMap1, localHashMap2, (Class)localObject, localClass);
    localObject = Float.TYPE;
    localClass = Float.class;
    add(localHashMap1, localHashMap2, (Class)localObject, localClass);
    localObject = Integer.TYPE;
    localClass = Integer.class;
    add(localHashMap1, localHashMap2, (Class)localObject, localClass);
    localObject = Long.TYPE;
    localClass = Long.class;
    add(localHashMap1, localHashMap2, (Class)localObject, localClass);
    localObject = Short.TYPE;
    localClass = Short.class;
    add(localHashMap1, localHashMap2, (Class)localObject, localClass);
    localObject = Void.TYPE;
    localClass = Void.class;
    add(localHashMap1, localHashMap2, (Class)localObject, localClass);
    localObject = Collections.unmodifiableMap(localHashMap1);
    PRIMITIVE_TO_WRAPPER_TYPE = (Map)localObject;
    localObject = Collections.unmodifiableMap(localHashMap2);
    WRAPPER_TO_PRIMITIVE_TYPE = (Map)localObject;
  }
  
  private static void add(Map<Class<?>, Class<?>> paramMap1, Map<Class<?>, Class<?>> paramMap2, Class<?> paramClass1, Class<?> paramClass2)
  {
    paramMap1.put(paramClass1, paramClass2);
    paramMap2.put(paramClass2, paramClass1);
  }
  
  private static Class<?> checkNotNull(Class<?> paramClass)
  {
    Preconditions.checkNotNull(paramClass);
    return paramClass;
  }
  
  public static boolean isWrapperType(Class<?> paramClass)
  {
    Map localMap = WRAPPER_TO_PRIMITIVE_TYPE;
    Class localClass = checkNotNull(paramClass);
    boolean bool = localMap.containsKey(localClass);
    return bool;
  }
  
  public static <T> Class<T> unwrap(Class<T> paramClass)
  {
    checkNotNull(paramClass);
    Object localObject2 = WRAPPER_TO_PRIMITIVE_TYPE;
    Object localObject1 = ((Map)localObject2).get(paramClass);
    localObject1 = (Class)localObject1;
    if (localObject1 == null) {}
    for (localObject2 = paramClass;; localObject2 = localObject1) {
      return (Class<T>)localObject2;
    }
  }
  
  public static <T> Class<T> wrap(Class<T> paramClass)
  {
    checkNotNull(paramClass);
    Object localObject2 = PRIMITIVE_TO_WRAPPER_TYPE;
    Object localObject1 = ((Map)localObject2).get(paramClass);
    localObject1 = (Class)localObject1;
    if (localObject1 == null) {}
    for (localObject2 = paramClass;; localObject2 = localObject1) {
      return (Class<T>)localObject2;
    }
  }
}

/* Location:
 * Qualified Name:     com.google.kagegamesgson.Primitives
 * Java Class Version: 5 (49.0)
 * JD-Core Version:    0.7.1
 */