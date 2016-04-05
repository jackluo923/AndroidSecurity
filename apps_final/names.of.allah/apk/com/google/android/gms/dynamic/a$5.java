package com.google.android.gms.dynamic;

import android.content.Context;
import android.view.View;
import android.view.View.OnClickListener;
import com.google.android.gms.common.GooglePlayServicesUtil;

final class a$5
  implements View.OnClickListener
{
  a$5(Context paramContext, int paramInt) {}
  
  public final void onClick(View paramView)
  {
    qr.startActivity(GooglePlayServicesUtil.c(qr, Mf));
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.dynamic.a.5
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */