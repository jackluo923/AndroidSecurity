package com.google.android.gms.internal;

import java.util.ArrayList;
import java.util.BitSet;
import java.util.List;

public final class fq$a
{
  private final String mName;
  private String yf;
  private boolean yg;
  private int yh;
  private boolean yi;
  private String yj;
  private final List<fn> yk;
  private BitSet yl;
  private String ym;
  
  public fq$a(String paramString)
  {
    mName = paramString;
    yh = 1;
    yk = new ArrayList();
  }
  
  public final a I(int paramInt)
  {
    if (yl == null) {
      yl = new BitSet();
    }
    yl.set(paramInt);
    return this;
  }
  
  public final a Z(String paramString)
  {
    yf = paramString;
    return this;
  }
  
  public final a aa(String paramString)
  {
    ym = paramString;
    return this;
  }
  
  public final fq dL()
  {
    int i = 0;
    Object localObject = null;
    if (yl != null)
    {
      int[] arrayOfInt = new int[yl.cardinality()];
      int j = yl.nextSetBit(0);
      for (;;)
      {
        localObject = arrayOfInt;
        if (j < 0) {
          break;
        }
        arrayOfInt[i] = j;
        j = yl.nextSetBit(j + 1);
        i += 1;
      }
    }
    return new fq(mName, yf, yg, yh, yi, yj, (fn[])yk.toArray(new fn[yk.size()]), (int[])localObject, ym);
  }
  
  public final a w(boolean paramBoolean)
  {
    yg = paramBoolean;
    return this;
  }
  
  public final a x(boolean paramBoolean)
  {
    yi = paramBoolean;
    return this;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.fq.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */