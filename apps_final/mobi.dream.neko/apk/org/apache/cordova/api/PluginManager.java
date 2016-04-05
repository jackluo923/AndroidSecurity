package org.apache.cordova.api;

import android.app.Activity;
import android.content.Intent;
import android.content.res.Resources;
import android.content.res.XmlResourceParser;
import android.net.Uri;
import android.util.Log;
import java.io.IOException;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map.Entry;
import java.util.Set;
import java.util.concurrent.atomic.AtomicInteger;
import org.apache.cordova.CordovaArgs;
import org.apache.cordova.CordovaWebView;
import org.json.JSONException;
import org.xmlpull.v1.XmlPullParserException;

public class PluginManager
{
  private static String TAG = "PluginManager";
  private final CordovaWebView app;
  private final CordovaInterface ctx;
  private final HashMap<String, PluginEntry> entries = new HashMap();
  private boolean firstRun;
  private AtomicInteger numPendingUiExecs;
  protected HashMap<String, String> urlMap = new HashMap();
  
  public PluginManager(CordovaWebView paramCordovaWebView, CordovaInterface paramCordovaInterface)
  {
    ctx = paramCordovaInterface;
    app = paramCordovaWebView;
    firstRun = true;
    numPendingUiExecs = new AtomicInteger(0);
  }
  
  private void execHelper(String paramString1, String paramString2, String paramString3, String paramString4)
  {
    CordovaPlugin localCordovaPlugin = getPlugin(paramString1);
    if (localCordovaPlugin == null)
    {
      Log.d(TAG, "exec() call to unknown plugin: " + paramString1);
      paramString1 = new PluginResult(PluginResult.Status.CLASS_NOT_FOUND_EXCEPTION);
      app.sendPluginResult(paramString1, paramString3);
    }
    for (;;)
    {
      return;
      try
      {
        if (!localCordovaPlugin.execute(paramString2, paramString4, new CallbackContext(paramString3, app)))
        {
          paramString1 = new PluginResult(PluginResult.Status.INVALID_ACTION);
          app.sendPluginResult(paramString1, paramString3);
          return;
        }
      }
      catch (JSONException paramString1)
      {
        paramString1 = new PluginResult(PluginResult.Status.JSON_EXCEPTION);
        app.sendPluginResult(paramString1, paramString3);
      }
    }
  }
  
  private void pluginConfigurationMissing()
  {
    LOG.e(TAG, "=====================================================================================");
    LOG.e(TAG, "ERROR: config.xml is missing.  Add res/xml/config.xml to your project.");
    LOG.e(TAG, "https://git-wip-us.apache.org/repos/asf?p=incubator-cordova-android.git;a=blob;f=framework/res/xml/plugins.xml");
    LOG.e(TAG, "=====================================================================================");
  }
  
  public void addService(String paramString1, String paramString2)
  {
    addService(new PluginEntry(paramString1, paramString2, false));
  }
  
  public void addService(PluginEntry paramPluginEntry)
  {
    entries.put(service, paramPluginEntry);
  }
  
  public void clearPluginObjects()
  {
    Iterator localIterator = entries.values().iterator();
    while (localIterator.hasNext()) {
      nextplugin = null;
    }
  }
  
  public void exec(final String paramString1, final String paramString2, final String paramString3, final String paramString4)
  {
    if (numPendingUiExecs.get() > 0)
    {
      numPendingUiExecs.getAndIncrement();
      ctx.getActivity().runOnUiThread(new Runnable()
      {
        public void run()
        {
          PluginManager.this.execHelper(paramString1, paramString2, paramString3, paramString4);
          numPendingUiExecs.getAndDecrement();
        }
      });
      return;
    }
    execHelper(paramString1, paramString2, paramString3, paramString4);
  }
  
  @Deprecated
  public void exec(String paramString1, String paramString2, String paramString3, String paramString4, boolean paramBoolean)
  {
    exec(paramString1, paramString2, paramString3, paramString4);
  }
  
  public CordovaPlugin getPlugin(String paramString)
  {
    PluginEntry localPluginEntry = (PluginEntry)entries.get(paramString);
    if (localPluginEntry == null) {
      paramString = null;
    }
    CordovaPlugin localCordovaPlugin;
    do
    {
      return paramString;
      localCordovaPlugin = plugin;
      paramString = localCordovaPlugin;
    } while (localCordovaPlugin != null);
    return localPluginEntry.createPlugin(app, ctx);
  }
  
  public void init()
  {
    LOG.d(TAG, "init()");
    if (firstRun)
    {
      loadPlugins();
      firstRun = false;
    }
    for (;;)
    {
      addService(new PluginEntry("PluginManager", new PluginManagerService(null)));
      startupPlugins();
      return;
      onPause(false);
      onDestroy();
      clearPluginObjects();
    }
  }
  
  public void loadPlugins()
  {
    int j = ctx.getActivity().getResources().getIdentifier("config", "xml", ctx.getActivity().getClass().getPackage().getName());
    int i = j;
    if (j == 0) {
      i = ctx.getActivity().getResources().getIdentifier("config", "xml", ctx.getActivity().getPackageName());
    }
    if (i == 0) {
      pluginConfigurationMissing();
    }
    for (;;)
    {
      return;
      XmlResourceParser localXmlResourceParser = ctx.getActivity().getResources().getXml(i);
      j = -1;
      Object localObject6 = "";
      Object localObject3 = "";
      boolean bool2 = false;
      int k = 0;
      while (j != 1)
      {
        String str;
        Object localObject1;
        Object localObject2;
        boolean bool1;
        if (j == 2)
        {
          str = localXmlResourceParser.getName();
          if (str.equals("plugin"))
          {
            localObject1 = localXmlResourceParser.getAttributeValue(null, "name");
            localObject2 = localXmlResourceParser.getAttributeValue(null, "value");
            Log.d(TAG, "<plugin> tags are deprecated, please use <features> instead. <plugin> will no longer work as of Cordova 3.0");
            bool1 = "true".equals(localXmlResourceParser.getAttributeValue(null, "onload"));
            i = k;
          }
        }
        try
        {
          for (;;)
          {
            k = localXmlResourceParser.next();
            j = k;
            k = i;
            bool2 = bool1;
            localObject3 = localObject2;
            localObject6 = localObject1;
            break;
            if (str.equals("url-filter"))
            {
              urlMap.put(localXmlResourceParser.getAttributeValue(null, "value"), localObject6);
              i = k;
              bool1 = bool2;
              localObject2 = localObject3;
              localObject1 = localObject6;
            }
            else if (str.equals("feature"))
            {
              i = 1;
              localObject1 = localXmlResourceParser.getAttributeValue(null, "name");
              bool1 = bool2;
              localObject2 = localObject3;
            }
            else
            {
              i = k;
              bool1 = bool2;
              localObject2 = localObject3;
              localObject1 = localObject6;
              if (k != 0)
              {
                i = k;
                bool1 = bool2;
                localObject2 = localObject3;
                localObject1 = localObject6;
                if (str.equals("param"))
                {
                  str = localXmlResourceParser.getAttributeValue(null, "name");
                  if (str.equals("service"))
                  {
                    localObject1 = localXmlResourceParser.getAttributeValue(null, "value");
                    i = k;
                    bool1 = bool2;
                    localObject2 = localObject3;
                  }
                  else if ((str.equals("package")) || (str.equals("android-package")))
                  {
                    localObject2 = localXmlResourceParser.getAttributeValue(null, "value");
                    i = k;
                    bool1 = bool2;
                    localObject1 = localObject6;
                  }
                  else
                  {
                    i = k;
                    bool1 = bool2;
                    localObject2 = localObject3;
                    localObject1 = localObject6;
                    if (str.equals("onload"))
                    {
                      bool1 = "true".equals(localXmlResourceParser.getAttributeValue(null, "value"));
                      i = k;
                      localObject2 = localObject3;
                      localObject1 = localObject6;
                      continue;
                      i = k;
                      bool1 = bool2;
                      localObject2 = localObject3;
                      localObject1 = localObject6;
                      if (j == 3)
                      {
                        str = localXmlResourceParser.getName();
                        if (!str.equals("feature"))
                        {
                          i = k;
                          bool1 = bool2;
                          localObject2 = localObject3;
                          localObject1 = localObject6;
                          if (!str.equals("plugin")) {}
                        }
                        else
                        {
                          addService(new PluginEntry((String)localObject6, (String)localObject3, bool2));
                          localObject1 = "";
                          localObject2 = "";
                          i = 0;
                          bool1 = bool2;
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
        catch (XmlPullParserException localXmlPullParserException)
        {
          localXmlPullParserException.printStackTrace();
          k = i;
          bool2 = bool1;
          Object localObject4 = localObject2;
          localObject6 = localObject1;
        }
        catch (IOException localIOException)
        {
          localIOException.printStackTrace();
          k = i;
          bool2 = bool1;
          Object localObject5 = localObject2;
          localObject6 = localObject1;
        }
      }
    }
  }
  
  public void onDestroy()
  {
    Iterator localIterator = entries.values().iterator();
    while (localIterator.hasNext())
    {
      PluginEntry localPluginEntry = (PluginEntry)localIterator.next();
      if (plugin != null) {
        plugin.onDestroy();
      }
    }
  }
  
  public void onNewIntent(Intent paramIntent)
  {
    Iterator localIterator = entries.values().iterator();
    while (localIterator.hasNext())
    {
      PluginEntry localPluginEntry = (PluginEntry)localIterator.next();
      if (plugin != null) {
        plugin.onNewIntent(paramIntent);
      }
    }
  }
  
  public boolean onOverrideUrlLoading(String paramString)
  {
    Iterator localIterator = urlMap.entrySet().iterator();
    while (localIterator.hasNext())
    {
      Map.Entry localEntry = (Map.Entry)localIterator.next();
      if (paramString.startsWith((String)localEntry.getKey())) {
        return getPlugin((String)localEntry.getValue()).onOverrideUrlLoading(paramString);
      }
    }
    return false;
  }
  
  public void onPause(boolean paramBoolean)
  {
    Iterator localIterator = entries.values().iterator();
    while (localIterator.hasNext())
    {
      PluginEntry localPluginEntry = (PluginEntry)localIterator.next();
      if (plugin != null) {
        plugin.onPause(paramBoolean);
      }
    }
  }
  
  public void onReset()
  {
    Iterator localIterator = entries.values().iterator();
    while (localIterator.hasNext())
    {
      CordovaPlugin localCordovaPlugin = nextplugin;
      if (localCordovaPlugin != null) {
        localCordovaPlugin.onReset();
      }
    }
  }
  
  public void onResume(boolean paramBoolean)
  {
    Iterator localIterator = entries.values().iterator();
    while (localIterator.hasNext())
    {
      PluginEntry localPluginEntry = (PluginEntry)localIterator.next();
      if (plugin != null) {
        plugin.onResume(paramBoolean);
      }
    }
  }
  
  public Object postMessage(String paramString, Object paramObject)
  {
    Object localObject1 = ctx.onMessage(paramString, paramObject);
    if (localObject1 != null) {
      return localObject1;
    }
    localObject1 = entries.values().iterator();
    while (((Iterator)localObject1).hasNext())
    {
      Object localObject2 = (PluginEntry)((Iterator)localObject1).next();
      if (plugin != null)
      {
        localObject2 = plugin.onMessage(paramString, paramObject);
        if (localObject2 != null) {
          return localObject2;
        }
      }
    }
    return null;
  }
  
  public Uri remapUri(Uri paramUri)
  {
    Iterator localIterator = entries.values().iterator();
    while (localIterator.hasNext())
    {
      Object localObject = (PluginEntry)localIterator.next();
      if (plugin != null)
      {
        localObject = plugin.remapUri(paramUri);
        if (localObject != null) {
          return (Uri)localObject;
        }
      }
    }
    return null;
  }
  
  public void startupPlugins()
  {
    Iterator localIterator = entries.values().iterator();
    while (localIterator.hasNext())
    {
      PluginEntry localPluginEntry = (PluginEntry)localIterator.next();
      if (onload) {
        localPluginEntry.createPlugin(app, ctx);
      }
    }
  }
  
  private class PluginManagerService
    extends CordovaPlugin
  {
    private PluginManagerService() {}
    
    public boolean execute(String paramString, CordovaArgs paramCordovaArgs, CallbackContext paramCallbackContext)
      throws JSONException
    {
      if ("startup".equals(paramString))
      {
        numPendingUiExecs.getAndIncrement();
        ctx.getActivity().runOnUiThread(new Runnable()
        {
          public void run()
          {
            numPendingUiExecs.getAndDecrement();
          }
        });
        return true;
      }
      return false;
    }
  }
}

/* Location:
 * Qualified Name:     org.apache.cordova.api.PluginManager
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */