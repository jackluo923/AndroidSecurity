package org.apache.cordova.api;

import java.util.concurrent.atomic.AtomicInteger;

class PluginManager$PluginManagerService$1
  implements Runnable
{
  PluginManager$PluginManagerService$1(PluginManager.PluginManagerService paramPluginManagerService) {}
  
  public void run()
  {
    PluginManager.access$200(this$1.this$0).getAndDecrement();
  }
}

/* Location:
 * Qualified Name:     org.apache.cordova.api.PluginManager.PluginManagerService.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */