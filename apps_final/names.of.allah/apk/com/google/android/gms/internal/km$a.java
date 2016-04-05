package com.google.android.gms.internal;

import com.google.android.gms.common.api.Status;
import com.google.android.gms.plus.Moments.LoadMomentsResult;
import com.google.android.gms.plus.Plus.a;

abstract class km$a
  extends Plus.a<Moments.LoadMomentsResult>
{
  public Moments.LoadMomentsResult an(Status paramStatus)
  {
    return new km.a.1(this, paramStatus);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.km.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */