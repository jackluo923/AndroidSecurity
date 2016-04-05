package com.google.android.gms.internal;

import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.text.TextUtils;

public final class cd
{
  public static boolean a(Context paramContext, cf paramcf, cm paramcm)
  {
    if (paramcf == null)
    {
      ev.D("No intent data for launcher overlay.");
      return false;
    }
    Intent localIntent = new Intent();
    if (TextUtils.isEmpty(nZ))
    {
      ev.D("Open GMSG did not contain a URL.");
      return false;
    }
    if (!TextUtils.isEmpty(mimeType)) {
      localIntent.setDataAndType(Uri.parse(nZ), mimeType);
    }
    String[] arrayOfString;
    for (;;)
    {
      localIntent.setAction("android.intent.action.VIEW");
      if (!TextUtils.isEmpty(packageName)) {
        localIntent.setPackage(packageName);
      }
      if (TextUtils.isEmpty(oa)) {
        break label169;
      }
      arrayOfString = oa.split("/", 2);
      if (arrayOfString.length >= 2) {
        break;
      }
      ev.D("Could not parse component name from open GMSG: " + oa);
      return false;
      localIntent.setData(Uri.parse(nZ));
    }
    localIntent.setClassName(arrayOfString[0], arrayOfString[1]);
    try
    {
      label169:
      ev.C("Launching an intent: " + localIntent);
      paramContext.startActivity(localIntent);
      paramcm.T();
      return true;
    }
    catch (ActivityNotFoundException paramContext)
    {
      ev.D(paramContext.getMessage());
    }
    return false;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.cd
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */