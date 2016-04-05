package com.google.android.gms.internal;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.webkit.JsPromptResult;
import android.widget.EditText;

final class fa$6
  implements DialogInterface.OnClickListener
{
  fa$6(JsPromptResult paramJsPromptResult, EditText paramEditText) {}
  
  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    sN.confirm(sO.getText().toString());
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.fa.6
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */