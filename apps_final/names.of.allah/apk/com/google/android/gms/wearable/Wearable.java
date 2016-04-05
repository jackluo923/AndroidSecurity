package com.google.android.gms.wearable;

import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.Api.b;
import com.google.android.gms.common.api.Api.c;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.wearable.internal.ae;
import com.google.android.gms.wearable.internal.ah;
import com.google.android.gms.wearable.internal.au;
import com.google.android.gms.wearable.internal.e;
import com.google.android.gms.wearable.internal.f;

public class Wearable
{
  public static final Api<Wearable.WearableOptions> API = new Api(yF, yE, new Scope[0]);
  public static final DataApi DataApi = new f();
  public static final MessageApi MessageApi = new ae();
  public static final NodeApi NodeApi = new ah();
  public static final b alm = new e();
  public static final Api.c<au> yE = new Api.c();
  private static final Api.b<au, Wearable.WearableOptions> yF = new Wearable.1();
}

/* Location:
 * Qualified Name:     com.google.android.gms.wearable.Wearable
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */