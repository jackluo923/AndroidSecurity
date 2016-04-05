package com.google.android.gms.plus.internal;

import android.content.Context;
import java.util.ArrayList;
import java.util.Arrays;

public class i
{
  private String[] abS;
  private String abT;
  private String abU;
  private String abV;
  private PlusCommonExtras abX;
  private final ArrayList<String> abY = new ArrayList();
  private String[] abZ;
  private String yN;
  
  public i(Context paramContext)
  {
    abU = paramContext.getPackageName();
    abT = paramContext.getPackageName();
    abX = new PlusCommonExtras();
    abY.add("https://www.googleapis.com/auth/plus.login");
  }
  
  public i bz(String paramString)
  {
    yN = paramString;
    return this;
  }
  
  public i e(String... paramVarArgs)
  {
    abY.clear();
    abY.addAll(Arrays.asList(paramVarArgs));
    return this;
  }
  
  public i f(String... paramVarArgs)
  {
    abZ = paramVarArgs;
    return this;
  }
  
  public i kd()
  {
    abY.clear();
    return this;
  }
  
  public h ke()
  {
    if (yN == null) {
      yN = "<<default account>>";
    }
    String[] arrayOfString = (String[])abY.toArray(new String[abY.size()]);
    return new h(yN, arrayOfString, abZ, abS, abT, abU, abV, abX);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.plus.internal.i
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */