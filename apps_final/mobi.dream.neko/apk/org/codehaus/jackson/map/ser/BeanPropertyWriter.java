package org.codehaus.jackson.map.ser;

import java.lang.annotation.Annotation;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.lang.reflect.Type;
import java.util.HashMap;
import org.codehaus.jackson.JsonGenerator;
import org.codehaus.jackson.io.SerializedString;
import org.codehaus.jackson.map.BeanProperty;
import org.codehaus.jackson.map.JsonMappingException;
import org.codehaus.jackson.map.JsonSerializer;
import org.codehaus.jackson.map.SerializerProvider;
import org.codehaus.jackson.map.TypeSerializer;
import org.codehaus.jackson.map.introspect.AnnotatedMember;
import org.codehaus.jackson.map.ser.impl.PropertySerializerMap;
import org.codehaus.jackson.map.ser.impl.PropertySerializerMap.SerializerAndMapResult;
import org.codehaus.jackson.map.ser.impl.UnwrappingBeanPropertyWriter;
import org.codehaus.jackson.map.util.Annotations;
import org.codehaus.jackson.type.JavaType;

public class BeanPropertyWriter
  implements BeanProperty
{
  protected final Method _accessorMethod;
  protected final JavaType _cfgSerializationType;
  protected final Annotations _contextAnnotations;
  protected final JavaType _declaredType;
  protected PropertySerializerMap _dynamicSerializers;
  protected final Field _field;
  protected Class<?>[] _includeInViews;
  protected HashMap<Object, Object> _internalSettings;
  protected final AnnotatedMember _member;
  protected final SerializedString _name;
  protected JavaType _nonTrivialBaseType;
  protected final JsonSerializer<Object> _serializer;
  protected final boolean _suppressNulls;
  protected final Object _suppressableValue;
  protected TypeSerializer _typeSerializer;
  
  public BeanPropertyWriter(AnnotatedMember paramAnnotatedMember, Annotations paramAnnotations, String paramString, JavaType paramJavaType1, JsonSerializer<Object> paramJsonSerializer, TypeSerializer paramTypeSerializer, JavaType paramJavaType2, Method paramMethod, Field paramField, boolean paramBoolean, Object paramObject)
  {
    this(paramAnnotatedMember, paramAnnotations, new SerializedString(paramString), paramJavaType1, paramJsonSerializer, paramTypeSerializer, paramJavaType2, paramMethod, paramField, paramBoolean, paramObject);
  }
  
  public BeanPropertyWriter(AnnotatedMember paramAnnotatedMember, Annotations paramAnnotations, SerializedString paramSerializedString, JavaType paramJavaType1, JsonSerializer<Object> paramJsonSerializer, TypeSerializer paramTypeSerializer, JavaType paramJavaType2, Method paramMethod, Field paramField, boolean paramBoolean, Object paramObject)
  {
    _member = paramAnnotatedMember;
    _contextAnnotations = paramAnnotations;
    _name = paramSerializedString;
    _declaredType = paramJavaType1;
    _serializer = paramJsonSerializer;
    if (paramJsonSerializer == null) {}
    for (paramAnnotatedMember = PropertySerializerMap.emptyMap();; paramAnnotatedMember = null)
    {
      _dynamicSerializers = paramAnnotatedMember;
      _typeSerializer = paramTypeSerializer;
      _cfgSerializationType = paramJavaType2;
      _accessorMethod = paramMethod;
      _field = paramField;
      _suppressNulls = paramBoolean;
      _suppressableValue = paramObject;
      return;
    }
  }
  
  protected BeanPropertyWriter(BeanPropertyWriter paramBeanPropertyWriter)
  {
    this(paramBeanPropertyWriter, _serializer);
  }
  
  protected BeanPropertyWriter(BeanPropertyWriter paramBeanPropertyWriter, JsonSerializer<Object> paramJsonSerializer)
  {
    _serializer = paramJsonSerializer;
    _member = _member;
    _contextAnnotations = _contextAnnotations;
    _declaredType = _declaredType;
    _accessorMethod = _accessorMethod;
    _field = _field;
    if (_internalSettings != null) {
      _internalSettings = new HashMap(_internalSettings);
    }
    _name = _name;
    _cfgSerializationType = _cfgSerializationType;
    _dynamicSerializers = _dynamicSerializers;
    _suppressNulls = _suppressNulls;
    _suppressableValue = _suppressableValue;
    _includeInViews = _includeInViews;
    _typeSerializer = _typeSerializer;
    _nonTrivialBaseType = _nonTrivialBaseType;
  }
  
  protected JsonSerializer<Object> _findAndAddDynamic(PropertySerializerMap paramPropertySerializerMap, Class<?> paramClass, SerializerProvider paramSerializerProvider)
    throws JsonMappingException
  {
    if (_nonTrivialBaseType != null) {}
    for (paramClass = paramPropertySerializerMap.findAndAddSerializer(paramSerializerProvider.constructSpecializedType(_nonTrivialBaseType, paramClass), paramSerializerProvider, this);; paramClass = paramPropertySerializerMap.findAndAddSerializer(paramClass, paramSerializerProvider, this))
    {
      if (paramPropertySerializerMap != map) {
        _dynamicSerializers = map;
      }
      return serializer;
    }
  }
  
  protected void _reportSelfReference(Object paramObject)
    throws JsonMappingException
  {
    throw new JsonMappingException("Direct self-reference leading to cycle");
  }
  
  public final Object get(Object paramObject)
    throws Exception
  {
    if (_accessorMethod != null) {
      return _accessorMethod.invoke(paramObject, new Object[0]);
    }
    return _field.get(paramObject);
  }
  
  public <A extends Annotation> A getAnnotation(Class<A> paramClass)
  {
    return _member.getAnnotation(paramClass);
  }
  
  public <A extends Annotation> A getContextAnnotation(Class<A> paramClass)
  {
    return _contextAnnotations.get(paramClass);
  }
  
  public Type getGenericPropertyType()
  {
    if (_accessorMethod != null) {
      return _accessorMethod.getGenericReturnType();
    }
    return _field.getGenericType();
  }
  
  public Object getInternalSetting(Object paramObject)
  {
    if (_internalSettings == null) {
      return null;
    }
    return _internalSettings.get(paramObject);
  }
  
  public AnnotatedMember getMember()
  {
    return _member;
  }
  
  public String getName()
  {
    return _name.getValue();
  }
  
  public Class<?> getPropertyType()
  {
    if (_accessorMethod != null) {
      return _accessorMethod.getReturnType();
    }
    return _field.getType();
  }
  
  public Class<?> getRawSerializationType()
  {
    if (_cfgSerializationType == null) {
      return null;
    }
    return _cfgSerializationType.getRawClass();
  }
  
  public JavaType getSerializationType()
  {
    return _cfgSerializationType;
  }
  
  public SerializedString getSerializedName()
  {
    return _name;
  }
  
  public JsonSerializer<Object> getSerializer()
  {
    return _serializer;
  }
  
  public JavaType getType()
  {
    return _declaredType;
  }
  
  public Class<?>[] getViews()
  {
    return _includeInViews;
  }
  
  public boolean hasSerializer()
  {
    return _serializer != null;
  }
  
  public Object removeInternalSetting(Object paramObject)
  {
    Object localObject = null;
    if (_internalSettings != null)
    {
      paramObject = _internalSettings.remove(paramObject);
      localObject = paramObject;
      if (_internalSettings.size() == 0)
      {
        _internalSettings = null;
        localObject = paramObject;
      }
    }
    return localObject;
  }
  
  public void serializeAsField(Object paramObject, JsonGenerator paramJsonGenerator, SerializerProvider paramSerializerProvider)
    throws Exception
  {
    Object localObject = get(paramObject);
    if (localObject == null) {
      if (!_suppressNulls)
      {
        paramJsonGenerator.writeFieldName(_name);
        paramSerializerProvider.defaultSerializeNull(paramJsonGenerator);
      }
    }
    do
    {
      return;
      if (localObject == paramObject) {
        _reportSelfReference(paramObject);
      }
    } while ((_suppressableValue != null) && (_suppressableValue.equals(localObject)));
    JsonSerializer localJsonSerializer = _serializer;
    paramObject = localJsonSerializer;
    if (localJsonSerializer == null)
    {
      Class localClass = localObject.getClass();
      PropertySerializerMap localPropertySerializerMap = _dynamicSerializers;
      localJsonSerializer = localPropertySerializerMap.serializerFor(localClass);
      paramObject = localJsonSerializer;
      if (localJsonSerializer == null) {
        paramObject = _findAndAddDynamic(localPropertySerializerMap, localClass, paramSerializerProvider);
      }
    }
    paramJsonGenerator.writeFieldName(_name);
    if (_typeSerializer == null)
    {
      ((JsonSerializer)paramObject).serialize(localObject, paramJsonGenerator, paramSerializerProvider);
      return;
    }
    ((JsonSerializer)paramObject).serializeWithType(localObject, paramJsonGenerator, paramSerializerProvider, _typeSerializer);
  }
  
  public Object setInternalSetting(Object paramObject1, Object paramObject2)
  {
    if (_internalSettings == null) {
      _internalSettings = new HashMap();
    }
    return _internalSettings.put(paramObject1, paramObject2);
  }
  
  public void setNonTrivialBaseType(JavaType paramJavaType)
  {
    _nonTrivialBaseType = paramJavaType;
  }
  
  public void setViews(Class<?>[] paramArrayOfClass)
  {
    _includeInViews = paramArrayOfClass;
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder(40);
    localStringBuilder.append("property '").append(getName()).append("' (");
    if (_accessorMethod != null)
    {
      localStringBuilder.append("via method ").append(_accessorMethod.getDeclaringClass().getName()).append("#").append(_accessorMethod.getName());
      if (_serializer != null) {
        break label142;
      }
      localStringBuilder.append(", no static serializer");
    }
    for (;;)
    {
      localStringBuilder.append(')');
      return localStringBuilder.toString();
      localStringBuilder.append("field \"").append(_field.getDeclaringClass().getName()).append("#").append(_field.getName());
      break;
      label142:
      localStringBuilder.append(", static serializer of type " + _serializer.getClass().getName());
    }
  }
  
  public BeanPropertyWriter unwrappingWriter()
  {
    return new UnwrappingBeanPropertyWriter(this);
  }
  
  public BeanPropertyWriter withSerializer(JsonSerializer<Object> paramJsonSerializer)
  {
    if (getClass() != BeanPropertyWriter.class) {
      throw new IllegalStateException("BeanPropertyWriter sub-class does not override 'withSerializer()'; needs to!");
    }
    return new BeanPropertyWriter(this, paramJsonSerializer);
  }
}

/* Location:
 * Qualified Name:     org.codehaus.jackson.map.ser.BeanPropertyWriter
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */