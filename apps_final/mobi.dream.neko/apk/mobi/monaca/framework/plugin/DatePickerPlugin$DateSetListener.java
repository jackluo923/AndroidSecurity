package mobi.monaca.framework.plugin;

import android.app.DatePickerDialog.OnDateSetListener;
import android.widget.DatePicker;
import org.apache.cordova.api.PluginResult;
import org.apache.cordova.api.PluginResult.Status;

final class DatePickerPlugin$DateSetListener
  implements DatePickerDialog.OnDateSetListener
{
  private final String callBackId;
  private final DatePickerPlugin datePickerPlugin;
  
  private DatePickerPlugin$DateSetListener(DatePickerPlugin paramDatePickerPlugin1, DatePickerPlugin paramDatePickerPlugin2, String paramString)
  {
    datePickerPlugin = paramDatePickerPlugin2;
    callBackId = paramString;
  }
  
  public void onDateSet(DatePicker paramDatePicker, int paramInt1, int paramInt2, int paramInt3)
  {
    paramDatePicker = paramInt1 + "/" + (paramInt2 + 1) + "/" + paramInt3;
    datePickerPlugin.success(new PluginResult(PluginResult.Status.OK, paramDatePicker), callBackId);
  }
}

/* Location:
 * Qualified Name:     mobi.monaca.framework.plugin.DatePickerPlugin.DateSetListener
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */