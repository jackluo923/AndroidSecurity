package org.codehaus.jackson.map.util;

import java.util.HashMap;
import org.codehaus.jackson.map.AnnotationIntrospector;

public class EnumResolver<T extends Enum<T>>
{
  protected final Class<T> _enumClass;
  protected final T[] _enums;
  protected final HashMap<String, T> _enumsById;
  
  protected EnumResolver(Class<T> paramClass, T[] paramArrayOfT, HashMap<String, T> paramHashMap)
  {
    _enumClass = paramClass;
    _enums = paramArrayOfT;
    _enumsById = paramHashMap;
  }
  
  public static <ET extends Enum<ET>> EnumResolver<ET> constructFor(Class<ET> paramClass, AnnotationIntrospector paramAnnotationIntrospector)
  {
    Enum[] arrayOfEnum = (Enum[])paramClass.getEnumConstants();
    if (arrayOfEnum == null) {
      throw new IllegalArgumentException("No enum constants for class " + paramClass.getName());
    }
    HashMap localHashMap = new HashMap();
    int j = arrayOfEnum.length;
    int i = 0;
    while (i < j)
    {
      Enum localEnum = arrayOfEnum[i];
      localHashMap.put(paramAnnotationIntrospector.findEnumValue(localEnum), localEnum);
      i += 1;
    }
    return new EnumResolver(paramClass, arrayOfEnum, localHashMap);
  }
  
  public static EnumResolver<?> constructUnsafe(Class<?> paramClass, AnnotationIntrospector paramAnnotationIntrospector)
  {
    return constructFor(paramClass, paramAnnotationIntrospector);
  }
  
  public static EnumResolver<?> constructUnsafeUsingToString(Class<?> paramClass)
  {
    return constructUsingToString(paramClass);
  }
  
  public static <ET extends Enum<ET>> EnumResolver<ET> constructUsingToString(Class<ET> paramClass)
  {
    Enum[] arrayOfEnum = (Enum[])paramClass.getEnumConstants();
    HashMap localHashMap = new HashMap();
    int i = arrayOfEnum.length;
    for (;;)
    {
      i -= 1;
      if (i < 0) {
        break;
      }
      Enum localEnum = arrayOfEnum[i];
      localHashMap.put(localEnum.toString(), localEnum);
    }
    return new EnumResolver(paramClass, arrayOfEnum, localHashMap);
  }
  
  public T findEnum(String paramString)
  {
    return (Enum)_enumsById.get(paramString);
  }
  
  public T getEnum(int paramInt)
  {
    if ((paramInt < 0) || (paramInt >= _enums.length)) {
      return null;
    }
    return _enums[paramInt];
  }
  
  public Class<T> getEnumClass()
  {
    return _enumClass;
  }
  
  public int lastValidIndex()
  {
    return _enums.length - 1;
  }
}

/* Location:
 * Qualified Name:     org.codehaus.jackson.map.util.EnumResolver
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */