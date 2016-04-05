package com.google.android.gms.games.internal;

import android.os.IInterface;

public abstract interface IGamesSignInService
  extends IInterface
{
  public abstract void a(IGamesSignInCallbacks paramIGamesSignInCallbacks, String paramString1, String paramString2);
  
  public abstract void a(IGamesSignInCallbacks paramIGamesSignInCallbacks, String paramString1, String paramString2, String paramString3);
  
  public abstract void a(IGamesSignInCallbacks paramIGamesSignInCallbacks, String paramString1, String paramString2, String[] paramArrayOfString);
  
  public abstract void a(IGamesSignInCallbacks paramIGamesSignInCallbacks, String paramString1, String paramString2, String[] paramArrayOfString, String paramString3);
  
  public abstract void b(IGamesSignInCallbacks paramIGamesSignInCallbacks, String paramString1, String paramString2, String paramString3);
  
  public abstract void b(IGamesSignInCallbacks paramIGamesSignInCallbacks, String paramString1, String paramString2, String[] paramArrayOfString);
  
  public abstract String bc(String paramString);
  
  public abstract String bd(String paramString);
  
  public abstract String f(String paramString, boolean paramBoolean);
  
  public abstract void o(String paramString1, String paramString2);
}

/* Location:
 * Qualified Name:     com.google.android.gms.games.internal.IGamesSignInService
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */