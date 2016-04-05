package com.google.android.gms.plus.internal;

import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.a.d;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.internal.hc;
import com.google.android.gms.internal.hc.d;
import com.google.android.gms.plus.People.LoadPeopleResult;
import com.google.android.gms.plus.model.people.PersonBuffer;

final class e$f
  extends hc<d>.d<a.d<People.LoadPeopleResult>>
  implements People.LoadPeopleResult
{
  private final String HP;
  private PersonBuffer abM;
  private final Status yw;
  
  public e$f(a.d<People.LoadPeopleResult> paramd, Status paramStatus, DataHolder paramDataHolder, String paramString)
  {
    super(paramd, paramStatus, paramString);
    yw = paramDataHolder;
    String str;
    HP = str;
  }
  
  protected final void a(a.d<People.LoadPeopleResult> paramd, DataHolder paramDataHolder)
  {
    if (paramDataHolder != null) {}
    for (paramDataHolder = new PersonBuffer(paramDataHolder);; paramDataHolder = null)
    {
      abM = paramDataHolder;
      paramd.a(this);
      return;
    }
  }
  
  public final String getNextPageToken()
  {
    return HP;
  }
  
  public final PersonBuffer getPersonBuffer()
  {
    return abM;
  }
  
  public final Status getStatus()
  {
    return yw;
  }
  
  public final void release()
  {
    if (abM != null) {
      abM.close();
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.plus.internal.e.f
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */