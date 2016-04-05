package com.inmobi.monetization.internal;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.res.Configuration;
import android.content.res.Resources;
import com.inmobi.commons.InMobi;
import com.inmobi.commons.internal.InternalSDKUtil;
import com.inmobi.commons.internal.Log;
import com.inmobi.commons.uid.UIDHelper;
import com.inmobi.commons.uid.UIDUtil;
import java.util.LinkedList;
import java.util.List;
import java.util.Locale;
import java.util.Random;
import org.apache.http.client.utils.URLEncodedUtils;
import org.apache.http.message.BasicNameValuePair;

public class GetLtvpRulesRequest
{
  private String a;
  private String b;
  private String c;
  private long d;
  private String e;
  private String f;
  private String g;
  
  public GetLtvpRulesRequest()
  {
    try
    {
      a = InMobi.getAppId();
      b = ("pr-SAND-" + InternalSDKUtil.getInMobiInternalVersion(InMobi.getVersion()) + "-20140613");
      d = new Random().nextInt();
      c = UIDUtil.getEncryptedUid(Long.toString(d));
      e = UIDHelper.getRSAKeyVersion();
      f = InternalSDKUtil.getContext().getPackageName();
      g = getContextgetPackageManagergetPackageInfof, 0).versionName;
      return;
    }
    catch (Exception localException)
    {
      Log.internal("[InMobi]-[Monetization]", "Failed to init Ltvp request", localException);
    }
  }
  
  public String getEncodedRequestParams()
  {
    try
    {
      Object localObject = new LinkedList();
      if ((a != null) && (!"".equals(a))) {
        ((List)localObject).add(new BasicNameValuePair("mk-siteid", a));
      }
      if ((b != null) && (!"".equals(b))) {
        ((List)localObject).add(new BasicNameValuePair("mk-version", b));
      }
      if ((c != null) && (!"".equals(c))) {
        ((List)localObject).add(new BasicNameValuePair("u-id-map", c));
      }
      ((List)localObject).add(new BasicNameValuePair("u-id-key", Long.toString(d)));
      if ((e != null) && (!"".equals(e))) {
        ((List)localObject).add(new BasicNameValuePair("u-key-ver", e));
      }
      if ((f != null) && (!"".equals(f))) {
        ((List)localObject).add(new BasicNameValuePair("u-appbid", f));
      }
      if ((g != null) && (!"".equals(g))) {
        ((List)localObject).add(new BasicNameValuePair("u-appver", g));
      }
      String str = getContextgetResourcesgetConfigurationlocale.toString();
      if ((str != null) && (!"".equals(str))) {
        ((List)localObject).add(new BasicNameValuePair("d-localization", str));
      }
      ((List)localObject).add(new BasicNameValuePair("ts", Long.toString(System.currentTimeMillis())));
      localObject = URLEncodedUtils.format((List)localObject, "utf-8");
      return (String)localObject;
    }
    catch (Exception localException)
    {
      Log.internal("[InMobi]-[Monetization]", "Exception getting request params for ltvp get rules", localException);
    }
    return null;
  }
}

/* Location:
 * Qualified Name:     com.inmobi.monetization.internal.GetLtvpRulesRequest
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */