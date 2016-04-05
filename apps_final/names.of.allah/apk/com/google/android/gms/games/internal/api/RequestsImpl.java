package com.google.android.gms.games.internal.api;

import android.content.Intent;
import android.graphics.Bitmap;
import android.os.Bundle;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.games.Games;
import com.google.android.gms.games.internal.GamesClientImpl;
import com.google.android.gms.games.request.GameRequest;
import com.google.android.gms.games.request.OnRequestReceivedListener;
import com.google.android.gms.games.request.Requests;
import com.google.android.gms.games.request.Requests.LoadRequestsResult;
import com.google.android.gms.games.request.Requests.UpdateRequestsResult;
import java.util.ArrayList;
import java.util.List;

public final class RequestsImpl
  implements Requests
{
  public final PendingResult<Requests.UpdateRequestsResult> acceptRequest(GoogleApiClient paramGoogleApiClient, String paramString)
  {
    ArrayList localArrayList = new ArrayList();
    localArrayList.add(paramString);
    return acceptRequests(paramGoogleApiClient, localArrayList);
  }
  
  public final PendingResult<Requests.UpdateRequestsResult> acceptRequests(GoogleApiClient paramGoogleApiClient, List<String> paramList)
  {
    if (paramList == null) {}
    for (paramList = null;; paramList = (String[])paramList.toArray(new String[paramList.size()])) {
      return paramGoogleApiClient.b(new RequestsImpl.1(this, paramList));
    }
  }
  
  public final PendingResult<Requests.UpdateRequestsResult> dismissRequest(GoogleApiClient paramGoogleApiClient, String paramString)
  {
    ArrayList localArrayList = new ArrayList();
    localArrayList.add(paramString);
    return dismissRequests(paramGoogleApiClient, localArrayList);
  }
  
  public final PendingResult<Requests.UpdateRequestsResult> dismissRequests(GoogleApiClient paramGoogleApiClient, List<String> paramList)
  {
    if (paramList == null) {}
    for (paramList = null;; paramList = (String[])paramList.toArray(new String[paramList.size()])) {
      return paramGoogleApiClient.b(new RequestsImpl.2(this, paramList));
    }
  }
  
  public final ArrayList<GameRequest> getGameRequestsFromBundle(Bundle paramBundle)
  {
    if ((paramBundle == null) || (!paramBundle.containsKey("requests"))) {
      return new ArrayList();
    }
    paramBundle = (ArrayList)paramBundle.get("requests");
    ArrayList localArrayList = new ArrayList();
    int j = paramBundle.size();
    int i = 0;
    while (i < j)
    {
      localArrayList.add((GameRequest)paramBundle.get(i));
      i += 1;
    }
    return localArrayList;
  }
  
  public final ArrayList<GameRequest> getGameRequestsFromInboxResponse(Intent paramIntent)
  {
    if (paramIntent == null) {
      return new ArrayList();
    }
    return getGameRequestsFromBundle(paramIntent.getExtras());
  }
  
  public final Intent getInboxIntent(GoogleApiClient paramGoogleApiClient)
  {
    return Games.c(paramGoogleApiClient).hl();
  }
  
  public final int getMaxLifetimeDays(GoogleApiClient paramGoogleApiClient)
  {
    return Games.c(paramGoogleApiClient).hn();
  }
  
  public final int getMaxPayloadSize(GoogleApiClient paramGoogleApiClient)
  {
    return Games.c(paramGoogleApiClient).hm();
  }
  
  public final Intent getSendIntent(GoogleApiClient paramGoogleApiClient, int paramInt1, byte[] paramArrayOfByte, int paramInt2, Bitmap paramBitmap, String paramString)
  {
    return Games.c(paramGoogleApiClient).a(paramInt1, paramArrayOfByte, paramInt2, paramBitmap, paramString);
  }
  
  public final PendingResult<Requests.LoadRequestsResult> loadRequests(GoogleApiClient paramGoogleApiClient, int paramInt1, int paramInt2, int paramInt3)
  {
    return paramGoogleApiClient.a(new RequestsImpl.3(this, paramInt1, paramInt2, paramInt3));
  }
  
  public final void registerRequestListener(GoogleApiClient paramGoogleApiClient, OnRequestReceivedListener paramOnRequestReceivedListener)
  {
    Games.c(paramGoogleApiClient).a(paramOnRequestReceivedListener);
  }
  
  public final void unregisterRequestListener(GoogleApiClient paramGoogleApiClient)
  {
    Games.c(paramGoogleApiClient).hf();
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.games.internal.api.RequestsImpl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */