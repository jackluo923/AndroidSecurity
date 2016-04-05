package com.google.analytics.tracking.android;

class ClientIdDefaultProvider$1
  extends Thread
{
  ClientIdDefaultProvider$1(ClientIdDefaultProvider paramClientIdDefaultProvider, String paramString)
  {
    super(paramString);
  }
  
  public void run()
  {
    synchronized (ClientIdDefaultProvider.access$000(this$0))
    {
      ClientIdDefaultProvider.access$102(this$0, this$0.initializeClientId());
      ClientIdDefaultProvider.access$202(this$0, true);
      ClientIdDefaultProvider.access$000(this$0).notifyAll();
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.google.analytics.tracking.android.ClientIdDefaultProvider.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */