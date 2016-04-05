package com.google.android.gms.internal;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.IBinder;

public final class cx
  extends dg.a
  implements ServiceConnection
{
  private Context mContext;
  private cs oW;
  private String pd;
  private cw ph;
  private boolean pm = false;
  private int pn;
  private Intent po;
  
  public cx(Context paramContext, String paramString, boolean paramBoolean, int paramInt, Intent paramIntent, cw paramcw)
  {
    pd = paramString;
    pn = paramInt;
    po = paramIntent;
    pm = paramBoolean;
    mContext = paramContext;
    ph = paramcw;
  }
  
  public final void finishPurchase()
  {
    int i = cz.c(po);
    if ((pn != -1) || (i != 0)) {
      return;
    }
    oW = new cs(mContext);
    Context localContext1 = mContext;
    Intent localIntent = new Intent("com.android.vending.billing.InAppBillingService.BIND");
    Context localContext2 = mContext;
    localContext1.bindService(localIntent, this, 1);
  }
  
  public final String getProductId()
  {
    return pd;
  }
  
  public final Intent getPurchaseData()
  {
    return po;
  }
  
  public final int getResultCode()
  {
    return pn;
  }
  
  public final boolean isVerified()
  {
    return pm;
  }
  
  public final void onServiceConnected(ComponentName paramComponentName, IBinder paramIBinder)
  {
    ev.B("In-app billing service connected.");
    oW.o(paramIBinder);
    paramComponentName = cz.q(cz.d(po));
    if (paramComponentName == null) {
      return;
    }
    if (oW.a(mContext.getPackageName(), paramComponentName) == 0) {
      cy.h(mContext).a(ph);
    }
    mContext.unbindService(this);
    oW.destroy();
  }
  
  public final void onServiceDisconnected(ComponentName paramComponentName)
  {
    ev.B("In-app billing service disconnected.");
    oW.destroy();
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.cx
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */