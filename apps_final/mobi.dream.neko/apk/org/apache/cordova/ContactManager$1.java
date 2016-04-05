package org.apache.cordova;

import org.apache.cordova.api.CallbackContext;
import org.json.JSONArray;
import org.json.JSONObject;

class ContactManager$1
  implements Runnable
{
  ContactManager$1(ContactManager paramContactManager, JSONArray paramJSONArray, JSONObject paramJSONObject, CallbackContext paramCallbackContext) {}
  
  public void run()
  {
    JSONArray localJSONArray = ContactManager.access$000(this$0).search(val$filter, val$options);
    val$callbackContext.success(localJSONArray);
  }
}

/* Location:
 * Qualified Name:     org.apache.cordova.ContactManager.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */