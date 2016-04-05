package com.millennialmedia.google.gson.internal;

import com.millennialmedia.google.gson.InstanceCreator;
import com.millennialmedia.google.gson.reflect.TypeToken;
import java.lang.reflect.Constructor;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.Collection;
import java.util.EnumSet;
import java.util.Map;
import java.util.Queue;
import java.util.Set;
import java.util.SortedMap;
import java.util.SortedSet;

public final class ConstructorConstructor
{
  private final Map<Type, InstanceCreator<?>> instanceCreators;
  
  public ConstructorConstructor(Map<Type, InstanceCreator<?>> paramMap)
  {
    instanceCreators = paramMap;
  }
  
  private <T> ObjectConstructor<T> newDefaultConstructor(Class<? super T> paramClass)
  {
    try
    {
      paramClass = paramClass.getDeclaredConstructor(new Class[0]);
      if (!paramClass.isAccessible()) {
        paramClass.setAccessible(true);
      }
      paramClass = new ConstructorConstructor.3(this, paramClass);
      return paramClass;
    }
    catch (NoSuchMethodException paramClass) {}
    return null;
  }
  
  private <T> ObjectConstructor<T> newDefaultImplementationConstructor(Type paramType, Class<? super T> paramClass)
  {
    if (Collection.class.isAssignableFrom(paramClass))
    {
      if (SortedSet.class.isAssignableFrom(paramClass)) {
        return new ConstructorConstructor.4(this);
      }
      if (EnumSet.class.isAssignableFrom(paramClass)) {
        return new ConstructorConstructor.5(this, paramType);
      }
      if (Set.class.isAssignableFrom(paramClass)) {
        return new ConstructorConstructor.6(this);
      }
      if (Queue.class.isAssignableFrom(paramClass)) {
        return new ConstructorConstructor.7(this);
      }
      return new ConstructorConstructor.8(this);
    }
    if (Map.class.isAssignableFrom(paramClass))
    {
      if (SortedMap.class.isAssignableFrom(paramClass)) {
        return new ConstructorConstructor.9(this);
      }
      if (((paramType instanceof ParameterizedType)) && (!String.class.isAssignableFrom(TypeToken.get(((ParameterizedType)paramType).getActualTypeArguments()[0]).getRawType()))) {
        return new ConstructorConstructor.10(this);
      }
      return new ConstructorConstructor.11(this);
    }
    return null;
  }
  
  private <T> ObjectConstructor<T> newUnsafeAllocator(Type paramType, Class<? super T> paramClass)
  {
    return new ConstructorConstructor.12(this, paramClass, paramType);
  }
  
  public final <T> ObjectConstructor<T> get(TypeToken<T> paramTypeToken)
  {
    Type localType = paramTypeToken.getType();
    Class localClass = paramTypeToken.getRawType();
    paramTypeToken = (InstanceCreator)instanceCreators.get(localType);
    if (paramTypeToken != null) {
      paramTypeToken = new ConstructorConstructor.1(this, paramTypeToken, localType);
    }
    ObjectConstructor localObjectConstructor;
    do
    {
      do
      {
        return paramTypeToken;
        paramTypeToken = (InstanceCreator)instanceCreators.get(localClass);
        if (paramTypeToken != null) {
          return new ConstructorConstructor.2(this, paramTypeToken, localType);
        }
        localObjectConstructor = newDefaultConstructor(localClass);
        paramTypeToken = localObjectConstructor;
      } while (localObjectConstructor != null);
      localObjectConstructor = newDefaultImplementationConstructor(localType, localClass);
      paramTypeToken = localObjectConstructor;
    } while (localObjectConstructor != null);
    return newUnsafeAllocator(localType, localClass);
  }
  
  public final String toString()
  {
    return instanceCreators.toString();
  }
}

/* Location:
 * Qualified Name:     com.millennialmedia.google.gson.internal.ConstructorConstructor
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */