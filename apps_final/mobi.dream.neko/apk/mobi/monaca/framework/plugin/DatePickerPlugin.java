package mobi.monaca.framework.plugin;

import android.app.DatePickerDialog;
import android.app.DatePickerDialog.OnDateSetListener;
import android.app.TimePickerDialog;
import android.app.TimePickerDialog.OnTimeSetListener;
import android.util.Log;
import android.widget.DatePicker;
import android.widget.TimePicker;
import java.util.Calendar;
import java.util.Date;
import org.apache.cordova.DroidGap;
import org.apache.cordova.api.LegacyContext;
import org.apache.cordova.api.Plugin;
import org.apache.cordova.api.PluginResult;
import org.apache.cordova.api.PluginResult.Status;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class DatePickerPlugin
  extends Plugin
{
  private static final String ACTION_DATE = "date";
  private static final String ACTION_TIME = "time";
  private final String pluginName = "DatePickerPlugin";
  
  public PluginResult execute(String paramString1, JSONArray paramJSONArray, String paramString2)
  {
    Log.d("DatePickerPlugin", "DatePicker called with options: " + paramJSONArray);
    show(paramJSONArray, paramString2);
    paramString1 = new PluginResult(PluginResult.Status.NO_RESULT);
    paramString1.setKeepCallback(true);
    return paramString1;
  }
  
  public void show(JSONArray paramJSONArray, final String paramString)
  {
    for (;;)
    {
      final DroidGap localDroidGap;
      final int i;
      int i4;
      Object localObject1;
      final int n;
      final int m;
      final int k;
      try
      {
        localDroidGap = (DroidGap)ctx.getContext();
        Calendar localCalendar = Calendar.getInstance();
        Object localObject2 = "date";
        i = -1;
        int i1 = -1;
        int i3 = -1;
        int i2 = -1;
        i4 = -1;
        localObject1 = localObject2;
        n = i1;
        final int j = i2;
        m = i;
        k = i3;
        try
        {
          JSONObject localJSONObject = paramJSONArray.getJSONObject(0);
          localObject1 = localObject2;
          n = i1;
          j = i2;
          m = i;
          k = i3;
          paramJSONArray = localJSONObject.getString("mode");
          localObject1 = paramJSONArray;
          n = i1;
          j = i2;
          m = i;
          k = i3;
          localObject2 = localJSONObject.getString("date").split("/");
          localObject1 = paramJSONArray;
          n = i1;
          j = i2;
          m = i;
          k = i3;
          i = Integer.parseInt(localObject2[0]);
          localObject1 = paramJSONArray;
          n = i1;
          j = i2;
          m = i;
          k = i3;
          i1 = Integer.parseInt(localObject2[1]);
          localObject1 = paramJSONArray;
          n = i1;
          j = i2;
          m = i;
          k = i3;
          i3 = Integer.parseInt(localObject2[2]);
          localObject1 = paramJSONArray;
          n = i1;
          j = i2;
          m = i;
          k = i3;
          i2 = Integer.parseInt(localObject2[3]);
          localObject1 = paramJSONArray;
          n = i1;
          j = i2;
          m = i;
          k = i3;
          int i5 = Integer.parseInt(localObject2[4]);
          j = i5;
          k = i3;
          m = i;
          i = j;
          j = i2;
          n = i1;
        }
        catch (JSONException paramJSONArray)
        {
          paramJSONArray.printStackTrace();
          paramJSONArray = (JSONArray)localObject1;
          i = i4;
          continue;
        }
        if (k == -1)
        {
          k = localCalendar.get(1);
          if (m != -1) {
            break label413;
          }
          m = localCalendar.get(2);
          if (n != -1) {
            break label422;
          }
          n = localCalendar.get(5);
          if (j != -1) {
            break label425;
          }
          j = localCalendar.get(11);
          if (i != -1) {
            break label428;
          }
          i = localCalendar.get(12);
          if (!"time".equalsIgnoreCase(paramJSONArray)) {
            break label431;
          }
          paramJSONArray = new Runnable()
          {
            public void run()
            {
              DatePickerPlugin.TimeSetListener localTimeSetListener = new DatePickerPlugin.TimeSetListener(DatePickerPlugin.this, jdField_this, paramString, null);
              new TimePickerDialog(localDroidGap, localTimeSetListener, j, i, true).show();
            }
          };
          ctx.runOnUiThread(paramJSONArray);
          return;
        }
      }
      finally {}
      continue;
      label413:
      m -= 1;
      continue;
      label422:
      continue;
      label425:
      continue;
      label428:
      continue;
      label431:
      if ("date".equalsIgnoreCase(paramJSONArray)) {
        paramJSONArray = new Runnable()
        {
          public void run()
          {
            DatePickerPlugin.DateSetListener localDateSetListener = new DatePickerPlugin.DateSetListener(DatePickerPlugin.this, jdField_this, paramString, null);
            new DatePickerDialog(localDroidGap, localDateSetListener, k, m, n).show();
          }
        };
      } else {
        Log.d("DatePickerPlugin", "Unknown action. Only 'date' or 'time' are valid actions");
      }
    }
  }
  
  private final class DateSetListener
    implements DatePickerDialog.OnDateSetListener
  {
    private final String callBackId;
    private final DatePickerPlugin datePickerPlugin;
    
    private DateSetListener(DatePickerPlugin paramDatePickerPlugin, String paramString)
    {
      datePickerPlugin = paramDatePickerPlugin;
      callBackId = paramString;
    }
    
    public void onDateSet(DatePicker paramDatePicker, int paramInt1, int paramInt2, int paramInt3)
    {
      paramDatePicker = paramInt1 + "/" + (paramInt2 + 1) + "/" + paramInt3;
      datePickerPlugin.success(new PluginResult(PluginResult.Status.OK, paramDatePicker), callBackId);
    }
  }
  
  private final class TimeSetListener
    implements TimePickerDialog.OnTimeSetListener
  {
    private final String callBackId;
    private final DatePickerPlugin datePickerPlugin;
    
    private TimeSetListener(DatePickerPlugin paramDatePickerPlugin, String paramString)
    {
      datePickerPlugin = paramDatePickerPlugin;
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
}

/* Location:
 * Qualified Name:     mobi.monaca.framework.plugin.DatePickerPlugin
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */