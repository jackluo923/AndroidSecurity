package com.google.android.gms.plus;

import com.google.android.gms.internal.hn;
import java.util.HashSet;
import java.util.Set;

public final class Plus$PlusOptions$Builder
{
  String abo;
  final Set<String> abp = new HashSet();
  
  public final Builder addActivityTypes(String... paramVarArgs)
  {
    hn.b(paramVarArgs, "activityTypes may not be null.");
    int i = 0;
    while (i < paramVarArgs.length)
    {
      abp.add(paramVarArgs[i]);
      i += 1;
    }
    return this;
  }
  
  public final Plus.PlusOptions build()
  {
    return new Plus.PlusOptions(this, null);
  }
  
  public final Builder setServerClientId(String paramString)
  {
    abo = paramString;
    return this;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.plus.Plus.PlusOptions.Builder
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */