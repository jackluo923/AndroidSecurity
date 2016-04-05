package com.google.kagegamesgson;

import java.lang.annotation.Annotation;
import java.lang.reflect.Field;
import java.lang.reflect.Type;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;

public final class FieldAttributes
{
  private static final Cache ANNOTATION_CACHE;
  private static final String MAX_CACHE_PROPERTY_NAME = "com.google.kagegamesgson.annotation_cache_size_hint";
  private Collection annotations;
  private final Class declaredType;
  private final Class declaringClazz;
  private final Field field;
  private Type genericType;
  private final boolean isSynthetic;
  private final int modifiers;
  private final String name;
  
  static
  {
    LruCache localLruCache = new com/google/kagegamesgson/LruCache;
    int i = getMaxCacheSize();
    localLruCache.<init>(i);
    ANNOTATION_CACHE = localLruCache;
  }
  
  FieldAttributes(Class<?> paramClass, Field paramField)
  {
    Preconditions.checkNotNull(paramClass);
    declaringClazz = paramClass;
    Object localObject = paramField.getName();
    name = ((String)localObject);
    localObject = paramField.getType();
    declaredType = ((Class)localObject);
    boolean bool = paramField.isSynthetic();
    isSynthetic = bool;
    int i = paramField.getModifiers();
    modifiers = i;
    field = paramField;
  }
  
  Object get(Object paramObject)
    throws IllegalAccessException
  {
    Object localObject = field;
    localObject = ((Field)localObject).get(paramObject);
    return localObject;
  }
  
  public <T extends Annotation> T getAnnotation(Class<T> paramClass)
  {
    Object localObject = getAnnotations();
    localObject = getAnnotationFromArray((Collection)localObject, paramClass);
    return (T)localObject;
  }
  
  private static <T extends Annotation> T getAnnotationFromArray(Collection<Annotation> paramCollection, Class<T> paramClass)
  {
    Iterator localIterator = paramCollection.iterator();
    Object localObject1;
    do
    {
      boolean bool = localIterator.hasNext();
      if (!bool) {
        break;
      }
      localObject1 = localIterator.next();
      localObject1 = (Annotation)localObject1;
      localObject2 = ((Annotation)localObject1).annotationType();
    } while (localObject2 != paramClass);
    for (Object localObject2 = localObject1;; localObject2 = null) {
      return (T)localObject2;
    }
  }
  
  public Collection<Annotation> getAnnotations()
  {
    Object localObject1 = annotations;
    if (localObject1 == null)
    {
      Pair localPair = new com/google/kagegamesgson/Pair;
      localObject1 = declaringClazz;
      Object localObject2 = name;
      localPair.<init>(localObject1, localObject2);
      localObject1 = ANNOTATION_CACHE;
      localObject1 = ((Cache)localObject1).getElement(localPair);
      localObject1 = (Collection)localObject1;
      annotations = ((Collection)localObject1);
      localObject1 = annotations;
      if (localObject1 == null)
      {
        localObject1 = field;
        localObject1 = ((Field)localObject1).getAnnotations();
        localObject1 = Arrays.asList((Object[])localObject1);
        localObject1 = Collections.unmodifiableCollection((Collection)localObject1);
        annotations = ((Collection)localObject1);
        localObject1 = ANNOTATION_CACHE;
        localObject2 = annotations;
        ((Cache)localObject1).addElement(localPair, localObject2);
      }
    }
    localObject1 = annotations;
    return (Collection<Annotation>)localObject1;
  }
  
  public Class<?> getDeclaredClass()
  {
    Class localClass = declaredType;
    return localClass;
  }
  
  public Type getDeclaredType()
  {
    Object localObject = genericType;
    if (localObject == null)
    {
      localObject = field;
      localObject = ((Field)localObject).getGenericType();
      genericType = ((Type)localObject);
    }
    localObject = genericType;
    return (Type)localObject;
  }
  
  public Class<?> getDeclaringClass()
  {
    Class localClass = declaringClazz;
    return localClass;
  }
  
  Field getFieldObject()
  {
    Field localField = field;
    return localField;
  }
  
  private static int getMaxCacheSize()
  {
    localNumberFormatException3 = 2000;
    int i = 2000;
    try
    {
      String str2 = "com.google.kagegamesgson.annotation_cache_size_hint";
      int k = 2000;
      String str3 = String.valueOf(k);
      String str1 = System.getProperty(str2, str3);
      j = Integer.parseInt(str1);
    }
    catch (NumberFormatException localNumberFormatException2)
    {
      for (;;)
      {
        int j;
        NumberFormatException localNumberFormatException1 = localNumberFormatException2;
        localNumberFormatException2 = localNumberFormatException3;
      }
    }
    return j;
  }
  
  public String getName()
  {
    String str = name;
    return str;
  }
  
  public boolean hasModifier(int paramInt)
  {
    int i = modifiers;
    i &= paramInt;
    if (i != 0) {}
    for (i = 1;; i = 0) {
      return i;
    }
  }
  
  boolean isSynthetic()
  {
    boolean bool = isSynthetic;
    return bool;
  }
  
  void set(Object paramObject1, Object paramObject2)
    throws IllegalAccessException
  {
    Field localField = field;
    localField.set(paramObject1, paramObject2);
  }
}

/* Location:
 * Qualified Name:     com.google.kagegamesgson.FieldAttributes
 * Java Class Version: 1.2 (46.0)
 * JD-Core Version:    0.7.1
 */