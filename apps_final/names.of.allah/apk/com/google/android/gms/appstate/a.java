package com.google.android.gms.appstate;

import com.google.android.gms.internal.hl;
import com.google.android.gms.internal.hl.a;

public final class a
  implements AppState
{
  private final byte[] yA;
  private final boolean yB;
  private final String yC;
  private final byte[] yD;
  private final int yy;
  private final String yz;
  
  public a(AppState paramAppState)
  {
    yy = paramAppState.getKey();
    yz = paramAppState.getLocalVersion();
    yA = paramAppState.getLocalData();
    yB = paramAppState.hasConflict();
    yC = paramAppState.getConflictVersion();
    yD = paramAppState.getConflictData();
  }
  
  static int a(AppState paramAppState)
  {
    return hl.hashCode(new Object[] { Integer.valueOf(paramAppState.getKey()), paramAppState.getLocalVersion(), paramAppState.getLocalData(), Boolean.valueOf(paramAppState.hasConflict()), paramAppState.getConflictVersion(), paramAppState.getConflictData() });
  }
  
  static boolean a(AppState paramAppState, Object paramObject)
  {
    if (!(paramObject instanceof AppState)) {}
    do
    {
      return false;
      if (paramAppState == paramObject) {
        return true;
      }
      paramObject = (AppState)paramObject;
    } while ((!hl.equal(Integer.valueOf(((AppState)paramObject).getKey()), Integer.valueOf(paramAppState.getKey()))) || (!hl.equal(((AppState)paramObject).getLocalVersion(), paramAppState.getLocalVersion())) || (!hl.equal(((AppState)paramObject).getLocalData(), paramAppState.getLocalData())) || (!hl.equal(Boolean.valueOf(((AppState)paramObject).hasConflict()), Boolean.valueOf(paramAppState.hasConflict()))) || (!hl.equal(((AppState)paramObject).getConflictVersion(), paramAppState.getConflictVersion())) || (!hl.equal(((AppState)paramObject).getConflictData(), paramAppState.getConflictData())));
    return true;
  }
  
  static String b(AppState paramAppState)
  {
    return hl.e(paramAppState).a("Key", Integer.valueOf(paramAppState.getKey())).a("LocalVersion", paramAppState.getLocalVersion()).a("LocalData", paramAppState.getLocalData()).a("HasConflict", Boolean.valueOf(paramAppState.hasConflict())).a("ConflictVersion", paramAppState.getConflictVersion()).a("ConflictData", paramAppState.getConflictData()).toString();
  }
  
  public final AppState dN()
  {
    return this;
  }
  
  public final boolean equals(Object paramObject)
  {
    return a(this, paramObject);
  }
  
  public final byte[] getConflictData()
  {
    return yD;
  }
  
  public final String getConflictVersion()
  {
    return yC;
  }
  
  public final int getKey()
  {
    return yy;
  }
  
  public final byte[] getLocalData()
  {
    return yA;
  }
  
  public final String getLocalVersion()
  {
    return yz;
  }
  
  public final boolean hasConflict()
  {
    return yB;
  }
  
  public final int hashCode()
  {
    return a(this);
  }
  
  public final boolean isDataValid()
  {
    return true;
  }
  
  public final String toString()
  {
    return b(this);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.appstate.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */