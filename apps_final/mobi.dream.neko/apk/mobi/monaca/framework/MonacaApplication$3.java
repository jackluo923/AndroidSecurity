package mobi.monaca.framework;

import android.content.DialogInterface;
import android.content.DialogInterface.OnCancelListener;

class MonacaApplication$3
  implements DialogInterface.OnCancelListener
{
  MonacaApplication$3(MonacaApplication paramMonacaApplication) {}
  
  public void onCancel(DialogInterface paramDialogInterface)
  {
    if (MonacaApplication.access$000(this$0) != null) {
      MonacaApplication.access$002(this$0, null);
    }
  }
}

/* Location:
 * Qualified Name:     mobi.monaca.framework.MonacaApplication.3
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */