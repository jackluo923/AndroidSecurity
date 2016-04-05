package com.google.android.gms.internal;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONObject;

public final class bm
{
  public final String ni;
  public final String nj;
  public final List<String> nk;
  public final String nl;
  public final String nm;
  public final List<String> nn;
  public final String no;
  
  public bm(JSONObject paramJSONObject)
  {
    nj = paramJSONObject.getString("id");
    Object localObject1 = paramJSONObject.getJSONArray("adapters");
    ArrayList localArrayList = new ArrayList(((JSONArray)localObject1).length());
    int i = 0;
    while (i < ((JSONArray)localObject1).length())
    {
      localArrayList.add(((JSONArray)localObject1).getString(i));
      i += 1;
    }
    nk = Collections.unmodifiableList(localArrayList);
    nl = paramJSONObject.optString("allocation_id", null);
    nn = bs.a(paramJSONObject, "imp_urls");
    localObject1 = paramJSONObject.optJSONObject("ad");
    if (localObject1 != null)
    {
      localObject1 = ((JSONObject)localObject1).toString();
      ni = ((String)localObject1);
      localObject1 = paramJSONObject.optJSONObject("data");
      if (localObject1 == null) {
        break label167;
      }
    }
    label167:
    for (paramJSONObject = ((JSONObject)localObject1).toString();; paramJSONObject = null)
    {
      no = paramJSONObject;
      paramJSONObject = (JSONObject)localObject2;
      if (localObject1 != null) {
        paramJSONObject = ((JSONObject)localObject1).optString("class_name");
      }
      nm = paramJSONObject;
      return;
      localObject1 = null;
      break;
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.bm
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */