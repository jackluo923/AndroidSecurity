package org.apache.cordova.api;

import java.io.PrintStream;
import org.apache.cordova.CordovaWebView;

public class PluginEntry
{
  public boolean onload = false;
  public CordovaPlugin plugin = null;
  public String pluginClass = "";
  public String service = "";
  
  public PluginEntry(String paramString1, String paramString2, boolean paramBoolean)
  {
    service = paramString1;
    pluginClass = paramString2;
    onload = paramBoolean;
  }
  
  public PluginEntry(String paramString, CordovaPlugin paramCordovaPlugin)
  {
    service = paramString;
    plugin = paramCordovaPlugin;
    pluginClass = paramCordovaPlugin.getClass().getName();
    onload = false;
  }
  
  private Class getClassByName(String paramString)
    throws ClassNotFoundException
  {
    Class localClass = null;
    if (paramString != null) {
      localClass = Class.forName(paramString);
    }
    return localClass;
  }
  
  private boolean isCordovaPlugin(Class paramClass)
  {
    if (paramClass != null) {
      return CordovaPlugin.class.isAssignableFrom(paramClass);
    }
    return false;
  }
  
  public CordovaPlugin createPlugin(CordovaWebView paramCordovaWebView, CordovaInterface paramCordovaInterface)
  {
    if (plugin != null) {
      return plugin;
    }
    try
    {
      Class localClass = getClassByName(pluginClass);
      if (isCordovaPlugin(localClass))
      {
        plugin = ((CordovaPlugin)localClass.newInstance());
        plugin.initialize(paramCordovaInterface, paramCordovaWebView);
        paramCordovaWebView = plugin;
        return paramCordovaWebView;
      }
    }
    catch (Exception paramCordovaWebView)
    {
      paramCordovaWebView.printStackTrace();
      System.out.println("Error adding plugin " + pluginClass + ".");
    }
    return null;
  }
}

/* Location:
 * Qualified Name:     org.apache.cordova.api.PluginEntry
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */