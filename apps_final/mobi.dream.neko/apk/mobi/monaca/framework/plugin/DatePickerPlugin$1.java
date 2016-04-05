package mobi.monaca.framework.plugin;

import android.app.TimePickerDialog;
import org.apache.cordova.DroidGap;

class DatePickerPlugin$1
  implements Runnable
{
  DatePickerPlugin$1(DatePickerPlugin paramDatePickerPlugin1, DatePickerPlugin paramDatePickerPlugin2, String paramString, DroidGap paramDroidGap, int paramInt1, int paramInt2) {}
  
  public void run()
  {
    DatePickerPlugin.TimeSetListener localTimeSetListener = new DatePickerPlugin.TimeSetListener(this$0, val$datePickerPlugin, val$callBackId, null);
    new TimePickerDialog(val$currentCtx, localTimeSetListener, val$mHour, val$mMinutes, true).show();
  }
}

/* Location:
 * Qualified Name:     mobi.monaca.framework.plugin.DatePickerPlugin.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */