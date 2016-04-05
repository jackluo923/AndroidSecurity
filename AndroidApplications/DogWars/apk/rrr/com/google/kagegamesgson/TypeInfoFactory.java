package com.google.kagegamesgson;

import java.lang.reflect.Field;
import java.lang.reflect.GenericArrayType;
import java.lang.reflect.GenericDeclaration;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.lang.reflect.TypeVariable;
import java.lang.reflect.WildcardType;

final class TypeInfoFactory
{
  private static Type[] extractRealTypes(Type[] paramArrayOfType, Type paramType, Class<?> paramClass)
  {
    Preconditions.checkNotNull(paramArrayOfType);
    int j = paramArrayOfType.length;
    Type[] arrayOfType = new Type[j];
    int i = 0;
    for (;;)
    {
      j = paramArrayOfType.length;
      if (i >= j) {
        break;
      }
      Type localType = paramArrayOfType[i];
      localType = getActualType(localType, paramType, paramClass);
      arrayOfType[i] = localType;
      i += 1;
    }
    return arrayOfType;
  }
  
  private static Type extractTypeForHierarchy(Type paramType, TypeVariable<?> paramTypeVariable)
  {
    Object localObject8 = null;
    int k = 0;
    boolean bool1 = paramType instanceof Class;
    Object localObject1;
    Object localObject3;
    Object localObject4;
    Type[] arrayOfType;
    label152:
    Type localType2;
    if (bool1)
    {
      localObject1 = paramType;
      localObject1 = (Class)localObject1;
      localObject3 = localObject1;
      localObject4 = ((Class)localObject3).getGenericSuperclass();
      bool1 = localObject4 instanceof ParameterizedType;
      if (!bool1) {
        break label241;
      }
      localObject1 = localObject4;
      localObject1 = (ParameterizedType)localObject1;
      Object localObject5 = localObject1;
      localObject5 = ((ParameterizedType)localObject5).getRawType();
      GenericDeclaration localGenericDeclaration = paramTypeVariable.getGenericDeclaration();
      if (localObject5 != localGenericDeclaration) {
        break label241;
      }
      localObject1 = localObject4;
      localObject1 = (ParameterizedType)localObject1;
      localObject5 = localObject1;
      localObject5 = ((ParameterizedType)localObject5).getRawType();
      localObject5 = (Class)localObject5;
      TypeVariable[] arrayOfTypeVariable = ((Class)localObject5).getTypeParameters();
      int j = getIndex(arrayOfTypeVariable, paramTypeVariable);
      int i = 0;
      boolean bool2 = paramType instanceof Class;
      if (!bool2) {
        break label208;
      }
      localObject4 = (ParameterizedType)localObject4;
      arrayOfType = ((ParameterizedType)localObject4).getActualTypeArguments();
      localType2 = arrayOfType[j];
    }
    for (;;)
    {
      return localType2;
      boolean bool3 = paramType instanceof ParameterizedType;
      if (bool3)
      {
        localObject1 = paramType;
        localObject1 = (ParameterizedType)localObject1;
        Object localObject2 = localObject1;
        localObject3 = ((ParameterizedType)localObject2).getRawType();
        localObject3 = (Class)localObject3;
        break;
      }
      Object localObject6 = localObject8;
      continue;
      label208:
      boolean bool4 = paramType instanceof ParameterizedType;
      if (bool4)
      {
        paramType = (ParameterizedType)paramType;
        arrayOfType = paramType.getActualTypeArguments();
        break label152;
      }
      Object localObject7 = localObject8;
      continue;
      label241:
      Type localType1 = null;
      if (localObject4 != null) {
        localType1 = extractTypeForHierarchy((Type)localObject4, paramTypeVariable);
      }
      localObject7 = localType1;
    }
  }
  
  private static Type getActualType(Type paramType1, Type paramType2, Class<?> paramClass)
  {
    boolean bool1 = paramType1 instanceof Class;
    if (bool1) {}
    for (;;)
    {
      return paramType1;
      bool1 = paramType1 instanceof ParameterizedType;
      Object localObject1;
      Type localType;
      if (bool1)
      {
        localObject1 = paramType1;
        localObject1 = (ParameterizedType)localObject1;
        Object localObject2 = localObject1;
        localType = ((ParameterizedType)localObject2).getOwnerType();
        paramType1 = ((ParameterizedType)localObject2).getActualTypeArguments();
        paramType1 = extractRealTypes(paramType1, paramType2, paramClass);
        paramType2 = ((ParameterizedType)localObject2).getRawType();
        paramClass = new com/google/kagegamesgson/ParameterizedTypeImpl;
        paramClass.<init>(paramType2, paramType1, localType);
        paramType1 = paramClass;
      }
      else
      {
        boolean bool2 = paramType1 instanceof GenericArrayType;
        if (bool2)
        {
          localObject1 = paramType1;
          localObject1 = (GenericArrayType)localObject1;
          Object localObject3 = localObject1;
          localType = ((GenericArrayType)localObject3).getGenericComponentType();
          paramType1 = getActualType(localType, paramType2, paramClass);
          paramType2 = localType.equals(paramType1);
          if (paramType2 != 0)
          {
            paramType1 = (Type)localObject3;
          }
          else
          {
            paramType2 = paramType1 instanceof Class;
            if (paramType2 != 0)
            {
              paramType1 = TypeUtils.toRawClass(paramType1);
              paramType1 = TypeUtils.wrapWithArray(paramType1);
            }
            else
            {
              paramType2 = new com/google/kagegamesgson/GenericArrayTypeImpl;
              paramType2.<init>(paramType1);
              paramType1 = paramType2;
            }
          }
        }
        else
        {
          boolean bool3 = paramType1 instanceof TypeVariable;
          if (bool3)
          {
            bool3 = paramType2 instanceof ParameterizedType;
            if (bool3)
            {
              localObject1 = paramType1;
              localObject1 = (TypeVariable)localObject1;
              Object localObject4 = localObject1;
              paramType1 = paramClass.getTypeParameters();
              localObject1 = paramType2;
              localObject1 = (ParameterizedType)localObject1;
              paramClass = (Class<?>)localObject1;
              paramType2 = getIndex(paramType1, (TypeVariable)localObject4);
              paramType1 = paramClass.getActualTypeArguments();
              paramType1 = paramType1[paramType2];
            }
            else
            {
              paramClass = paramType1 instanceof TypeVariable;
              if (paramClass != 0)
              {
                paramClass = 0;
                boolean bool4;
                do
                {
                  localObject1 = paramType1;
                  localObject1 = (TypeVariable)localObject1;
                  paramClass = (Class<?>)localObject1;
                  paramClass = extractTypeForHierarchy(paramType2, paramClass);
                  if (paramClass == null) {
                    break;
                  }
                  bool4 = paramClass instanceof TypeVariable;
                } while (bool4);
                if (paramClass != null)
                {
                  paramType1 = paramClass;
                  continue;
                }
              }
              paramType1 = new java/lang/UnsupportedOperationException;
              paramClass = new java/lang/StringBuilder;
              paramClass.<init>();
              String str1 = "Expecting parameterized type, got ";
              paramClass = paramClass.append(str1);
              paramType2 = paramClass.append(paramType2);
              paramClass = ".\n Are you missing the use of TypeToken idiom?\n See ";
              paramType2 = paramType2.append(paramClass);
              paramClass = "http://sites.google.com/site/gson/gson-user-guide#TOC-Serializing-and-Deserializing-Gener";
              paramType2 = paramType2.append(paramClass);
              paramType2 = paramType2.toString();
              paramType1.<init>(paramType2);
              throw paramType1;
            }
          }
          else
          {
            boolean bool5 = paramType1 instanceof WildcardType;
            if (!bool5) {
              break;
            }
            paramType1 = (WildcardType)paramType1;
            paramType1 = paramType1.getUpperBounds();
            bool5 = false;
            paramType1 = paramType1[bool5];
            paramType1 = getActualType(paramType1, paramType2, paramClass);
          }
        }
      }
    }
    paramType2 = new java/lang/IllegalArgumentException;
    paramClass = new java/lang/StringBuilder;
    paramClass.<init>();
    String str2 = "Type '";
    paramClass = paramClass.append(str2);
    paramType1 = paramClass.append(paramType1);
    paramClass = "' is not a Class, ";
    paramType1 = paramType1.append(paramClass);
    paramClass = "ParameterizedType, GenericArrayType or TypeVariable. Can't extract type.";
    paramType1 = paramType1.append(paramClass);
    paramType1 = paramType1.toString();
    paramType2.<init>(paramType1);
    throw paramType2;
  }
  
  private static int getIndex(TypeVariable<?>[] paramArrayOfTypeVariable, TypeVariable<?> paramTypeVariable)
  {
    int i = 0;
    for (;;)
    {
      int j = paramArrayOfTypeVariable.length;
      if (i >= j) {
        break;
      }
      TypeVariable<?> localTypeVariable = paramArrayOfTypeVariable[i];
      boolean bool = paramTypeVariable.equals(localTypeVariable);
      if (bool) {
        return i;
      }
      i += 1;
    }
    IllegalStateException localIllegalStateException = new java/lang/IllegalStateException;
    String str = "How can the type variable not be present in the class declaration!";
    localIllegalStateException.<init>(str);
    throw localIllegalStateException;
  }
  
  public static TypeInfoArray getTypeInfoForArray(Type paramType)
  {
    boolean bool = TypeUtils.isArray(paramType);
    Preconditions.checkArgument(bool);
    TypeInfoArray localTypeInfoArray = new com/google/kagegamesgson/TypeInfoArray;
    localTypeInfoArray.<init>(paramType);
    return localTypeInfoArray;
  }
  
  public static TypeInfo getTypeInfoForField(Field paramField, Type paramType)
  {
    Class localClass = TypeUtils.toRawClass(paramType);
    Type localType2 = paramField.getGenericType();
    Type localType1 = getActualType(localType2, paramType, localClass);
    TypeInfo localTypeInfo = new com/google/kagegamesgson/TypeInfo;
    localTypeInfo.<init>(localType1);
    return localTypeInfo;
  }
}

/* Location:
 * Qualified Name:     com.google.kagegamesgson.TypeInfoFactory
 * Java Class Version: 1.2 (46.0)
 * JD-Core Version:    0.7.1
 */