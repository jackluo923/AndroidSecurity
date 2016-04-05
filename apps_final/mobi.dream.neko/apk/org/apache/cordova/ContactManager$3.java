package org.apache.cordova;

import org.apache.cordova.api.CallbackContext;
import org.apache.cordova.api.PluginResult;
import org.apache.cordova.api.PluginResult.Status;

class ContactManager$3
  implements Runnable
{
  ContactManager$3(ContactManager paramContactManager, String paramString, CallbackContext paramCallbackContext) {}
  
  public void run()
  {
    if (ContactManager.access$000(this$0).remove(val$contactId))
    {
      val$callbackContext.success();
      return;
    }
    val$callbackContext.sendPluginResult(new PluginResult(PluginResult.Status.ERROR, 0));
  }
}

/* Location:
 * Qualified Name:     org.apache.cordova.ContactManager.3
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */