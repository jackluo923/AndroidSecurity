package mobi.monaca.framework.plugin;

import android.app.Activity;
import android.bluetooth.BluetoothAdapter;
import android.bluetooth.BluetoothDevice;
import android.bluetooth.BluetoothSocket;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.util.Log;
import java.io.InputStream;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.UUID;
import org.apache.cordova.api.CordovaInterface;
import org.apache.cordova.api.LegacyContext;
import org.apache.cordova.api.Plugin;
import org.apache.cordova.api.PluginResult;
import org.apache.cordova.api.PluginResult.Status;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class BluetoothPlugin
  extends Plugin
{
  private static final String ACTION_CONNECT = "connect";
  private static final String ACTION_DISABLE = "disable";
  private static final String ACTION_DISCONNECT = "disconnect";
  private static final String ACTION_DISCOVERDEVICES = "discoverDevices";
  private static final String ACTION_ENABLE = "enable";
  private static final String ACTION_GETUUIDS = "getUUIDs";
  private static final String ACTION_READ = "read";
  private static String ACTION_UUID = "";
  private static String EXTRA_UUID = "";
  private BluetoothAdapter m_bluetoothAdapter = null;
  private ArrayList<BluetoothSocket> m_bluetoothSockets = new ArrayList();
  private BPBroadcastReceiver m_bpBroadcastReceiver = null;
  private JSONArray m_discoveredDevices = null;
  private boolean m_discovering = false;
  private boolean m_gettingUuids = false;
  private JSONArray m_gotUUIDs = null;
  private boolean m_stateChanging = false;
  
  public BluetoothPlugin()
  {
    try
    {
      Field localField = BluetoothDevice.class.getDeclaredField("ACTION_UUID");
      ACTION_UUID = (String)localField.get(null);
      Log.d("BluetoothPlugin", "actionUUID: " + localField.getName() + " / " + localField.get(null));
      localField = BluetoothDevice.class.getDeclaredField("EXTRA_UUID");
      EXTRA_UUID = (String)localField.get(null);
      Log.d("BluetoothPlugin", "extraUUID: " + localField.getName() + " / " + localField.get(null));
      return;
    }
    catch (Exception localException)
    {
      Log.e("BluetoothPlugin", localException.getMessage());
    }
  }
  
  public PluginResult execute(String paramString1, JSONArray paramJSONArray, String paramString2)
  {
    paramString2 = null;
    Log.d("BluetoothPlugin", "Action: " + paramString1);
    if ("enable".equals(paramString1))
    {
      if (!m_bluetoothAdapter.isEnabled())
      {
        m_stateChanging = true;
        ctx.startActivityForResult(this, new Intent("android.bluetooth.adapter.action.REQUEST_ENABLE"), 1);
        while (m_stateChanging) {}
      }
      if (m_bluetoothAdapter.isEnabled()) {
        paramString2 = new PluginResult(PluginResult.Status.OK);
      }
    }
    int i;
    do
    {
      return paramString2;
      return new PluginResult(PluginResult.Status.ERROR);
      if ("disable".equals(paramString1))
      {
        if ((!m_bluetoothAdapter.disable()) && (m_bluetoothAdapter.isEnabled())) {
          return new PluginResult(PluginResult.Status.ERROR);
        }
        return new PluginResult(PluginResult.Status.OK);
      }
      if ("discoverDevices".equals(paramString1))
      {
        m_discoveredDevices = new JSONArray();
        if (!m_bluetoothAdapter.startDiscovery()) {
          return new PluginResult(PluginResult.Status.ERROR, "Unable to start discovery");
        }
        m_discovering = true;
        while (m_discovering) {}
        Log.d("BluetoothPlugin", "DiscoveredDevices: " + m_discoveredDevices.length());
        return new PluginResult(PluginResult.Status.OK, m_discoveredDevices);
      }
      if ("getUUIDs".equals(paramString1)) {
        try
        {
          paramString1 = paramJSONArray.getString(0);
          Log.d("BluetoothPlugin", "Listing UUIDs for: " + paramString1);
          paramString1 = m_bluetoothAdapter.getRemoteDevice(paramString1);
          paramJSONArray = paramString1.getClass().getMethod("fetchUuidsWithSdp", new Class[0]);
          Log.d("BluetoothPlugin", "Method: " + paramJSONArray);
          paramJSONArray.invoke(paramString1, new Object[0]);
          m_gettingUuids = true;
          while (m_gettingUuids) {}
          paramString1 = new PluginResult(PluginResult.Status.OK, m_gotUUIDs);
          return paramString1;
        }
        catch (Exception paramString1)
        {
          Log.e("BluetoothPlugin", paramString1.toString() + " / " + paramString1.getMessage());
          return new PluginResult(PluginResult.Status.JSON_EXCEPTION, paramString1.getMessage());
        }
      }
      if ("connect".equals(paramString1)) {
        try
        {
          paramString1 = paramJSONArray.getString(0);
          paramJSONArray = UUID.fromString(paramJSONArray.getString(1));
          Log.d("BluetoothPlugin", "Connecting...");
          paramString1 = m_bluetoothAdapter.getRemoteDevice(paramString1).createRfcommSocketToServiceRecord(paramJSONArray);
          paramString1.connect();
          m_bluetoothSockets.add(paramString1);
          i = m_bluetoothSockets.indexOf(paramString1);
          paramString1 = new PluginResult(PluginResult.Status.OK, i);
          return paramString1;
        }
        catch (Exception paramString1)
        {
          Log.e("BluetoothPlugin", paramString1.toString() + " / " + paramString1.getMessage());
          return new PluginResult(PluginResult.Status.JSON_EXCEPTION, paramString1.getMessage());
        }
      }
      if ("read".equals(paramString1)) {
        try
        {
          i = paramJSONArray.getInt(0);
          paramString1 = ((BluetoothSocket)m_bluetoothSockets.get(i)).getInputStream();
          paramJSONArray = new char[''];
          i = 0;
          while (i < paramJSONArray.length)
          {
            paramJSONArray[i] = ((char)paramString1.read());
            i += 1;
          }
          paramString1 = new PluginResult(PluginResult.Status.OK, String.valueOf(paramJSONArray));
          return paramString1;
        }
        catch (Exception paramString1)
        {
          Log.e("BluetoothPlugin", paramString1.toString() + " / " + paramString1.getMessage());
          return new PluginResult(PluginResult.Status.JSON_EXCEPTION, paramString1.getMessage());
        }
      }
    } while (!"disconnect".equals(paramString1));
    try
    {
      i = paramJSONArray.getInt(0);
      ((BluetoothSocket)m_bluetoothSockets.get(i)).close();
      m_bluetoothSockets.remove(i);
      paramString1 = new PluginResult(PluginResult.Status.OK);
      return paramString1;
    }
    catch (Exception paramString1)
    {
      Log.e("BluetoothPlugin", paramString1.toString() + " / " + paramString1.getMessage());
    }
    return new PluginResult(PluginResult.Status.JSON_EXCEPTION, paramString1.getMessage());
  }
  
  public void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    if (paramInt1 == 1) {
      m_stateChanging = false;
    }
  }
  
  public void setContext(CordovaInterface paramCordovaInterface)
  {
    super.setContext(paramCordovaInterface);
    paramCordovaInterface.getActivity().registerReceiver(m_bpBroadcastReceiver, new IntentFilter("android.bluetooth.adapter.action.DISCOVERY_FINISHED"));
    paramCordovaInterface.getActivity().registerReceiver(m_bpBroadcastReceiver, new IntentFilter("android.bluetooth.device.action.FOUND"));
    paramCordovaInterface.getActivity().registerReceiver(m_bpBroadcastReceiver, new IntentFilter(ACTION_UUID));
  }
  
  private class BPBroadcastReceiver
    extends BroadcastReceiver
  {
    private BPBroadcastReceiver() {}
    
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
            m_discoveredDevices.put(paramIntent);
            return;
          }
          catch (JSONException paramContext)
          {
            Log.e("BluetoothPlugin", paramContext.getMessage());
            return;
          }
          if ("android.bluetooth.adapter.action.DISCOVERY_FINISHED".equals(paramContext))
          {
            BluetoothPlugin.access$202(BluetoothPlugin.this, false);
            return;
          }
        } while (!BluetoothPlugin.ACTION_UUID.equals(paramContext));
        BluetoothPlugin.access$402(BluetoothPlugin.this, new JSONArray());
        paramContext = paramIntent.getParcelableArrayExtra(BluetoothPlugin.EXTRA_UUID);
      } while (paramContext == null);
      Log.d("BluetoothPlugin", "Found UUIDs: " + paramContext.length);
      int i = 0;
      while (i < paramContext.length)
      {
        m_gotUUIDs.put(paramContext[i].toString());
        i += 1;
      }
      BluetoothPlugin.access$602(BluetoothPlugin.this, false);
    }
  }
}

/* Location:
 * Qualified Name:     mobi.monaca.framework.plugin.BluetoothPlugin
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */