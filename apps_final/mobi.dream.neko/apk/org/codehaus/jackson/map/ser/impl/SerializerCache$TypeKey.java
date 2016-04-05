package org.codehaus.jackson.map.ser.impl;

import org.codehaus.jackson.type.JavaType;

public final class SerializerCache$TypeKey
{
  protected Class<?> _class;
  protected int _hashCode;
  protected boolean _isTyped;
  protected JavaType _type;
  
  public SerializerCache$TypeKey(Class<?> paramClass, boolean paramBoolean)
  {
    _class = paramClass;
    _type = null;
    _isTyped = paramBoolean;
    _hashCode = hash(paramClass, paramBoolean);
  }
  
  public SerializerCache$TypeKey(JavaType paramJavaType, boolean paramBoolean)
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

/* Location:
 * Qualified Name:     org.codehaus.jackson.map.ser.impl.SerializerCache.TypeKey
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */