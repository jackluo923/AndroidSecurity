package com.google.android.gms.wearable;

import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Status;

public abstract interface MessageApi
{
  public static final int UNKNOWN_REQUEST_ID = -1;
  
  public abstract PendingResult<Status> addListener(GoogleApiClient paramGoogleApiClient, MessageApi.MessageListener paramMessageListener);
  
  public abstract PendingResult<Status> removeListener(GoogleApiClient paramGoogleApiClient, MessageApi.MessageListener paramMessageListener);
  
  public abstract PendingResult<MessageApi.SendMessageResult> sendMessage(GoogleApiClient paramGoogleApiClient, String paramString1, String paramString2, byte[] paramArrayOfByte);
}

/* Location:
 * Qualified Name:     com.google.android.gms.wearable.MessageApi
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */