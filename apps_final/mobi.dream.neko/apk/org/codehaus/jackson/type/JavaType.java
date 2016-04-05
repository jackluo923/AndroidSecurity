package org.codehaus.jackson.type;

import java.lang.reflect.Modifier;

public abstract class JavaType
{
  protected final Class<?> _class;
  protected final int _hashCode;
  protected Object _typeHandler;
  protected Object _valueHandler;
  
  protected JavaType(Class<?> paramClass, int paramInt)
  {
    _class = paramClass;
    _hashCode = (paramClass.getName().hashCode() + paramInt);
    _valueHandler = null;
    _typeHandler = null;
  }
  
  protected void _assertSubclass(Class<?> paramClass1, Class<?> paramClass2)
  {
    if (!_class.isAssignableFrom(paramClass1)) {
      throw new IllegalArgumentException("Class " + paramClass1.getName() + " is not assignable to " + _class.getName());
    }
  }
  
  protected abstract JavaType _narrow(Class<?> paramClass);
  
  protected JavaType _widen(Class<?> paramClass)
  {
    return _narrow(paramClass);
  }
  
  public JavaType containedType(int paramInt)
  {
    return null;
  }
  
  public int containedTypeCount()
  {
    return 0;
  }
  
  public String containedTypeName(int paramInt)
  {
    return null;
  }
  
  public abstract boolean equals(Object paramObject);
  
  public JavaType forcedNarrowBy(Class<?> paramClass)
  {
    if (paramClass == _class) {
      return this;
    }
    Object localObject = _narrow(paramClass);
    paramClass = (Class<?>)localObject;
    if (_valueHandler != ((JavaType)localObject).getValueHandler()) {
      paramClass = ((JavaType)localObject).withValueHandler(_valueHandler);
    }
    localObject = paramClass;
    if (_typeHandler != paramClass.getTypeHandler()) {
      localObject = paramClass.withTypeHandler(_typeHandler);
    }
    return (JavaType)localObject;
  }
  
  public JavaType getContentType()
  {
    return null;
  }
  
  public String getErasedSignature()
  {
    StringBuilder localStringBuilder = new StringBuilder(40);
    getErasedSignature(localStringBuilder);
    return localStringBuilder.toString();
  }
  
  public abstract StringBuilder getErasedSignature(StringBuilder paramStringBuilder);
  
  public String getGenericSignature()
  {
    StringBuilder localStringBuilder = new StringBuilder(40);
    getGenericSignature(localStringBuilder);
    return localStringBuilder.toString();
  }
  
  public abstract StringBuilder getGenericSignature(StringBuilder paramStringBuilder);
  
  public JavaType getKeyType()
  {
    return null;
  }
  
  public final Class<?> getRawClass()
  {
    return _class;
  }
  
  public <T> T getTypeHandler()
  {
    return (T)_typeHandler;
  }
  
  public <T> T getValueHandler()
  {
    return (T)_valueHandler;
  }
  
  public boolean hasGenericTypes()
  {
    return containedTypeCount() > 0;
  }
  
  public final boolean hasRawClass(Class<?> paramClass)
  {
    return _class == paramClass;
  }
  
  public final int hashCode()
  {
    return _hashCode;
  }
  
  public boolean isAbstract()
  {
    return Modifier.isAbstract(_class.getModifiers());
  }
  
  public boolean isArrayType()
  {
    return false;
  }
  
  public boolean isCollectionLikeType()
  {
    return false;
  }
  
  public boolean isConcrete()
  {
    if ((_class.getModifiers() & 0x600) == 0) {}
    while (_class.isPrimitive()) {
      return true;
    }
    return false;
  }
  
  public abstract boolean isContainerType();
  
  public final boolean isEnumType()
  {
    return _class.isEnum();
  }
  
  public final boolean isFinal()
  {
    return Modifier.isFinal(_class.getModifiers());
  }
  
  public final boolean isInterface()
  {
    return _class.isInterface();
  }
  
  public boolean isMapLikeType()
  {
    return false;
  }
  
  public final boolean isPrimitive()
  {
    return _class.isPrimitive();
  }
  
  public boolean isThrowable()
  {
    return Throwable.class.isAssignableFrom(_class);
  }
  
  public JavaType narrowBy(Class<?> paramClass)
  {
    if (paramClass == _class) {
      return this;
    }
    _assertSubclass(paramClass, _class);
    Object localObject = _narrow(paramClass);
    paramClass = (Class<?>)localObject;
    if (_valueHandler != ((JavaType)localObject).getValueHandler()) {
      paramClass = ((JavaType)localObject).withValueHandler(_valueHandler);
    }
    localObject = paramClass;
    if (_typeHandler != paramClass.getTypeHandler()) {
      localObject = paramClass.withTypeHandler(_typeHandler);
    }
    return (JavaType)localObject;
  }
  
  public abstract JavaType narrowContentsBy(Class<?> paramClass);
  
  @Deprecated
  public void setValueHandler(Object paramObject)
  {
    if ((paramObject != null) && (_valueHandler != null)) {
      throw new IllegalStateException("Trying to reset value handler for type [" + toString() + "]; old handler of type " + _valueHandler.getClass().getName() + ", new handler of type " + paramObject.getClass().getName());
    }
    _valueHandler = paramObject;
  }
  
  public abstract String toCanonical();
  
  public abstract String toString();
  
  public JavaType widenBy(Class<?> paramClass)
  {
    if (paramClass == _class) {
      return this;
    }
    _assertSubclass(_class, paramClass);
    return _widen(paramClass);
  }
  
  public abstract JavaType widenContentsBy(Class<?> paramClass);
  
  public abstract JavaType withContentTypeHandler(Object paramObject);
  
  public JavaType withContentValueHandler(Object paramObject)
  {
    getContentType().setValueHandler(paramObject);
    return this;
  }
  
  public abstract JavaType withTypeHandler(Object paramObject);
  
  public JavaType withValueHandler(Object paramObject)
  {
    setValueHandler(paramObject);
    return this;
  }
}

/* Location:
 * Qualified Name:     org.codehaus.jackson.type.JavaType
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */