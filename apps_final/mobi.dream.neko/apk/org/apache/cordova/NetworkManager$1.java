package org.apache.cordova;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.net.ConnectivityManager;

class NetworkManager$1
  extends BroadcastReceiver
{
  NetworkManager$1(NetworkManager paramNetworkManager) {}
  
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    if (this$0.webView != null) {
      NetworkManager.access$000(this$0, this$0.sockMan.getActiveNetworkInfo());
    }
  }
}

/* Location:
 * Qualified Name:     org.apache.cordova.NetworkManager.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */