package com.millennialmedia.google.gson.internal.bind;

import com.millennialmedia.google.gson.FieldNamingStrategy;
import com.millennialmedia.google.gson.Gson;
import com.millennialmedia.google.gson.TypeAdapter;
import com.millennialmedia.google.gson.TypeAdapterFactory;
import com.millennialmedia.google.gson.annotations.SerializedName;
import com.millennialmedia.google.gson.internal..Gson.Types;
import com.millennialmedia.google.gson.internal.ConstructorConstructor;
import com.millennialmedia.google.gson.internal.Excluder;
import com.millennialmedia.google.gson.internal.Primitives;
import com.millennialmedia.google.gson.reflect.TypeToken;
import java.lang.reflect.Field;
import java.lang.reflect.Type;
import java.util.LinkedHashMap;
import java.util.Map;

public final class ReflectiveTypeAdapterFactory
  implements TypeAdapterFactory
{
  private final ConstructorConstructor constructorConstructor;
  private final Excluder excluder;
  private final FieldNamingStrategy fieldNamingPolicy;
  
  public ReflectiveTypeAdapterFactory(ConstructorConstructor paramConstructorConstructor, FieldNamingStrategy paramFieldNamingStrategy, Excluder paramExcluder)
  {
    constructorConstructor = paramConstructorConstructor;
    fieldNamingPolicy = paramFieldNamingStrategy;
    excluder = paramExcluder;
  }
  
  private ReflectiveTypeAdapterFactory.BoundField createBoundField(Gson paramGson, Field paramField, String paramString, TypeToken<?> paramTypeToken, boolean paramBoolean1, boolean paramBoolean2)
  {
    return new ReflectiveTypeAdapterFactory.1(this, paramString, paramBoolean1, paramBoolean2, paramGson, paramTypeToken, paramField, Primitives.isPrimitive(paramTypeToken.getRawType()));
  }
  
  private Map<String, ReflectiveTypeAdapterFactory.BoundField> getBoundFields(Gson paramGson, TypeToken<?> paramTypeToken, Class<?> paramClass)
  {
    LinkedHashMap localLinkedHashMap = new LinkedHashMap();
    if (paramClass.isInterface()) {
      return localLinkedHashMap;
    }
    Type localType1 = paramTypeToken.getType();
    while (paramClass != Object.class)
    {
      Field[] arrayOfField = paramClass.getDeclaredFields();
      int j = arrayOfField.length;
      int i = 0;
      while (i < j)
      {
        Object localObject = arrayOfField[i];
        boolean bool1 = excludeField((Field)localObject, true);
        boolean bool2 = excludeField((Field)localObject, false);
        if ((bool1) || (bool2))
        {
          ((Field)localObject).setAccessible(true);
          Type localType2 = .Gson.Types.resolve(paramTypeToken.getType(), paramClass, ((Field)localObject).getGenericType());
          localObject = createBoundField(paramGson, (Field)localObject, getFieldName((Field)localObject), TypeToken.get(localType2), bool1, bool2);
          localObject = (ReflectiveTypeAdapterFactory.BoundField)localLinkedHashMap.put(name, localObject);
          if (localObject != null) {
            throw new IllegalArgumentException(localType1 + " declares multiple JSON fields named " + name);
          }
        }
        i += 1;
      }
      paramTypeToken = TypeToken.get(.Gson.Types.resolve(paramTypeToken.getType(), paramClass, paramClass.getGenericSuperclass()));
      paramClass = paramTypeToken.getRawType();
    }
    return localLinkedHashMap;
  }
  
  private String getFieldName(Field paramField)
  {
    SerializedName localSerializedName = (SerializedName)paramField.getAnnotation(SerializedName.class);
    if (localSerializedName == null) {
      return fieldNamingPolicy.translateName(paramField);
    }
    return localSerializedName.value();
  }
  
  public final <T> TypeAdapter<T> create(Gson paramGson, TypeToken<T> paramTypeToken)
  {
    Class localClass = paramTypeToken.getRawType();
    if (!Object.class.isAssignableFrom(localClass)) {
      return null;
    }
    return new ReflectiveTypeAdapterFactory.Adapter(constructorConstructor.get(paramTypeToken), getBoundFields(paramGson, paramTypeToken, localClass), null);
  }
  
  public final boolean excludeField(Field paramField, boolean paramBoolean)
  {
    return (!excluder.excludeClass(paramField.getType(), paramBoolean)) && (!excluder.excludeField(paramField, paramBoolean));
  }
}

/* Location:
 * Qualified Name:     com.millennialmedia.google.gson.internal.bind.ReflectiveTypeAdapterFactory
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */