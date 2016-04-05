package com.google.kagegamesgson;

import java.lang.annotation.Annotation;
import java.lang.reflect.Type;
import java.util.Collection;

abstract class CompositionFieldNamingPolicy
  extends RecursiveFieldNamingPolicy
{
  private final RecursiveFieldNamingPolicy[] fieldPolicies;
  
  public CompositionFieldNamingPolicy(RecursiveFieldNamingPolicy[] paramArrayOfRecursiveFieldNamingPolicy)
  {
    if (paramArrayOfRecursiveFieldNamingPolicy == null)
    {
      NullPointerException localNullPointerException = new java/lang/NullPointerException;
      String str = "naming policies can not be null.";
      localNullPointerException.<init>(str);
      throw localNullPointerException;
    }
    fieldPolicies = paramArrayOfRecursiveFieldNamingPolicy;
  }
  
  protected String translateName(String paramString, Type paramType, Collection<Annotation> paramCollection)
  {
    RecursiveFieldNamingPolicy[] arrayOfRecursiveFieldNamingPolicy = fieldPolicies;
    int j = arrayOfRecursiveFieldNamingPolicy.length;
    int i = 0;
    while (i < j)
    {
      RecursiveFieldNamingPolicy localRecursiveFieldNamingPolicy = arrayOfRecursiveFieldNamingPolicy[i];
      paramString = localRecursiveFieldNamingPolicy.translateName(paramString, paramType, paramCollection);
      i += 1;
    }
    return paramString;
  }
}

/* Location:
 * Qualified Name:     com.google.kagegamesgson.CompositionFieldNamingPolicy
 * Java Class Version: 1.2 (46.0)
 * JD-Core Version:    0.7.1
 */