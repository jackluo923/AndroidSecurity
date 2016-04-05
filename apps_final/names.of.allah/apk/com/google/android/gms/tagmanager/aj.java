package com.google.android.gms.tagmanager;

import com.google.android.gms.internal.d.a;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;

abstract class aj
{
  private final String afA;
  private final Set<String> afz;
  
  public aj(String paramString, String... paramVarArgs)
  {
    afA = paramString;
    afz = new HashSet(paramVarArgs.length);
    int j = paramVarArgs.length;
    int i = 0;
    while (i < j)
    {
      paramString = paramVarArgs[i];
      afz.add(paramString);
      i += 1;
    }
  }
  
  boolean a(Set<String> paramSet)
  {
    return paramSet.containsAll(afz);
  }
  
  public String lG()
  {
    return afA;
  }
  
  public Set<String> lH()
  {
    return afz;
  }
  
  public abstract boolean lc();
  
  public abstract d.a w(Map<String, d.a> paramMap);
}

/* Location:
 * Qualified Name:     com.google.android.gms.tagmanager.aj
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */