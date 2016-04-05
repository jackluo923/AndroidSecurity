package com.google.android.gms.drive;

import android.os.Bundle;
import com.google.android.gms.common.api.Api.ApiOptions.Optional;

public class Drive$b
  implements Api.ApiOptions.Optional
{
  private final Bundle HJ;
  
  private Drive$b()
  {
    this(new Bundle());
  }
  
  private Drive$b(Bundle paramBundle)
  {
    HJ = paramBundle;
  }
  
  public Bundle ge()
  {
    return HJ;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.drive.Drive.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */