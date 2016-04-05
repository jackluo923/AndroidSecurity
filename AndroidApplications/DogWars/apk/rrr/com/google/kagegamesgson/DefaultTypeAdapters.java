package com.google.kagegamesgson;

import java.lang.reflect.Type;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.net.URI;
import java.net.URL;
import java.sql.Time;
import java.sql.Timestamp;
import java.util.Calendar;
import java.util.Collection;
import java.util.GregorianCalendar;
import java.util.Locale;
import java.util.Map;
import java.util.Properties;
import java.util.Set;
import java.util.SortedSet;
import java.util.UUID;

final class DefaultTypeAdapters
{
  private static final DefaultTypeAdapters.BigDecimalTypeAdapter BIG_DECIMAL_TYPE_ADAPTER;
  private static final DefaultTypeAdapters.BigIntegerTypeAdapter BIG_INTEGER_TYPE_ADAPTER;
  private static final DefaultTypeAdapters.BooleanTypeAdapter BOOLEAN_TYPE_ADAPTER;
  private static final DefaultTypeAdapters.ByteTypeAdapter BYTE_TYPE_ADAPTER;
  private static final DefaultTypeAdapters.CharacterTypeAdapter CHARACTER_TYPE_ADAPTER;
  private static final DefaultTypeAdapters.CollectionTypeAdapter COLLECTION_TYPE_ADAPTER;
  private static final DefaultTypeAdapters.DefaultDateTypeAdapter DATE_TYPE_ADAPTER;
  private static final ParameterizedTypeHandlerMap DEFAULT_DESERIALIZERS;
  private static final ParameterizedTypeHandlerMap DEFAULT_INSTANCE_CREATORS;
  private static final ParameterizedTypeHandlerMap DEFAULT_SERIALIZERS;
  private static final DefaultTypeAdapters.DoubleDeserializer DOUBLE_TYPE_ADAPTER;
  private static final DefaultTypeAdapters.EnumTypeAdapter ENUM_TYPE_ADAPTER;
  private static final DefaultTypeAdapters.FloatDeserializer FLOAT_TYPE_ADAPTER;
  private static final DefaultTypeAdapters.GregorianCalendarTypeAdapter GREGORIAN_CALENDAR_TYPE_ADAPTER;
  private static final DefaultTypeAdapters.HashSetCreator HASH_SET_CREATOR;
  private static final DefaultTypeAdapters.IntegerTypeAdapter INTEGER_TYPE_ADAPTER;
  private static final DefaultTypeAdapters.DefaultJavaSqlDateTypeAdapter JAVA_SQL_DATE_TYPE_ADAPTER;
  private static final DefaultTypeAdapters.LocaleTypeAdapter LOCALE_TYPE_ADAPTER;
  private static final DefaultTypeAdapters.LongDeserializer LONG_DESERIALIZER;
  private static final DefaultTypeAdapters.MapTypeAdapter MAP_TYPE_ADAPTER;
  private static final DefaultTypeAdapters.NumberTypeAdapter NUMBER_TYPE_ADAPTER;
  private static final DefaultTypeAdapters.PropertiesCreator PROPERTIES_CREATOR;
  private static final DefaultTypeAdapters.ShortTypeAdapter SHORT_TYPE_ADAPTER;
  private static final DefaultTypeAdapters.StringTypeAdapter STRING_TYPE_ADAPTER;
  private static final DefaultTypeAdapters.DefaultTimestampDeserializer TIMESTAMP_DESERIALIZER;
  private static final DefaultTypeAdapters.DefaultTimeTypeAdapter TIME_TYPE_ADAPTER;
  private static final DefaultTypeAdapters.TreeSetCreator TREE_SET_CREATOR;
  private static final DefaultTypeAdapters.UriTypeAdapter URI_TYPE_ADAPTER;
  private static final DefaultTypeAdapters.UrlTypeAdapter URL_TYPE_ADAPTER;
  private static final DefaultTypeAdapters.UuidTypeAdapter UUUID_TYPE_ADAPTER;
  
  static
  {
    DefaultTypeAdapters.1 local1 = null;
    Object localObject = new com/google/kagegamesgson/DefaultTypeAdapters$DefaultDateTypeAdapter;
    ((DefaultTypeAdapters.DefaultDateTypeAdapter)localObject).<init>();
    DATE_TYPE_ADAPTER = (DefaultTypeAdapters.DefaultDateTypeAdapter)localObject;
    localObject = new com/google/kagegamesgson/DefaultTypeAdapters$DefaultJavaSqlDateTypeAdapter;
    ((DefaultTypeAdapters.DefaultJavaSqlDateTypeAdapter)localObject).<init>();
    JAVA_SQL_DATE_TYPE_ADAPTER = (DefaultTypeAdapters.DefaultJavaSqlDateTypeAdapter)localObject;
    localObject = new com/google/kagegamesgson/DefaultTypeAdapters$DefaultTimeTypeAdapter;
    ((DefaultTypeAdapters.DefaultTimeTypeAdapter)localObject).<init>();
    TIME_TYPE_ADAPTER = (DefaultTypeAdapters.DefaultTimeTypeAdapter)localObject;
    localObject = new com/google/kagegamesgson/DefaultTypeAdapters$DefaultTimestampDeserializer;
    ((DefaultTypeAdapters.DefaultTimestampDeserializer)localObject).<init>();
    TIMESTAMP_DESERIALIZER = (DefaultTypeAdapters.DefaultTimestampDeserializer)localObject;
    localObject = new com/google/kagegamesgson/DefaultTypeAdapters$EnumTypeAdapter;
    ((DefaultTypeAdapters.EnumTypeAdapter)localObject).<init>(local1);
    ENUM_TYPE_ADAPTER = (DefaultTypeAdapters.EnumTypeAdapter)localObject;
    localObject = new com/google/kagegamesgson/DefaultTypeAdapters$UrlTypeAdapter;
    ((DefaultTypeAdapters.UrlTypeAdapter)localObject).<init>(local1);
    URL_TYPE_ADAPTER = (DefaultTypeAdapters.UrlTypeAdapter)localObject;
    localObject = new com/google/kagegamesgson/DefaultTypeAdapters$UriTypeAdapter;
    ((DefaultTypeAdapters.UriTypeAdapter)localObject).<init>(local1);
    URI_TYPE_ADAPTER = (DefaultTypeAdapters.UriTypeAdapter)localObject;
    localObject = new com/google/kagegamesgson/DefaultTypeAdapters$UuidTypeAdapter;
    ((DefaultTypeAdapters.UuidTypeAdapter)localObject).<init>(local1);
    UUUID_TYPE_ADAPTER = (DefaultTypeAdapters.UuidTypeAdapter)localObject;
    localObject = new com/google/kagegamesgson/DefaultTypeAdapters$LocaleTypeAdapter;
    ((DefaultTypeAdapters.LocaleTypeAdapter)localObject).<init>(local1);
    LOCALE_TYPE_ADAPTER = (DefaultTypeAdapters.LocaleTypeAdapter)localObject;
    localObject = new com/google/kagegamesgson/DefaultTypeAdapters$CollectionTypeAdapter;
    ((DefaultTypeAdapters.CollectionTypeAdapter)localObject).<init>(local1);
    COLLECTION_TYPE_ADAPTER = (DefaultTypeAdapters.CollectionTypeAdapter)localObject;
    localObject = new com/google/kagegamesgson/DefaultTypeAdapters$MapTypeAdapter;
    ((DefaultTypeAdapters.MapTypeAdapter)localObject).<init>();
    MAP_TYPE_ADAPTER = (DefaultTypeAdapters.MapTypeAdapter)localObject;
    localObject = new com/google/kagegamesgson/DefaultTypeAdapters$BigDecimalTypeAdapter;
    ((DefaultTypeAdapters.BigDecimalTypeAdapter)localObject).<init>(local1);
    BIG_DECIMAL_TYPE_ADAPTER = (DefaultTypeAdapters.BigDecimalTypeAdapter)localObject;
    localObject = new com/google/kagegamesgson/DefaultTypeAdapters$BigIntegerTypeAdapter;
    ((DefaultTypeAdapters.BigIntegerTypeAdapter)localObject).<init>(local1);
    BIG_INTEGER_TYPE_ADAPTER = (DefaultTypeAdapters.BigIntegerTypeAdapter)localObject;
    localObject = new com/google/kagegamesgson/DefaultTypeAdapters$BooleanTypeAdapter;
    ((DefaultTypeAdapters.BooleanTypeAdapter)localObject).<init>(local1);
    BOOLEAN_TYPE_ADAPTER = (DefaultTypeAdapters.BooleanTypeAdapter)localObject;
    localObject = new com/google/kagegamesgson/DefaultTypeAdapters$ByteTypeAdapter;
    ((DefaultTypeAdapters.ByteTypeAdapter)localObject).<init>(local1);
    BYTE_TYPE_ADAPTER = (DefaultTypeAdapters.ByteTypeAdapter)localObject;
    localObject = new com/google/kagegamesgson/DefaultTypeAdapters$CharacterTypeAdapter;
    ((DefaultTypeAdapters.CharacterTypeAdapter)localObject).<init>(local1);
    CHARACTER_TYPE_ADAPTER = (DefaultTypeAdapters.CharacterTypeAdapter)localObject;
    localObject = new com/google/kagegamesgson/DefaultTypeAdapters$DoubleDeserializer;
    ((DefaultTypeAdapters.DoubleDeserializer)localObject).<init>(local1);
    DOUBLE_TYPE_ADAPTER = (DefaultTypeAdapters.DoubleDeserializer)localObject;
    localObject = new com/google/kagegamesgson/DefaultTypeAdapters$FloatDeserializer;
    ((DefaultTypeAdapters.FloatDeserializer)localObject).<init>(local1);
    FLOAT_TYPE_ADAPTER = (DefaultTypeAdapters.FloatDeserializer)localObject;
    localObject = new com/google/kagegamesgson/DefaultTypeAdapters$IntegerTypeAdapter;
    ((DefaultTypeAdapters.IntegerTypeAdapter)localObject).<init>(local1);
    INTEGER_TYPE_ADAPTER = (DefaultTypeAdapters.IntegerTypeAdapter)localObject;
    localObject = new com/google/kagegamesgson/DefaultTypeAdapters$LongDeserializer;
    ((DefaultTypeAdapters.LongDeserializer)localObject).<init>(local1);
    LONG_DESERIALIZER = (DefaultTypeAdapters.LongDeserializer)localObject;
    localObject = new com/google/kagegamesgson/DefaultTypeAdapters$NumberTypeAdapter;
    ((DefaultTypeAdapters.NumberTypeAdapter)localObject).<init>(local1);
    NUMBER_TYPE_ADAPTER = (DefaultTypeAdapters.NumberTypeAdapter)localObject;
    localObject = new com/google/kagegamesgson/DefaultTypeAdapters$ShortTypeAdapter;
    ((DefaultTypeAdapters.ShortTypeAdapter)localObject).<init>(local1);
    SHORT_TYPE_ADAPTER = (DefaultTypeAdapters.ShortTypeAdapter)localObject;
    localObject = new com/google/kagegamesgson/DefaultTypeAdapters$StringTypeAdapter;
    ((DefaultTypeAdapters.StringTypeAdapter)localObject).<init>(local1);
    STRING_TYPE_ADAPTER = (DefaultTypeAdapters.StringTypeAdapter)localObject;
    localObject = new com/google/kagegamesgson/DefaultTypeAdapters$PropertiesCreator;
    ((DefaultTypeAdapters.PropertiesCreator)localObject).<init>(local1);
    PROPERTIES_CREATOR = (DefaultTypeAdapters.PropertiesCreator)localObject;
    localObject = new com/google/kagegamesgson/DefaultTypeAdapters$TreeSetCreator;
    ((DefaultTypeAdapters.TreeSetCreator)localObject).<init>(local1);
    TREE_SET_CREATOR = (DefaultTypeAdapters.TreeSetCreator)localObject;
    localObject = new com/google/kagegamesgson/DefaultTypeAdapters$HashSetCreator;
    ((DefaultTypeAdapters.HashSetCreator)localObject).<init>(local1);
    HASH_SET_CREATOR = (DefaultTypeAdapters.HashSetCreator)localObject;
    localObject = new com/google/kagegamesgson/DefaultTypeAdapters$GregorianCalendarTypeAdapter;
    ((DefaultTypeAdapters.GregorianCalendarTypeAdapter)localObject).<init>(local1);
    GREGORIAN_CALENDAR_TYPE_ADAPTER = (DefaultTypeAdapters.GregorianCalendarTypeAdapter)localObject;
    localObject = createDefaultSerializers();
    DEFAULT_SERIALIZERS = (ParameterizedTypeHandlerMap)localObject;
    localObject = createDefaultDeserializers();
    DEFAULT_DESERIALIZERS = (ParameterizedTypeHandlerMap)localObject;
    localObject = createDefaultInstanceCreators();
    DEFAULT_INSTANCE_CREATORS = (ParameterizedTypeHandlerMap)localObject;
  }
  
  private static ParameterizedTypeHandlerMap<JsonDeserializer<?>> createDefaultDeserializers()
  {
    ParameterizedTypeHandlerMap localParameterizedTypeHandlerMap = new com/google/kagegamesgson/ParameterizedTypeHandlerMap;
    localParameterizedTypeHandlerMap.<init>();
    Class localClass = Enum.class;
    Object localObject = ENUM_TYPE_ADAPTER;
    localObject = wrapDeserializer((JsonDeserializer)localObject);
    localParameterizedTypeHandlerMap.registerForTypeHierarchy(localClass, localObject);
    localClass = URL.class;
    localObject = URL_TYPE_ADAPTER;
    localObject = wrapDeserializer((JsonDeserializer)localObject);
    localParameterizedTypeHandlerMap.register(localClass, localObject);
    localClass = URI.class;
    localObject = URI_TYPE_ADAPTER;
    localObject = wrapDeserializer((JsonDeserializer)localObject);
    localParameterizedTypeHandlerMap.register(localClass, localObject);
    localClass = UUID.class;
    localObject = UUUID_TYPE_ADAPTER;
    localObject = wrapDeserializer((JsonDeserializer)localObject);
    localParameterizedTypeHandlerMap.register(localClass, localObject);
    localClass = Locale.class;
    localObject = LOCALE_TYPE_ADAPTER;
    localObject = wrapDeserializer((JsonDeserializer)localObject);
    localParameterizedTypeHandlerMap.register(localClass, localObject);
    localClass = Collection.class;
    localObject = COLLECTION_TYPE_ADAPTER;
    localObject = wrapDeserializer((JsonDeserializer)localObject);
    localParameterizedTypeHandlerMap.registerForTypeHierarchy(localClass, localObject);
    localClass = Map.class;
    localObject = MAP_TYPE_ADAPTER;
    localObject = wrapDeserializer((JsonDeserializer)localObject);
    localParameterizedTypeHandlerMap.registerForTypeHierarchy(localClass, localObject);
    localClass = java.util.Date.class;
    localObject = DATE_TYPE_ADAPTER;
    localObject = wrapDeserializer((JsonDeserializer)localObject);
    localParameterizedTypeHandlerMap.register(localClass, localObject);
    localClass = java.sql.Date.class;
    localObject = JAVA_SQL_DATE_TYPE_ADAPTER;
    localObject = wrapDeserializer((JsonDeserializer)localObject);
    localParameterizedTypeHandlerMap.register(localClass, localObject);
    localClass = Timestamp.class;
    localObject = TIMESTAMP_DESERIALIZER;
    localObject = wrapDeserializer((JsonDeserializer)localObject);
    localParameterizedTypeHandlerMap.register(localClass, localObject);
    localClass = Time.class;
    localObject = TIME_TYPE_ADAPTER;
    localObject = wrapDeserializer((JsonDeserializer)localObject);
    localParameterizedTypeHandlerMap.register(localClass, localObject);
    localClass = Calendar.class;
    localObject = GREGORIAN_CALENDAR_TYPE_ADAPTER;
    localParameterizedTypeHandlerMap.register(localClass, localObject);
    localClass = GregorianCalendar.class;
    localObject = GREGORIAN_CALENDAR_TYPE_ADAPTER;
    localParameterizedTypeHandlerMap.register(localClass, localObject);
    localClass = BigDecimal.class;
    localObject = BIG_DECIMAL_TYPE_ADAPTER;
    localObject = wrapDeserializer((JsonDeserializer)localObject);
    localParameterizedTypeHandlerMap.register(localClass, localObject);
    localClass = BigInteger.class;
    localObject = BIG_INTEGER_TYPE_ADAPTER;
    localObject = wrapDeserializer((JsonDeserializer)localObject);
    localParameterizedTypeHandlerMap.register(localClass, localObject);
    localClass = Boolean.class;
    localObject = BOOLEAN_TYPE_ADAPTER;
    localObject = wrapDeserializer((JsonDeserializer)localObject);
    localParameterizedTypeHandlerMap.register(localClass, localObject);
    localClass = Boolean.TYPE;
    localObject = BOOLEAN_TYPE_ADAPTER;
    localObject = wrapDeserializer((JsonDeserializer)localObject);
    localParameterizedTypeHandlerMap.register(localClass, localObject);
    localClass = Byte.class;
    localObject = BYTE_TYPE_ADAPTER;
    localObject = wrapDeserializer((JsonDeserializer)localObject);
    localParameterizedTypeHandlerMap.register(localClass, localObject);
    localClass = Byte.TYPE;
    localObject = BYTE_TYPE_ADAPTER;
    localObject = wrapDeserializer((JsonDeserializer)localObject);
    localParameterizedTypeHandlerMap.register(localClass, localObject);
    localClass = Character.class;
    localObject = CHARACTER_TYPE_ADAPTER;
    localObject = wrapDeserializer((JsonDeserializer)localObject);
    localParameterizedTypeHandlerMap.register(localClass, localObject);
    localClass = Character.TYPE;
    localObject = CHARACTER_TYPE_ADAPTER;
    localObject = wrapDeserializer((JsonDeserializer)localObject);
    localParameterizedTypeHandlerMap.register(localClass, localObject);
    localClass = Double.class;
    localObject = DOUBLE_TYPE_ADAPTER;
    localObject = wrapDeserializer((JsonDeserializer)localObject);
    localParameterizedTypeHandlerMap.register(localClass, localObject);
    localClass = Double.TYPE;
    localObject = DOUBLE_TYPE_ADAPTER;
    localObject = wrapDeserializer((JsonDeserializer)localObject);
    localParameterizedTypeHandlerMap.register(localClass, localObject);
    localClass = Float.class;
    localObject = FLOAT_TYPE_ADAPTER;
    localObject = wrapDeserializer((JsonDeserializer)localObject);
    localParameterizedTypeHandlerMap.register(localClass, localObject);
    localClass = Float.TYPE;
    localObject = FLOAT_TYPE_ADAPTER;
    localObject = wrapDeserializer((JsonDeserializer)localObject);
    localParameterizedTypeHandlerMap.register(localClass, localObject);
    localClass = Integer.class;
    localObject = INTEGER_TYPE_ADAPTER;
    localObject = wrapDeserializer((JsonDeserializer)localObject);
    localParameterizedTypeHandlerMap.register(localClass, localObject);
    localClass = Integer.TYPE;
    localObject = INTEGER_TYPE_ADAPTER;
    localObject = wrapDeserializer((JsonDeserializer)localObject);
    localParameterizedTypeHandlerMap.register(localClass, localObject);
    localClass = Long.class;
    localObject = LONG_DESERIALIZER;
    localObject = wrapDeserializer((JsonDeserializer)localObject);
    localParameterizedTypeHandlerMap.register(localClass, localObject);
    localClass = Long.TYPE;
    localObject = LONG_DESERIALIZER;
    localObject = wrapDeserializer((JsonDeserializer)localObject);
    localParameterizedTypeHandlerMap.register(localClass, localObject);
    localClass = Number.class;
    localObject = NUMBER_TYPE_ADAPTER;
    localObject = wrapDeserializer((JsonDeserializer)localObject);
    localParameterizedTypeHandlerMap.register(localClass, localObject);
    localClass = Short.class;
    localObject = SHORT_TYPE_ADAPTER;
    localObject = wrapDeserializer((JsonDeserializer)localObject);
    localParameterizedTypeHandlerMap.register(localClass, localObject);
    localClass = Short.TYPE;
    localObject = SHORT_TYPE_ADAPTER;
    localObject = wrapDeserializer((JsonDeserializer)localObject);
    localParameterizedTypeHandlerMap.register(localClass, localObject);
    localClass = String.class;
    localObject = STRING_TYPE_ADAPTER;
    localObject = wrapDeserializer((JsonDeserializer)localObject);
    localParameterizedTypeHandlerMap.register(localClass, localObject);
    localParameterizedTypeHandlerMap.makeUnmodifiable();
    return localParameterizedTypeHandlerMap;
  }
  
  private static ParameterizedTypeHandlerMap<InstanceCreator<?>> createDefaultInstanceCreators()
  {
    ParameterizedTypeHandlerMap localParameterizedTypeHandlerMap = new com/google/kagegamesgson/ParameterizedTypeHandlerMap;
    localParameterizedTypeHandlerMap.<init>();
    Class localClass = Map.class;
    Object localObject = MAP_TYPE_ADAPTER;
    localParameterizedTypeHandlerMap.registerForTypeHierarchy(localClass, localObject);
    localClass = Collection.class;
    localObject = COLLECTION_TYPE_ADAPTER;
    localParameterizedTypeHandlerMap.registerForTypeHierarchy(localClass, localObject);
    localClass = Set.class;
    localObject = HASH_SET_CREATOR;
    localParameterizedTypeHandlerMap.registerForTypeHierarchy(localClass, localObject);
    localClass = SortedSet.class;
    localObject = TREE_SET_CREATOR;
    localParameterizedTypeHandlerMap.registerForTypeHierarchy(localClass, localObject);
    localClass = Properties.class;
    localObject = PROPERTIES_CREATOR;
    localParameterizedTypeHandlerMap.register(localClass, localObject);
    localParameterizedTypeHandlerMap.makeUnmodifiable();
    return localParameterizedTypeHandlerMap;
  }
  
  private static ParameterizedTypeHandlerMap<JsonSerializer<?>> createDefaultSerializers()
  {
    ParameterizedTypeHandlerMap localParameterizedTypeHandlerMap = new com/google/kagegamesgson/ParameterizedTypeHandlerMap;
    localParameterizedTypeHandlerMap.<init>();
    Class localClass = Enum.class;
    Object localObject = ENUM_TYPE_ADAPTER;
    localParameterizedTypeHandlerMap.registerForTypeHierarchy(localClass, localObject);
    localClass = URL.class;
    localObject = URL_TYPE_ADAPTER;
    localParameterizedTypeHandlerMap.register(localClass, localObject);
    localClass = URI.class;
    localObject = URI_TYPE_ADAPTER;
    localParameterizedTypeHandlerMap.register(localClass, localObject);
    localClass = UUID.class;
    localObject = UUUID_TYPE_ADAPTER;
    localParameterizedTypeHandlerMap.register(localClass, localObject);
    localClass = Locale.class;
    localObject = LOCALE_TYPE_ADAPTER;
    localParameterizedTypeHandlerMap.register(localClass, localObject);
    localClass = Collection.class;
    localObject = COLLECTION_TYPE_ADAPTER;
    localParameterizedTypeHandlerMap.registerForTypeHierarchy(localClass, localObject);
    localClass = Map.class;
    localObject = MAP_TYPE_ADAPTER;
    localParameterizedTypeHandlerMap.registerForTypeHierarchy(localClass, localObject);
    localClass = java.util.Date.class;
    localObject = DATE_TYPE_ADAPTER;
    localParameterizedTypeHandlerMap.register(localClass, localObject);
    localClass = java.sql.Date.class;
    localObject = JAVA_SQL_DATE_TYPE_ADAPTER;
    localParameterizedTypeHandlerMap.register(localClass, localObject);
    localClass = Timestamp.class;
    localObject = DATE_TYPE_ADAPTER;
    localParameterizedTypeHandlerMap.register(localClass, localObject);
    localClass = Time.class;
    localObject = TIME_TYPE_ADAPTER;
    localParameterizedTypeHandlerMap.register(localClass, localObject);
    localClass = Calendar.class;
    localObject = GREGORIAN_CALENDAR_TYPE_ADAPTER;
    localParameterizedTypeHandlerMap.register(localClass, localObject);
    localClass = GregorianCalendar.class;
    localObject = GREGORIAN_CALENDAR_TYPE_ADAPTER;
    localParameterizedTypeHandlerMap.register(localClass, localObject);
    localClass = BigDecimal.class;
    localObject = BIG_DECIMAL_TYPE_ADAPTER;
    localParameterizedTypeHandlerMap.register(localClass, localObject);
    localClass = BigInteger.class;
    localObject = BIG_INTEGER_TYPE_ADAPTER;
    localParameterizedTypeHandlerMap.register(localClass, localObject);
    localClass = Boolean.class;
    localObject = BOOLEAN_TYPE_ADAPTER;
    localParameterizedTypeHandlerMap.register(localClass, localObject);
    localClass = Boolean.TYPE;
    localObject = BOOLEAN_TYPE_ADAPTER;
    localParameterizedTypeHandlerMap.register(localClass, localObject);
    localClass = Byte.class;
    localObject = BYTE_TYPE_ADAPTER;
    localParameterizedTypeHandlerMap.register(localClass, localObject);
    localClass = Byte.TYPE;
    localObject = BYTE_TYPE_ADAPTER;
    localParameterizedTypeHandlerMap.register(localClass, localObject);
    localClass = Character.class;
    localObject = CHARACTER_TYPE_ADAPTER;
    localParameterizedTypeHandlerMap.register(localClass, localObject);
    localClass = Character.TYPE;
    localObject = CHARACTER_TYPE_ADAPTER;
    localParameterizedTypeHandlerMap.register(localClass, localObject);
    localClass = Integer.class;
    localObject = INTEGER_TYPE_ADAPTER;
    localParameterizedTypeHandlerMap.register(localClass, localObject);
    localClass = Integer.TYPE;
    localObject = INTEGER_TYPE_ADAPTER;
    localParameterizedTypeHandlerMap.register(localClass, localObject);
    localClass = Number.class;
    localObject = NUMBER_TYPE_ADAPTER;
    localParameterizedTypeHandlerMap.register(localClass, localObject);
    localClass = Short.class;
    localObject = SHORT_TYPE_ADAPTER;
    localParameterizedTypeHandlerMap.register(localClass, localObject);
    localClass = Short.TYPE;
    localObject = SHORT_TYPE_ADAPTER;
    localParameterizedTypeHandlerMap.register(localClass, localObject);
    localClass = String.class;
    localObject = STRING_TYPE_ADAPTER;
    localParameterizedTypeHandlerMap.register(localClass, localObject);
    localParameterizedTypeHandlerMap.makeUnmodifiable();
    return localParameterizedTypeHandlerMap;
  }
  
  static ParameterizedTypeHandlerMap<JsonDeserializer<?>> getDefaultDeserializers()
  {
    ParameterizedTypeHandlerMap localParameterizedTypeHandlerMap = DEFAULT_DESERIALIZERS;
    return localParameterizedTypeHandlerMap;
  }
  
  static ParameterizedTypeHandlerMap<InstanceCreator<?>> getDefaultInstanceCreators()
  {
    ParameterizedTypeHandlerMap localParameterizedTypeHandlerMap = DEFAULT_INSTANCE_CREATORS;
    return localParameterizedTypeHandlerMap;
  }
  
  static ParameterizedTypeHandlerMap<JsonSerializer<?>> getDefaultSerializers()
  {
    boolean bool = false;
    LongSerializationPolicy localLongSerializationPolicy = LongSerializationPolicy.DEFAULT;
    ParameterizedTypeHandlerMap localParameterizedTypeHandlerMap = getDefaultSerializers(bool, localLongSerializationPolicy);
    return localParameterizedTypeHandlerMap;
  }
  
  static ParameterizedTypeHandlerMap<JsonSerializer<?>> getDefaultSerializers(boolean paramBoolean, LongSerializationPolicy paramLongSerializationPolicy)
  {
    ParameterizedTypeHandlerMap localParameterizedTypeHandlerMap = new com/google/kagegamesgson/ParameterizedTypeHandlerMap;
    localParameterizedTypeHandlerMap.<init>();
    DefaultTypeAdapters.DoubleSerializer localDoubleSerializer = new com/google/kagegamesgson/DefaultTypeAdapters$DoubleSerializer;
    localDoubleSerializer.<init>(paramBoolean);
    Object localObject = Double.class;
    localParameterizedTypeHandlerMap.registerIfAbsent((Type)localObject, localDoubleSerializer);
    localObject = Double.TYPE;
    localParameterizedTypeHandlerMap.registerIfAbsent((Type)localObject, localDoubleSerializer);
    DefaultTypeAdapters.FloatSerializer localFloatSerializer = new com/google/kagegamesgson/DefaultTypeAdapters$FloatSerializer;
    localFloatSerializer.<init>(paramBoolean);
    localObject = Float.class;
    localParameterizedTypeHandlerMap.registerIfAbsent((Type)localObject, localFloatSerializer);
    localObject = Float.TYPE;
    localParameterizedTypeHandlerMap.registerIfAbsent((Type)localObject, localFloatSerializer);
    DefaultTypeAdapters.LongSerializer localLongSerializer = new com/google/kagegamesgson/DefaultTypeAdapters$LongSerializer;
    localObject = null;
    localLongSerializer.<init>(paramLongSerializationPolicy, (DefaultTypeAdapters.1)localObject);
    localObject = Long.class;
    localParameterizedTypeHandlerMap.registerIfAbsent((Type)localObject, localLongSerializer);
    localObject = Long.TYPE;
    localParameterizedTypeHandlerMap.registerIfAbsent((Type)localObject, localLongSerializer);
    localObject = DEFAULT_SERIALIZERS;
    localParameterizedTypeHandlerMap.registerIfAbsent((ParameterizedTypeHandlerMap)localObject);
    return localParameterizedTypeHandlerMap;
  }
  
  private static JsonDeserializer<?> wrapDeserializer(JsonDeserializer<?> paramJsonDeserializer)
  {
    JsonDeserializerExceptionWrapper localJsonDeserializerExceptionWrapper = new com/google/kagegamesgson/JsonDeserializerExceptionWrapper;
    localJsonDeserializerExceptionWrapper.<init>(paramJsonDeserializer);
    return localJsonDeserializerExceptionWrapper;
  }
}

/* Location:
 * Qualified Name:     com.google.kagegamesgson.DefaultTypeAdapters
 * Java Class Version: 5 (49.0)
 * JD-Core Version:    0.7.1
 */