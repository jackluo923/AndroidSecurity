package com.google.kagegamesgson;

import java.lang.annotation.Annotation;
import java.lang.reflect.Type;
import java.util.Collection;

final class ModifyFirstLetterNamingPolicy
  extends RecursiveFieldNamingPolicy
{
  private final ModifyFirstLetterNamingPolicy.LetterModifier letterModifier;
  
  public ModifyFirstLetterNamingPolicy(ModifyFirstLetterNamingPolicy.LetterModifier paramLetterModifier)
  {
    Preconditions.checkNotNull(paramLetterModifier);
    letterModifier = paramLetterModifier;
  }
  
  private String modifyString(char paramChar, String paramString, int paramInt)
  {
    int i = paramString.length();
    if (paramInt < i)
    {
      localObject = new java/lang/StringBuilder;
      ((StringBuilder)localObject).<init>();
      localObject = ((StringBuilder)localObject).append(paramChar);
      String str = paramString.substring(paramInt);
      localObject = ((StringBuilder)localObject).append(str);
    }
    for (Object localObject = ((StringBuilder)localObject).toString();; localObject = String.valueOf(paramChar)) {
      return (String)localObject;
    }
  }
  
  protected String translateName(String paramString, Type paramType, Collection<Annotation> paramCollection)
  {
    int i1 = 1;
    StringBuilder localStringBuilder = new java/lang/StringBuilder;
    localStringBuilder.<init>();
    int j = 0;
    char c1 = paramString.charAt(j);
    int k = paramString.length();
    k -= i1;
    Object localObject1;
    if (j < k)
    {
      boolean bool1 = Character.isLetter(c1);
      if (!bool1) {}
    }
    else
    {
      int m = paramString.length();
      if (j != m) {
        break label105;
      }
      localObject1 = localStringBuilder.toString();
    }
    for (;;)
    {
      return (String)localObject1;
      localStringBuilder.append(c1);
      j += 1;
      c1 = paramString.charAt(j);
      break;
      label105:
      localObject1 = letterModifier;
      ModifyFirstLetterNamingPolicy.LetterModifier localLetterModifier = ModifyFirstLetterNamingPolicy.LetterModifier.UPPER;
      if (localObject1 == localLetterModifier) {}
      String str;
      int n;
      for (int i = i1;; i = n)
      {
        if (i == 0) {
          break label197;
        }
        boolean bool2 = Character.isUpperCase(c1);
        if (bool2) {
          break label197;
        }
        char c2 = Character.toUpperCase(c1);
        j += 1;
        str = modifyString(c2, paramString, j);
        Object localObject2 = localStringBuilder.append(str);
        localObject2 = ((StringBuilder)localObject2).toString();
        break;
        n = 0;
      }
      label197:
      if (i == 0)
      {
        n = Character.isUpperCase(c1);
        if (n != 0)
        {
          char c3 = Character.toLowerCase(c1);
          j += 1;
          str = modifyString(c3, paramString, j);
          localObject3 = localStringBuilder.append(str);
          localObject3 = ((StringBuilder)localObject3).toString();
          continue;
        }
      }
      Object localObject3 = paramString;
    }
  }
}

/* Location:
 * Qualified Name:     com.google.kagegamesgson.ModifyFirstLetterNamingPolicy
 * Java Class Version: 1.2 (46.0)
 * JD-Core Version:    0.7.1
 */