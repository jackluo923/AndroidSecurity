package com.google.android.gms.gcm;

import android.content.Intent;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import java.util.concurrent.BlockingQueue;

class GoogleCloudMessaging$1
  extends Handler
{
  GoogleCloudMessaging$1(GoogleCloudMessaging paramGoogleCloudMessaging, Looper paramLooper)
  {
    super(paramLooper);
  }
  
  public void handleMessage(Message paramMessage)
  {
    paramMessage = (Intent)obj;
    Uu.Ur.add(paramMessage);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.gcm.GoogleCloudMessaging.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */