package com.millennialmedia.google.gson.internal;

import java.io.Serializable;
import java.lang.reflect.GenericArrayType;
import java.lang.reflect.Type;

final class $Gson$Types$GenericArrayTypeImpl
  implements Serializable, GenericArrayType
{
  private static final long serialVersionUID = 0L;
  private final Type componentType;
  
  public $Gson$Types$GenericArrayTypeImpl(Type paramType)
  {
    componentType = .Gson.Types.canonicalize(paramType);
  }
  
  public final boolean equals(Object paramObject)
  {
    return ((paramObject instanceof GenericArrayType)) && (.Gson.Types.equals(this, (GenericArrayType)paramObject));
  }
  
  public final Type getGenericComponentType()
  {
    return componentType;
  }
  
  public final int hashCode()
  {
    return componentType.hashCode();
  }
  
  public final String toString()
  {
    return .Gson.Types.typeToString(componentType) + "[]";
  }
}

/* Location:
 * Qualified Name:     com.millennialmedia.google.gson.internal..Gson.Types.GenericArrayTypeImpl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */