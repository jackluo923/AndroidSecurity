package com.google.kagegamesgson;

import java.lang.annotation.Annotation;
import java.lang.reflect.Type;
import java.util.Collection;

final class CamelCaseSeparatorNamingPolicy
  extends RecursiveFieldNamingPolicy
{
  private final String separatorString;
  
  public CamelCaseSeparatorNamingPolicy(String paramString)
  {
    Preconditions.checkNotNull(paramString);
    String str = "";
    boolean bool = str.equals(paramString);
    if (!bool) {}
    for (bool = true;; bool = false)
    {
      Preconditions.checkArgument(bool);
      separatorString = paramString;
      return;
    }
  }
  
  protected String translateName(String paramString, Type paramType, Collection<Annotation> paramCollection)
  {
    StringBuilder localStringBuilder = new java/lang/StringBuilder;
    localStringBuilder.<init>();
    int i = 0;
    for (;;)
    {
      int j = paramString.length();
      if (i >= j) {
        break;
      }
      char c = paramString.charAt(i);
      boolean bool = Character.isUpperCase(c);
      if (bool)
      {
        int k = localStringBuilder.length();
        if (k != 0)
        {
          str = separatorString;
          localStringBuilder.append(str);
        }
      }
      localStringBuilder.append(c);
      i += 1;
    }
    String str = localStringBuilder.toString();
    return str;
  }
}

/* Location:
 * Qualified Name:     com.google.kagegamesgson.CamelCaseSeparatorNamingPolicy
 * Java Class Version: 1.2 (46.0)
 * JD-Core Version:    0.7.1
 */