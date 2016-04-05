package org.codehaus.jackson.map.ser.std;

import java.io.IOException;
import java.lang.reflect.Type;
import org.codehaus.jackson.JsonGenerationException;
import org.codehaus.jackson.JsonGenerator;
import org.codehaus.jackson.JsonNode;
import org.codehaus.jackson.map.BeanProperty;
import org.codehaus.jackson.map.JsonMappingException;
import org.codehaus.jackson.map.JsonSerializer;
import org.codehaus.jackson.map.ResolvableSerializer;
import org.codehaus.jackson.map.SerializationConfig.Feature;
import org.codehaus.jackson.map.SerializerProvider;
import org.codehaus.jackson.map.TypeSerializer;
import org.codehaus.jackson.map.annotate.JacksonStdImpl;
import org.codehaus.jackson.node.ObjectNode;

public class StdArraySerializers
{
  public static abstract class ArraySerializerBase<T>
    extends ContainerSerializerBase<T>
  {
    protected final BeanProperty _property;
    protected final TypeSerializer _valueTypeSerializer;
    
    protected ArraySerializerBase(Class<T> paramClass, TypeSerializer paramTypeSerializer, BeanProperty paramBeanProperty)
    {
      super();
      _valueTypeSerializer = paramTypeSerializer;
      _property = paramBeanProperty;
    }
    
    public final void serialize(T paramT, JsonGenerator paramJsonGenerator, SerializerProvider paramSerializerProvider)
      throws IOException, JsonGenerationException
    {
      paramJsonGenerator.writeStartArray();
      serializeContents(paramT, paramJsonGenerator, paramSerializerProvider);
      paramJsonGenerator.writeEndArray();
    }
    
    protected abstract void serializeContents(T paramT, JsonGenerator paramJsonGenerator, SerializerProvider paramSerializerProvider)
      throws IOException, JsonGenerationException;
    
    public final void serializeWithType(T paramT, JsonGenerator paramJsonGenerator, SerializerProvider paramSerializerProvider, TypeSerializer paramTypeSerializer)
      throws IOException, JsonGenerationException
    {
      paramTypeSerializer.writeTypePrefixForArray(paramT, paramJsonGenerator);
      serializeContents(paramT, paramJsonGenerator, paramSerializerProvider);
      paramTypeSerializer.writeTypeSuffixForArray(paramT, paramJsonGenerator);
    }
  }
  
  @JacksonStdImpl
  public static final class BooleanArraySerializer
    extends StdArraySerializers.ArraySerializerBase<boolean[]>
  {
    public BooleanArraySerializer()
    {
      super(null, null);
    }
    
    public ContainerSerializerBase<?> _withValueTypeSerializer(TypeSerializer paramTypeSerializer)
    {
      return this;
    }
    
    public JsonNode getSchema(SerializerProvider paramSerializerProvider, Type paramType)
    {
      paramSerializerProvider = createSchemaNode("array", true);
      paramSerializerProvider.put("items", createSchemaNode("boolean"));
      return paramSerializerProvider;
    }
    
    public void serializeContents(boolean[] paramArrayOfBoolean, JsonGenerator paramJsonGenerator, SerializerProvider paramSerializerProvider)
      throws IOException, JsonGenerationException
    {
      int i = 0;
      int j = paramArrayOfBoolean.length;
      while (i < j)
      {
        paramJsonGenerator.writeBoolean(paramArrayOfBoolean[i]);
        i += 1;
      }
    }
  }
  
  @JacksonStdImpl
  public static final class ByteArraySerializer
    extends SerializerBase<byte[]>
  {
    public ByteArraySerializer()
    {
      super();
    }
    
    public JsonNode getSchema(SerializerProvider paramSerializerProvider, Type paramType)
    {
      paramSerializerProvider = createSchemaNode("array", true);
      paramSerializerProvider.put("items", createSchemaNode("string"));
      return paramSerializerProvider;
    }
    
    public void serialize(byte[] paramArrayOfByte, JsonGenerator paramJsonGenerator, SerializerProvider paramSerializerProvider)
      throws IOException, JsonGenerationException
    {
      paramJsonGenerator.writeBinary(paramArrayOfByte);
    }
    
    public void serializeWithType(byte[] paramArrayOfByte, JsonGenerator paramJsonGenerator, SerializerProvider paramSerializerProvider, TypeSerializer paramTypeSerializer)
      throws IOException, JsonGenerationException
    {
      paramTypeSerializer.writeTypePrefixForScalar(paramArrayOfByte, paramJsonGenerator);
      paramJsonGenerator.writeBinary(paramArrayOfByte);
      paramTypeSerializer.writeTypeSuffixForScalar(paramArrayOfByte, paramJsonGenerator);
    }
  }
  
  @JacksonStdImpl
  public static final class CharArraySerializer
    extends SerializerBase<char[]>
  {
    public CharArraySerializer()
    {
      super();
    }
    
    private final void _writeArrayContents(JsonGenerator paramJsonGenerator, char[] paramArrayOfChar)
      throws IOException, JsonGenerationException
    {
      int i = 0;
      int j = paramArrayOfChar.length;
      while (i < j)
      {
        paramJsonGenerator.writeString(paramArrayOfChar, i, 1);
        i += 1;
      }
    }
    
    public JsonNode getSchema(SerializerProvider paramSerializerProvider, Type paramType)
    {
      paramSerializerProvider = createSchemaNode("array", true);
      paramType = createSchemaNode("string");
      paramType.put("type", "string");
      paramSerializerProvider.put("items", paramType);
      return paramSerializerProvider;
    }
    
    public void serialize(char[] paramArrayOfChar, JsonGenerator paramJsonGenerator, SerializerProvider paramSerializerProvider)
      throws IOException, JsonGenerationException
    {
      if (paramSerializerProvider.isEnabled(SerializationConfig.Feature.WRITE_CHAR_ARRAYS_AS_JSON_ARRAYS))
      {
        paramJsonGenerator.writeStartArray();
        _writeArrayContents(paramJsonGenerator, paramArrayOfChar);
        paramJsonGenerator.writeEndArray();
        return;
      }
      paramJsonGenerator.writeString(paramArrayOfChar, 0, paramArrayOfChar.length);
    }
    
    public void serializeWithType(char[] paramArrayOfChar, JsonGenerator paramJsonGenerator, SerializerProvider paramSerializerProvider, TypeSerializer paramTypeSerializer)
      throws IOException, JsonGenerationException
    {
      if (paramSerializerProvider.isEnabled(SerializationConfig.Feature.WRITE_CHAR_ARRAYS_AS_JSON_ARRAYS))
      {
        paramTypeSerializer.writeTypePrefixForArray(paramArrayOfChar, paramJsonGenerator);
        _writeArrayContents(paramJsonGenerator, paramArrayOfChar);
        paramTypeSerializer.writeTypeSuffixForArray(paramArrayOfChar, paramJsonGenerator);
        return;
      }
      paramTypeSerializer.writeTypePrefixForScalar(paramArrayOfChar, paramJsonGenerator);
      paramJsonGenerator.writeString(paramArrayOfChar, 0, paramArrayOfChar.length);
      paramTypeSerializer.writeTypeSuffixForScalar(paramArrayOfChar, paramJsonGenerator);
    }
  }
  
  @JacksonStdImpl
  public static final class DoubleArraySerializer
    extends StdArraySerializers.ArraySerializerBase<double[]>
  {
    public DoubleArraySerializer()
    {
      super(null, null);
    }
    
    public ContainerSerializerBase<?> _withValueTypeSerializer(TypeSerializer paramTypeSerializer)
    {
      return this;
    }
    
    public JsonNode getSchema(SerializerProvider paramSerializerProvider, Type paramType)
    {
      paramSerializerProvider = createSchemaNode("array", true);
      paramSerializerProvider.put("items", createSchemaNode("number"));
      return paramSerializerProvider;
    }
    
    public void serializeContents(double[] paramArrayOfDouble, JsonGenerator paramJsonGenerator, SerializerProvider paramSerializerProvider)
      throws IOException, JsonGenerationException
    {
      int i = 0;
      int j = paramArrayOfDouble.length;
      while (i < j)
      {
        paramJsonGenerator.writeNumber(paramArrayOfDouble[i]);
        i += 1;
      }
    }
  }
  
  @JacksonStdImpl
  public static final class FloatArraySerializer
    extends StdArraySerializers.ArraySerializerBase<float[]>
  {
    public FloatArraySerializer()
    {
      this(null);
    }
    
    public FloatArraySerializer(TypeSerializer paramTypeSerializer)
    {
      super(paramTypeSerializer, null);
    }
    
    public ContainerSerializerBase<?> _withValueTypeSerializer(TypeSerializer paramTypeSerializer)
    {
      return new FloatArraySerializer(paramTypeSerializer);
    }
    
    public JsonNode getSchema(SerializerProvider paramSerializerProvider, Type paramType)
    {
      paramSerializerProvider = createSchemaNode("array", true);
      paramSerializerProvider.put("items", createSchemaNode("number"));
      return paramSerializerProvider;
    }
    
    public void serializeContents(float[] paramArrayOfFloat, JsonGenerator paramJsonGenerator, SerializerProvider paramSerializerProvider)
      throws IOException, JsonGenerationException
    {
      int i = 0;
      int j = paramArrayOfFloat.length;
      while (i < j)
      {
        paramJsonGenerator.writeNumber(paramArrayOfFloat[i]);
        i += 1;
      }
    }
  }
  
  @JacksonStdImpl
  public static final class IntArraySerializer
    extends StdArraySerializers.ArraySerializerBase<int[]>
  {
    public IntArraySerializer()
    {
      super(null, null);
    }
    
    public ContainerSerializerBase<?> _withValueTypeSerializer(TypeSerializer paramTypeSerializer)
    {
      return this;
    }
    
    public JsonNode getSchema(SerializerProvider paramSerializerProvider, Type paramType)
    {
      paramSerializerProvider = createSchemaNode("array", true);
      paramSerializerProvider.put("items", createSchemaNode("integer"));
      return paramSerializerProvider;
    }
    
    public void serializeContents(int[] paramArrayOfInt, JsonGenerator paramJsonGenerator, SerializerProvider paramSerializerProvider)
      throws IOException, JsonGenerationException
    {
      int i = 0;
      int j = paramArrayOfInt.length;
      while (i < j)
      {
        paramJsonGenerator.writeNumber(paramArrayOfInt[i]);
        i += 1;
      }
    }
  }
  
  @JacksonStdImpl
  public static final class LongArraySerializer
    extends StdArraySerializers.ArraySerializerBase<long[]>
  {
    public LongArraySerializer()
    {
      this(null);
    }
    
    public LongArraySerializer(TypeSerializer paramTypeSerializer)
    {
      super(paramTypeSerializer, null);
    }
    
    public ContainerSerializerBase<?> _withValueTypeSerializer(TypeSerializer paramTypeSerializer)
    {
      return new LongArraySerializer(paramTypeSerializer);
    }
    
    public JsonNode getSchema(SerializerProvider paramSerializerProvider, Type paramType)
    {
      paramSerializerProvider = createSchemaNode("array", true);
      paramSerializerProvider.put("items", createSchemaNode("number", true));
      return paramSerializerProvider;
    }
    
    public void serializeContents(long[] paramArrayOfLong, JsonGenerator paramJsonGenerator, SerializerProvider paramSerializerProvider)
      throws IOException, JsonGenerationException
    {
      int i = 0;
      int j = paramArrayOfLong.length;
      while (i < j)
      {
        paramJsonGenerator.writeNumber(paramArrayOfLong[i]);
        i += 1;
      }
    }
  }
  
  @JacksonStdImpl
  public static final class ShortArraySerializer
    extends StdArraySerializers.ArraySerializerBase<short[]>
  {
    public ShortArraySerializer()
    {
      this(null);
    }
    
    public ShortArraySerializer(TypeSerializer paramTypeSerializer)
    {
      super(paramTypeSerializer, null);
    }
    
    public ContainerSerializerBase<?> _withValueTypeSerializer(TypeSerializer paramTypeSerializer)
    {
      return new ShortArraySerializer(paramTypeSerializer);
    }
    
    public JsonNode getSchema(SerializerProvider paramSerializerProvider, Type paramType)
    {
      paramSerializerProvider = createSchemaNode("array", true);
      paramSerializerProvider.put("items", createSchemaNode("integer"));
      return paramSerializerProvider;
    }
    
    public void serializeContents(short[] paramArrayOfShort, JsonGenerator paramJsonGenerator, SerializerProvider paramSerializerProvider)
      throws IOException, JsonGenerationException
    {
      int i = 0;
      int j = paramArrayOfShort.length;
      while (i < j)
      {
        paramJsonGenerator.writeNumber(paramArrayOfShort[i]);
        i += 1;
      }
    }
  }
  
  @JacksonStdImpl
  public static final class StringArraySerializer
    extends StdArraySerializers.ArraySerializerBase<String[]>
    implements ResolvableSerializer
  {
    protected JsonSerializer<Object> _elementSerializer;
    
    public StringArraySerializer(BeanProperty paramBeanProperty)
    {
      super(null, paramBeanProperty);
    }
    
    private void serializeContentsSlow(String[] paramArrayOfString, JsonGenerator paramJsonGenerator, SerializerProvider paramSerializerProvider, JsonSerializer<Object> paramJsonSerializer)
      throws IOException, JsonGenerationException
    {
      int i = 0;
      int j = paramArrayOfString.length;
      if (i < j)
      {
        if (paramArrayOfString[i] == null) {
          paramSerializerProvider.defaultSerializeNull(paramJsonGenerator);
        }
        for (;;)
        {
          i += 1;
          break;
          paramJsonSerializer.serialize(paramArrayOfString[i], paramJsonGenerator, paramSerializerProvider);
        }
      }
    }
    
    public ContainerSerializerBase<?> _withValueTypeSerializer(TypeSerializer paramTypeSerializer)
    {
      return this;
    }
    
    public JsonNode getSchema(SerializerProvider paramSerializerProvider, Type paramType)
    {
      paramSerializerProvider = createSchemaNode("array", true);
      paramSerializerProvider.put("items", createSchemaNode("string"));
      return paramSerializerProvider;
    }
    
    public void resolve(SerializerProvider paramSerializerProvider)
      throws JsonMappingException
    {
      paramSerializerProvider = paramSerializerProvider.findValueSerializer(String.class, _property);
      if ((paramSerializerProvider != null) && (paramSerializerProvider.getClass().getAnnotation(JacksonStdImpl.class) == null)) {
        _elementSerializer = paramSerializerProvider;
      }
    }
    
    public void serializeContents(String[] paramArrayOfString, JsonGenerator paramJsonGenerator, SerializerProvider paramSerializerProvider)
      throws IOException, JsonGenerationException
    {
      int j = paramArrayOfString.length;
      if (j == 0) {
        return;
      }
      if (_elementSerializer != null)
      {
        serializeContentsSlow(paramArrayOfString, paramJsonGenerator, paramSerializerProvider, _elementSerializer);
        return;
      }
      int i = 0;
      label32:
      if (i < j)
      {
        if (paramArrayOfString[i] != null) {
          break label59;
        }
        paramJsonGenerator.writeNull();
      }
      for (;;)
      {
        i += 1;
        break label32;
        break;
        label59:
        paramJsonGenerator.writeString(paramArrayOfString[i]);
      }
    }
  }
}

/* Location:
 * Qualified Name:     org.codehaus.jackson.map.ser.std.StdArraySerializers
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */