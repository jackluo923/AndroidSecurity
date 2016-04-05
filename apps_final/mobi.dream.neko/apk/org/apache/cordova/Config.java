package org.apache.cordova;

import android.app.Activity;
import android.content.Intent;
import android.content.res.Resources;
import android.content.res.XmlResourceParser;
import android.util.Log;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Locale;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.apache.cordova.api.LOG;
import org.xmlpull.v1.XmlPullParserException;

public class Config
{
  public static final String TAG = "Config";
  private static Config self = null;
  private String startUrl;
  private ArrayList<Pattern> whiteList = new ArrayList();
  private HashMap<String, Boolean> whiteListCache = new HashMap();
  
  private Config() {}
  
  private Config(Activity paramActivity)
  {
    if (paramActivity == null) {
      LOG.i("CordovaLog", "There is no activity. Is this on the lock screen?");
    }
    for (;;)
    {
      return;
      int j = paramActivity.getResources().getIdentifier("config", "xml", paramActivity.getClass().getPackage().getName());
      int i = j;
      if (j == 0) {
        i = paramActivity.getResources().getIdentifier("config", "xml", paramActivity.getPackageName());
      }
      j = i;
      if (i == 0)
      {
        j = paramActivity.getResources().getIdentifier("cordova", "xml", paramActivity.getPackageName());
        LOG.i("CordovaLog", "config.xml missing, reverting to cordova.xml");
      }
      if (j == 0)
      {
        LOG.i("CordovaLog", "cordova.xml missing. Ignoring...");
        return;
      }
      XmlResourceParser localXmlResourceParser = paramActivity.getResources().getXml(j);
      i = -1;
      while (i != 1)
      {
        Object localObject;
        String str1;
        boolean bool;
        if (i == 2)
        {
          localObject = localXmlResourceParser.getName();
          if (!((String)localObject).equals("access")) {
            break label247;
          }
          localObject = localXmlResourceParser.getAttributeValue(null, "origin");
          str1 = localXmlResourceParser.getAttributeValue(null, "subdomains");
          if (localObject != null)
          {
            if ((str1 == null) || (str1.compareToIgnoreCase("true") != 0)) {
              break label241;
            }
            bool = true;
            label218:
            _addWhiteListEntry((String)localObject, bool);
          }
        }
        try
        {
          for (;;)
          {
            j = localXmlResourceParser.next();
            i = j;
            break;
            label241:
            bool = false;
            break label218;
            label247:
            if (((String)localObject).equals("log"))
            {
              localObject = localXmlResourceParser.getAttributeValue(null, "level");
              Log.d("Config", "The <log> tags is deprecated. Use <preference name=\"loglevel\" value=\"" + (String)localObject + "\"/> instead.");
              if (localObject != null) {
                LOG.setLogLevel((String)localObject);
              }
            }
            else if (((String)localObject).equals("preference"))
            {
              String str2 = localXmlResourceParser.getAttributeValue(null, "name").toLowerCase(Locale.getDefault());
              if (str2.equalsIgnoreCase("LogLevel"))
              {
                LOG.setLogLevel(localXmlResourceParser.getAttributeValue(null, "value"));
              }
              else if (str2.equalsIgnoreCase("SplashScreen"))
              {
                str1 = localXmlResourceParser.getAttributeValue(null, "value");
                localObject = str1;
                if (str1 == null) {
                  localObject = "splash";
                }
                j = paramActivity.getResources().getIdentifier((String)localObject, "drawable", paramActivity.getClass().getPackage().getName());
                paramActivity.getIntent().putExtra(str2, j);
              }
              else if (str2.equalsIgnoreCase("BackgroundColor"))
              {
                j = localXmlResourceParser.getAttributeIntValue(null, "value", -16777216);
                paramActivity.getIntent().putExtra(str2, j);
              }
              else if (str2.equalsIgnoreCase("LoadUrlTimeoutValue"))
              {
                j = localXmlResourceParser.getAttributeIntValue(null, "value", 20000);
                paramActivity.getIntent().putExtra(str2, j);
              }
              else if (str2.equalsIgnoreCase("KeepRunning"))
              {
                bool = localXmlResourceParser.getAttributeValue(null, "value").equals("true");
                paramActivity.getIntent().putExtra(str2, bool);
              }
              else if (str2.equalsIgnoreCase("InAppBrowserStorageEnabled"))
              {
                bool = localXmlResourceParser.getAttributeValue(null, "value").equals("true");
                paramActivity.getIntent().putExtra(str2, bool);
              }
              else if (str2.equalsIgnoreCase("DisallowOverscroll"))
              {
                bool = localXmlResourceParser.getAttributeValue(null, "value").equals("true");
                paramActivity.getIntent().putExtra(str2, bool);
              }
              else
              {
                localObject = localXmlResourceParser.getAttributeValue(null, "value");
                paramActivity.getIntent().putExtra(str2, (String)localObject);
              }
            }
            else if (((String)localObject).equals("content"))
            {
              str1 = localXmlResourceParser.getAttributeValue(null, "src");
              LOG.i("CordovaLog", "Found start page location: %s", new Object[] { str1 });
              if (str1 != null) {
                if (Pattern.compile("^[a-z-]+://").matcher(str1).find())
                {
                  startUrl = str1;
                }
                else
                {
                  localObject = str1;
                  if (str1.charAt(0) == '/') {
                    localObject = str1.substring(1);
                  }
                  startUrl = ("file:///android_asset/www/" + (String)localObject);
                }
              }
            }
          }
        }
        catch (XmlPullParserException localXmlPullParserException)
        {
          localXmlPullParserException.printStackTrace();
        }
        catch (IOException localIOException)
        {
          localIOException.printStackTrace();
        }
      }
    }
  }
  
  private void _addWhiteListEntry(String paramString, boolean paramBoolean)
  {
    Object localObject = paramString;
    String str;
    for (;;)
    {
      try
      {
        if (paramString.compareTo("*") == 0)
        {
          localObject = paramString;
          LOG.d("Config", "Unlimited access to network resources");
          localObject = paramString;
          whiteList.add(Pattern.compile(".*"));
          return;
        }
        str = paramString;
        localObject = paramString;
        if (originHasWildcard(paramString))
        {
          paramBoolean = true;
          localObject = paramString;
          str = paramString.replace("*.", "");
        }
        localObject = str;
        paramString = Pattern.compile("^[a-z-]+://").matcher(str);
        if (!paramBoolean) {
          break;
        }
        localObject = str;
        if (str.startsWith("http"))
        {
          localObject = str;
          whiteList.add(Pattern.compile(str.replaceFirst("https?://", "^https?://(.*\\.)?")));
          localObject = str;
          LOG.d("Config", "Origin to allow with subdomains: %s", new Object[] { str });
          return;
        }
      }
      catch (Exception paramString)
      {
        LOG.d("Config", "Failed to add origin %s", new Object[] { localObject });
        return;
      }
      localObject = str;
      if (paramString.find())
      {
        localObject = str;
        whiteList.add(Pattern.compile("^" + str.replaceFirst("//", "//(.*\\.)?")));
      }
      else
      {
        localObject = str;
        whiteList.add(Pattern.compile("^https?://(.*\\.)?" + str));
      }
    }
    localObject = str;
    if (str.startsWith("http"))
    {
      localObject = str;
      whiteList.add(Pattern.compile(str.replaceFirst("https?://", "^https?://")));
    }
    for (;;)
    {
      localObject = str;
      LOG.d("Config", "Origin to allow: %s", new Object[] { str });
      return;
      localObject = str;
      if (paramString.find())
      {
        localObject = str;
        whiteList.add(Pattern.compile("^" + str));
      }
      else
      {
        localObject = str;
        whiteList.add(Pattern.compile("^https?://" + str));
      }
    }
  }
  
  public static void addWhiteListEntry(String paramString, boolean paramBoolean)
  {
    if (self == null) {
      return;
    }
    self._addWhiteListEntry(paramString, paramBoolean);
  }
  
  public static String getStartUrl()
  {
    if ((self == null) || (selfstartUrl == null)) {
      return "file:///android_asset/www/index.html";
    }
    return selfstartUrl;
  }
  
  public static void init()
  {
    if (self == null) {
      self = new Config();
    }
  }
  
  public static void init(Activity paramActivity)
  {
    self = new Config(paramActivity);
  }
  
  public static boolean isUrlWhiteListed(String paramString)
  {
    if (self == null) {}
    Iterator localIterator;
    do
    {
      while (!localIterator.hasNext())
      {
        return false;
        if (selfwhiteListCache.get(paramString) != null) {
          return true;
        }
        localIterator = selfwhiteList.iterator();
      }
    } while (!((Pattern)localIterator.next()).matcher(paramString).find());
    selfwhiteListCache.put(paramString, Boolean.valueOf(true));
    return true;
  }
  
  private boolean originHasWildcard(String paramString)
  {
    String str = paramString;
    if (paramString.contains("//")) {
      str = paramString.split("//")[1];
    }
    return str.startsWith("*");
  }
}

/* Location:
 * Qualified Name:     org.apache.cordova.Config
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */