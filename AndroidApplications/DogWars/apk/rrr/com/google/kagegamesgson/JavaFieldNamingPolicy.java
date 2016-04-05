package com.google.kagegamesgson;

import java.lang.annotation.Annotation;
import java.lang.reflect.Type;
import java.util.Collection;

final class JavaFieldNamingPolicy
  extends RecursiveFieldNamingPolicy
{
  protected String translateName(String paramString, Type paramType, Collection<Annotation> paramCollection)
  {
    return paramString;
  }
}

/* Location:
 * Qualified Name:     com.google.kagegamesgson.JavaFieldNamingPolicy
 * Java Class Version: 1.2 (46.0)
 * JD-Core Version:    0.7.1
 */