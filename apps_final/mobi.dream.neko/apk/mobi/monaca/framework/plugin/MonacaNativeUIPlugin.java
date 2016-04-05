package mobi.monaca.framework.plugin;

import java.util.ArrayList;
import mobi.monaca.framework.MonacaApplication;
import mobi.monaca.framework.MonacaPageActivity;
import mobi.monaca.framework.nativeui.UpdateStyleQuery;
import mobi.monaca.framework.psedo.R.string;
import org.apache.cordova.api.CordovaInterface;
import org.apache.cordova.api.Plugin;
import org.apache.cordova.api.PluginResult;
import org.apache.cordova.api.PluginResult.Status;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class MonacaNativeUIPlugin
  extends Plugin
{
  public PluginResult execute(String paramString1, final JSONArray paramJSONArray, String paramString2)
  {
    if (paramString1.equals(MonacaApplication.getStringFromResource(R.string.nc_retrieve))) {
      return retrieveStyle(paramJSONArray.optString(0));
    }
    if (paramString1.equals(MonacaApplication.getStringFromResource(R.string.nc_update)))
    {
      paramString2 = paramJSONArray.optJSONArray(0);
      String str = paramJSONArray.optString(0);
      paramString1 = paramString2;
      if (paramString2 == null) {
        paramString1 = new JSONArray();
      }
      try
      {
        paramString1.put(0, str);
        if (paramJSONArray.length() == 3) {
          paramJSONArray = "{" + paramJSONArray.optString(1) + ":'" + paramJSONArray.optString(2) + "'}";
        }
      }
      catch (JSONException paramString1)
      {
        for (;;)
        {
          try
          {
            paramString1 = updateStyle(paramString1, new JSONObject(paramJSONArray));
            return paramString1;
          }
          catch (JSONException paramString1)
          {
            paramString1.printStackTrace();
            return new PluginResult(PluginResult.Status.JSON_EXCEPTION);
          }
          paramString1 = paramString1;
          paramString1 = new JSONArray();
        }
      }
      return updateStyle(paramString1, paramJSONArray.optJSONObject(1));
    }
    if (paramString1.equals(MonacaApplication.getStringFromResource(R.string.nc_bulkily))) {
      return updateStyleBulkily(paramJSONArray);
    }
    if (paramString1.equals(MonacaApplication.getStringFromResource(R.string.nc_info))) {
      return getInfoForJavaScript();
    }
    if (paramString1.equalsIgnoreCase(MonacaApplication.getStringFromResource(R.string.nc_showspinner)))
    {
      getMonacaPageActivity().runOnUiThread(new Runnable()
      {
        public void run()
        {
          MonacaApplication localMonacaApplication = (MonacaApplication)getMonacaPageActivity().getApplication();
          try
          {
            localMonacaApplication.showMonacaSpinnerDialog(getMonacaPageActivity().getUiContext(), paramJSONArray);
            return;
          }
          catch (Exception localException)
          {
            localException.printStackTrace();
          }
        }
      });
      return new PluginResult(PluginResult.Status.OK);
    }
    if (paramString1.equalsIgnoreCase(MonacaApplication.getStringFromResource(R.string.nc_spinnertitle)))
    {
      getMonacaPageActivity().runOnUiThread(new Runnable()
      {
        public void run()
        {
          MonacaApplication localMonacaApplication = (MonacaApplication)getMonacaPageActivity().getApplication();
          try
          {
            localMonacaApplication.updateSpinnerTitle(paramJSONArray.optString(0));
            return;
          }
          catch (Exception localException)
          {
            localException.printStackTrace();
          }
        }
      });
      return new PluginResult(PluginResult.Status.OK);
    }
    if (paramString1.equalsIgnoreCase(MonacaApplication.getStringFromResource(R.string.nc_hidespinner)))
    {
      getMonacaPageActivity().runOnUiThread(new Runnable()
      {
        public void run()
        {
          ((MonacaApplication)getMonacaPageActivity().getApplication()).dismissMonacaSpinnerDialog();
        }
      });
      return new PluginResult(PluginResult.Status.OK);
    }
    return new PluginResult(PluginResult.Status.INVALID_ACTION);
  }
  
  public PluginResult getInfoForJavaScript()
  {
    JSONObject localJSONObject = ((MonacaPageActivity)cordova.getActivity()).getInfoForJavaScript();
    if (localJSONObject != null) {
      return new PluginResult(PluginResult.Status.OK, localJSONObject);
    }
    return new PluginResult(PluginResult.Status.ERROR);
  }
  
  protected MonacaPageActivity getMonacaPageActivity()
  {
    return (MonacaPageActivity)cordova.getActivity();
  }
  
  public PluginResult retrieveStyle(String paramString)
  {
    paramString = ((MonacaPageActivity)cordova.getActivity()).getStyle(paramString);
    if (paramString != null) {
      return new PluginResult(PluginResult.Status.OK, paramString);
    }
    return new PluginResult(PluginResult.Status.ERROR);
  }
  
  public PluginResult updateStyle(JSONArray paramJSONArray, JSONObject paramJSONObject)
  {
    ((MonacaPageActivity)cordova.getActivity()).updateStyle(new UpdateStyleQuery(paramJSONArray, paramJSONObject));
    return new PluginResult(PluginResult.Status.OK);
  }
  
  public PluginResult updateStyleBulkily(JSONArray paramJSONArray)
  {
    paramJSONArray = paramJSONArray.optJSONArray(0);
    if (paramJSONArray != null)
    {
      ArrayList localArrayList = new ArrayList();
      int i = 0;
      while (i < paramJSONArray.length())
      {
        JSONObject localJSONObject = paramJSONArray.optJSONObject(i);
        localArrayList.add(new UpdateStyleQuery(localJSONObject.optJSONArray(MonacaApplication.getStringFromResource(R.string.nc_ids)), localJSONObject.optJSONObject(MonacaApplication.getStringFromResource(R.string.nc_key_style))));
        i += 1;
      }
      ((MonacaPageActivity)cordova.getActivity()).updateStyleBulkily(localArrayList);
      return new PluginResult(PluginResult.Status.OK);
    }
    return new PluginResult(PluginResult.Status.JSON_EXCEPTION);
  }
}

/* Location:
 * Qualified Name:     mobi.monaca.framework.plugin.MonacaNativeUIPlugin
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */