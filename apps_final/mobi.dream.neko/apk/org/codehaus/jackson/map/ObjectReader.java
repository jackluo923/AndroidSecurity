package org.codehaus.jackson.map;

import java.io.EOFException;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.Reader;
import java.lang.reflect.Type;
import java.net.URL;
import java.util.Iterator;
import java.util.concurrent.ConcurrentHashMap;
import org.codehaus.jackson.FormatSchema;
import org.codehaus.jackson.JsonFactory;
import org.codehaus.jackson.JsonGenerator;
import org.codehaus.jackson.JsonNode;
import org.codehaus.jackson.JsonParseException;
import org.codehaus.jackson.JsonParser;
import org.codehaus.jackson.JsonProcessingException;
import org.codehaus.jackson.JsonToken;
import org.codehaus.jackson.ObjectCodec;
import org.codehaus.jackson.Version;
import org.codehaus.jackson.Versioned;
import org.codehaus.jackson.io.SerializedString;
import org.codehaus.jackson.map.deser.StdDeserializationContext;
import org.codehaus.jackson.map.type.SimpleType;
import org.codehaus.jackson.map.type.TypeFactory;
import org.codehaus.jackson.node.JsonNodeFactory;
import org.codehaus.jackson.node.NullNode;
import org.codehaus.jackson.node.TreeTraversingParser;
import org.codehaus.jackson.type.JavaType;
import org.codehaus.jackson.type.TypeReference;
import org.codehaus.jackson.util.VersionUtil;

public class ObjectReader
  extends ObjectCodec
  implements Versioned
{
  private static final JavaType JSON_NODE_TYPE = SimpleType.constructUnsafe(JsonNode.class);
  protected final DeserializationConfig _config;
  protected final InjectableValues _injectableValues;
  protected final JsonFactory _jsonFactory;
  protected final DeserializerProvider _provider;
  protected final ConcurrentHashMap<JavaType, JsonDeserializer<Object>> _rootDeserializers;
  protected final FormatSchema _schema;
  protected final boolean _unwrapRoot;
  protected final Object _valueToUpdate;
  protected final JavaType _valueType;
  
  protected ObjectReader(ObjectMapper paramObjectMapper, DeserializationConfig paramDeserializationConfig)
  {
    this(paramObjectMapper, paramDeserializationConfig, null, null, null, null);
  }
  
  protected ObjectReader(ObjectMapper paramObjectMapper, DeserializationConfig paramDeserializationConfig, JavaType paramJavaType, Object paramObject, FormatSchema paramFormatSchema, InjectableValues paramInjectableValues)
  {
    _config = paramDeserializationConfig;
    _rootDeserializers = _rootDeserializers;
    _provider = _deserializerProvider;
    _jsonFactory = _jsonFactory;
    _valueType = paramJavaType;
    _valueToUpdate = paramObject;
    if ((paramObject != null) && (paramJavaType.isArrayType())) {
      throw new IllegalArgumentException("Can not update an array value");
    }
    _schema = paramFormatSchema;
    _injectableValues = paramInjectableValues;
    _unwrapRoot = paramDeserializationConfig.isEnabled(DeserializationConfig.Feature.UNWRAP_ROOT_VALUE);
  }
  
  protected ObjectReader(ObjectReader paramObjectReader, DeserializationConfig paramDeserializationConfig, JavaType paramJavaType, Object paramObject, FormatSchema paramFormatSchema, InjectableValues paramInjectableValues)
  {
    _config = paramDeserializationConfig;
    _rootDeserializers = _rootDeserializers;
    _provider = _provider;
    _jsonFactory = _jsonFactory;
    _valueType = paramJavaType;
    _valueToUpdate = paramObject;
    if ((paramObject != null) && (paramJavaType.isArrayType())) {
      throw new IllegalArgumentException("Can not update an array value");
    }
    _schema = paramFormatSchema;
    _injectableValues = paramInjectableValues;
    _unwrapRoot = paramDeserializationConfig.isEnabled(DeserializationConfig.Feature.UNWRAP_ROOT_VALUE);
  }
  
  protected static JsonToken _initForReading(JsonParser paramJsonParser)
    throws IOException, JsonParseException, JsonMappingException
  {
    JsonToken localJsonToken = paramJsonParser.getCurrentToken();
    Object localObject = localJsonToken;
    if (localJsonToken == null)
    {
      paramJsonParser = paramJsonParser.nextToken();
      localObject = paramJsonParser;
      if (paramJsonParser == null) {
        throw new EOFException("No content to map to Object due to end of input");
      }
    }
    return (JsonToken)localObject;
  }
  
  protected Object _bind(JsonParser paramJsonParser)
    throws IOException, JsonParseException, JsonMappingException
  {
    Object localObject = _initForReading(paramJsonParser);
    if (localObject == JsonToken.VALUE_NULL) {
      if (_valueToUpdate == null) {
        localObject = _findRootDeserializer(_config, _valueType).getNullValue();
      }
    }
    for (;;)
    {
      paramJsonParser.clearCurrentToken();
      return localObject;
      localObject = _valueToUpdate;
      continue;
      if ((localObject == JsonToken.END_ARRAY) || (localObject == JsonToken.END_OBJECT))
      {
        localObject = _valueToUpdate;
      }
      else
      {
        localObject = _createDeserializationContext(paramJsonParser, _config);
        JsonDeserializer localJsonDeserializer = _findRootDeserializer(_config, _valueType);
        if (_unwrapRoot)
        {
          localObject = _unwrapAndDeserialize(paramJsonParser, (DeserializationContext)localObject, _valueType, localJsonDeserializer);
        }
        else if (_valueToUpdate == null)
        {
          localObject = localJsonDeserializer.deserialize(paramJsonParser, (DeserializationContext)localObject);
        }
        else
        {
          localJsonDeserializer.deserialize(paramJsonParser, (DeserializationContext)localObject, _valueToUpdate);
          localObject = _valueToUpdate;
        }
      }
    }
  }
  
  /* Error */
  protected Object _bindAndClose(JsonParser paramJsonParser)
    throws IOException, JsonParseException, JsonMappingException
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 80	org/codehaus/jackson/map/ObjectReader:_schema	Lorg/codehaus/jackson/FormatSchema;
    //   4: ifnull +11 -> 15
    //   7: aload_1
    //   8: aload_0
    //   9: getfield 80	org/codehaus/jackson/map/ObjectReader:_schema	Lorg/codehaus/jackson/FormatSchema;
    //   12: invokevirtual 169	org/codehaus/jackson/JsonParser:setSchema	(Lorg/codehaus/jackson/FormatSchema;)V
    //   15: aload_1
    //   16: invokestatic 124	org/codehaus/jackson/map/ObjectReader:_initForReading	(Lorg/codehaus/jackson/JsonParser;)Lorg/codehaus/jackson/JsonToken;
    //   19: astore_2
    //   20: aload_2
    //   21: getstatic 130	org/codehaus/jackson/JsonToken:VALUE_NULL	Lorg/codehaus/jackson/JsonToken;
    //   24: if_acmpne +40 -> 64
    //   27: aload_0
    //   28: getfield 65	org/codehaus/jackson/map/ObjectReader:_valueToUpdate	Ljava/lang/Object;
    //   31: ifnonnull +25 -> 56
    //   34: aload_0
    //   35: aload_0
    //   36: getfield 48	org/codehaus/jackson/map/ObjectReader:_config	Lorg/codehaus/jackson/map/DeserializationConfig;
    //   39: aload_0
    //   40: getfield 63	org/codehaus/jackson/map/ObjectReader:_valueType	Lorg/codehaus/jackson/type/JavaType;
    //   43: invokevirtual 134	org/codehaus/jackson/map/ObjectReader:_findRootDeserializer	(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/type/JavaType;)Lorg/codehaus/jackson/map/JsonDeserializer;
    //   46: invokevirtual 140	org/codehaus/jackson/map/JsonDeserializer:getNullValue	()Ljava/lang/Object;
    //   49: astore_2
    //   50: aload_1
    //   51: invokevirtual 172	org/codehaus/jackson/JsonParser:close	()V
    //   54: aload_2
    //   55: areturn
    //   56: aload_0
    //   57: getfield 65	org/codehaus/jackson/map/ObjectReader:_valueToUpdate	Ljava/lang/Object;
    //   60: astore_2
    //   61: goto -11 -> 50
    //   64: aload_2
    //   65: getstatic 146	org/codehaus/jackson/JsonToken:END_ARRAY	Lorg/codehaus/jackson/JsonToken;
    //   68: if_acmpeq +10 -> 78
    //   71: aload_2
    //   72: getstatic 149	org/codehaus/jackson/JsonToken:END_OBJECT	Lorg/codehaus/jackson/JsonToken;
    //   75: if_acmpne +11 -> 86
    //   78: aload_0
    //   79: getfield 65	org/codehaus/jackson/map/ObjectReader:_valueToUpdate	Ljava/lang/Object;
    //   82: astore_2
    //   83: goto -33 -> 50
    //   86: aload_0
    //   87: aload_1
    //   88: aload_0
    //   89: getfield 48	org/codehaus/jackson/map/ObjectReader:_config	Lorg/codehaus/jackson/map/DeserializationConfig;
    //   92: invokevirtual 153	org/codehaus/jackson/map/ObjectReader:_createDeserializationContext	(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationConfig;)Lorg/codehaus/jackson/map/DeserializationContext;
    //   95: astore_2
    //   96: aload_0
    //   97: aload_0
    //   98: getfield 48	org/codehaus/jackson/map/ObjectReader:_config	Lorg/codehaus/jackson/map/DeserializationConfig;
    //   101: aload_0
    //   102: getfield 63	org/codehaus/jackson/map/ObjectReader:_valueType	Lorg/codehaus/jackson/type/JavaType;
    //   105: invokevirtual 134	org/codehaus/jackson/map/ObjectReader:_findRootDeserializer	(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/type/JavaType;)Lorg/codehaus/jackson/map/JsonDeserializer;
    //   108: astore_3
    //   109: aload_0
    //   110: getfield 96	org/codehaus/jackson/map/ObjectReader:_unwrapRoot	Z
    //   113: ifeq +18 -> 131
    //   116: aload_0
    //   117: aload_1
    //   118: aload_2
    //   119: aload_0
    //   120: getfield 63	org/codehaus/jackson/map/ObjectReader:_valueType	Lorg/codehaus/jackson/type/JavaType;
    //   123: aload_3
    //   124: invokevirtual 157	org/codehaus/jackson/map/ObjectReader:_unwrapAndDeserialize	(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/JsonDeserializer;)Ljava/lang/Object;
    //   127: astore_2
    //   128: goto -78 -> 50
    //   131: aload_0
    //   132: getfield 65	org/codehaus/jackson/map/ObjectReader:_valueToUpdate	Ljava/lang/Object;
    //   135: ifnonnull +13 -> 148
    //   138: aload_3
    //   139: aload_1
    //   140: aload_2
    //   141: invokevirtual 161	org/codehaus/jackson/map/JsonDeserializer:deserialize	(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;
    //   144: astore_2
    //   145: goto -95 -> 50
    //   148: aload_3
    //   149: aload_1
    //   150: aload_2
    //   151: aload_0
    //   152: getfield 65	org/codehaus/jackson/map/ObjectReader:_valueToUpdate	Ljava/lang/Object;
    //   155: invokevirtual 164	org/codehaus/jackson/map/JsonDeserializer:deserialize	(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;Ljava/lang/Object;)Ljava/lang/Object;
    //   158: pop
    //   159: aload_0
    //   160: getfield 65	org/codehaus/jackson/map/ObjectReader:_valueToUpdate	Ljava/lang/Object;
    //   163: astore_2
    //   164: goto -114 -> 50
    //   167: astore_2
    //   168: aload_1
    //   169: invokevirtual 172	org/codehaus/jackson/JsonParser:close	()V
    //   172: aload_2
    //   173: athrow
    //   174: astore_1
    //   175: aload_2
    //   176: areturn
    //   177: astore_1
    //   178: goto -6 -> 172
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	181	0	this	ObjectReader
    //   0	181	1	paramJsonParser	JsonParser
    //   19	145	2	localObject1	Object
    //   167	9	2	localObject2	Object
    //   108	41	3	localJsonDeserializer	JsonDeserializer
    // Exception table:
    //   from	to	target	type
    //   15	50	167	finally
    //   56	61	167	finally
    //   64	78	167	finally
    //   78	83	167	finally
    //   86	128	167	finally
    //   131	145	167	finally
    //   148	164	167	finally
    //   50	54	174	java/io/IOException
    //   168	172	177	java/io/IOException
  }
  
  /* Error */
  protected JsonNode _bindAndCloseAsTree(JsonParser paramJsonParser)
    throws IOException, JsonParseException, JsonMappingException
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 80	org/codehaus/jackson/map/ObjectReader:_schema	Lorg/codehaus/jackson/FormatSchema;
    //   4: ifnull +11 -> 15
    //   7: aload_1
    //   8: aload_0
    //   9: getfield 80	org/codehaus/jackson/map/ObjectReader:_schema	Lorg/codehaus/jackson/FormatSchema;
    //   12: invokevirtual 169	org/codehaus/jackson/JsonParser:setSchema	(Lorg/codehaus/jackson/FormatSchema;)V
    //   15: aload_0
    //   16: aload_1
    //   17: invokevirtual 177	org/codehaus/jackson/map/ObjectReader:_bindAsTree	(Lorg/codehaus/jackson/JsonParser;)Lorg/codehaus/jackson/JsonNode;
    //   20: astore_2
    //   21: aload_1
    //   22: invokevirtual 172	org/codehaus/jackson/JsonParser:close	()V
    //   25: aload_2
    //   26: areturn
    //   27: astore_2
    //   28: aload_1
    //   29: invokevirtual 172	org/codehaus/jackson/JsonParser:close	()V
    //   32: aload_2
    //   33: athrow
    //   34: astore_1
    //   35: aload_2
    //   36: areturn
    //   37: astore_1
    //   38: goto -6 -> 32
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	41	0	this	ObjectReader
    //   0	41	1	paramJsonParser	JsonParser
    //   20	6	2	localJsonNode1	JsonNode
    //   27	9	2	localJsonNode2	JsonNode
    // Exception table:
    //   from	to	target	type
    //   15	21	27	finally
    //   21	25	34	java/io/IOException
    //   28	32	37	java/io/IOException
  }
  
  protected JsonNode _bindAsTree(JsonParser paramJsonParser)
    throws IOException, JsonParseException, JsonMappingException
  {
    Object localObject = _initForReading(paramJsonParser);
    if ((localObject == JsonToken.VALUE_NULL) || (localObject == JsonToken.END_ARRAY) || (localObject == JsonToken.END_OBJECT)) {
      localObject = NullNode.instance;
    }
    for (;;)
    {
      paramJsonParser.clearCurrentToken();
      return (JsonNode)localObject;
      localObject = _createDeserializationContext(paramJsonParser, _config);
      JsonDeserializer localJsonDeserializer = _findRootDeserializer(_config, JSON_NODE_TYPE);
      if (_unwrapRoot) {
        localObject = (JsonNode)_unwrapAndDeserialize(paramJsonParser, (DeserializationContext)localObject, JSON_NODE_TYPE, localJsonDeserializer);
      } else {
        localObject = (JsonNode)localJsonDeserializer.deserialize(paramJsonParser, (DeserializationContext)localObject);
      }
    }
  }
  
  protected DeserializationContext _createDeserializationContext(JsonParser paramJsonParser, DeserializationConfig paramDeserializationConfig)
  {
    return new StdDeserializationContext(paramDeserializationConfig, paramJsonParser, _provider, _injectableValues);
  }
  
  protected JsonDeserializer<Object> _findRootDeserializer(DeserializationConfig paramDeserializationConfig, JavaType paramJavaType)
    throws JsonMappingException
  {
    if (paramJavaType == null) {
      throw new JsonMappingException("No value type configured for ObjectReader");
    }
    JsonDeserializer localJsonDeserializer = (JsonDeserializer)_rootDeserializers.get(paramJavaType);
    if (localJsonDeserializer != null) {
      return localJsonDeserializer;
    }
    paramDeserializationConfig = _provider.findTypedValueDeserializer(paramDeserializationConfig, paramJavaType, null);
    if (paramDeserializationConfig == null) {
      throw new JsonMappingException("Can not find a deserializer for type " + paramJavaType);
    }
    _rootDeserializers.put(paramJavaType, paramDeserializationConfig);
    return paramDeserializationConfig;
  }
  
  protected Object _unwrapAndDeserialize(JsonParser paramJsonParser, DeserializationContext paramDeserializationContext, JavaType paramJavaType, JsonDeserializer<Object> paramJsonDeserializer)
    throws IOException, JsonParseException, JsonMappingException
  {
    SerializedString localSerializedString = _provider.findExpectedRootName(paramDeserializationContext.getConfig(), paramJavaType);
    if (paramJsonParser.getCurrentToken() != JsonToken.START_OBJECT) {
      throw JsonMappingException.from(paramJsonParser, "Current token not START_OBJECT (needed to unwrap root name '" + localSerializedString + "'), but " + paramJsonParser.getCurrentToken());
    }
    if (paramJsonParser.nextToken() != JsonToken.FIELD_NAME) {
      throw JsonMappingException.from(paramJsonParser, "Current token not FIELD_NAME (to contain expected root name '" + localSerializedString + "'), but " + paramJsonParser.getCurrentToken());
    }
    String str = paramJsonParser.getCurrentName();
    if (!localSerializedString.getValue().equals(str)) {
      throw JsonMappingException.from(paramJsonParser, "Root name '" + str + "' does not match expected ('" + localSerializedString + "') for type " + paramJavaType);
    }
    paramJsonParser.nextToken();
    if (_valueToUpdate == null) {}
    for (paramDeserializationContext = paramJsonDeserializer.deserialize(paramJsonParser, paramDeserializationContext); paramJsonParser.nextToken() != JsonToken.END_OBJECT; paramDeserializationContext = _valueToUpdate)
    {
      throw JsonMappingException.from(paramJsonParser, "Current token not END_OBJECT (to match wrapper object with root name '" + localSerializedString + "'), but " + paramJsonParser.getCurrentToken());
      paramJsonDeserializer.deserialize(paramJsonParser, paramDeserializationContext, _valueToUpdate);
    }
    return paramDeserializationContext;
  }
  
  public JsonNode createArrayNode()
  {
    return _config.getNodeFactory().arrayNode();
  }
  
  public JsonNode createObjectNode()
  {
    return _config.getNodeFactory().objectNode();
  }
  
  public JsonNode readTree(InputStream paramInputStream)
    throws IOException, JsonProcessingException
  {
    return _bindAndCloseAsTree(_jsonFactory.createJsonParser(paramInputStream));
  }
  
  public JsonNode readTree(Reader paramReader)
    throws IOException, JsonProcessingException
  {
    return _bindAndCloseAsTree(_jsonFactory.createJsonParser(paramReader));
  }
  
  public JsonNode readTree(String paramString)
    throws IOException, JsonProcessingException
  {
    return _bindAndCloseAsTree(_jsonFactory.createJsonParser(paramString));
  }
  
  public JsonNode readTree(JsonParser paramJsonParser)
    throws IOException, JsonProcessingException
  {
    return _bindAsTree(paramJsonParser);
  }
  
  public <T> T readValue(File paramFile)
    throws IOException, JsonProcessingException
  {
    return (T)_bindAndClose(_jsonFactory.createJsonParser(paramFile));
  }
  
  public <T> T readValue(InputStream paramInputStream)
    throws IOException, JsonProcessingException
  {
    return (T)_bindAndClose(_jsonFactory.createJsonParser(paramInputStream));
  }
  
  public <T> T readValue(Reader paramReader)
    throws IOException, JsonProcessingException
  {
    return (T)_bindAndClose(_jsonFactory.createJsonParser(paramReader));
  }
  
  public <T> T readValue(String paramString)
    throws IOException, JsonProcessingException
  {
    return (T)_bindAndClose(_jsonFactory.createJsonParser(paramString));
  }
  
  public <T> T readValue(URL paramURL)
    throws IOException, JsonProcessingException
  {
    return (T)_bindAndClose(_jsonFactory.createJsonParser(paramURL));
  }
  
  public <T> T readValue(JsonNode paramJsonNode)
    throws IOException, JsonProcessingException
  {
    return (T)_bindAndClose(treeAsTokens(paramJsonNode));
  }
  
  public <T> T readValue(JsonParser paramJsonParser)
    throws IOException, JsonProcessingException
  {
    return (T)_bind(paramJsonParser);
  }
  
  public <T> T readValue(JsonParser paramJsonParser, Class<T> paramClass)
    throws IOException, JsonProcessingException
  {
    return (T)withType(paramClass).readValue(paramJsonParser);
  }
  
  public <T> T readValue(JsonParser paramJsonParser, JavaType paramJavaType)
    throws IOException, JsonProcessingException
  {
    return (T)withType(paramJavaType).readValue(paramJsonParser);
  }
  
  public <T> T readValue(JsonParser paramJsonParser, TypeReference<?> paramTypeReference)
    throws IOException, JsonProcessingException
  {
    return (T)withType(paramTypeReference).readValue(paramJsonParser);
  }
  
  public <T> T readValue(byte[] paramArrayOfByte)
    throws IOException, JsonProcessingException
  {
    return (T)_bindAndClose(_jsonFactory.createJsonParser(paramArrayOfByte));
  }
  
  public <T> T readValue(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
    throws IOException, JsonProcessingException
  {
    return (T)_bindAndClose(_jsonFactory.createJsonParser(paramArrayOfByte, paramInt1, paramInt2));
  }
  
  public <T> Iterator<T> readValues(JsonParser paramJsonParser, Class<T> paramClass)
    throws IOException, JsonProcessingException
  {
    return withType(paramClass).readValues(paramJsonParser);
  }
  
  public <T> Iterator<T> readValues(JsonParser paramJsonParser, JavaType paramJavaType)
    throws IOException, JsonProcessingException
  {
    return withType(paramJavaType).readValues(paramJsonParser);
  }
  
  public <T> Iterator<T> readValues(JsonParser paramJsonParser, TypeReference<?> paramTypeReference)
    throws IOException, JsonProcessingException
  {
    return withType(paramTypeReference).readValues(paramJsonParser);
  }
  
  public <T> MappingIterator<T> readValues(File paramFile)
    throws IOException, JsonProcessingException
  {
    paramFile = _jsonFactory.createJsonParser(paramFile);
    if (_schema != null) {
      paramFile.setSchema(_schema);
    }
    DeserializationContext localDeserializationContext = _createDeserializationContext(paramFile, _config);
    return new MappingIterator(_valueType, paramFile, localDeserializationContext, _findRootDeserializer(_config, _valueType), true, _valueToUpdate);
  }
  
  public <T> MappingIterator<T> readValues(InputStream paramInputStream)
    throws IOException, JsonProcessingException
  {
    paramInputStream = _jsonFactory.createJsonParser(paramInputStream);
    if (_schema != null) {
      paramInputStream.setSchema(_schema);
    }
    DeserializationContext localDeserializationContext = _createDeserializationContext(paramInputStream, _config);
    return new MappingIterator(_valueType, paramInputStream, localDeserializationContext, _findRootDeserializer(_config, _valueType), true, _valueToUpdate);
  }
  
  public <T> MappingIterator<T> readValues(Reader paramReader)
    throws IOException, JsonProcessingException
  {
    paramReader = _jsonFactory.createJsonParser(paramReader);
    if (_schema != null) {
      paramReader.setSchema(_schema);
    }
    DeserializationContext localDeserializationContext = _createDeserializationContext(paramReader, _config);
    return new MappingIterator(_valueType, paramReader, localDeserializationContext, _findRootDeserializer(_config, _valueType), true, _valueToUpdate);
  }
  
  public <T> MappingIterator<T> readValues(String paramString)
    throws IOException, JsonProcessingException
  {
    paramString = _jsonFactory.createJsonParser(paramString);
    if (_schema != null) {
      paramString.setSchema(_schema);
    }
    DeserializationContext localDeserializationContext = _createDeserializationContext(paramString, _config);
    return new MappingIterator(_valueType, paramString, localDeserializationContext, _findRootDeserializer(_config, _valueType), true, _valueToUpdate);
  }
  
  public <T> MappingIterator<T> readValues(URL paramURL)
    throws IOException, JsonProcessingException
  {
    paramURL = _jsonFactory.createJsonParser(paramURL);
    if (_schema != null) {
      paramURL.setSchema(_schema);
    }
    DeserializationContext localDeserializationContext = _createDeserializationContext(paramURL, _config);
    return new MappingIterator(_valueType, paramURL, localDeserializationContext, _findRootDeserializer(_config, _valueType), true, _valueToUpdate);
  }
  
  public <T> MappingIterator<T> readValues(JsonParser paramJsonParser)
    throws IOException, JsonProcessingException
  {
    DeserializationContext localDeserializationContext = _createDeserializationContext(paramJsonParser, _config);
    return new MappingIterator(_valueType, paramJsonParser, localDeserializationContext, _findRootDeserializer(_config, _valueType), false, _valueToUpdate);
  }
  
  public final <T> MappingIterator<T> readValues(byte[] paramArrayOfByte)
    throws IOException, JsonProcessingException
  {
    return readValues(paramArrayOfByte, 0, paramArrayOfByte.length);
  }
  
  public <T> MappingIterator<T> readValues(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
    throws IOException, JsonProcessingException
  {
    paramArrayOfByte = _jsonFactory.createJsonParser(paramArrayOfByte, paramInt1, paramInt2);
    if (_schema != null) {
      paramArrayOfByte.setSchema(_schema);
    }
    DeserializationContext localDeserializationContext = _createDeserializationContext(paramArrayOfByte, _config);
    return new MappingIterator(_valueType, paramArrayOfByte, localDeserializationContext, _findRootDeserializer(_config, _valueType), true, _valueToUpdate);
  }
  
  public JsonParser treeAsTokens(JsonNode paramJsonNode)
  {
    return new TreeTraversingParser(paramJsonNode, this);
  }
  
  public <T> T treeToValue(JsonNode paramJsonNode, Class<T> paramClass)
    throws IOException, JsonProcessingException
  {
    return (T)readValue(treeAsTokens(paramJsonNode), paramClass);
  }
  
  public Version version()
  {
    return VersionUtil.versionFor(getClass());
  }
  
  public ObjectReader withInjectableValues(InjectableValues paramInjectableValues)
  {
    if (_injectableValues == paramInjectableValues) {
      return this;
    }
    return new ObjectReader(this, _config, _valueType, _valueToUpdate, _schema, paramInjectableValues);
  }
  
  public ObjectReader withNodeFactory(JsonNodeFactory paramJsonNodeFactory)
  {
    if (paramJsonNodeFactory == _config.getNodeFactory()) {
      return this;
    }
    return new ObjectReader(this, _config.withNodeFactory(paramJsonNodeFactory), _valueType, _valueToUpdate, _schema, _injectableValues);
  }
  
  public ObjectReader withSchema(FormatSchema paramFormatSchema)
  {
    if (_schema == paramFormatSchema) {
      return this;
    }
    return new ObjectReader(this, _config, _valueType, _valueToUpdate, paramFormatSchema, _injectableValues);
  }
  
  public ObjectReader withType(Class<?> paramClass)
  {
    return withType(_config.constructType(paramClass));
  }
  
  public ObjectReader withType(Type paramType)
  {
    return withType(_config.getTypeFactory().constructType(paramType));
  }
  
  public ObjectReader withType(JavaType paramJavaType)
  {
    if (paramJavaType == _valueType) {
      return this;
    }
    return new ObjectReader(this, _config, paramJavaType, _valueToUpdate, _schema, _injectableValues);
  }
  
  public ObjectReader withType(TypeReference<?> paramTypeReference)
  {
    return withType(_config.getTypeFactory().constructType(paramTypeReference.getType()));
  }
  
  public ObjectReader withValueToUpdate(Object paramObject)
  {
    if (paramObject == _valueToUpdate) {
      return this;
    }
    if (paramObject == null) {
      throw new IllegalArgumentException("cat not update null value");
    }
    if (_valueType == null) {}
    for (JavaType localJavaType = _config.constructType(paramObject.getClass());; localJavaType = _valueType) {
      return new ObjectReader(this, _config, localJavaType, paramObject, _schema, _injectableValues);
    }
  }
  
  public void writeTree(JsonGenerator paramJsonGenerator, JsonNode paramJsonNode)
    throws IOException, JsonProcessingException
  {
    throw new UnsupportedOperationException("Not implemented for ObjectReader");
  }
  
  public void writeValue(JsonGenerator paramJsonGenerator, Object paramObject)
    throws IOException, JsonProcessingException
  {
    throw new UnsupportedOperationException("Not implemented for ObjectReader");
  }
}

/* Location:
 * Qualified Name:     org.codehaus.jackson.map.ObjectReader
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */