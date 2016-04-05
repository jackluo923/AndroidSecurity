package org.codehaus.jackson.map.deser.std;

import java.io.IOException;
import org.codehaus.jackson.JsonProcessingException;
import org.codehaus.jackson.map.DeserializationConfig;
import org.codehaus.jackson.map.DeserializationConfig.Feature;
import org.codehaus.jackson.map.JsonMappingException;
import org.codehaus.jackson.map.deser.SettableBeanProperty;
import org.codehaus.jackson.map.deser.ValueInstantiator;
import org.codehaus.jackson.map.deser.impl.CreatorProperty;
import org.codehaus.jackson.map.introspect.AnnotatedWithParams;
import org.codehaus.jackson.type.JavaType;

public class StdValueInstantiator
  extends ValueInstantiator
{
  protected final boolean _cfgEmptyStringsAsObjects;
  protected CreatorProperty[] _constructorArguments;
  protected AnnotatedWithParams _defaultCreator;
  protected AnnotatedWithParams _delegateCreator;
  protected JavaType _delegateType;
  protected AnnotatedWithParams _fromBooleanCreator;
  protected AnnotatedWithParams _fromDoubleCreator;
  protected AnnotatedWithParams _fromIntCreator;
  protected AnnotatedWithParams _fromLongCreator;
  protected AnnotatedWithParams _fromStringCreator;
  protected final String _valueTypeDesc;
  protected AnnotatedWithParams _withArgsCreator;
  
  public StdValueInstantiator(DeserializationConfig paramDeserializationConfig, Class<?> paramClass)
  {
    boolean bool;
    if (paramDeserializationConfig == null)
    {
      bool = false;
      _cfgEmptyStringsAsObjects = bool;
      if (paramClass != null) {
        break label39;
      }
    }
    label39:
    for (paramDeserializationConfig = "UNKNOWN TYPE";; paramDeserializationConfig = paramClass.getName())
    {
      _valueTypeDesc = paramDeserializationConfig;
      return;
      bool = paramDeserializationConfig.isEnabled(DeserializationConfig.Feature.ACCEPT_EMPTY_STRING_AS_NULL_OBJECT);
      break;
    }
  }
  
  public StdValueInstantiator(DeserializationConfig paramDeserializationConfig, JavaType paramJavaType)
  {
    boolean bool;
    if (paramDeserializationConfig == null)
    {
      bool = false;
      _cfgEmptyStringsAsObjects = bool;
      if (paramJavaType != null) {
        break label39;
      }
    }
    label39:
    for (paramDeserializationConfig = "UNKNOWN TYPE";; paramDeserializationConfig = paramJavaType.toString())
    {
      _valueTypeDesc = paramDeserializationConfig;
      return;
      bool = paramDeserializationConfig.isEnabled(DeserializationConfig.Feature.ACCEPT_EMPTY_STRING_AS_NULL_OBJECT);
      break;
    }
  }
  
  protected StdValueInstantiator(StdValueInstantiator paramStdValueInstantiator)
  {
    _cfgEmptyStringsAsObjects = _cfgEmptyStringsAsObjects;
    _valueTypeDesc = _valueTypeDesc;
    _defaultCreator = _defaultCreator;
    _constructorArguments = _constructorArguments;
    _withArgsCreator = _withArgsCreator;
    _delegateType = _delegateType;
    _delegateCreator = _delegateCreator;
    _fromStringCreator = _fromStringCreator;
    _fromIntCreator = _fromIntCreator;
    _fromLongCreator = _fromLongCreator;
    _fromDoubleCreator = _fromDoubleCreator;
    _fromBooleanCreator = _fromBooleanCreator;
  }
  
  protected Object _createFromStringFallbacks(String paramString)
    throws IOException, JsonProcessingException
  {
    if (_fromBooleanCreator != null)
    {
      String str = paramString.trim();
      if ("true".equals(str)) {
        return createFromBoolean(true);
      }
      if ("false".equals(str)) {
        return createFromBoolean(false);
      }
    }
    if ((_cfgEmptyStringsAsObjects) && (paramString.length() == 0)) {
      return null;
    }
    throw new JsonMappingException("Can not instantiate value of type " + getValueTypeDesc() + " from JSON String; no single-String constructor/factory method");
  }
  
  public boolean canCreateFromBoolean()
  {
    return _fromBooleanCreator != null;
  }
  
  public boolean canCreateFromDouble()
  {
    return _fromDoubleCreator != null;
  }
  
  public boolean canCreateFromInt()
  {
    return _fromIntCreator != null;
  }
  
  public boolean canCreateFromLong()
  {
    return _fromLongCreator != null;
  }
  
  public boolean canCreateFromObjectWith()
  {
    return _withArgsCreator != null;
  }
  
  public boolean canCreateFromString()
  {
    return _fromStringCreator != null;
  }
  
  public boolean canCreateUsingDefault()
  {
    return _defaultCreator != null;
  }
  
  public void configureFromBooleanCreator(AnnotatedWithParams paramAnnotatedWithParams)
  {
    _fromBooleanCreator = paramAnnotatedWithParams;
  }
  
  public void configureFromDoubleCreator(AnnotatedWithParams paramAnnotatedWithParams)
  {
    _fromDoubleCreator = paramAnnotatedWithParams;
  }
  
  public void configureFromIntCreator(AnnotatedWithParams paramAnnotatedWithParams)
  {
    _fromIntCreator = paramAnnotatedWithParams;
  }
  
  public void configureFromLongCreator(AnnotatedWithParams paramAnnotatedWithParams)
  {
    _fromLongCreator = paramAnnotatedWithParams;
  }
  
  public void configureFromObjectSettings(AnnotatedWithParams paramAnnotatedWithParams1, AnnotatedWithParams paramAnnotatedWithParams2, JavaType paramJavaType, AnnotatedWithParams paramAnnotatedWithParams3, CreatorProperty[] paramArrayOfCreatorProperty)
  {
    _defaultCreator = paramAnnotatedWithParams1;
    _delegateCreator = paramAnnotatedWithParams2;
    _delegateType = paramJavaType;
    _withArgsCreator = paramAnnotatedWithParams3;
    _constructorArguments = paramArrayOfCreatorProperty;
  }
  
  public void configureFromStringCreator(AnnotatedWithParams paramAnnotatedWithParams)
  {
    _fromStringCreator = paramAnnotatedWithParams;
  }
  
  public Object createFromBoolean(boolean paramBoolean)
    throws IOException, JsonProcessingException
  {
    try
    {
      if (_fromBooleanCreator != null)
      {
        Object localObject = _fromBooleanCreator.call1(Boolean.valueOf(paramBoolean));
        return localObject;
      }
    }
    catch (Exception localException)
    {
      throw wrapException(localException);
    }
    throw new JsonMappingException("Can not instantiate value of type " + getValueTypeDesc() + " from JSON boolean value; no single-boolean/Boolean-arg constructor/factory method");
  }
  
  public Object createFromDouble(double paramDouble)
    throws IOException, JsonProcessingException
  {
    try
    {
      if (_fromDoubleCreator != null)
      {
        Object localObject = _fromDoubleCreator.call1(Double.valueOf(paramDouble));
        return localObject;
      }
    }
    catch (Exception localException)
    {
      throw wrapException(localException);
    }
    throw new JsonMappingException("Can not instantiate value of type " + getValueTypeDesc() + " from JSON floating-point number; no one-double/Double-arg constructor/factory method");
  }
  
  public Object createFromInt(int paramInt)
    throws IOException, JsonProcessingException
  {
    try
    {
      if (_fromIntCreator != null) {
        return _fromIntCreator.call1(Integer.valueOf(paramInt));
      }
      if (_fromLongCreator != null)
      {
        Object localObject = _fromLongCreator.call1(Long.valueOf(paramInt));
        return localObject;
      }
    }
    catch (Exception localException)
    {
      throw wrapException(localException);
    }
    throw new JsonMappingException("Can not instantiate value of type " + getValueTypeDesc() + " from JSON integral number; no single-int-arg constructor/factory method");
  }
  
  public Object createFromLong(long paramLong)
    throws IOException, JsonProcessingException
  {
    try
    {
      if (_fromLongCreator != null)
      {
        Object localObject = _fromLongCreator.call1(Long.valueOf(paramLong));
        return localObject;
      }
    }
    catch (Exception localException)
    {
      throw wrapException(localException);
    }
    throw new JsonMappingException("Can not instantiate value of type " + getValueTypeDesc() + " from JSON long integral number; no single-long-arg constructor/factory method");
  }
  
  public Object createFromObjectWith(Object[] paramArrayOfObject)
    throws IOException, JsonProcessingException
  {
    if (_withArgsCreator == null) {
      throw new IllegalStateException("No with-args constructor for " + getValueTypeDesc());
    }
    try
    {
      paramArrayOfObject = _withArgsCreator.call(paramArrayOfObject);
      return paramArrayOfObject;
    }
    catch (ExceptionInInitializerError paramArrayOfObject)
    {
      throw wrapException(paramArrayOfObject);
    }
    catch (Exception paramArrayOfObject)
    {
      throw wrapException(paramArrayOfObject);
    }
  }
  
  public Object createFromString(String paramString)
    throws IOException, JsonProcessingException
  {
    if (_fromStringCreator != null) {
      try
      {
        paramString = _fromStringCreator.call1(paramString);
        return paramString;
      }
      catch (Exception paramString)
      {
        throw wrapException(paramString);
      }
    }
    return _createFromStringFallbacks(paramString);
  }
  
  public Object createUsingDefault()
    throws IOException, JsonProcessingException
  {
    if (_defaultCreator == null) {
      throw new IllegalStateException("No default constructor for " + getValueTypeDesc());
    }
    try
    {
      Object localObject = _defaultCreator.call();
      return localObject;
    }
    catch (ExceptionInInitializerError localExceptionInInitializerError)
    {
      throw wrapException(localExceptionInInitializerError);
    }
    catch (Exception localException)
    {
      throw wrapException(localException);
    }
  }
  
  public Object createUsingDelegate(Object paramObject)
    throws IOException, JsonProcessingException
  {
    if (_delegateCreator == null) {
      throw new IllegalStateException("No delegate constructor for " + getValueTypeDesc());
    }
    try
    {
      paramObject = _delegateCreator.call1(paramObject);
      return paramObject;
    }
    catch (ExceptionInInitializerError paramObject)
    {
      throw wrapException((Throwable)paramObject);
    }
    catch (Exception paramObject)
    {
      throw wrapException((Throwable)paramObject);
    }
  }
  
  public AnnotatedWithParams getDefaultCreator()
  {
    return _defaultCreator;
  }
  
  public AnnotatedWithParams getDelegateCreator()
  {
    return _delegateCreator;
  }
  
  public JavaType getDelegateType()
  {
    return _delegateType;
  }
  
  public SettableBeanProperty[] getFromObjectArguments()
  {
    return _constructorArguments;
  }
  
  public String getValueTypeDesc()
  {
    return _valueTypeDesc;
  }
  
  public AnnotatedWithParams getWithArgsCreator()
  {
    return _withArgsCreator;
  }
  
  protected JsonMappingException wrapException(Throwable paramThrowable)
  {
    while (paramThrowable.getCause() != null) {
      paramThrowable = paramThrowable.getCause();
    }
    return new JsonMappingException("Instantiation of " + getValueTypeDesc() + " value failed: " + paramThrowable.getMessage(), paramThrowable);
  }
}

/* Location:
 * Qualified Name:     org.codehaus.jackson.map.deser.std.StdValueInstantiator
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */