package org.codehaus.jackson.map.deser;

import java.io.IOException;
import java.lang.annotation.Annotation;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import org.codehaus.jackson.JsonParser;
import org.codehaus.jackson.JsonProcessingException;
import org.codehaus.jackson.JsonToken;
import org.codehaus.jackson.map.BeanProperty;
import org.codehaus.jackson.map.DeserializationConfig.Feature;
import org.codehaus.jackson.map.DeserializationContext;
import org.codehaus.jackson.map.JsonDeserializer;
import org.codehaus.jackson.map.JsonMappingException;
import org.codehaus.jackson.map.TypeDeserializer;
import org.codehaus.jackson.map.introspect.AnnotatedField;
import org.codehaus.jackson.map.introspect.AnnotatedMember;
import org.codehaus.jackson.map.introspect.AnnotatedMethod;
import org.codehaus.jackson.map.util.Annotations;
import org.codehaus.jackson.map.util.ClassUtil;
import org.codehaus.jackson.type.JavaType;
import org.codehaus.jackson.util.InternCache;

public abstract class SettableBeanProperty
  implements BeanProperty
{
  protected final Annotations _contextAnnotations;
  protected String _managedReferenceName;
  protected NullProvider _nullProvider;
  protected final String _propName;
  protected int _propertyIndex = -1;
  protected final JavaType _type;
  protected JsonDeserializer<Object> _valueDeserializer;
  protected TypeDeserializer _valueTypeDeserializer;
  
  protected SettableBeanProperty(String paramString, JavaType paramJavaType, TypeDeserializer paramTypeDeserializer, Annotations paramAnnotations)
  {
    if ((paramString == null) || (paramString.length() == 0)) {}
    for (_propName = "";; _propName = InternCache.instance.intern(paramString))
    {
      _type = paramJavaType;
      _contextAnnotations = paramAnnotations;
      _valueTypeDeserializer = paramTypeDeserializer;
      return;
    }
  }
  
  protected SettableBeanProperty(SettableBeanProperty paramSettableBeanProperty)
  {
    _propName = _propName;
    _type = _type;
    _contextAnnotations = _contextAnnotations;
    _valueDeserializer = _valueDeserializer;
    _valueTypeDeserializer = _valueTypeDeserializer;
    _nullProvider = _nullProvider;
    _managedReferenceName = _managedReferenceName;
    _propertyIndex = _propertyIndex;
  }
  
  protected SettableBeanProperty(SettableBeanProperty paramSettableBeanProperty, JsonDeserializer<Object> paramJsonDeserializer)
  {
    _propName = _propName;
    _type = _type;
    _contextAnnotations = _contextAnnotations;
    _valueTypeDeserializer = _valueTypeDeserializer;
    _managedReferenceName = _managedReferenceName;
    _propertyIndex = _propertyIndex;
    _valueDeserializer = paramJsonDeserializer;
    if (paramJsonDeserializer == null)
    {
      _nullProvider = null;
      return;
    }
    paramSettableBeanProperty = paramJsonDeserializer.getNullValue();
    if (paramSettableBeanProperty == null) {}
    for (paramSettableBeanProperty = (SettableBeanProperty)localObject;; paramSettableBeanProperty = new NullProvider(_type, paramSettableBeanProperty))
    {
      _nullProvider = paramSettableBeanProperty;
      return;
    }
  }
  
  protected IOException _throwAsIOE(Exception paramException)
    throws IOException
  {
    if ((paramException instanceof IOException)) {
      throw ((IOException)paramException);
    }
    if ((paramException instanceof RuntimeException)) {
      throw ((RuntimeException)paramException);
    }
    while (paramException.getCause() != null) {
      paramException = paramException.getCause();
    }
    throw new JsonMappingException(paramException.getMessage(), null, paramException);
  }
  
  protected void _throwAsIOE(Exception paramException, Object paramObject)
    throws IOException
  {
    if ((paramException instanceof IllegalArgumentException))
    {
      StringBuilder localStringBuilder;
      if (paramObject == null)
      {
        paramObject = "[NULL]";
        localStringBuilder = new StringBuilder("Problem deserializing property '").append(getPropertyName());
        localStringBuilder.append("' (expected type: ").append(getType());
        localStringBuilder.append("; actual type: ").append((String)paramObject).append(")");
        paramObject = paramException.getMessage();
        if (paramObject == null) {
          break label106;
        }
        localStringBuilder.append(", problem: ").append((String)paramObject);
      }
      for (;;)
      {
        throw new JsonMappingException(localStringBuilder.toString(), null, paramException);
        paramObject = paramObject.getClass().getName();
        break;
        label106:
        localStringBuilder.append(" (no error message provided)");
      }
    }
    _throwAsIOE(paramException);
  }
  
  public void assignIndex(int paramInt)
  {
    if (_propertyIndex != -1) {
      throw new IllegalStateException("Property '" + getName() + "' already had index (" + _propertyIndex + "), trying to assign " + paramInt);
    }
    _propertyIndex = paramInt;
  }
  
  public final Object deserialize(JsonParser paramJsonParser, DeserializationContext paramDeserializationContext)
    throws IOException, JsonProcessingException
  {
    if (paramJsonParser.getCurrentToken() == JsonToken.VALUE_NULL)
    {
      if (_nullProvider == null) {
        return null;
      }
      return _nullProvider.nullValue(paramDeserializationContext);
    }
    if (_valueTypeDeserializer != null) {
      return _valueDeserializer.deserializeWithType(paramJsonParser, paramDeserializationContext, _valueTypeDeserializer);
    }
    return _valueDeserializer.deserialize(paramJsonParser, paramDeserializationContext);
  }
  
  public abstract void deserializeAndSet(JsonParser paramJsonParser, DeserializationContext paramDeserializationContext, Object paramObject)
    throws IOException, JsonProcessingException;
  
  public abstract <A extends Annotation> A getAnnotation(Class<A> paramClass);
  
  public <A extends Annotation> A getContextAnnotation(Class<A> paramClass)
  {
    return _contextAnnotations.get(paramClass);
  }
  
  protected final Class<?> getDeclaringClass()
  {
    return getMember().getDeclaringClass();
  }
  
  public Object getInjectableValueId()
  {
    return null;
  }
  
  public String getManagedReferenceName()
  {
    return _managedReferenceName;
  }
  
  public abstract AnnotatedMember getMember();
  
  public final String getName()
  {
    return _propName;
  }
  
  public int getPropertyIndex()
  {
    return _propertyIndex;
  }
  
  @Deprecated
  public String getPropertyName()
  {
    return _propName;
  }
  
  @Deprecated
  public int getProperytIndex()
  {
    return getPropertyIndex();
  }
  
  public JavaType getType()
  {
    return _type;
  }
  
  public JsonDeserializer<Object> getValueDeserializer()
  {
    return _valueDeserializer;
  }
  
  public TypeDeserializer getValueTypeDeserializer()
  {
    return _valueTypeDeserializer;
  }
  
  public boolean hasValueDeserializer()
  {
    return _valueDeserializer != null;
  }
  
  public boolean hasValueTypeDeserializer()
  {
    return _valueTypeDeserializer != null;
  }
  
  public abstract void set(Object paramObject1, Object paramObject2)
    throws IOException;
  
  public void setManagedReferenceName(String paramString)
  {
    _managedReferenceName = paramString;
  }
  
  @Deprecated
  public void setValueDeserializer(JsonDeserializer<Object> paramJsonDeserializer)
  {
    if (_valueDeserializer != null) {
      throw new IllegalStateException("Already had assigned deserializer for property '" + getName() + "' (class " + getDeclaringClass().getName() + ")");
    }
    _valueDeserializer = paramJsonDeserializer;
    paramJsonDeserializer = _valueDeserializer.getNullValue();
    if (paramJsonDeserializer == null) {}
    for (paramJsonDeserializer = null;; paramJsonDeserializer = new NullProvider(_type, paramJsonDeserializer))
    {
      _nullProvider = paramJsonDeserializer;
      return;
    }
  }
  
  public String toString()
  {
    return "[property '" + getName() + "']";
  }
  
  public abstract SettableBeanProperty withValueDeserializer(JsonDeserializer<Object> paramJsonDeserializer);
  
  public static final class FieldProperty
    extends SettableBeanProperty
  {
    protected final AnnotatedField _annotated;
    protected final Field _field;
    
    public FieldProperty(String paramString, JavaType paramJavaType, TypeDeserializer paramTypeDeserializer, Annotations paramAnnotations, AnnotatedField paramAnnotatedField)
    {
      super(paramJavaType, paramTypeDeserializer, paramAnnotations);
      _annotated = paramAnnotatedField;
      _field = paramAnnotatedField.getAnnotated();
    }
    
    protected FieldProperty(FieldProperty paramFieldProperty, JsonDeserializer<Object> paramJsonDeserializer)
    {
      super(paramJsonDeserializer);
      _annotated = _annotated;
      _field = _field;
    }
    
    public void deserializeAndSet(JsonParser paramJsonParser, DeserializationContext paramDeserializationContext, Object paramObject)
      throws IOException, JsonProcessingException
    {
      set(paramObject, deserialize(paramJsonParser, paramDeserializationContext));
    }
    
    public <A extends Annotation> A getAnnotation(Class<A> paramClass)
    {
      return _annotated.getAnnotation(paramClass);
    }
    
    public AnnotatedMember getMember()
    {
      return _annotated;
    }
    
    public final void set(Object paramObject1, Object paramObject2)
      throws IOException
    {
      try
      {
        _field.set(paramObject1, paramObject2);
        return;
      }
      catch (Exception paramObject1)
      {
        _throwAsIOE((Exception)paramObject1, paramObject2);
      }
    }
    
    public FieldProperty withValueDeserializer(JsonDeserializer<Object> paramJsonDeserializer)
    {
      return new FieldProperty(this, paramJsonDeserializer);
    }
  }
  
  public static final class InnerClassProperty
    extends SettableBeanProperty
  {
    protected final Constructor<?> _creator;
    protected final SettableBeanProperty _delegate;
    
    protected InnerClassProperty(InnerClassProperty paramInnerClassProperty, JsonDeserializer<Object> paramJsonDeserializer)
    {
      super(paramJsonDeserializer);
      _delegate = _delegate.withValueDeserializer(paramJsonDeserializer);
      _creator = _creator;
    }
    
    public InnerClassProperty(SettableBeanProperty paramSettableBeanProperty, Constructor<?> paramConstructor)
    {
      super();
      _delegate = paramSettableBeanProperty;
      _creator = paramConstructor;
    }
    
    public void deserializeAndSet(JsonParser paramJsonParser, DeserializationContext paramDeserializationContext, Object paramObject)
      throws IOException, JsonProcessingException
    {
      if (paramJsonParser.getCurrentToken() == JsonToken.VALUE_NULL) {
        if (_nullProvider == null) {
          paramJsonParser = null;
        }
      }
      for (;;)
      {
        set(paramObject, paramJsonParser);
        return;
        paramJsonParser = _nullProvider.nullValue(paramDeserializationContext);
        continue;
        if (_valueTypeDeserializer != null)
        {
          paramJsonParser = _valueDeserializer.deserializeWithType(paramJsonParser, paramDeserializationContext, _valueTypeDeserializer);
          continue;
        }
        try
        {
          Object localObject1 = _creator.newInstance(new Object[] { paramObject });
          _valueDeserializer.deserialize(paramJsonParser, paramDeserializationContext, localObject1);
          paramJsonParser = (JsonParser)localObject1;
        }
        catch (Exception localException)
        {
          for (;;)
          {
            ClassUtil.unwrapAndThrowAsIAE(localException, "Failed to instantiate class " + _creator.getDeclaringClass().getName() + ", problem: " + localException.getMessage());
            Object localObject2 = null;
          }
        }
      }
    }
    
    public <A extends Annotation> A getAnnotation(Class<A> paramClass)
    {
      return _delegate.getAnnotation(paramClass);
    }
    
    public AnnotatedMember getMember()
    {
      return _delegate.getMember();
    }
    
    public final void set(Object paramObject1, Object paramObject2)
      throws IOException
    {
      _delegate.set(paramObject1, paramObject2);
    }
    
    public InnerClassProperty withValueDeserializer(JsonDeserializer<Object> paramJsonDeserializer)
    {
      return new InnerClassProperty(this, paramJsonDeserializer);
    }
  }
  
  public static final class ManagedReferenceProperty
    extends SettableBeanProperty
  {
    protected final SettableBeanProperty _backProperty;
    protected final boolean _isContainer;
    protected final SettableBeanProperty _managedProperty;
    protected final String _referenceName;
    
    public ManagedReferenceProperty(String paramString, SettableBeanProperty paramSettableBeanProperty1, SettableBeanProperty paramSettableBeanProperty2, Annotations paramAnnotations, boolean paramBoolean)
    {
      super(paramSettableBeanProperty1.getType(), _valueTypeDeserializer, paramAnnotations);
      _referenceName = paramString;
      _managedProperty = paramSettableBeanProperty1;
      _backProperty = paramSettableBeanProperty2;
      _isContainer = paramBoolean;
    }
    
    protected ManagedReferenceProperty(ManagedReferenceProperty paramManagedReferenceProperty, JsonDeserializer<Object> paramJsonDeserializer)
    {
      super(paramJsonDeserializer);
      _referenceName = _referenceName;
      _isContainer = _isContainer;
      _managedProperty = _managedProperty;
      _backProperty = _backProperty;
    }
    
    public void deserializeAndSet(JsonParser paramJsonParser, DeserializationContext paramDeserializationContext, Object paramObject)
      throws IOException, JsonProcessingException
    {
      set(paramObject, _managedProperty.deserialize(paramJsonParser, paramDeserializationContext));
    }
    
    public <A extends Annotation> A getAnnotation(Class<A> paramClass)
    {
      return _managedProperty.getAnnotation(paramClass);
    }
    
    public AnnotatedMember getMember()
    {
      return _managedProperty.getMember();
    }
    
    public final void set(Object paramObject1, Object paramObject2)
      throws IOException
    {
      _managedProperty.set(paramObject1, paramObject2);
      if (paramObject2 != null)
      {
        if (_isContainer)
        {
          Object localObject;
          if ((paramObject2 instanceof Object[]))
          {
            paramObject2 = (Object[])paramObject2;
            int j = paramObject2.length;
            int i = 0;
            while (i < j)
            {
              localObject = paramObject2[i];
              if (localObject != null) {
                _backProperty.set(localObject, paramObject1);
              }
              i += 1;
            }
          }
          if ((paramObject2 instanceof Collection))
          {
            paramObject2 = ((Collection)paramObject2).iterator();
            while (((Iterator)paramObject2).hasNext())
            {
              localObject = ((Iterator)paramObject2).next();
              if (localObject != null) {
                _backProperty.set(localObject, paramObject1);
              }
            }
          }
          if ((paramObject2 instanceof Map))
          {
            paramObject2 = ((Map)paramObject2).values().iterator();
            while (((Iterator)paramObject2).hasNext())
            {
              localObject = ((Iterator)paramObject2).next();
              if (localObject != null) {
                _backProperty.set(localObject, paramObject1);
              }
            }
          }
          throw new IllegalStateException("Unsupported container type (" + paramObject2.getClass().getName() + ") when resolving reference '" + _referenceName + "'");
        }
        _backProperty.set(paramObject2, paramObject1);
      }
    }
    
    public ManagedReferenceProperty withValueDeserializer(JsonDeserializer<Object> paramJsonDeserializer)
    {
      return new ManagedReferenceProperty(this, paramJsonDeserializer);
    }
  }
  
  public static final class MethodProperty
    extends SettableBeanProperty
  {
    protected final AnnotatedMethod _annotated;
    protected final Method _setter;
    
    public MethodProperty(String paramString, JavaType paramJavaType, TypeDeserializer paramTypeDeserializer, Annotations paramAnnotations, AnnotatedMethod paramAnnotatedMethod)
    {
      super(paramJavaType, paramTypeDeserializer, paramAnnotations);
      _annotated = paramAnnotatedMethod;
      _setter = paramAnnotatedMethod.getAnnotated();
    }
    
    protected MethodProperty(MethodProperty paramMethodProperty, JsonDeserializer<Object> paramJsonDeserializer)
    {
      super(paramJsonDeserializer);
      _annotated = _annotated;
      _setter = _setter;
    }
    
    public void deserializeAndSet(JsonParser paramJsonParser, DeserializationContext paramDeserializationContext, Object paramObject)
      throws IOException, JsonProcessingException
    {
      set(paramObject, deserialize(paramJsonParser, paramDeserializationContext));
    }
    
    public <A extends Annotation> A getAnnotation(Class<A> paramClass)
    {
      return _annotated.getAnnotation(paramClass);
    }
    
    public AnnotatedMember getMember()
    {
      return _annotated;
    }
    
    public final void set(Object paramObject1, Object paramObject2)
      throws IOException
    {
      try
      {
        _setter.invoke(paramObject1, new Object[] { paramObject2 });
        return;
      }
      catch (Exception paramObject1)
      {
        _throwAsIOE((Exception)paramObject1, paramObject2);
      }
    }
    
    public MethodProperty withValueDeserializer(JsonDeserializer<Object> paramJsonDeserializer)
    {
      return new MethodProperty(this, paramJsonDeserializer);
    }
  }
  
  protected static final class NullProvider
  {
    private final boolean _isPrimitive;
    private final Object _nullValue;
    private final Class<?> _rawType;
    
    protected NullProvider(JavaType paramJavaType, Object paramObject)
    {
      _nullValue = paramObject;
      _isPrimitive = paramJavaType.isPrimitive();
      _rawType = paramJavaType.getRawClass();
    }
    
    public Object nullValue(DeserializationContext paramDeserializationContext)
      throws JsonProcessingException
    {
      if ((_isPrimitive) && (paramDeserializationContext.isEnabled(DeserializationConfig.Feature.FAIL_ON_NULL_FOR_PRIMITIVES))) {
        throw paramDeserializationContext.mappingException("Can not map JSON null into type " + _rawType.getName() + " (set DeserializationConfig.Feature.FAIL_ON_NULL_FOR_PRIMITIVES to 'false' to allow)");
      }
      return _nullValue;
    }
  }
  
  public static final class SetterlessProperty
    extends SettableBeanProperty
  {
    protected final AnnotatedMethod _annotated;
    protected final Method _getter;
    
    public SetterlessProperty(String paramString, JavaType paramJavaType, TypeDeserializer paramTypeDeserializer, Annotations paramAnnotations, AnnotatedMethod paramAnnotatedMethod)
    {
      super(paramJavaType, paramTypeDeserializer, paramAnnotations);
      _annotated = paramAnnotatedMethod;
      _getter = paramAnnotatedMethod.getAnnotated();
    }
    
    protected SetterlessProperty(SetterlessProperty paramSetterlessProperty, JsonDeserializer<Object> paramJsonDeserializer)
    {
      super(paramJsonDeserializer);
      _annotated = _annotated;
      _getter = _getter;
    }
    
    public final void deserializeAndSet(JsonParser paramJsonParser, DeserializationContext paramDeserializationContext, Object paramObject)
      throws IOException, JsonProcessingException
    {
      if (paramJsonParser.getCurrentToken() == JsonToken.VALUE_NULL) {
        return;
      }
      try
      {
        paramObject = _getter.invoke(paramObject, new Object[0]);
        if (paramObject == null) {
          throw new JsonMappingException("Problem deserializing 'setterless' property '" + getName() + "': get method returned null");
        }
      }
      catch (Exception paramJsonParser)
      {
        _throwAsIOE(paramJsonParser);
        return;
      }
      _valueDeserializer.deserialize(paramJsonParser, paramDeserializationContext, paramObject);
    }
    
    public <A extends Annotation> A getAnnotation(Class<A> paramClass)
    {
      return _annotated.getAnnotation(paramClass);
    }
    
    public AnnotatedMember getMember()
    {
      return _annotated;
    }
    
    public final void set(Object paramObject1, Object paramObject2)
      throws IOException
    {
      throw new UnsupportedOperationException("Should never call 'set' on setterless property");
    }
    
    public SetterlessProperty withValueDeserializer(JsonDeserializer<Object> paramJsonDeserializer)
    {
      return new SetterlessProperty(this, paramJsonDeserializer);
    }
  }
}

/* Location:
 * Qualified Name:     org.codehaus.jackson.map.deser.SettableBeanProperty
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */