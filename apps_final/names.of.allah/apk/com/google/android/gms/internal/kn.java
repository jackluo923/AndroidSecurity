package com.google.android.gms.internal;

import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.plus.People;
import com.google.android.gms.plus.People.LoadPeopleResult;
import com.google.android.gms.plus.Plus;
import com.google.android.gms.plus.internal.e;
import com.google.android.gms.plus.model.people.Person;
import java.util.Collection;

public final class kn
  implements People
{
  public final Person getCurrentPerson(GoogleApiClient paramGoogleApiClient)
  {
    return Plus.a(paramGoogleApiClient, Plus.yE).getCurrentPerson();
  }
  
  public final PendingResult<People.LoadPeopleResult> load(GoogleApiClient paramGoogleApiClient, Collection<String> paramCollection)
  {
    return paramGoogleApiClient.a(new kn.4(this, paramCollection));
  }
  
  public final PendingResult<People.LoadPeopleResult> load(GoogleApiClient paramGoogleApiClient, String... paramVarArgs)
  {
    return paramGoogleApiClient.a(new kn.5(this, paramVarArgs));
  }
  
  public final PendingResult<People.LoadPeopleResult> loadConnected(GoogleApiClient paramGoogleApiClient)
  {
    return paramGoogleApiClient.a(new kn.3(this));
  }
  
  public final PendingResult<People.LoadPeopleResult> loadVisible(GoogleApiClient paramGoogleApiClient, int paramInt, String paramString)
  {
    return paramGoogleApiClient.a(new kn.1(this, paramInt, paramString));
  }
  
  public final PendingResult<People.LoadPeopleResult> loadVisible(GoogleApiClient paramGoogleApiClient, String paramString)
  {
    return paramGoogleApiClient.a(new kn.2(this, paramString));
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.kn
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */