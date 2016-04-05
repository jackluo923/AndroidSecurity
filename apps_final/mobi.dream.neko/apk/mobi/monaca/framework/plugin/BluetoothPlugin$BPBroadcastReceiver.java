package mobi.monaca.framework.plugin;

import android.bluetooth.BluetoothDevice;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.util.Log;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

class BluetoothPlugin$BPBroadcastReceiver
  extends BroadcastReceiver
{
  private BluetoothPlugin$BPBroadcastReceiver(BluetoothPlugin paramBluetoothPlugin) {}
  
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    paramContext = paramIntent.getAction();
    if ("android.bluetooth.device.action.FOUND".equals(paramContext)) {
      paramContext = (BluetoothDevice)paramIntent.getParcelableExtra("android.bluetooth.device.extra.DEVICE");
    }
    do
    {
      do
      {
        try
        {
          paramIntent = new JSONObject();
          paramIntent.put("name", paramContext.getName());
          paramIntent.put("address", paramContext.getAddress());
          BluetoothPlugin.access$100(this$0).put(paramIntent);
          return;
        }
        catch (JSONException paramContext)
        {
          Log.e("BluetoothPlugin", paramContext.getMessage());
          return;
        }
        if ("android.bluetooth.adapter.action.DISCOVERY_FINISHED".equals(paramContext))
        {
          BluetoothPlugin.access$202(this$0, false);
          return;
        }
      } while (!BluetoothPlugin.access$300().equals(paramContext));
      BluetoothPlugin.access$402(this$0, new JSONArray());
      paramContext = paramIntent.getParcelableArrayExtra(BluetoothPlugin.access$500());
    } while (paramContext == null);
    Log.d("BluetoothPlugin", "Found UUIDs: " + paramContext.length);
    int i = 0;
    while (i < paramContext.length)
    {
      BluetoothPlugin.access$400(this$0).put(paramContext[i].toString());
      i += 1;
    }
    BluetoothPlugin.access$602(this$0, false);
  }
}

/* Location:
 * Qualified Name:     mobi.monaca.framework.plugin.BluetoothPlugin.BPBroadcastReceiver
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */