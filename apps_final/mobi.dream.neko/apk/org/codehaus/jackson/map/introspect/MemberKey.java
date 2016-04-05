package org.codehaus.jackson.map.introspect;

import java.lang.reflect.Constructor;
import java.lang.reflect.Method;

public final class MemberKey
{
  static final Class<?>[] NO_CLASSES = new Class[0];
  final Class<?>[] _argTypes;
  final String _name;
  
  public MemberKey(String paramString, Class<?>[] paramArrayOfClass)
  {
    _name = paramString;
    paramString = paramArrayOfClass;
    if (paramArrayOfClass == null) {
      paramString = NO_CLASSES;
    }
    _argTypes = paramString;
  }
  
  public MemberKey(Constructor<?> paramConstructor)
  {
    this("", paramConstructor.getParameterTypes());
  }
  
  public MemberKey(Method paramMethod)
  {
    this(paramMethod.getName(), paramMethod.getParameterTypes());
  }
  
  public boolean equals(Object paramObject)
  {
    if (paramObject == this) {
      return true;
    }
    if (paramObject == null) {
      return false;
    }
    if (paramObject.getClass() != getClass()) {
      return false;
    }
    paramObject = (MemberKey)paramObject;
    if (!_name.equals(_name)) {
      return false;
    }
    paramObject = _argTypes;
    int j = _argTypes.length;
    if (paramObject.length != j) {
      return false;
    }
    int i = 0;
    label71:
    Class localClass1;
    Class localClass2;
    if (i < j)
    {
      localClass1 = paramObject[i];
      localClass2 = _argTypes[i];
      if (localClass1 != localClass2) {
        break label105;
      }
    }
    label105:
    while ((localClass1.isAssignableFrom(localClass2)) || (localClass2.isAssignableFrom(localClass1)))
    {
      i += 1;
      break label71;
      break;
    }
    return false;
  }
  
  public int hashCode()
  {
    return _name.hashCode() + _argTypes.length;
  }
  
  public String toString()
  {
    return _name + "(" + _argTypes.length + "-args)";
  }
}

/* Location:
 * Qualified Name:     org.codehaus.jackson.map.introspect.MemberKey
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */