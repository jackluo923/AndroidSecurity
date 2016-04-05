package mobi.monaca.framework.plugin;

import android.app.Activity;
import android.content.Intent;
import android.net.Uri;
import android.os.Handler;
import java.io.File;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import mobi.monaca.framework.MonacaApplication;
import mobi.monaca.framework.MonacaPageActivity;
import mobi.monaca.framework.MonacaURI;
import mobi.monaca.framework.psedo.R.string;
import mobi.monaca.framework.transition.TransitionParams;
import org.apache.cordova.api.CordovaInterface;
import org.apache.cordova.api.Plugin;
import org.apache.cordova.api.PluginResult;
import org.apache.cordova.api.PluginResult.Status;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class MonacaTransitPlugin
  extends Plugin
{
  public static final String TAG = MonacaTransitPlugin.class.getSimpleName();
  protected Handler handler = new Handler();
  
  protected String buildTransitUrl(JSONArray paramJSONArray)
  {
    String str2 = new String(paramJSONArray.optString(0));
    String str1 = str2;
    if (paramJSONArray.optString(2) != null) {}
    try
    {
      str1 = MonacaURI.buildUrlWithQuery(str2, new JSONObject(paramJSONArray.optString(2)));
      return str1;
    }
    catch (JSONException paramJSONArray)
    {
      paramJSONArray.printStackTrace();
    }
    return str2;
  }
  
  protected void clearPageStack(boolean paramBoolean)
  {
    Object localObject = new ArrayList(MonacaApplication.getPages());
    if (paramBoolean)
    {
      localObject = ((List)localObject).subList(0, ((List)localObject).size() - 1);
      Collections.reverse((List)localObject);
      localObject = ((List)localObject).iterator();
      while (((Iterator)localObject).hasNext()) {
        ((MonacaPageActivity)((Iterator)localObject).next()).finish();
      }
    }
    if (((List)localObject).size() > 1) {
      ((MonacaPageActivity)((List)localObject).get(((List)localObject).size() - 2)).finish();
    }
  }
  
  public PluginResult execute(String paramString1, final JSONArray paramJSONArray, String paramString2)
  {
    if ((paramString1.equals(MonacaApplication.getStringFromResource(R.string.transition_slide))) || (paramString1.equals(MonacaApplication.getStringFromResource(R.string.transition_anim_slideleft))))
    {
      getMonacaPageActivity().pushPageAsync(buildTransitUrl(paramJSONArray), TransitionParams.from(paramJSONArray.optJSONObject(1), MonacaApplication.getStringFromResource(R.string.transition_anim_slideleft)));
      return new PluginResult(PluginResult.Status.OK);
    }
    if (paramString1.equals(MonacaApplication.getStringFromResource(R.string.transition_push)))
    {
      paramString1 = paramJSONArray.optJSONObject(1);
      if ((paramString1.optString(MonacaApplication.getStringFromResource(R.string.transition_animation), "").equals(MonacaApplication.getStringFromResource(R.string.transition_slide))) || (paramString1.optString(MonacaApplication.getStringFromResource(R.string.transition_animation), "").equals(MonacaApplication.getStringFromResource(R.string.transition_anim_slideleft))))
      {
        getMonacaPageActivity().pushPageAsync(buildTransitUrl(paramJSONArray), TransitionParams.from(paramJSONArray.optJSONObject(1), MonacaApplication.getStringFromResource(R.string.transition_anim_slideleft)));
        return new PluginResult(PluginResult.Status.OK);
      }
      if ((paramString1 != null) && (paramString1.has(MonacaApplication.getStringFromResource(R.string.transition_animation))))
      {
        if (!paramString1.optBoolean(MonacaApplication.getStringFromResource(R.string.transition_animation)))
        {
          getMonacaPageActivity().pushPageAsync(buildTransitUrl(paramJSONArray), TransitionParams.from(paramJSONArray.optJSONObject(1), MonacaApplication.getStringFromResource(R.string.transition_anim_none)));
          return new PluginResult(PluginResult.Status.OK);
        }
        getMonacaPageActivity().pushPageAsync(buildTransitUrl(paramJSONArray), TransitionParams.from(paramJSONArray.optJSONObject(1), MonacaApplication.getStringFromResource(R.string.transition_anim_slideleft)));
        return new PluginResult(PluginResult.Status.OK);
      }
      getMonacaPageActivity().pushPageAsync(buildTransitUrl(paramJSONArray), TransitionParams.from(paramJSONArray.optJSONObject(1), MonacaApplication.getStringFromResource(R.string.transition_anim_slideleft)));
      return new PluginResult(PluginResult.Status.OK);
    }
    if (paramString1.equals(MonacaApplication.getStringFromResource(R.string.transition_anim_slideright)))
    {
      getMonacaPageActivity().pushPageAsync(buildTransitUrl(paramJSONArray), TransitionParams.from(paramJSONArray.optJSONObject(1), MonacaApplication.getStringFromResource(R.string.transition_anim_slideright)));
      return new PluginResult(PluginResult.Status.OK);
    }
    if (paramString1.equals(MonacaApplication.getStringFromResource(R.string.transition_anim_modal)))
    {
      getMonacaPageActivity().pushPageAsync(buildTransitUrl(paramJSONArray), TransitionParams.from(paramJSONArray.optJSONObject(1), MonacaApplication.getStringFromResource(R.string.transition_anim_modal)));
      return new PluginResult(PluginResult.Status.OK);
    }
    if (paramString1.equals(MonacaApplication.getStringFromResource(R.string.transition_link)))
    {
      if (paramJSONArray.optJSONObject(1) != null) {}
      for (;;)
      {
        loadRelativePathAsync(buildTransitUrl(paramJSONArray));
        return new PluginResult(PluginResult.Status.OK);
        new JSONObject();
      }
    }
    if (paramString1.equals(MonacaApplication.getStringFromResource(R.string.transition_anim_pop)))
    {
      getMonacaPageActivity().popPageAsync(TransitionParams.from(new JSONObject(), MonacaApplication.getStringFromResource(R.string.transition_anim_pop)));
      return new PluginResult(PluginResult.Status.OK);
    }
    if (paramString1.equals(MonacaApplication.getStringFromResource(R.string.transition_dismiss)))
    {
      getMonacaPageActivity().popPageAsync(TransitionParams.from(new JSONObject(), MonacaApplication.getStringFromResource(R.string.transition_dismiss)));
      return new PluginResult(PluginResult.Status.OK);
    }
    if (paramString1.equals(MonacaApplication.getStringFromResource(R.string.transition_browse)))
    {
      handler.post(new Runnable()
      {
        public void run()
        {
          Intent localIntent = new Intent("android.intent.action.VIEW", Uri.parse(paramJSONArray.optString(0)));
          cordova.getActivity().startActivity(localIntent);
        }
      });
      return new PluginResult(PluginResult.Status.OK);
    }
    if (paramString1.equals(MonacaApplication.getStringFromResource(R.string.transition_home)))
    {
      getMonacaPageActivity().goHomeAsync(paramJSONArray.optJSONObject(0));
      return new PluginResult(PluginResult.Status.OK);
    }
    if (paramString1.equals(MonacaApplication.getStringFromResource(R.string.transition_clearstack)))
    {
      clearPageStack(paramJSONArray.optBoolean(0, false));
      return new PluginResult(PluginResult.Status.OK);
    }
    return new PluginResult(PluginResult.Status.INVALID_ACTION);
  }
  
  protected MonacaPageActivity getMonacaPageActivity()
  {
    return (MonacaPageActivity)cordova.getActivity();
  }
  
  public void loadRelativePathAsync(final String paramString)
  {
    paramString = getMonacaPageActivity().getCurrentUriWithoutOptions() + MonacaApplication.getStringFromResource(R.string.relative_parent_path) + paramString;
    getMonacaPageActivity().runOnUiThread(new Runnable()
    {
      public void run()
      {
        if (paramString.startsWith(MonacaApplication.getStringFromResource(R.string.file_scheme))) {
          try
          {
            getMonacaPageActivity().loadUri(MonacaApplication.getStringFromResource(R.string.file_scheme) + new File(paramString.substring(7)).getCanonicalPath(), false);
            return;
          }
          catch (Exception localException)
          {
            localException.printStackTrace();
            getMonacaPageActivity().loadUri(getMonacaPageActivity().getCurrentUriWithoutOptions(), false);
            return;
          }
        }
        getMonacaPageActivity().loadUri(getMonacaPageActivity().getCurrentUriWithoutOptions(), false);
      }
    });
  }
  
  protected void pushPage(String paramString, TransitionParams paramTransitionParams)
  {
    getMonacaPageActivity().pushPageAsync(paramString, paramTransitionParams);
  }
}

/* Location:
 * Qualified Name:     mobi.monaca.framework.plugin.MonacaTransitPlugin
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */