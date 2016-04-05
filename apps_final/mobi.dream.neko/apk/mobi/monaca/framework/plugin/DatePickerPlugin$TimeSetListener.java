package mobi.monaca.framework.plugin;

import android.app.TimePickerDialog.OnTimeSetListener;
import android.widget.TimePicker;
import java.util.Date;
import org.apache.cordova.api.PluginResult;
import org.apache.cordova.api.PluginResult.Status;

final class DatePickerPlugin$TimeSetListener
  implements TimePickerDialog.OnTimeSetListener
{
  private final String callBackId;
  private final DatePickerPlugin datePickerPlugin;
  
  private DatePickerPlugin$TimeSetListener(DatePickerPlugin paramDatePickerPlugin1, DatePickerPlugin paramDatePickerPlugin2, String paramString)
  {
    datePickerPlugin = paramDatePickerPlugin2;
    callBackId = paramString;
  }
  
  public void onTimeSet(TimePicker paramTimePicker, int paramInt1, int paramInt2)
  {
    paramTimePicker = new Date();
    paramTimePicker.setHours(paramInt1);
    paramTimePicker.setMinutes(paramInt2);
    datePickerPlugin.success(new PluginResult(PluginResult.Status.OK, paramTimePicker.toLocaleString()), callBackId);
  }
}

/* Location:
 * Qualified Name:     mobi.monaca.framework.plugin.DatePickerPlugin.TimeSetListener
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */