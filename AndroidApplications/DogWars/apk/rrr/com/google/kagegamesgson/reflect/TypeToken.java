package com.google.kagegamesgson.reflect;

import java.lang.reflect.Array;
import java.lang.reflect.GenericArrayType;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.lang.reflect.TypeVariable;
import java.util.HashMap;
import java.util.Map;

public abstract class TypeToken<T>
{
  final Class rawType;
  final Type type;
  
  protected TypeToken()
  {
    Object localObject = getClass();
    localObject = getSuperclassTypeParameter((Class)localObject);
    type = ((Type)localObject);
    localObject = type;
    localObject = getRawType((Type)localObject);
    rawType = ((Class)localObject);
  }
  
  private TypeToken(Type paramType)
  {
    Object localObject = "type";
    localObject = nonNull(paramType, (String)localObject);
    localObject = (Type)localObject;
    localObject = getRawType((Type)localObject);
    rawType = ((Class)localObject);
    type = paramType;
  }
  
  TypeToken(Type paramType, TypeToken.1 param1)
  {
    this(paramType);
  }
  
  private static AssertionError buildUnexpectedTypeError(Type paramType, Class<?>[] paramArrayOfClass)
  {
    StringBuilder localStringBuilder = new java/lang/StringBuilder;
    Object localObject1 = "Unexpected type. Expected one of: ";
    localStringBuilder.<init>((String)localObject1);
    Class<?>[] arrayOfClass = paramArrayOfClass;
    int j = arrayOfClass.length;
    int i = 0;
    while (i < j)
    {
      Class<?> localClass = arrayOfClass[i];
      localObject1 = localClass.getName();
      localObject1 = localStringBuilder.append((String)localObject1);
      localObject2 = ", ";
      ((StringBuilder)localObject1).append((String)localObject2);
      i += 1;
    }
    localObject1 = "but got: ";
    localObject1 = localStringBuilder.append((String)localObject1);
    Object localObject2 = paramType.getClass();
    localObject2 = ((Class)localObject2).getName();
    localObject1 = ((StringBuilder)localObject1).append((String)localObject2);
    localObject2 = ", for type token: ";
    localObject1 = ((StringBuilder)localObject1).append((String)localObject2);
    localObject2 = paramType.toString();
    localObject1 = ((StringBuilder)localObject1).append((String)localObject2);
    char c = '.';
    ((StringBuilder)localObject1).append(c);
    localObject1 = new java/lang/AssertionError;
    String str = localStringBuilder.toString();
    ((AssertionError)localObject1).<init>(str);
    return (AssertionError)localObject1;
  }
  
  public boolean equals(Object paramObject)
  {
    boolean bool1;
    if (paramObject == this) {
      bool1 = true;
    }
    for (;;)
    {
      return bool1;
      bool1 = paramObject instanceof TypeToken;
      if (!bool1)
      {
        bool1 = false;
      }
      else
      {
        Object localObject1 = paramObject;
        localObject1 = (TypeToken)localObject1;
        Object localObject2 = localObject1;
        Type localType1 = type;
        Type localType2 = type;
        boolean bool2 = localType1.equals(localType2);
      }
    }
  }
  
  static TypeToken<?> fromSuperclassTypeParameter(Class<?> paramClass)
  {
    TypeToken.SimpleTypeToken localSimpleTypeToken = new com/google/kagegamesgson/reflect/TypeToken$SimpleTypeToken;
    localSimpleTypeToken.<init>(paramClass);
    return localSimpleTypeToken;
  }
  
  public static <T> TypeToken<T> get(Class<T> paramClass)
  {
    TypeToken.SimpleTypeToken localSimpleTypeToken = new com/google/kagegamesgson/reflect/TypeToken$SimpleTypeToken;
    localSimpleTypeToken.<init>(paramClass);
    return localSimpleTypeToken;
  }
  
  public static TypeToken<?> get(Type paramType)
  {
    TypeToken.SimpleTypeToken localSimpleTypeToken = new com/google/kagegamesgson/reflect/TypeToken$SimpleTypeToken;
    localSimpleTypeToken.<init>(paramType);
    return localSimpleTypeToken;
  }
  
  public Class<? super T> getRawType()
  {
    Class localClass = rawType;
    return localClass;
  }
  
  private static Class<?> getRawType(Type paramType)
  {
    int k = 1;
    int j = 0;
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
      if (bool2)
      {
        localObject1 = paramType;
        localObject1 = (ParameterizedType)localObject1;
        Object localObject3 = localObject1;
        Object localObject5 = ((ParameterizedType)localObject3).getRawType();
        bool2 = localObject5 instanceof Class;
        Object localObject6;
        if (bool2)
        {
          localObject5 = (Class)localObject5;
          localObject6 = localObject5;
        }
        else
        {
          localObject6 = new Class[k];
          localClass = Class.class;
          localObject6[j] = localClass;
          localObject6 = buildUnexpectedTypeError((Type)localObject5, (Class[])localObject6);
          throw ((Throwable)localObject6);
        }
      }
      else
      {
        boolean bool3 = paramType instanceof GenericArrayType;
        if (!bool3) {
          break;
        }
        localObject1 = paramType;
        localObject1 = (GenericArrayType)localObject1;
        Object localObject2 = localObject1;
        Object localObject7 = ((GenericArrayType)localObject2).getGenericComponentType();
        localObject7 = getRawType((Type)localObject7);
        Object localObject4 = Array.newInstance((Class)localObject7, j);
        localObject7 = localObject4.getClass();
      }
    }
    int i = 2;
    Object localObject8 = new Class[i];
    Class localClass = ParameterizedType.class;
    localObject8[j] = localClass;
    localClass = GenericArrayType.class;
    localObject8[k] = localClass;
    localObject8 = buildUnexpectedTypeError(paramType, (Class[])localObject8);
    throw ((Throwable)localObject8);
  }
  
  static Type getSuperclassTypeParameter(Class<?> paramClass)
  {
    Object localObject1 = paramClass.getGenericSuperclass();
    boolean bool = localObject1 instanceof Class;
    if (bool)
    {
      localObject2 = new java/lang/RuntimeException;
      String str = "Missing type parameter.";
      ((RuntimeException)localObject2).<init>(str);
      throw ((Throwable)localObject2);
    }
    localObject1 = (ParameterizedType)localObject1;
    Object localObject2 = ((ParameterizedType)localObject1).getActualTypeArguments();
    int i = 0;
    localObject2 = localObject2[i];
    return (Type)localObject2;
  }
  
  public Type getType()
  {
    Type localType = type;
    return localType;
  }
  
  public int hashCode()
  {
    Type localType = type;
    int i = localType.hashCode();
    return i;
  }
  
  public boolean isAssignableFrom(TypeToken<?> paramTypeToken)
  {
    Type localType = paramTypeToken.getType();
    boolean bool = isAssignableFrom(localType);
    return bool;
  }
  
  public boolean isAssignableFrom(Class<?> paramClass)
  {
    boolean bool = isAssignableFrom(paramClass);
    return bool;
  }
  
  public boolean isAssignableFrom(Type paramType)
  {
    boolean bool10 = true;
    boolean bool9 = false;
    boolean bool1;
    if (paramType == null) {
      bool1 = bool9;
    }
    for (;;)
    {
      return bool1;
      Type localType1 = type;
      boolean bool2 = localType1.equals(paramType);
      if (bool2)
      {
        bool2 = bool10;
      }
      else
      {
        Type localType2 = type;
        boolean bool3 = localType2 instanceof Class;
        Class localClass3;
        if (bool3)
        {
          Class localClass1 = rawType;
          localClass3 = getRawType(paramType);
          boolean bool4 = localClass1.isAssignableFrom(localClass3);
        }
        else
        {
          Type localType3 = type;
          boolean bool5 = localType3 instanceof ParameterizedType;
          if (bool5)
          {
            this = type;
            this = (ParameterizedType)this;
            HashMap localHashMap = new java/util/HashMap;
            localHashMap.<init>();
            boolean bool6 = isAssignableFrom(paramType, this, localHashMap);
          }
          else
          {
            Type localType4 = type;
            boolean bool7 = localType4 instanceof GenericArrayType;
            if (!bool7) {
              break;
            }
            Class localClass2 = rawType;
            localClass3 = getRawType(paramType);
            boolean bool8 = localClass2.isAssignableFrom(localClass3);
            if (bool8)
            {
              this = type;
              this = (GenericArrayType)this;
              bool8 = isAssignableFrom(paramType, this);
              if (bool8)
              {
                bool8 = bool10;
                continue;
              }
            }
            bool8 = bool9;
          }
        }
      }
    }
    Object localObject = type;
    int i = 3;
    Class[] arrayOfClass = new Class[i];
    Class localClass4 = Class.class;
    arrayOfClass[bool9] = localClass4;
    localClass4 = ParameterizedType.class;
    arrayOfClass[bool10] = localClass4;
    int j = 2;
    Class localClass5 = GenericArrayType.class;
    arrayOfClass[j] = localClass5;
    localObject = buildUnexpectedTypeError((Type)localObject, arrayOfClass);
    throw ((Throwable)localObject);
  }
  
  private static boolean isAssignableFrom(Type paramType, GenericArrayType paramGenericArrayType)
  {
    Object localObject4 = paramGenericArrayType.getGenericComponentType();
    boolean bool1 = localObject4 instanceof ParameterizedType;
    Object localObject3;
    HashMap localHashMap;
    if (bool1)
    {
      localObject3 = paramType;
      bool1 = paramType instanceof GenericArrayType;
      if (bool1)
      {
        paramType = (GenericArrayType)paramType;
        localObject3 = paramType.getGenericComponentType();
        localObject4 = (ParameterizedType)localObject4;
        localHashMap = new java/util/HashMap;
        localHashMap.<init>();
      }
    }
    for (boolean bool2 = isAssignableFrom((Type)localObject3, (ParameterizedType)localObject4, localHashMap);; bool2 = true)
    {
      return bool2;
      bool2 = paramType instanceof Class;
      if (!bool2) {
        break;
      }
      Object localObject1 = paramType;
      localObject1 = (Class)localObject1;
      for (Object localObject2 = localObject1;; localObject2 = ((Class)localObject2).getComponentType())
      {
        bool2 = ((Class)localObject2).isArray();
        if (!bool2) {
          break;
        }
      }
      localObject3 = localObject2;
      break;
    }
  }
  
  private static boolean isAssignableFrom(Type paramType, ParameterizedType paramParameterizedType, Map<String, Type> paramMap)
  {
    if (paramType == null) {}
    for (paramType = 0;; paramType = 1)
    {
      return paramType;
      boolean bool1 = paramParameterizedType.equals(paramType);
      if (!bool1) {
        break;
      }
    }
    Object localObject1 = getRawType(paramType);
    Object localObject2 = null;
    boolean bool2 = paramType instanceof ParameterizedType;
    if (bool2) {
      paramType = (ParameterizedType)paramType;
    }
    int j;
    label250:
    Object localObject3;
    for (Type localType2 = paramType;; localObject3 = j)
    {
      Object localObject4;
      if (localType2 != null)
      {
        Type[] arrayOfType = localType2.getActualTypeArguments();
        localObject4 = ((Class)localObject1).getTypeParameters();
        paramType = 0;
        int i;
        for (Type localType1 = paramType;; i = paramType)
        {
          paramType = arrayOfType.length;
          if (localType1 >= paramType) {
            break;
          }
          paramType = arrayOfType[localType1];
          String str = localObject4[localType1];
          for (;;)
          {
            boolean bool4 = paramType instanceof TypeVariable;
            if (!bool4) {
              break;
            }
            paramType = (TypeVariable)paramType;
            paramType = paramType.getName();
            paramType = paramMap.get(paramType);
            paramType = (Type)paramType;
          }
          str = str.getName();
          paramMap.put(str, paramType);
          paramType = localType1 + 1;
        }
        paramType = typeEquals(localType2, paramParameterizedType, paramMap);
        if (paramType != 0)
        {
          paramType = 1;
          break;
        }
      }
      paramType = ((Class)localObject1).getGenericInterfaces();
      int k = paramType.length;
      j = 0;
      for (;;)
      {
        if (j >= k) {
          break label250;
        }
        localType2 = paramType[j];
        localObject4 = new java/util/HashMap;
        ((HashMap)localObject4).<init>(paramMap);
        boolean bool3 = isAssignableFrom(localType2, paramParameterizedType, (Map)localObject4);
        if (bool3)
        {
          paramType = 1;
          break;
        }
        j += 1;
      }
      paramType = ((Class)localObject1).getGenericSuperclass();
      localObject1 = new java/util/HashMap;
      ((HashMap)localObject1).<init>(paramMap);
      paramType = isAssignableFrom(paramType, paramParameterizedType, (Map)localObject1);
      if (paramType != 0)
      {
        paramType = 1;
        break;
      }
      paramType = 0;
      break;
    }
  }
  
  private static boolean matches(Type paramType1, Type paramType2, Map<String, Type> paramMap)
  {
    boolean bool1 = paramType2.equals(paramType1);
    if (bool1) {
      bool1 = true;
    }
    for (;;)
    {
      return bool1;
      bool1 = paramType1 instanceof TypeVariable;
      boolean bool2;
      if (bool1)
      {
        paramType1 = (TypeVariable)paramType1;
        Object localObject = paramType1.getName();
        localObject = paramMap.get(localObject);
        bool2 = paramType2.equals(localObject);
      }
      else
      {
        bool2 = false;
      }
    }
  }
  
  private static <T> T nonNull(T paramT, String paramString)
  {
    if (paramT == null)
    {
      NullPointerException localNullPointerException = new java/lang/NullPointerException;
      localNullPointerException.<init>(paramString);
      throw localNullPointerException;
    }
    return paramT;
  }
  
  public String toString()
  {
    Type localType = type;
    boolean bool = localType instanceof Class;
    if (bool)
    {
      this = type;
      this = (Class)this;
    }
    for (Object localObject = getName();; localObject = localObject.toString())
    {
      return (String)localObject;
      localObject = type;
    }
  }
  
  private static boolean typeEquals(ParameterizedType paramParameterizedType1, ParameterizedType paramParameterizedType2, Map<String, Type> paramMap)
  {
    boolean bool3 = false;
    Type localType1 = paramParameterizedType1.getRawType();
    Type localType3 = paramParameterizedType2.getRawType();
    boolean bool1 = localType1.equals(localType3);
    int i;
    boolean bool2;
    if (bool1)
    {
      Type[] arrayOfType1 = paramParameterizedType1.getActualTypeArguments();
      Type[] arrayOfType2 = paramParameterizedType2.getActualTypeArguments();
      i = 0;
      int j = arrayOfType1.length;
      if (i < j)
      {
        Type localType2 = arrayOfType1[i];
        localType3 = arrayOfType2[i];
        bool2 = matches(localType2, localType3, paramMap);
        if (!bool2) {
          bool2 = bool3;
        }
      }
    }
    for (;;)
    {
      return bool2;
      i += 1;
      break;
      bool2 = true;
      continue;
      bool2 = bool3;
    }
  }
}

/* Location:
 * Qualified Name:     com.google.kagegamesgson.reflect.TypeToken
 * Java Class Version: 5 (49.0)
 * JD-Core Version:    0.7.1
 */