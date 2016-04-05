package org.codehaus.jackson.map.ser.impl;

import java.util.HashMap;
import org.codehaus.jackson.map.JsonMappingException;
import org.codehaus.jackson.map.JsonSerializer;
import org.codehaus.jackson.map.ResolvableSerializer;
import org.codehaus.jackson.map.SerializerProvider;
import org.codehaus.jackson.type.JavaType;

public final class SerializerCache
{
  private ReadOnlyClassToSerializerMap _readOnlyMap = null;
  private HashMap<TypeKey, JsonSerializer<Object>> _sharedMap = new HashMap(64);
  
  public void addAndResolveNonTypedSerializer(Class<?> paramClass, JsonSerializer<Object> paramJsonSerializer, SerializerProvider paramSerializerProvider)
    throws JsonMappingException
  {
    try
    {
      if (_sharedMap.put(new TypeKey(paramClass, false), paramJsonSerializer) == null) {
        _readOnlyMap = null;
      }
      if ((paramJsonSerializer instanceof ResolvableSerializer)) {
        ((ResolvableSerializer)paramJsonSerializer).resolve(paramSerializerProvider);
      }
      return;
    }
    finally {}
  }
  
  public void addAndResolveNonTypedSerializer(JavaType paramJavaType, JsonSerializer<Object> paramJsonSerializer, SerializerProvider paramSerializerProvider)
    throws JsonMappingException
  {
    try
    {
      if (_sharedMap.put(new TypeKey(paramJavaType, false), paramJsonSerializer) == null) {
        _readOnlyMap = null;
      }
      if ((paramJsonSerializer instanceof ResolvableSerializer)) {
        ((ResolvableSerializer)paramJsonSerializer).resolve(paramSerializerProvider);
      }
      return;
    }
    finally {}
  }
  
  public void addTypedSerializer(Class<?> paramClass, JsonSerializer<Object> paramJsonSerializer)
  {
    try
    {
      if (_sharedMap.put(new TypeKey(paramClass, true), paramJsonSerializer) == null) {
        _readOnlyMap = null;
      }
      return;
    }
    finally {}
  }
  
  public void addTypedSerializer(JavaType paramJavaType, JsonSerializer<Object> paramJsonSerializer)
  {
    try
    {
      if (_sharedMap.put(new TypeKey(paramJavaType, true), paramJsonSerializer) == null) {
        _readOnlyMap = null;
      }
      return;
    }
    finally {}
  }
  
  public void flush()
  {
    try
    {
      _sharedMap.clear();
      return;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  public ReadOnlyClassToSerializerMap getReadOnlyLookupMap()
  {
    try
    {
      ReadOnlyClassToSerializerMap localReadOnlyClassToSerializerMap2 = _readOnlyMap;
      ReadOnlyClassToSerializerMap localReadOnlyClassToSerializerMap1 = localReadOnlyClassToSerializerMap2;
      if (localReadOnlyClassToSerializerMap2 == null)
      {
        localReadOnlyClassToSerializerMap1 = ReadOnlyClassToSerializerMap.from(_sharedMap);
        _readOnlyMap = localReadOnlyClassToSerializerMap1;
      }
      return localReadOnlyClassToSerializerMap1.instance();
    }
    finally {}
  }
  
  public int size()
  {
    try
    {
      int i = _sharedMap.size();
      return i;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  public JsonSerializer<Object> typedValueSerializer(Class<?> paramClass)
  {
    try
    {
      paramClass = (JsonSerializer)_sharedMap.get(new TypeKey(paramClass, true));
      return paramClass;
    }
    finally {}
  }
  
  public JsonSerializer<Object> typedValueSerializer(JavaType paramJavaType)
  {
    try
    {
      paramJavaType = (JsonSerializer)_sharedMap.get(new TypeKey(paramJavaType, true));
      return paramJavaType;
    }
    finally {}
  }
  
  public JsonSerializer<Object> untypedValueSerializer(Class<?> paramClass)
  {
    try
    {
      paramClass = (JsonSerializer)_sharedMap.get(new TypeKey(paramClass, false));
      return paramClass;
    }
    finally {}
  }
  
  public JsonSerializer<Object> untypedValueSerializer(JavaType paramJavaType)
  {
    try
    {
      paramJavaType = (JsonSerializer)_sharedMap.get(new TypeKey(paramJavaType, false));
      return paramJavaType;
    }
    finally {}
  }
  
  public static final class TypeKey
  {
    protected Class<?> _class;
    protected int _hashCode;
    protected boolean _isTyped;
    protected JavaType _type;
    
    public TypeKey(Class<?> paramClass, boolean paramBoolean)
    {
      _class = paramClass;
      _type = null;
      _isTyped = paramBoolean;
      _hashCode = hash(paramClass, paramBoolean);
    }
    
    public TypeKey(JavaType paramJavaType, boolean paramBoolean)
    {
      _type = paramJavaType;
      _class = null;
      _isTyped = paramBoolean;
      _hashCode = hash(paramJavaType, paramBoolean);
    }
    
    private static final int hash(Class<?> paramClass, boolean paramBoolean)
    {
      int j = paramClass.getName().hashCode();
      int i = j;
      if (paramBoolean) {
        i = j + 1;
      }
      return i;
    }
    
    private static final int hash(JavaType paramJavaType, boolean paramBoolean)
    {
      int j = paramJavaType.hashCode() - 1;
      int i = j;
      if (paramBoolean) {
        i = j - 1;
      }
      return i;
    }
    
    public final boolean equals(Object paramObject)
    {
      if (paramObject == this) {}
      do
      {
        return true;
        paramObject = (TypeKey)paramObject;
        if (_isTyped != _isTyped) {
          break label55;
        }
        if (_class == null) {
          break;
        }
      } while (_class == _class);
      return false;
      return _type.equals(_type);
      label55:
      return false;
    }
    
    public final int hashCode()
    {
      return _hashCode;
    }
    
    public void resetTyped(Class<?> paramClass)
    {
      _type = null;
      _class = paramClass;
      _isTyped = true;
      _hashCode = hash(paramClass, true);
    }
    
    public void resetTyped(JavaType paramJavaType)
    {
      _type = paramJavaType;
      _class = null;
      _isTyped = true;
      _hashCode = hash(paramJavaType, true);
    }
    
    public void resetUntyped(Class<?> paramClass)
    {
      _type = null;
      _class = paramClass;
      _isTyped = false;
      _hashCode = hash(paramClass, false);
    }
    
    public void resetUntyped(JavaType paramJavaType)
    {
      _type = paramJavaType;
      _class = null;
      _isTyped = false;
      _hashCode = hash(paramJavaType, false);
    }
    
    public final String toString()
    {
      if (_class != null) {
        return "{class: " + _class.getName() + ", typed? " + _isTyped + "}";
      }
      return "{type: " + _type + ", typed? " + _isTyped + "}";
    }
  }
}

/* Location:
 * Qualified Name:     org.codehaus.jackson.map.ser.impl.SerializerCache
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */