package com.google.android.gms.wearable.internal;

import android.content.IntentFilter;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.wearable.MessageApi;
import com.google.android.gms.wearable.MessageApi.MessageListener;
import com.google.android.gms.wearable.MessageApi.SendMessageResult;

public final class ae
  implements MessageApi
{
  private PendingResult<Status> a(GoogleApiClient paramGoogleApiClient, MessageApi.MessageListener paramMessageListener, IntentFilter[] paramArrayOfIntentFilter)
  {
    return paramGoogleApiClient.a(new ae.2(this, paramMessageListener, paramArrayOfIntentFilter));
  }
  
  public final PendingResult<Status> addListener(GoogleApiClient paramGoogleApiClient, MessageApi.MessageListener paramMessageListener)
  {
    return a(paramGoogleApiClient, paramMessageListener, null);
  }
  
  public final PendingResult<Status> removeListener(GoogleApiClient paramGoogleApiClient, MessageApi.MessageListener paramMessageListener)
  {
    return paramGoogleApiClient.a(new ae.3(this, paramMessageListener));
  }
  
  public final PendingResult<MessageApi.SendMessageResult> sendMessage(GoogleApiClient paramGoogleApiClient, String paramString1, String paramString2, byte[] paramArrayOfByte)
  {
    return paramGoogleApiClient.a(new ae.1(this, paramString1, paramString2, paramArrayOfByte));
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.wearable.internal.ae
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */