package com.google.android.gms.internal;

import com.google.android.gms.common.api.Status;
import com.google.android.gms.plus.People.LoadPeopleResult;
import com.google.android.gms.plus.Plus.a;

abstract class kn$a
  extends Plus.a<People.LoadPeopleResult>
{
  public People.LoadPeopleResult ao(Status paramStatus)
  {
    return new kn.a.1(this, paramStatus);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.kn.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */