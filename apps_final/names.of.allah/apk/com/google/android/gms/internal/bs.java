package com.google.android.gms.internal;

import android.content.Context;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONObject;

public final class bs
{
  public static List<String> a(JSONObject paramJSONObject, String paramString)
  {
    paramJSONObject = paramJSONObject.optJSONArray(paramString);
    if (paramJSONObject != null)
    {
      paramString = new ArrayList(paramJSONObject.length());
      int i = 0;
      while (i < paramJSONObject.length())
      {
        paramString.add(paramJSONObject.getString(i));
        i += 1;
      }
      return Collections.unmodifiableList(paramString);
    }
    return null;
  }
  
  public static void a(Context paramContext, String paramString1, eg parameg, String paramString2, boolean paramBoolean, List<String> paramList)
  {
    if (paramBoolean) {}
    for (String str1 = "1";; str1 = "0")
    {
      Iterator localIterator = paramList.iterator();
      while (localIterator.hasNext())
      {
        String str2 = ((String)localIterator.next()).replaceAll("@gw_adlocid@", paramString2).replaceAll("@gw_adnetrefresh@", str1).replaceAll("@gw_qdata@", rw.nu).replaceAll("@gw_sdkver@", paramString1).replaceAll("@gw_sessid@", ei.rN).replaceAll("@gw_seqnum@", pY);
        paramList = str2;
        if (nK != null) {
          paramList = str2.replaceAll("@gw_adnetid@", nK.nj).replaceAll("@gw_allocid@", nK.nl);
        }
        new et(paramContext, paramString1, paramList).start();
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.bs
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */