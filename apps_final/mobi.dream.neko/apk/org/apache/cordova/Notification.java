package org.apache.cordova;

import android.app.Activity;
import android.app.AlertDialog.Builder;
import android.app.ProgressDialog;
import android.content.DialogInterface;
import android.content.DialogInterface.OnCancelListener;
import android.content.DialogInterface.OnClickListener;
import android.media.Ringtone;
import android.media.RingtoneManager;
import android.net.Uri;
import android.os.Vibrator;
import android.widget.EditText;
import org.apache.cordova.api.CallbackContext;
import org.apache.cordova.api.CordovaInterface;
import org.apache.cordova.api.CordovaPlugin;
import org.apache.cordova.api.PluginResult;
import org.apache.cordova.api.PluginResult.Status;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class Notification
  extends CordovaPlugin
{
  public int confirmResult = -1;
  public ProgressDialog progressDialog = null;
  public ProgressDialog spinnerDialog = null;
  
  public void activityStart(final String paramString1, final String paramString2)
  {
    try
    {
      if (spinnerDialog != null)
      {
        spinnerDialog.dismiss();
        spinnerDialog = null;
      }
      paramString1 = new Runnable()
      {
        public void run()
        {
          spinnerDialog = ProgressDialog.show(val$cordova.getActivity(), paramString1, paramString2, true, true, new DialogInterface.OnCancelListener()
          {
            public void onCancel(DialogInterface paramAnonymous2DialogInterface)
            {
              spinnerDialog = null;
            }
          });
        }
      };
      cordova.getActivity().runOnUiThread(paramString1);
      return;
    }
    finally {}
  }
  
  public void activityStop()
  {
    try
    {
      if (spinnerDialog != null)
      {
        spinnerDialog.dismiss();
        spinnerDialog = null;
      }
      return;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  public void alert(final String paramString1, final String paramString2, final String paramString3, final CallbackContext paramCallbackContext)
  {
    try
    {
      paramString1 = new Runnable()
      {
        public void run()
        {
          AlertDialog.Builder localBuilder = new AlertDialog.Builder(val$cordova.getActivity());
          localBuilder.setMessage(paramString1);
          localBuilder.setTitle(paramString2);
          localBuilder.setCancelable(true);
          localBuilder.setPositiveButton(paramString3, new DialogInterface.OnClickListener()
          {
            public void onClick(DialogInterface paramAnonymous2DialogInterface, int paramAnonymous2Int)
            {
              paramAnonymous2DialogInterface.dismiss();
              val$callbackContext.sendPluginResult(new PluginResult(PluginResult.Status.OK, 0));
            }
          });
          localBuilder.setOnCancelListener(new DialogInterface.OnCancelListener()
          {
            public void onCancel(DialogInterface paramAnonymous2DialogInterface)
            {
              paramAnonymous2DialogInterface.dismiss();
              val$callbackContext.sendPluginResult(new PluginResult(PluginResult.Status.OK, 0));
            }
          });
          localBuilder.create();
          localBuilder.show();
        }
      };
      cordova.getActivity().runOnUiThread(paramString1);
      return;
    }
    finally
    {
      paramString1 = finally;
      throw paramString1;
    }
  }
  
  public void beep(long paramLong)
  {
    Object localObject = RingtoneManager.getDefaultUri(2);
    localObject = RingtoneManager.getRingtone(cordova.getActivity().getBaseContext(), (Uri)localObject);
    if (localObject != null) {
      for (long l1 = 0L; l1 < paramLong; l1 += 1L)
      {
        ((Ringtone)localObject).play();
        long l2 = 5000L;
        while ((((Ringtone)localObject).isPlaying()) && (l2 > 0L))
        {
          l2 -= 100L;
          try
          {
            Thread.sleep(100L);
          }
          catch (InterruptedException localInterruptedException) {}
        }
      }
    }
  }
  
  public void confirm(final String paramString1, final String paramString2, final JSONArray paramJSONArray, final CallbackContext paramCallbackContext)
  {
    try
    {
      paramString1 = new Runnable()
      {
        public void run()
        {
          AlertDialog.Builder localBuilder = new AlertDialog.Builder(val$cordova.getActivity());
          localBuilder.setMessage(paramString1);
          localBuilder.setTitle(paramString2);
          localBuilder.setCancelable(true);
          if (paramJSONArray.length() > 0) {}
          try
          {
            localBuilder.setNegativeButton(paramJSONArray.getString(0), new DialogInterface.OnClickListener()
            {
              public void onClick(DialogInterface paramAnonymous2DialogInterface, int paramAnonymous2Int)
              {
                paramAnonymous2DialogInterface.dismiss();
                val$callbackContext.sendPluginResult(new PluginResult(PluginResult.Status.OK, 1));
              }
            });
            if (paramJSONArray.length() > 1) {}
            try
            {
              localBuilder.setNeutralButton(paramJSONArray.getString(1), new DialogInterface.OnClickListener()
              {
                public void onClick(DialogInterface paramAnonymous2DialogInterface, int paramAnonymous2Int)
                {
                  paramAnonymous2DialogInterface.dismiss();
                  val$callbackContext.sendPluginResult(new PluginResult(PluginResult.Status.OK, 2));
                }
              });
              if (paramJSONArray.length() > 2) {}
              try
              {
                localBuilder.setPositiveButton(paramJSONArray.getString(2), new DialogInterface.OnClickListener()
                {
                  public void onClick(DialogInterface paramAnonymous2DialogInterface, int paramAnonymous2Int)
                  {
                    paramAnonymous2DialogInterface.dismiss();
                    val$callbackContext.sendPluginResult(new PluginResult(PluginResult.Status.OK, 3));
                  }
                });
                localBuilder.setOnCancelListener(new DialogInterface.OnCancelListener()
                {
                  public void onCancel(DialogInterface paramAnonymous2DialogInterface)
                  {
                    paramAnonymous2DialogInterface.dismiss();
                    val$callbackContext.sendPluginResult(new PluginResult(PluginResult.Status.OK, 0));
                  }
                });
                localBuilder.create();
                localBuilder.show();
                return;
              }
              catch (JSONException localJSONException1)
              {
                for (;;) {}
              }
            }
            catch (JSONException localJSONException2)
            {
              for (;;) {}
            }
          }
          catch (JSONException localJSONException3)
          {
            for (;;) {}
          }
        }
      };
      cordova.getActivity().runOnUiThread(paramString1);
      return;
    }
    finally
    {
      paramString1 = finally;
      throw paramString1;
    }
  }
  
  public boolean execute(String paramString, JSONArray paramJSONArray, CallbackContext paramCallbackContext)
    throws JSONException
  {
    boolean bool = false;
    if (paramString.equals("beep")) {
      beep(paramJSONArray.getLong(0));
    }
    for (;;)
    {
      paramCallbackContext.success();
      bool = true;
      do
      {
        return bool;
        if (paramString.equals("vibrate"))
        {
          vibrate(paramJSONArray.getLong(0));
          break;
        }
        if (paramString.equals("alert"))
        {
          alert(paramJSONArray.getString(0), paramJSONArray.getString(1), paramJSONArray.getString(2), paramCallbackContext);
          return true;
        }
        if (paramString.equals("confirm"))
        {
          confirm(paramJSONArray.getString(0), paramJSONArray.getString(1), paramJSONArray.getJSONArray(2), paramCallbackContext);
          return true;
        }
        if (paramString.equals("prompt"))
        {
          prompt(paramJSONArray.getString(0), paramJSONArray.getString(1), paramJSONArray.getJSONArray(2), paramJSONArray.getString(3), paramCallbackContext);
          return true;
        }
        if (paramString.equals("activityStart"))
        {
          activityStart(paramJSONArray.getString(0), paramJSONArray.getString(1));
          break;
        }
        if (paramString.equals("activityStop"))
        {
          activityStop();
          break;
        }
        if (paramString.equals("progressStart"))
        {
          progressStart(paramJSONArray.getString(0), paramJSONArray.getString(1));
          break;
        }
        if (paramString.equals("progressValue"))
        {
          progressValue(paramJSONArray.getInt(0));
          break;
        }
      } while (!paramString.equals("progressStop"));
      progressStop();
    }
  }
  
  public void progressStart(final String paramString1, final String paramString2)
  {
    try
    {
      if (progressDialog != null)
      {
        progressDialog.dismiss();
        progressDialog = null;
      }
      paramString1 = new Runnable()
      {
        public void run()
        {
          jdField_thisprogressDialog = new ProgressDialog(val$cordova.getActivity());
          jdField_thisprogressDialog.setProgressStyle(1);
          jdField_thisprogressDialog.setTitle(paramString1);
          jdField_thisprogressDialog.setMessage(paramString2);
          jdField_thisprogressDialog.setCancelable(true);
          jdField_thisprogressDialog.setMax(100);
          jdField_thisprogressDialog.setProgress(0);
          jdField_thisprogressDialog.setOnCancelListener(new DialogInterface.OnCancelListener()
          {
            public void onCancel(DialogInterface paramAnonymous2DialogInterface)
            {
              val$notification.progressDialog = null;
            }
          });
          jdField_thisprogressDialog.show();
        }
      };
      cordova.getActivity().runOnUiThread(paramString1);
      return;
    }
    finally {}
  }
  
  public void progressStop()
  {
    try
    {
      if (progressDialog != null)
      {
        progressDialog.dismiss();
        progressDialog = null;
      }
      return;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  public void progressValue(int paramInt)
  {
    try
    {
      if (progressDialog != null) {
        progressDialog.setProgress(paramInt);
      }
      return;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  public void prompt(final String paramString1, final String paramString2, final JSONArray paramJSONArray, final String paramString3, final CallbackContext paramCallbackContext)
  {
    try
    {
      final CordovaInterface localCordovaInterface = cordova;
      final EditText localEditText = new EditText(localCordovaInterface.getActivity());
      localEditText.setHint(paramString3);
      paramString1 = new Runnable()
      {
        public void run()
        {
          AlertDialog.Builder localBuilder = new AlertDialog.Builder(localCordovaInterface.getActivity());
          localBuilder.setMessage(paramString1);
          localBuilder.setTitle(paramString2);
          localBuilder.setCancelable(true);
          localBuilder.setView(localEditText);
          final JSONObject localJSONObject = new JSONObject();
          if (paramJSONArray.length() > 0) {}
          try
          {
            localBuilder.setNegativeButton(paramJSONArray.getString(0), new DialogInterface.OnClickListener()
            {
              public void onClick(DialogInterface paramAnonymous2DialogInterface, int paramAnonymous2Int)
              {
                paramAnonymous2DialogInterface.dismiss();
                for (;;)
                {
                  try
                  {
                    localJSONObject.put("buttonIndex", 1);
                    JSONObject localJSONObject = localJSONObject;
                    if (val$promptInput.getText().toString().trim().length() != 0) {
                      continue;
                    }
                    paramAnonymous2DialogInterface = val$defaultText;
                    localJSONObject.put("input1", paramAnonymous2DialogInterface);
                  }
                  catch (JSONException paramAnonymous2DialogInterface)
                  {
                    paramAnonymous2DialogInterface.printStackTrace();
                    continue;
                  }
                  val$callbackContext.sendPluginResult(new PluginResult(PluginResult.Status.OK, localJSONObject));
                  return;
                  paramAnonymous2DialogInterface = val$promptInput.getText();
                }
              }
            });
            if (paramJSONArray.length() > 1) {}
            try
            {
              localBuilder.setNeutralButton(paramJSONArray.getString(1), new DialogInterface.OnClickListener()
              {
                public void onClick(DialogInterface paramAnonymous2DialogInterface, int paramAnonymous2Int)
                {
                  paramAnonymous2DialogInterface.dismiss();
                  for (;;)
                  {
                    try
                    {
                      localJSONObject.put("buttonIndex", 2);
                      JSONObject localJSONObject = localJSONObject;
                      if (val$promptInput.getText().toString().trim().length() != 0) {
                        continue;
                      }
                      paramAnonymous2DialogInterface = val$defaultText;
                      localJSONObject.put("input1", paramAnonymous2DialogInterface);
                    }
                    catch (JSONException paramAnonymous2DialogInterface)
                    {
                      paramAnonymous2DialogInterface.printStackTrace();
                      continue;
                    }
                    val$callbackContext.sendPluginResult(new PluginResult(PluginResult.Status.OK, localJSONObject));
                    return;
                    paramAnonymous2DialogInterface = val$promptInput.getText();
                  }
                }
              });
              if (paramJSONArray.length() > 2) {}
              try
              {
                localBuilder.setPositiveButton(paramJSONArray.getString(2), new DialogInterface.OnClickListener()
                {
                  public void onClick(DialogInterface paramAnonymous2DialogInterface, int paramAnonymous2Int)
                  {
                    paramAnonymous2DialogInterface.dismiss();
                    for (;;)
                    {
                      try
                      {
                        localJSONObject.put("buttonIndex", 3);
                        JSONObject localJSONObject = localJSONObject;
                        if (val$promptInput.getText().toString().trim().length() != 0) {
                          continue;
                        }
                        paramAnonymous2DialogInterface = val$defaultText;
                        localJSONObject.put("input1", paramAnonymous2DialogInterface);
                      }
                      catch (JSONException paramAnonymous2DialogInterface)
                      {
                        paramAnonymous2DialogInterface.printStackTrace();
                        continue;
                      }
                      val$callbackContext.sendPluginResult(new PluginResult(PluginResult.Status.OK, localJSONObject));
                      return;
                      paramAnonymous2DialogInterface = val$promptInput.getText();
                    }
                  }
                });
                localBuilder.setOnCancelListener(new DialogInterface.OnCancelListener()
                {
                  public void onCancel(DialogInterface paramAnonymous2DialogInterface)
                  {
                    paramAnonymous2DialogInterface.dismiss();
                    for (;;)
                    {
                      try
                      {
                        localJSONObject.put("buttonIndex", 0);
                        JSONObject localJSONObject = localJSONObject;
                        if (val$promptInput.getText().toString().trim().length() != 0) {
                          continue;
                        }
                        paramAnonymous2DialogInterface = val$defaultText;
                        localJSONObject.put("input1", paramAnonymous2DialogInterface);
                      }
                      catch (JSONException paramAnonymous2DialogInterface)
                      {
                        paramAnonymous2DialogInterface.printStackTrace();
                        continue;
                      }
                      val$callbackContext.sendPluginResult(new PluginResult(PluginResult.Status.OK, localJSONObject));
                      return;
                      paramAnonymous2DialogInterface = val$promptInput.getText();
                    }
                  }
                });
                localBuilder.create();
                localBuilder.show();
                return;
              }
              catch (JSONException localJSONException1)
              {
                for (;;) {}
              }
            }
            catch (JSONException localJSONException2)
            {
              for (;;) {}
            }
          }
          catch (JSONException localJSONException3)
          {
            for (;;) {}
          }
        }
      };
      cordova.getActivity().runOnUiThread(paramString1);
      return;
    }
    finally
    {
      paramString1 = finally;
      throw paramString1;
    }
  }
  
  public void vibrate(long paramLong)
  {
    long l = paramLong;
    if (paramLong == 0L) {
      l = 500L;
    }
    ((Vibrator)cordova.getActivity().getSystemService("vibrator")).vibrate(l);
  }
}

/* Location:
 * Qualified Name:     org.apache.cordova.Notification
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */