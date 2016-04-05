package com.google.android.gms.plus;

import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.plus.model.people.PersonBuffer;

@Deprecated
public abstract interface PlusClient$OnPeopleLoadedListener
{
  public abstract void onPeopleLoaded(ConnectionResult paramConnectionResult, PersonBuffer paramPersonBuffer, String paramString);
}

/* Location:
 * Qualified Name:     com.google.android.gms.plus.PlusClient.OnPeopleLoadedListener
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */