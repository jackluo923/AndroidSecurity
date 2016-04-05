package com.google.kagegamesgson;

import java.lang.reflect.Type;
import java.util.Collection;
import java.util.Date;
import java.util.HashSet;
import java.util.LinkedList;
import java.util.List;

public final class GsonBuilder
{
  private static final ExposeAnnotationDeserializationExclusionStrategy exposeAnnotationDeserializationExclusionStrategy;
  private static final ExposeAnnotationSerializationExclusionStrategy exposeAnnotationSerializationExclusionStrategy;
  private static final InnerClassExclusionStrategy innerClassExclusionStrategy;
  private String datePattern;
  private int dateStyle;
  private final ParameterizedTypeHandlerMap deserializers;
  private boolean escapeHtmlChars;
  private boolean excludeFieldsWithoutExposeAnnotation;
  private final Collection exclusionStrategies;
  private FieldNamingStrategy2 fieldNamingPolicy;
  private boolean generateNonExecutableJson;
  private double ignoreVersionsAfter;
  private final ParameterizedTypeHandlerMap instanceCreators;
  private LongSerializationPolicy longSerializationPolicy;
  private ModifierBasedExclusionStrategy modifierBasedExclusionStrategy;
  private boolean prettyPrinting;
  private boolean serializeInnerClasses;
  private boolean serializeNulls;
  private boolean serializeSpecialFloatingPointValues;
  private final ParameterizedTypeHandlerMap serializers;
  private int timeStyle;
  
  static
  {
    Object localObject = new com/google/kagegamesgson/InnerClassExclusionStrategy;
    ((InnerClassExclusionStrategy)localObject).<init>();
    innerClassExclusionStrategy = (InnerClassExclusionStrategy)localObject;
    localObject = new com/google/kagegamesgson/ExposeAnnotationSerializationExclusionStrategy;
    ((ExposeAnnotationSerializationExclusionStrategy)localObject).<init>();
    exposeAnnotationSerializationExclusionStrategy = (ExposeAnnotationSerializationExclusionStrategy)localObject;
    localObject = new com/google/kagegamesgson/ExposeAnnotationDeserializationExclusionStrategy;
    ((ExposeAnnotationDeserializationExclusionStrategy)localObject).<init>();
    exposeAnnotationDeserializationExclusionStrategy = (ExposeAnnotationDeserializationExclusionStrategy)localObject;
  }
  
  public GsonBuilder()
  {
    Object localObject1 = new java/util/HashSet;
    ((HashSet)localObject1).<init>();
    exclusionStrategies = ((Collection)localObject1);
    localObject1 = exclusionStrategies;
    Object localObject3 = Gson.DEFAULT_ANON_LOCAL_CLASS_EXCLUSION_STRATEGY;
    ((Collection)localObject1).add(localObject3);
    localObject1 = exclusionStrategies;
    localObject3 = Gson.DEFAULT_SYNTHETIC_FIELD_EXCLUSION_STRATEGY;
    ((Collection)localObject1).add(localObject3);
    double d = -1.0D;
    ignoreVersionsAfter = d;
    serializeInnerClasses = bool2;
    prettyPrinting = bool1;
    escapeHtmlChars = bool2;
    Object localObject2 = Gson.DEFAULT_MODIFIER_BASED_EXCLUSION_STRATEGY;
    modifierBasedExclusionStrategy = ((ModifierBasedExclusionStrategy)localObject2);
    excludeFieldsWithoutExposeAnnotation = bool1;
    localObject2 = LongSerializationPolicy.DEFAULT;
    longSerializationPolicy = ((LongSerializationPolicy)localObject2);
    localObject2 = Gson.DEFAULT_NAMING_POLICY;
    fieldNamingPolicy = ((FieldNamingStrategy2)localObject2);
    localObject2 = new com/google/kagegamesgson/ParameterizedTypeHandlerMap;
    ((ParameterizedTypeHandlerMap)localObject2).<init>();
    instanceCreators = ((ParameterizedTypeHandlerMap)localObject2);
    localObject2 = new com/google/kagegamesgson/ParameterizedTypeHandlerMap;
    ((ParameterizedTypeHandlerMap)localObject2).<init>();
    serializers = ((ParameterizedTypeHandlerMap)localObject2);
    localObject2 = new com/google/kagegamesgson/ParameterizedTypeHandlerMap;
    ((ParameterizedTypeHandlerMap)localObject2).<init>();
    deserializers = ((ParameterizedTypeHandlerMap)localObject2);
    serializeNulls = bool1;
    dateStyle = i;
    timeStyle = i;
    serializeSpecialFloatingPointValues = bool1;
    generateNonExecutableJson = bool1;
  }
  
  private static void addTypeAdaptersForDate(String paramString, int paramInt1, int paramInt2, ParameterizedTypeHandlerMap<JsonSerializer<?>> paramParameterizedTypeHandlerMap, ParameterizedTypeHandlerMap<JsonDeserializer<?>> paramParameterizedTypeHandlerMap1)
  {
    int i = 2;
    DefaultTypeAdapters.DefaultDateTypeAdapter localDefaultDateTypeAdapter = null;
    if (paramString != null)
    {
      String str1 = "";
      String str2 = paramString.trim();
      boolean bool1 = str1.equals(str2);
      if (!bool1)
      {
        localDefaultDateTypeAdapter = new com/google/kagegamesgson/DefaultTypeAdapters$DefaultDateTypeAdapter;
        localDefaultDateTypeAdapter.<init>(paramString);
      }
    }
    for (;;)
    {
      if (localDefaultDateTypeAdapter != null)
      {
        Class localClass1 = Date.class;
        boolean bool2 = paramParameterizedTypeHandlerMap.hasSpecificHandlerFor(localClass1);
        if (!bool2)
        {
          localClass2 = Date.class;
          paramParameterizedTypeHandlerMap.register(localClass2, localDefaultDateTypeAdapter);
        }
        Class localClass2 = Date.class;
        boolean bool3 = paramParameterizedTypeHandlerMap1.hasSpecificHandlerFor(localClass2);
        if (!bool3)
        {
          Class localClass3 = Date.class;
          paramParameterizedTypeHandlerMap1.register(localClass3, localDefaultDateTypeAdapter);
        }
      }
      return;
      if ((paramInt1 != i) && (paramInt2 != i))
      {
        localDefaultDateTypeAdapter = new com/google/kagegamesgson/DefaultTypeAdapters$DefaultDateTypeAdapter;
        localDefaultDateTypeAdapter.<init>(paramInt1, paramInt2);
      }
    }
  }
  
  public Gson create()
  {
    LinkedList localLinkedList2 = new java/util/LinkedList;
    Object localObject1 = exclusionStrategies;
    localLinkedList2.<init>((Collection)localObject1);
    LinkedList localLinkedList1 = new java/util/LinkedList;
    localObject1 = exclusionStrategies;
    localLinkedList1.<init>((Collection)localObject1);
    localObject1 = modifierBasedExclusionStrategy;
    localLinkedList2.add(localObject1);
    localObject1 = modifierBasedExclusionStrategy;
    localLinkedList1.add(localObject1);
    boolean bool1 = serializeInnerClasses;
    if (!bool1)
    {
      InnerClassExclusionStrategy localInnerClassExclusionStrategy = innerClassExclusionStrategy;
      localLinkedList2.add(localInnerClassExclusionStrategy);
      localInnerClassExclusionStrategy = innerClassExclusionStrategy;
      localLinkedList1.add(localInnerClassExclusionStrategy);
    }
    double d1 = ignoreVersionsAfter;
    double d2 = -1.0D;
    boolean bool2 = d1 < d2;
    if (bool2)
    {
      VersionExclusionStrategy localVersionExclusionStrategy = new com/google/kagegamesgson/VersionExclusionStrategy;
      d1 = ignoreVersionsAfter;
      localVersionExclusionStrategy.<init>(d1);
      localLinkedList2.add(localVersionExclusionStrategy);
      localVersionExclusionStrategy = new com/google/kagegamesgson/VersionExclusionStrategy;
      d1 = ignoreVersionsAfter;
      localVersionExclusionStrategy.<init>(d1);
      localLinkedList1.add(localVersionExclusionStrategy);
    }
    boolean bool3 = excludeFieldsWithoutExposeAnnotation;
    if (bool3)
    {
      localObject2 = exposeAnnotationSerializationExclusionStrategy;
      localLinkedList2.add(localObject2);
      localObject2 = exposeAnnotationDeserializationExclusionStrategy;
      localLinkedList1.add(localObject2);
    }
    DisjunctionExclusionStrategy localDisjunctionExclusionStrategy1 = new com/google/kagegamesgson/DisjunctionExclusionStrategy;
    localDisjunctionExclusionStrategy1.<init>(localLinkedList2);
    DisjunctionExclusionStrategy localDisjunctionExclusionStrategy2 = new com/google/kagegamesgson/DisjunctionExclusionStrategy;
    localDisjunctionExclusionStrategy2.<init>(localLinkedList1);
    Object localObject2 = serializers;
    ParameterizedTypeHandlerMap localParameterizedTypeHandlerMap1 = ((ParameterizedTypeHandlerMap)localObject2).copyOf();
    localObject2 = deserializers;
    ParameterizedTypeHandlerMap localParameterizedTypeHandlerMap2 = ((ParameterizedTypeHandlerMap)localObject2).copyOf();
    localObject2 = datePattern;
    int i = dateStyle;
    int j = timeStyle;
    addTypeAdaptersForDate((String)localObject2, i, j, localParameterizedTypeHandlerMap1, localParameterizedTypeHandlerMap2);
    boolean bool4 = serializeSpecialFloatingPointValues;
    Object localObject4 = longSerializationPolicy;
    Object localObject3 = DefaultTypeAdapters.getDefaultSerializers(bool4, (LongSerializationPolicy)localObject4);
    localParameterizedTypeHandlerMap1.registerIfAbsent((ParameterizedTypeHandlerMap)localObject3);
    localObject3 = DefaultTypeAdapters.getDefaultDeserializers();
    localParameterizedTypeHandlerMap2.registerIfAbsent((ParameterizedTypeHandlerMap)localObject3);
    localObject3 = instanceCreators;
    ParameterizedTypeHandlerMap localParameterizedTypeHandlerMap3 = ((ParameterizedTypeHandlerMap)localObject3).copyOf();
    localObject3 = DefaultTypeAdapters.getDefaultInstanceCreators();
    localParameterizedTypeHandlerMap3.registerIfAbsent((ParameterizedTypeHandlerMap)localObject3);
    localParameterizedTypeHandlerMap1.makeUnmodifiable();
    localParameterizedTypeHandlerMap2.makeUnmodifiable();
    localObject3 = instanceCreators;
    ((ParameterizedTypeHandlerMap)localObject3).makeUnmodifiable();
    localObject4 = new com/google/kagegamesgson/MappedObjectConstructor;
    ((MappedObjectConstructor)localObject4).<init>(localParameterizedTypeHandlerMap3);
    Gson localGson = new com/google/kagegamesgson/Gson;
    localObject3 = fieldNamingPolicy;
    boolean bool5 = serializeNulls;
    boolean bool6 = generateNonExecutableJson;
    boolean bool7 = escapeHtmlChars;
    boolean bool8 = prettyPrinting;
    localGson.<init>(localDisjunctionExclusionStrategy1, localDisjunctionExclusionStrategy2, (FieldNamingStrategy2)localObject3, (MappedObjectConstructor)localObject4, bool5, localParameterizedTypeHandlerMap1, localParameterizedTypeHandlerMap2, bool6, bool7, bool8);
    return localGson;
  }
  
  public GsonBuilder disableHtmlEscaping()
  {
    boolean bool = false;
    escapeHtmlChars = bool;
    return this;
  }
  
  public GsonBuilder disableInnerClassSerialization()
  {
    boolean bool = false;
    serializeInnerClasses = bool;
    return this;
  }
  
  public GsonBuilder excludeFieldsWithModifiers(int[] paramArrayOfInt)
  {
    ModifierBasedExclusionStrategy localModifierBasedExclusionStrategy = new com/google/kagegamesgson/ModifierBasedExclusionStrategy;
    localModifierBasedExclusionStrategy.<init>(paramArrayOfInt);
    modifierBasedExclusionStrategy = localModifierBasedExclusionStrategy;
    return this;
  }
  
  public GsonBuilder excludeFieldsWithoutExposeAnnotation()
  {
    boolean bool = true;
    excludeFieldsWithoutExposeAnnotation = bool;
    return this;
  }
  
  public GsonBuilder generateNonExecutableJson()
  {
    boolean bool = true;
    generateNonExecutableJson = bool;
    return this;
  }
  
  private <T> GsonBuilder registerDeserializer(Type paramType, JsonDeserializer<T> paramJsonDeserializer)
  {
    ParameterizedTypeHandlerMap localParameterizedTypeHandlerMap = deserializers;
    JsonDeserializerExceptionWrapper localJsonDeserializerExceptionWrapper = new com/google/kagegamesgson/JsonDeserializerExceptionWrapper;
    localJsonDeserializerExceptionWrapper.<init>(paramJsonDeserializer);
    localParameterizedTypeHandlerMap.register(paramType, localJsonDeserializerExceptionWrapper);
    return this;
  }
  
  private <T> GsonBuilder registerDeserializerForTypeHierarchy(Class<?> paramClass, JsonDeserializer<T> paramJsonDeserializer)
  {
    ParameterizedTypeHandlerMap localParameterizedTypeHandlerMap = deserializers;
    JsonDeserializerExceptionWrapper localJsonDeserializerExceptionWrapper = new com/google/kagegamesgson/JsonDeserializerExceptionWrapper;
    localJsonDeserializerExceptionWrapper.<init>(paramJsonDeserializer);
    localParameterizedTypeHandlerMap.registerForTypeHierarchy(paramClass, localJsonDeserializerExceptionWrapper);
    return this;
  }
  
  private <T> GsonBuilder registerInstanceCreator(Type paramType, InstanceCreator<? extends T> paramInstanceCreator)
  {
    ParameterizedTypeHandlerMap localParameterizedTypeHandlerMap = instanceCreators;
    localParameterizedTypeHandlerMap.register(paramType, paramInstanceCreator);
    return this;
  }
  
  private <T> GsonBuilder registerInstanceCreatorForTypeHierarchy(Class<?> paramClass, InstanceCreator<? extends T> paramInstanceCreator)
  {
    ParameterizedTypeHandlerMap localParameterizedTypeHandlerMap = instanceCreators;
    localParameterizedTypeHandlerMap.registerForTypeHierarchy(paramClass, paramInstanceCreator);
    return this;
  }
  
  private <T> GsonBuilder registerSerializer(Type paramType, JsonSerializer<T> paramJsonSerializer)
  {
    ParameterizedTypeHandlerMap localParameterizedTypeHandlerMap = serializers;
    localParameterizedTypeHandlerMap.register(paramType, paramJsonSerializer);
    return this;
  }
  
  private <T> GsonBuilder registerSerializerForTypeHierarchy(Class<?> paramClass, JsonSerializer<T> paramJsonSerializer)
  {
    ParameterizedTypeHandlerMap localParameterizedTypeHandlerMap = serializers;
    localParameterizedTypeHandlerMap.registerForTypeHierarchy(paramClass, paramJsonSerializer);
    return this;
  }
  
  public GsonBuilder registerTypeAdapter(Type paramType, Object paramObject)
  {
    boolean bool1 = paramObject instanceof JsonSerializer;
    if (!bool1)
    {
      bool1 = paramObject instanceof JsonDeserializer;
      if (!bool1)
      {
        bool1 = paramObject instanceof InstanceCreator;
        if (!bool1) {
          break label125;
        }
      }
    }
    boolean bool3;
    label125:
    for (bool1 = true;; bool3 = false)
    {
      Preconditions.checkArgument(bool1);
      bool1 = paramObject instanceof InstanceCreator;
      Object localObject1;
      if (bool1)
      {
        localObject1 = paramObject;
        localObject1 = (InstanceCreator)localObject1;
        Object localObject2 = localObject1;
        registerInstanceCreator(paramType, (InstanceCreator)localObject2);
      }
      boolean bool2 = paramObject instanceof JsonSerializer;
      if (bool2)
      {
        localObject1 = paramObject;
        localObject1 = (JsonSerializer)localObject1;
        Object localObject3 = localObject1;
        registerSerializer(paramType, (JsonSerializer)localObject3);
      }
      bool3 = paramObject instanceof JsonDeserializer;
      if (bool3)
      {
        paramObject = (JsonDeserializer)paramObject;
        registerDeserializer(paramType, (JsonDeserializer)paramObject);
      }
      return this;
    }
  }
  
  GsonBuilder registerTypeHierarchyAdapter(Class<?> paramClass, Object paramObject)
  {
    boolean bool1 = paramObject instanceof JsonSerializer;
    if (!bool1)
    {
      bool1 = paramObject instanceof JsonDeserializer;
      if (!bool1)
      {
        bool1 = paramObject instanceof InstanceCreator;
        if (!bool1) {
          break label125;
        }
      }
    }
    boolean bool3;
    label125:
    for (bool1 = true;; bool3 = false)
    {
      Preconditions.checkArgument(bool1);
      bool1 = paramObject instanceof InstanceCreator;
      Object localObject1;
      if (bool1)
      {
        localObject1 = paramObject;
        localObject1 = (InstanceCreator)localObject1;
        Object localObject2 = localObject1;
        registerInstanceCreatorForTypeHierarchy(paramClass, (InstanceCreator)localObject2);
      }
      boolean bool2 = paramObject instanceof JsonSerializer;
      if (bool2)
      {
        localObject1 = paramObject;
        localObject1 = (JsonSerializer)localObject1;
        Object localObject3 = localObject1;
        registerSerializerForTypeHierarchy(paramClass, (JsonSerializer)localObject3);
      }
      bool3 = paramObject instanceof JsonDeserializer;
      if (bool3)
      {
        paramObject = (JsonDeserializer)paramObject;
        registerDeserializerForTypeHierarchy(paramClass, (JsonDeserializer)paramObject);
      }
      return this;
    }
  }
  
  public GsonBuilder serializeNulls()
  {
    boolean bool = true;
    serializeNulls = bool;
    return this;
  }
  
  public GsonBuilder serializeSpecialFloatingPointValues()
  {
    boolean bool = true;
    serializeSpecialFloatingPointValues = bool;
    return this;
  }
  
  public GsonBuilder setDateFormat(int paramInt)
  {
    dateStyle = paramInt;
    String str = null;
    datePattern = str;
    return this;
  }
  
  public GsonBuilder setDateFormat(int paramInt1, int paramInt2)
  {
    dateStyle = paramInt1;
    timeStyle = paramInt2;
    String str = null;
    datePattern = str;
    return this;
  }
  
  public GsonBuilder setDateFormat(String paramString)
  {
    datePattern = paramString;
    return this;
  }
  
  public GsonBuilder setExclusionStrategies(ExclusionStrategy[] paramArrayOfExclusionStrategy)
  {
    ExclusionStrategy[] arrayOfExclusionStrategy = paramArrayOfExclusionStrategy;
    int j = arrayOfExclusionStrategy.length;
    int i = 0;
    while (i < j)
    {
      ExclusionStrategy localExclusionStrategy = arrayOfExclusionStrategy[i];
      Collection localCollection = exclusionStrategies;
      localCollection.add(localExclusionStrategy);
      i += 1;
    }
    return this;
  }
  
  public GsonBuilder setFieldNamingPolicy(FieldNamingPolicy paramFieldNamingPolicy)
  {
    Object localObject = paramFieldNamingPolicy.getFieldNamingPolicy();
    localObject = setFieldNamingStrategy((FieldNamingStrategy2)localObject);
    return (GsonBuilder)localObject;
  }
  
  GsonBuilder setFieldNamingStrategy(FieldNamingStrategy2 paramFieldNamingStrategy2)
  {
    SerializedNameAnnotationInterceptingNamingPolicy localSerializedNameAnnotationInterceptingNamingPolicy = new com/google/kagegamesgson/SerializedNameAnnotationInterceptingNamingPolicy;
    localSerializedNameAnnotationInterceptingNamingPolicy.<init>(paramFieldNamingStrategy2);
    fieldNamingPolicy = localSerializedNameAnnotationInterceptingNamingPolicy;
    return this;
  }
  
  public GsonBuilder setFieldNamingStrategy(FieldNamingStrategy paramFieldNamingStrategy)
  {
    Object localObject = new com/google/kagegamesgson/FieldNamingStrategy2Adapter;
    ((FieldNamingStrategy2Adapter)localObject).<init>(paramFieldNamingStrategy);
    localObject = setFieldNamingStrategy((FieldNamingStrategy2)localObject);
    return (GsonBuilder)localObject;
  }
  
  public GsonBuilder setLongSerializationPolicy(LongSerializationPolicy paramLongSerializationPolicy)
  {
    longSerializationPolicy = paramLongSerializationPolicy;
    return this;
  }
  
  public GsonBuilder setPrettyPrinting()
  {
    boolean bool = true;
    prettyPrinting = bool;
    return this;
  }
  
  public GsonBuilder setVersion(double paramDouble)
  {
    ignoreVersionsAfter = paramDouble;
    return this;
  }
}

/* Location:
 * Qualified Name:     com.google.kagegamesgson.GsonBuilder
 * Java Class Version: 5 (49.0)
 * JD-Core Version:    0.7.1
 */