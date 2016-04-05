package com.google.kagegamesgson;

import com.google.kagegamesgson.stream.JsonReader;
import com.google.kagegamesgson.stream.JsonToken;
import com.google.kagegamesgson.stream.JsonWriter;
import com.google.kagegamesgson.stream.MalformedJsonException;
import java.io.IOException;
import java.io.Reader;
import java.io.StringReader;
import java.io.StringWriter;
import java.io.Writer;
import java.lang.reflect.Type;
import java.util.LinkedList;
import java.util.List;

public final class Gson
{
  static final AnonymousAndLocalClassExclusionStrategy DEFAULT_ANON_LOCAL_CLASS_EXCLUSION_STRATEGY;
  private static final ExclusionStrategy DEFAULT_EXCLUSION_STRATEGY;
  static final boolean DEFAULT_JSON_NON_EXECUTABLE = false;
  static final ModifierBasedExclusionStrategy DEFAULT_MODIFIER_BASED_EXCLUSION_STRATEGY;
  static final FieldNamingStrategy2 DEFAULT_NAMING_POLICY;
  static final SyntheticFieldExclusionStrategy DEFAULT_SYNTHETIC_FIELD_EXCLUSION_STRATEGY;
  private static final String JSON_NON_EXECUTABLE_PREFIX = ")]}'\n";
  private static final String NULL_STRING = "null";
  private final ExclusionStrategy deserializationStrategy;
  private final ParameterizedTypeHandlerMap deserializers;
  private final FieldNamingStrategy2 fieldNamingPolicy;
  private final boolean generateNonExecutableJson;
  private final boolean htmlSafe;
  private final MappedObjectConstructor objectConstructor;
  private final boolean prettyPrinting;
  private final ExclusionStrategy serializationStrategy;
  private final boolean serializeNulls;
  private final ParameterizedTypeHandlerMap serializers;
  
  static
  {
    Object localObject1 = new com/google/kagegamesgson/AnonymousAndLocalClassExclusionStrategy;
    ((AnonymousAndLocalClassExclusionStrategy)localObject1).<init>();
    DEFAULT_ANON_LOCAL_CLASS_EXCLUSION_STRATEGY = (AnonymousAndLocalClassExclusionStrategy)localObject1;
    localObject1 = new com/google/kagegamesgson/SyntheticFieldExclusionStrategy;
    boolean bool = true;
    ((SyntheticFieldExclusionStrategy)localObject1).<init>(bool);
    DEFAULT_SYNTHETIC_FIELD_EXCLUSION_STRATEGY = (SyntheticFieldExclusionStrategy)localObject1;
    localObject1 = new com/google/kagegamesgson/ModifierBasedExclusionStrategy;
    int i = 2;
    Object localObject2 = new int[i];
    localObject2[0] = 128;
    localObject2[1] = 8;
    ((ModifierBasedExclusionStrategy)localObject1).<init>((int[])localObject2);
    DEFAULT_MODIFIER_BASED_EXCLUSION_STRATEGY = (ModifierBasedExclusionStrategy)localObject1;
    localObject1 = new com/google/kagegamesgson/SerializedNameAnnotationInterceptingNamingPolicy;
    localObject2 = new com/google/kagegamesgson/JavaFieldNamingPolicy;
    ((JavaFieldNamingPolicy)localObject2).<init>();
    ((SerializedNameAnnotationInterceptingNamingPolicy)localObject1).<init>((FieldNamingStrategy2)localObject2);
    DEFAULT_NAMING_POLICY = (FieldNamingStrategy2)localObject1;
    double d = -1.0D;
    ExclusionStrategy localExclusionStrategy = createExclusionStrategy(d);
    DEFAULT_EXCLUSION_STRATEGY = localExclusionStrategy;
  }
  
  public Gson() {}
  
  Gson(ExclusionStrategy paramExclusionStrategy1, ExclusionStrategy paramExclusionStrategy2, FieldNamingStrategy2 paramFieldNamingStrategy2, MappedObjectConstructor paramMappedObjectConstructor, boolean paramBoolean1, ParameterizedTypeHandlerMap<JsonSerializer<?>> paramParameterizedTypeHandlerMap, ParameterizedTypeHandlerMap<JsonDeserializer<?>> paramParameterizedTypeHandlerMap1, boolean paramBoolean2, boolean paramBoolean3, boolean paramBoolean4)
  {
    serializationStrategy = paramExclusionStrategy1;
    deserializationStrategy = paramExclusionStrategy2;
    fieldNamingPolicy = paramFieldNamingStrategy2;
    objectConstructor = paramMappedObjectConstructor;
    serializeNulls = paramBoolean1;
    serializers = paramParameterizedTypeHandlerMap;
    deserializers = paramParameterizedTypeHandlerMap1;
    generateNonExecutableJson = paramBoolean2;
    htmlSafe = paramBoolean3;
    prettyPrinting = paramBoolean4;
  }
  
  private static void assertFullConsumption(Object paramObject, JsonReader paramJsonReader)
  {
    if (paramObject != null) {
      try
      {
        Object localObject2 = paramJsonReader.peek();
        Object localObject3 = JsonToken.END_DOCUMENT;
        if (localObject2 != localObject3)
        {
          localObject2 = new com/google/kagegamesgson/JsonIOException;
          localObject3 = "JSON document was not fully consumed.";
          ((JsonIOException)localObject2).<init>((String)localObject3);
          throw ((Throwable)localObject2);
        }
      }
      catch (MalformedJsonException localMalformedJsonException)
      {
        localObject1 = localMalformedJsonException;
        JsonSyntaxException localJsonSyntaxException = new com/google/kagegamesgson/JsonSyntaxException;
        localJsonSyntaxException.<init>((Throwable)localObject1);
        throw localJsonSyntaxException;
      }
      catch (IOException localIOException)
      {
        Object localObject1 = localIOException;
        JsonIOException localJsonIOException = new com/google/kagegamesgson/JsonIOException;
        localJsonIOException.<init>((Throwable)localObject1);
        throw localJsonIOException;
      }
    }
  }
  
  private ObjectNavigatorFactory createDefaultObjectNavigatorFactory(ExclusionStrategy paramExclusionStrategy)
  {
    ObjectNavigatorFactory localObjectNavigatorFactory = new com/google/kagegamesgson/ObjectNavigatorFactory;
    FieldNamingStrategy2 localFieldNamingStrategy2 = fieldNamingPolicy;
    localObjectNavigatorFactory.<init>(paramExclusionStrategy, localFieldNamingStrategy2);
    return localObjectNavigatorFactory;
  }
  
  private static ExclusionStrategy createExclusionStrategy(double paramDouble)
  {
    LinkedList localLinkedList = new java/util/LinkedList;
    localLinkedList.<init>();
    Object localObject1 = DEFAULT_ANON_LOCAL_CLASS_EXCLUSION_STRATEGY;
    localLinkedList.add(localObject1);
    localObject1 = DEFAULT_SYNTHETIC_FIELD_EXCLUSION_STRATEGY;
    localLinkedList.add(localObject1);
    localObject1 = DEFAULT_MODIFIER_BASED_EXCLUSION_STRATEGY;
    localLinkedList.add(localObject1);
    double d = -1.0D;
    boolean bool = paramDouble < d;
    if (bool)
    {
      localObject2 = new com/google/kagegamesgson/VersionExclusionStrategy;
      ((VersionExclusionStrategy)localObject2).<init>(paramDouble);
      localLinkedList.add(localObject2);
    }
    Object localObject2 = new com/google/kagegamesgson/DisjunctionExclusionStrategy;
    ((DisjunctionExclusionStrategy)localObject2).<init>(localLinkedList);
    return (ExclusionStrategy)localObject2;
  }
  
  public <T> T fromJson(JsonElement paramJsonElement, Class<T> paramClass)
    throws JsonSyntaxException
  {
    Object localObject1 = fromJson(paramJsonElement, paramClass);
    Object localObject2 = Primitives.wrap(paramClass);
    localObject2 = ((Class)localObject2).cast(localObject1);
    return (T)localObject2;
  }
  
  public <T> T fromJson(JsonElement paramJsonElement, Type paramType)
    throws JsonSyntaxException
  {
    if (paramJsonElement == null) {}
    Object localObject1;
    for (Object localObject2 = null;; localObject2 = localObject1)
    {
      return (T)localObject2;
      JsonDeserializationContextDefault localJsonDeserializationContextDefault = new com/google/kagegamesgson/JsonDeserializationContextDefault;
      localObject2 = deserializationStrategy;
      localObject2 = createDefaultObjectNavigatorFactory((ExclusionStrategy)localObject2);
      ParameterizedTypeHandlerMap localParameterizedTypeHandlerMap = deserializers;
      MappedObjectConstructor localMappedObjectConstructor = objectConstructor;
      localJsonDeserializationContextDefault.<init>((ObjectNavigatorFactory)localObject2, localParameterizedTypeHandlerMap, localMappedObjectConstructor);
      localObject1 = localJsonDeserializationContextDefault.deserialize(paramJsonElement, paramType);
    }
  }
  
  public <T> T fromJson(JsonReader paramJsonReader, Type paramType)
    throws JsonIOException, JsonSyntaxException
  {
    boolean bool1 = paramJsonReader.isLenient();
    boolean bool2 = true;
    paramJsonReader.setLenient(bool2);
    try
    {
      JsonElement localJsonElement = Streams.parse(paramJsonReader);
      Object localObject1 = fromJson(localJsonElement, paramType);
      return (T)localObject1;
    }
    finally
    {
      paramJsonReader.setLenient(bool1);
    }
  }
  
  public <T> T fromJson(Reader paramReader, Class<T> paramClass)
    throws JsonSyntaxException, JsonIOException
  {
    JsonReader localJsonReader = new com/google/kagegamesgson/stream/JsonReader;
    localJsonReader.<init>(paramReader);
    Object localObject1 = fromJson(localJsonReader, paramClass);
    assertFullConsumption(localObject1, localJsonReader);
    Object localObject2 = Primitives.wrap(paramClass);
    localObject2 = ((Class)localObject2).cast(localObject1);
    return (T)localObject2;
  }
  
  public <T> T fromJson(Reader paramReader, Type paramType)
    throws JsonIOException, JsonSyntaxException
  {
    JsonReader localJsonReader = new com/google/kagegamesgson/stream/JsonReader;
    localJsonReader.<init>(paramReader);
    Object localObject = fromJson(localJsonReader, paramType);
    assertFullConsumption(localObject, localJsonReader);
    return (T)localObject;
  }
  
  public <T> T fromJson(String paramString, Class<T> paramClass)
    throws JsonSyntaxException
  {
    Object localObject1 = fromJson(paramString, paramClass);
    Object localObject2 = Primitives.wrap(paramClass);
    localObject2 = ((Class)localObject2).cast(localObject1);
    return (T)localObject2;
  }
  
  public <T> T fromJson(String paramString, Type paramType)
    throws JsonSyntaxException
  {
    if (paramString == null) {}
    Object localObject1;
    for (Object localObject2 = null;; localObject2 = localObject1)
    {
      return (T)localObject2;
      StringReader localStringReader = new java/io/StringReader;
      localStringReader.<init>(paramString);
      localObject1 = fromJson(localStringReader, paramType);
    }
  }
  
  public String toJson(JsonElement paramJsonElement)
  {
    StringWriter localStringWriter = new java/io/StringWriter;
    localStringWriter.<init>();
    toJson(paramJsonElement, localStringWriter);
    String str = localStringWriter.toString();
    return str;
  }
  
  public String toJson(Object paramObject)
  {
    Object localObject;
    if (paramObject == null)
    {
      boolean bool = serializeNulls;
      if (bool) {
        localObject = "null";
      }
    }
    for (;;)
    {
      return (String)localObject;
      localObject = "";
      continue;
      localObject = paramObject.getClass();
      localObject = toJson(paramObject, (Type)localObject);
    }
  }
  
  public String toJson(Object paramObject, Type paramType)
  {
    StringWriter localStringWriter = new java/io/StringWriter;
    localStringWriter.<init>();
    Object localObject = toJsonTree(paramObject, paramType);
    toJson((JsonElement)localObject, localStringWriter);
    localObject = localStringWriter.toString();
    return (String)localObject;
  }
  
  public void toJson(JsonElement paramJsonElement, JsonWriter paramJsonWriter)
    throws JsonIOException
  {
    boolean bool2 = paramJsonWriter.isLenient();
    boolean bool3 = true;
    paramJsonWriter.setLenient(bool3);
    boolean bool1 = paramJsonWriter.isHtmlSafe();
    bool3 = htmlSafe;
    paramJsonWriter.setHtmlSafe(bool3);
    try
    {
      bool3 = serializeNulls;
      Streams.write(paramJsonElement, bool3, paramJsonWriter);
      return;
    }
    catch (IOException localIOException2)
    {
      IOException localIOException1 = localIOException2;
      JsonIOException localJsonIOException = new com/google/kagegamesgson/JsonIOException;
      localJsonIOException.<init>(localIOException1);
      throw localJsonIOException;
    }
    finally
    {
      paramJsonWriter.setLenient(bool2);
      paramJsonWriter.setHtmlSafe(bool1);
    }
  }
  
  public void toJson(JsonElement paramJsonElement, Appendable paramAppendable)
    throws JsonIOException
  {
    try
    {
      boolean bool1 = generateNonExecutableJson;
      if (bool1)
      {
        localObject = ")]}'\n";
        paramAppendable.append((CharSequence)localObject);
      }
      JsonWriter localJsonWriter = new com/google/kagegamesgson/stream/JsonWriter;
      Object localObject = Streams.writerForAppendable(paramAppendable);
      localJsonWriter.<init>((Writer)localObject);
      boolean bool2 = prettyPrinting;
      if (bool2)
      {
        String str = "  ";
        localJsonWriter.setIndent(str);
      }
      toJson(paramJsonElement, localJsonWriter);
      return;
    }
    catch (IOException localIOException2)
    {
      IOException localIOException1 = localIOException2;
      RuntimeException localRuntimeException = new java/lang/RuntimeException;
      localRuntimeException.<init>(localIOException1);
      throw localRuntimeException;
    }
  }
  
  public void toJson(Object paramObject, Appendable paramAppendable)
    throws JsonIOException
  {
    if (paramObject != null) {}
    for (;;)
    {
      try
      {
        Class localClass = paramObject.getClass();
        toJson(paramObject, localClass, paramAppendable);
        return;
      }
      catch (IOException localIOException2)
      {
        boolean bool;
        IOException localIOException1 = localIOException2;
        RuntimeException localRuntimeException = new java/lang/RuntimeException;
        localRuntimeException.<init>(localIOException1);
        throw localRuntimeException;
      }
      bool = serializeNulls;
      if (bool) {
        writeOutNullString(paramAppendable);
      }
    }
  }
  
  public void toJson(Object paramObject, Type paramType, JsonWriter paramJsonWriter)
    throws JsonIOException
  {
    JsonElement localJsonElement = toJsonTree(paramObject, paramType);
    toJson(localJsonElement, paramJsonWriter);
  }
  
  public void toJson(Object paramObject, Type paramType, Appendable paramAppendable)
    throws JsonIOException
  {
    JsonElement localJsonElement = toJsonTree(paramObject, paramType);
    toJson(localJsonElement, paramAppendable);
  }
  
  public JsonElement toJsonTree(Object paramObject)
  {
    if (paramObject == null) {}
    for (Object localObject = JsonNull.createJsonNull();; localObject = toJsonTree(paramObject, (Type)localObject))
    {
      return (JsonElement)localObject;
      localObject = paramObject.getClass();
    }
  }
  
  public JsonElement toJsonTree(Object paramObject, Type paramType)
  {
    if (paramObject == null) {}
    JsonSerializationContextDefault localJsonSerializationContextDefault;
    boolean bool1;
    JsonElement localJsonElement;
    for (Object localObject = JsonNull.createJsonNull();; localJsonElement = localJsonSerializationContextDefault.serialize(paramObject, paramType, bool1))
    {
      return (JsonElement)localObject;
      localJsonSerializationContextDefault = new com/google/kagegamesgson/JsonSerializationContextDefault;
      localObject = serializationStrategy;
      localObject = createDefaultObjectNavigatorFactory((ExclusionStrategy)localObject);
      boolean bool2 = serializeNulls;
      ParameterizedTypeHandlerMap localParameterizedTypeHandlerMap = serializers;
      localJsonSerializationContextDefault.<init>((ObjectNavigatorFactory)localObject, bool2, localParameterizedTypeHandlerMap);
      bool1 = true;
    }
  }
  
  public String toString()
  {
    Object localObject1 = new java/lang/StringBuilder;
    String str = "{";
    ((StringBuilder)localObject1).<init>(str);
    str = "serializeNulls:";
    localObject1 = ((StringBuilder)localObject1).append(str);
    boolean bool = serializeNulls;
    localObject1 = ((StringBuilder)localObject1).append(bool);
    Object localObject2 = ",serializers:";
    localObject1 = ((StringBuilder)localObject1).append((String)localObject2);
    localObject2 = serializers;
    localObject1 = ((StringBuilder)localObject1).append(localObject2);
    localObject2 = ",deserializers:";
    localObject1 = ((StringBuilder)localObject1).append((String)localObject2);
    localObject2 = deserializers;
    localObject1 = ((StringBuilder)localObject1).append(localObject2);
    localObject2 = ",instanceCreators:";
    localObject1 = ((StringBuilder)localObject1).append((String)localObject2);
    localObject2 = objectConstructor;
    localObject1 = ((StringBuilder)localObject1).append(localObject2);
    localObject2 = "}";
    StringBuilder localStringBuilder = ((StringBuilder)localObject1).append((String)localObject2);
    localObject1 = localStringBuilder.toString();
    return (String)localObject1;
  }
  
  private void writeOutNullString(Appendable paramAppendable)
    throws IOException
  {
    String str = "null";
    paramAppendable.append(str);
  }
}

/* Location:
 * Qualified Name:     com.google.kagegamesgson.Gson
 * Java Class Version: 1.2 (46.0)
 * JD-Core Version:    0.7.1
 */