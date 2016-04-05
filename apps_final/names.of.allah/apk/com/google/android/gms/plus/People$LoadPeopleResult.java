package com.google.android.gms.plus;

import com.google.android.gms.common.api.Releasable;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.plus.model.people.PersonBuffer;

public abstract interface People$LoadPeopleResult
  extends Releasable, Result
{
  public abstract String getNextPageToken();
  
  public abstract PersonBuffer getPersonBuffer();
}

/* Location:
 * Qualified Name:     com.google.android.gms.plus.People.LoadPeopleResult
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */