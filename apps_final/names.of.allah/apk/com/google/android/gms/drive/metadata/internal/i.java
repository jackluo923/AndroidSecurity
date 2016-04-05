package com.google.android.gms.drive.metadata.internal;

import android.os.Bundle;
import android.os.Parcelable;
import com.google.android.gms.drive.metadata.b;
import java.util.ArrayList;
import java.util.Collection;

public class i<T extends Parcelable>
  extends b<T>
{
  public i(String paramString, int paramInt)
  {
    super(paramString, paramInt);
  }
  
  protected void a(Bundle paramBundle, Collection<T> paramCollection)
  {
    paramBundle.putParcelableArrayList(getName(), new ArrayList(paramCollection));
  }
  
  protected Collection<T> k(Bundle paramBundle)
  {
    return paramBundle.getParcelableArrayList(getName());
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.drive.metadata.internal.i
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */