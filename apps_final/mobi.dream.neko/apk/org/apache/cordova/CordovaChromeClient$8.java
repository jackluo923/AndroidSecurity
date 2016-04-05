package org.apache.cordova;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.webkit.JsPromptResult;
import android.widget.EditText;

class CordovaChromeClient$8
  implements DialogInterface.OnClickListener
{
  CordovaChromeClient$8(CordovaChromeClient paramCordovaChromeClient, EditText paramEditText, JsPromptResult paramJsPromptResult) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    paramDialogInterface = val$input.getText().toString();
    val$res.confirm(paramDialogInterface);
  }
}

/* Location:
 * Qualified Name:     org.apache.cordova.CordovaChromeClient.8
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */