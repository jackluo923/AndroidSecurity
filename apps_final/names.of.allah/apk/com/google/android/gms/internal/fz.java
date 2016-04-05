package com.google.android.gms.internal;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.net.Uri.Builder;
import com.google.android.gms.appindexing.AppIndexApi;
import com.google.android.gms.appindexing.AppIndexApi.AppIndexingLink;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Status;
import java.util.List;

public final class fz
  implements AppIndexApi, fu
{
  static Uri a(String paramString, Uri paramUri)
  {
    if (!"android-app".equals(paramUri.getScheme())) {
      throw new IllegalArgumentException("Uri scheme must be android-app: " + paramUri);
    }
    if (!paramString.equals(paramUri.getHost())) {
      throw new IllegalArgumentException("Uri host must match package name: " + paramUri);
    }
    paramString = paramUri.getPathSegments();
    if ((paramString.isEmpty()) || (((String)paramString.get(0)).isEmpty())) {
      throw new IllegalArgumentException("Uri path must exist: " + paramUri);
    }
    String str = (String)paramString.get(0);
    Uri.Builder localBuilder = new Uri.Builder();
    localBuilder.scheme(str);
    if (paramString.size() > 1)
    {
      localBuilder.authority((String)paramString.get(1));
      int i = 2;
      while (i < paramString.size())
      {
        localBuilder.appendPath((String)paramString.get(i));
        i += 1;
      }
    }
    localBuilder.encodedQuery(paramUri.getEncodedQuery());
    localBuilder.encodedFragment(paramUri.getEncodedFragment());
    return localBuilder.build();
  }
  
  public final PendingResult<Status> a(GoogleApiClient paramGoogleApiClient, fs... paramVarArgs)
  {
    return paramGoogleApiClient.a(new fz.2(this, ((fy)paramGoogleApiClient.a(fg.xF)).getContext().getPackageName(), paramVarArgs));
  }
  
  public final PendingResult<Status> view(GoogleApiClient paramGoogleApiClient, Activity paramActivity, Intent paramIntent, String paramString, Uri paramUri, List<AppIndexApi.AppIndexingLink> paramList)
  {
    return a(paramGoogleApiClient, new fs[] { new fs(((fy)paramGoogleApiClient.a(fg.xF)).getContext().getPackageName(), paramIntent, paramString, paramUri, null, paramList) });
  }
  
  public final PendingResult<Status> view(GoogleApiClient paramGoogleApiClient, Activity paramActivity, Uri paramUri1, String paramString, Uri paramUri2, List<AppIndexApi.AppIndexingLink> paramList)
  {
    return view(paramGoogleApiClient, paramActivity, new Intent("android.intent.action.VIEW", a(((fy)paramGoogleApiClient.a(fg.xF)).getContext().getPackageName(), paramUri1)), paramString, paramUri2, paramList);
  }
  
  public final PendingResult<Status> viewEnd(GoogleApiClient paramGoogleApiClient, Activity paramActivity, Intent paramIntent)
  {
    return a(paramGoogleApiClient, new fs[] { new fs(fs.a(((fy)paramGoogleApiClient.a(fg.xF)).getContext().getPackageName(), paramIntent), System.currentTimeMillis(), 3) });
  }
  
  public final PendingResult<Status> viewEnd(GoogleApiClient paramGoogleApiClient, Activity paramActivity, Uri paramUri)
  {
    return viewEnd(paramGoogleApiClient, paramActivity, new Intent("android.intent.action.VIEW", a(((fy)paramGoogleApiClient.a(fg.xF)).getContext().getPackageName(), paramUri)));
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.fz
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */