package com.google.android.gms.drive.metadata.internal;

import android.os.Bundle;
import com.google.android.gms.common.data.DataHolder;
import java.util.Date;

public class d
  extends com.google.android.gms.drive.metadata.d<Date>
{
  public d(String paramString, int paramInt)
  {
    super(paramString, paramInt);
  }
  
  protected void a(Bundle paramBundle, Date paramDate)
  {
    paramBundle.putLong(getName(), paramDate.getTime());
  }
  
  protected Date e(DataHolder paramDataHolder, int paramInt1, int paramInt2)
  {
    return new Date(paramDataHolder.a(getName(), paramInt1, paramInt2));
  }
  
  protected Date h(Bundle paramBundle)
  {
    return new Date(paramBundle.getLong(getName()));
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.drive.metadata.internal.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */