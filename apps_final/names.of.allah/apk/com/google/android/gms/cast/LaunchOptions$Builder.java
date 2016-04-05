package com.google.android.gms.cast;

import com.google.android.gms.internal.gj;
import java.util.Locale;

public final class LaunchOptions$Builder
{
  private LaunchOptions Ap = new LaunchOptions();
  
  public final LaunchOptions build()
  {
    return Ap;
  }
  
  public final Builder setLocale(Locale paramLocale)
  {
    Ap.setLanguage(gj.b(paramLocale));
    return this;
  }
  
  public final Builder setRelaunchIfRunning(boolean paramBoolean)
  {
    Ap.setRelaunchIfRunning(paramBoolean);
    return this;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.cast.LaunchOptions.Builder
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */