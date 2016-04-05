package com.google.android.gms.internal;

import com.google.android.gms.ads.mediation.MediationAdRequest;
import java.util.Date;
import java.util.Set;

public final class bx
  implements MediationAdRequest
{
  private final Date d;
  private final Set<String> f;
  private final boolean g;
  private final int mj;
  private final int nP;
  
  public bx(Date paramDate, int paramInt1, Set<String> paramSet, boolean paramBoolean, int paramInt2)
  {
    d = paramDate;
    mj = paramInt1;
    f = paramSet;
    g = paramBoolean;
    nP = paramInt2;
  }
  
  public final Date getBirthday()
  {
    return d;
  }
  
  public final int getGender()
  {
    return mj;
  }
  
  public final Set<String> getKeywords()
  {
    return f;
  }
  
  public final boolean isTesting()
  {
    return g;
  }
  
  public final int taggedForChildDirectedTreatment()
  {
    return nP;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.bx
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */