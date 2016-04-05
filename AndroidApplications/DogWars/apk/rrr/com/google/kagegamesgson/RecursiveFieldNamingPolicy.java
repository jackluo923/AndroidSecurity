package com.google.kagegamesgson;

import java.lang.annotation.Annotation;
import java.lang.reflect.Type;
import java.util.Collection;

abstract class RecursiveFieldNamingPolicy
  implements FieldNamingStrategy2
{
  public final String translateName(FieldAttributes paramFieldAttributes)
  {
    Preconditions.checkNotNull(paramFieldAttributes);
    String str = paramFieldAttributes.getName();
    Type localType = paramFieldAttributes.getDeclaredType();
    Collection localCollection = paramFieldAttributes.getAnnotations();
    str = translateName(str, localType, localCollection);
    return str;
  }
  
  protected abstract String translateName(String paramString, Type paramType, Collection<Annotation> paramCollection);
}

/* Location:
 * Qualified Name:     com.google.kagegamesgson.RecursiveFieldNamingPolicy
 * Java Class Version: 1.2 (46.0)
 * JD-Core Version:    0.7.1
 */