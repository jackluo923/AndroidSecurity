package com.google.android.gms.drive.metadata.internal;

import android.os.Bundle;
import android.os.Parcelable;
import com.google.android.gms.drive.metadata.a;
import java.util.Collection;

public abstract class j<T extends Parcelable>
  extends a<T>
{
  public j(String paramString, Collection<String> paramCollection1, Collection<String> paramCollection2, int paramInt)
  {
    super(paramString, paramCollection1, paramCollection2, paramInt);
  }
  
  protected void a(Bundle paramBundle, T paramT)
  {
    paramBundle.putParcelable(getName(), paramT);
  }
  
  protected T l(Bundle paramBundle)
  {
    return paramBundle.getParcelable(getName());
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.drive.metadata.internal.j
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */