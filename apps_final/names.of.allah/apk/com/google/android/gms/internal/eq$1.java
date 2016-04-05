package com.google.android.gms.internal;

import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;

class eq$1
  implements DialogInterface.OnClickListener
{
  eq$1(eq parameq, String paramString) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    eq.a(sr).startActivity(Intent.createChooser(new Intent("android.intent.action.SEND").setType("text/plain").putExtra("android.intent.extra.TEXT", sq), "Share via"));
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.eq.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */