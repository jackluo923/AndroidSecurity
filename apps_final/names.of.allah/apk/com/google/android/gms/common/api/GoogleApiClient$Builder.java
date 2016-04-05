package com.google.android.gms.common.api;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentActivity;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTransaction;
import android.view.View;
import com.google.android.gms.internal.gz;
import com.google.android.gms.internal.hn;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

public final class GoogleApiClient$Builder
{
  private Looper DC;
  private final Set<String> DE = new HashSet();
  private int DF;
  private View DG;
  private String DH;
  private final Map<Api<?>, Api.ApiOptions> DI = new HashMap();
  private FragmentActivity DJ;
  private GoogleApiClient.OnConnectionFailedListener DK;
  private final Set<GoogleApiClient.ConnectionCallbacks> DL = new HashSet();
  private final Set<GoogleApiClient.OnConnectionFailedListener> DM = new HashSet();
  private final Context mContext;
  private String yN;
  
  public GoogleApiClient$Builder(Context paramContext)
  {
    mContext = paramContext;
    DC = paramContext.getMainLooper();
    DH = paramContext.getPackageName();
  }
  
  public GoogleApiClient$Builder(Context paramContext, GoogleApiClient.ConnectionCallbacks paramConnectionCallbacks, GoogleApiClient.OnConnectionFailedListener paramOnConnectionFailedListener)
  {
    this(paramContext);
    hn.b(paramConnectionCallbacks, "Must provide a connected listener");
    DL.add(paramConnectionCallbacks);
    hn.b(paramOnConnectionFailedListener, "Must provide a connection failed listener");
    DM.add(paramOnConnectionFailedListener);
  }
  
  private d eE()
  {
    FragmentManager localFragmentManager = DJ.getSupportFragmentManager();
    if (localFragmentManager.getFragments() != null)
    {
      localObject = localFragmentManager.getFragments().iterator();
      while (((Iterator)localObject).hasNext())
      {
        Fragment localFragment = (Fragment)((Iterator)localObject).next();
        if (((localFragment instanceof d)) && (localFragment.isAdded()) && (!((d)localFragment).isInitialized())) {
          return (d)localFragment;
        }
      }
    }
    Object localObject = new d();
    localFragmentManager.beginTransaction().add((Fragment)localObject, null).commit();
    return (d)localObject;
  }
  
  public final Builder addApi(Api<? extends Api.ApiOptions.NotRequiredOptions> paramApi)
  {
    DI.put(paramApi, null);
    paramApi = paramApi.ev();
    int j = paramApi.size();
    int i = 0;
    while (i < j)
    {
      DE.add(((Scope)paramApi.get(i)).eK());
      i += 1;
    }
    return this;
  }
  
  public final <O extends Api.ApiOptions.HasOptions> Builder addApi(Api<O> paramApi, O paramO)
  {
    hn.b(paramO, "Null options are not permitted for this Api");
    DI.put(paramApi, paramO);
    paramApi = paramApi.ev();
    int j = paramApi.size();
    int i = 0;
    while (i < j)
    {
      DE.add(((Scope)paramApi.get(i)).eK());
      i += 1;
    }
    return this;
  }
  
  public final Builder addConnectionCallbacks(GoogleApiClient.ConnectionCallbacks paramConnectionCallbacks)
  {
    DL.add(paramConnectionCallbacks);
    return this;
  }
  
  public final Builder addOnConnectionFailedListener(GoogleApiClient.OnConnectionFailedListener paramOnConnectionFailedListener)
  {
    DM.add(paramOnConnectionFailedListener);
    return this;
  }
  
  public final Builder addScope(Scope paramScope)
  {
    DE.add(paramScope.eK());
    return this;
  }
  
  public final GoogleApiClient build()
  {
    if (!DI.isEmpty()) {}
    for (boolean bool = true;; bool = false)
    {
      hn.b(bool, "must call addApi() to add at least one API");
      d locald = null;
      if (DJ != null) {
        locald = eE();
      }
      c localc = new c(mContext, DC, eD(), DI, locald, DL, DM);
      if (locald != null) {
        locald.a(localc, DK);
      }
      return localc;
    }
  }
  
  public final gz eD()
  {
    return new gz(yN, DE, DF, DG, DH);
  }
  
  public final Builder enableAutoManage(FragmentActivity paramFragmentActivity, GoogleApiClient.OnConnectionFailedListener paramOnConnectionFailedListener)
  {
    DJ = ((FragmentActivity)hn.b(paramFragmentActivity, "Null activity is not permitted."));
    DK = paramOnConnectionFailedListener;
    return this;
  }
  
  public final Builder setAccountName(String paramString)
  {
    yN = paramString;
    return this;
  }
  
  public final Builder setGravityForPopups(int paramInt)
  {
    DF = paramInt;
    return this;
  }
  
  public final Builder setHandler(Handler paramHandler)
  {
    hn.b(paramHandler, "Handler must not be null");
    DC = paramHandler.getLooper();
    return this;
  }
  
  public final Builder setViewForPopups(View paramView)
  {
    DG = paramView;
    return this;
  }
  
  public final Builder useDefaultAccount()
  {
    return setAccountName("<<default account>>");
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.common.api.GoogleApiClient.Builder
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */