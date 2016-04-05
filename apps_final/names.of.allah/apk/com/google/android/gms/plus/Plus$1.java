package com.google.android.gms.plus;

import android.content.Context;
import android.os.Looper;
import com.google.android.gms.common.api.Api.b;
import com.google.android.gms.common.api.GoogleApiClient.ConnectionCallbacks;
import com.google.android.gms.common.api.GoogleApiClient.OnConnectionFailedListener;
import com.google.android.gms.internal.gz;
import com.google.android.gms.plus.internal.PlusCommonExtras;
import com.google.android.gms.plus.internal.e;
import com.google.android.gms.plus.internal.h;
import java.util.Set;

final class Plus$1
  implements Api.b<e, Plus.PlusOptions>
{
  public final e a(Context paramContext, Looper paramLooper, gz paramgz, Plus.PlusOptions paramPlusOptions, GoogleApiClient.ConnectionCallbacks paramConnectionCallbacks, GoogleApiClient.OnConnectionFailedListener paramOnConnectionFailedListener)
  {
    Object localObject = paramPlusOptions;
    if (paramPlusOptions == null) {
      localObject = new Plus.PlusOptions(null);
    }
    paramPlusOptions = paramgz.fe();
    paramgz = paramgz.fh();
    localObject = (String[])abp.toArray(new String[0]);
    String str1 = paramContext.getPackageName();
    String str2 = paramContext.getPackageName();
    PlusCommonExtras localPlusCommonExtras = new PlusCommonExtras();
    return new e(paramContext, paramLooper, paramConnectionCallbacks, paramOnConnectionFailedListener, new h(paramPlusOptions, paramgz, (String[])localObject, new String[0], str1, str2, null, localPlusCommonExtras));
  }
  
  public final int getPriority()
  {
    return 2;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.plus.Plus.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */