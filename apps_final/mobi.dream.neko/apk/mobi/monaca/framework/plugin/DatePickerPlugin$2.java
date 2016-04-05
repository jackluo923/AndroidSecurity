package mobi.monaca.framework.plugin;

import android.app.DatePickerDialog;
import org.apache.cordova.DroidGap;

class DatePickerPlugin$2
  implements Runnable
{
  DatePickerPlugin$2(DatePickerPlugin paramDatePickerPlugin1, DatePickerPlugin paramDatePickerPlugin2, String paramString, DroidGap paramDroidGap, int paramInt1, int paramInt2, int paramInt3) {}
  
  public void run()
  {
    DatePickerPlugin.DateSetListener localDateSetListener = new DatePickerPlugin.DateSetListener(this$0, val$datePickerPlugin, val$callBackId, null);
    new DatePickerDialog(val$currentCtx, localDateSetListener, val$mYear, val$mMonth, val$mDay).show();
  }
}

/* Location:
 * Qualified Name:     mobi.monaca.framework.plugin.DatePickerPlugin.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */