package com.millennialmedia.android;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.net.Uri;
import java.util.List;
import org.json.JSONObject;

class HandShake$Scheme
{
  int id;
  String scheme;
  
  HandShake$Scheme(HandShake paramHandShake) {}
  
  HandShake$Scheme(HandShake paramHandShake, String paramString, int paramInt)
  {
    scheme = paramString;
    id = paramInt;
  }
  
  boolean checkAvailability(Context paramContext)
  {
    if (scheme.contains("://")) {}
    for (Intent localIntent = new Intent("android.intent.action.VIEW", Uri.parse(scheme)); paramContext.getPackageManager().queryIntentActivities(localIntent, 65536).size() > 0; localIntent = new Intent("android.intent.action.VIEW", Uri.parse(scheme + "://"))) {
      return true;
    }
    return false;
  }
  
  void deserializeFromObj(JSONObject paramJSONObject)
  {
    if (paramJSONObject == null) {
      return;
    }
    scheme = paramJSONObject.optString("scheme", null);
    id = paramJSONObject.optInt("schemeid");
  }
}

/* Location:
 * Qualified Name:     com.millennialmedia.android.HandShake.Scheme
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */