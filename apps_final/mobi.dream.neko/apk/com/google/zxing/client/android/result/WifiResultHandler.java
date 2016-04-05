package com.google.zxing.client.android.result;

import android.app.Activity;
import android.net.wifi.WifiManager;
import android.widget.Toast;
import com.google.zxing.FakeR;
import com.google.zxing.client.android.CaptureActivity;
import com.google.zxing.client.android.common.executor.AsyncTaskExecInterface;
import com.google.zxing.client.android.common.executor.AsyncTaskExecManager;
import com.google.zxing.client.android.wifi.WifiConfigManager;
import com.google.zxing.client.result.ParsedResult;
import com.google.zxing.client.result.WifiParsedResult;

public final class WifiResultHandler
  extends ResultHandler
{
  private final CaptureActivity parent;
  private final AsyncTaskExecInterface taskExec;
  
  public WifiResultHandler(CaptureActivity paramCaptureActivity, ParsedResult paramParsedResult)
  {
    super(paramCaptureActivity, paramParsedResult);
    parent = paramCaptureActivity;
    taskExec = ((AsyncTaskExecInterface)new AsyncTaskExecManager().build());
  }
  
  public int getButtonCount()
  {
    return 1;
  }
  
  public int getButtonText(int paramInt)
  {
    return fakeR.getId("string", "button_wifi");
  }
  
  public CharSequence getDisplayContents()
  {
    WifiParsedResult localWifiParsedResult = (WifiParsedResult)getResult();
    StringBuilder localStringBuilder = new StringBuilder(50);
    String str = parent.getString(fakeR.getId("string", "wifi_ssid_label"));
    ParsedResult.maybeAppend(str + '\n' + localWifiParsedResult.getSsid(), localStringBuilder);
    str = parent.getString(fakeR.getId("string", "wifi_type_label"));
    ParsedResult.maybeAppend(str + '\n' + localWifiParsedResult.getNetworkEncryption(), localStringBuilder);
    return localStringBuilder.toString();
  }
  
  public int getDisplayTitle()
  {
    return fakeR.getId("string", "result_wifi");
  }
  
  public void handleButtonPress(int paramInt)
  {
    if (paramInt == 0)
    {
      WifiParsedResult localWifiParsedResult = (WifiParsedResult)getResult();
      WifiManager localWifiManager = (WifiManager)getActivity().getSystemService("wifi");
      Toast.makeText(getActivity(), fakeR.getId("string", "wifi_changing_network"), 1).show();
      taskExec.execute(new WifiConfigManager(localWifiManager), new WifiParsedResult[] { localWifiParsedResult });
      parent.restartPreviewAfterDelay(0L);
    }
  }
}

/* Location:
 * Qualified Name:     com.google.zxing.client.android.result.WifiResultHandler
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */