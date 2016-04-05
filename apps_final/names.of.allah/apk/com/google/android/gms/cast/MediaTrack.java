package com.google.android.gms.cast;

import android.text.TextUtils;
import com.google.android.gms.internal.gj;
import com.google.android.gms.internal.hl;
import com.google.android.gms.internal.io;
import org.json.JSONException;
import org.json.JSONObject;

public final class MediaTrack
{
  public static final int SUBTYPE_CAPTIONS = 2;
  public static final int SUBTYPE_CHAPTERS = 4;
  public static final int SUBTYPE_DESCRIPTIONS = 3;
  public static final int SUBTYPE_METADATA = 5;
  public static final int SUBTYPE_NONE = 0;
  public static final int SUBTYPE_SUBTITLES = 1;
  public static final int SUBTYPE_UNKNOWN = -1;
  public static final int TYPE_AUDIO = 2;
  public static final int TYPE_TEXT = 1;
  public static final int TYPE_UNKNOWN = 0;
  public static final int TYPE_VIDEO = 3;
  private long AP;
  private int AQ;
  private int AR;
  private String Ao;
  private String Aq;
  private String As;
  private JSONObject Ax;
  private String mName;
  
  MediaTrack(long paramLong, int paramInt)
  {
    clear();
    AP = paramLong;
    if ((paramInt <= 0) || (paramInt > 3)) {
      throw new IllegalArgumentException("invalid type " + paramInt);
    }
    AQ = paramInt;
  }
  
  MediaTrack(JSONObject paramJSONObject)
  {
    b(paramJSONObject);
  }
  
  private void b(JSONObject paramJSONObject)
  {
    clear();
    AP = paramJSONObject.getLong("trackId");
    String str = paramJSONObject.getString("type");
    if ("TEXT".equals(str))
    {
      AQ = 1;
      Aq = paramJSONObject.optString("trackContentId", null);
      As = paramJSONObject.optString("trackContentType", null);
      mName = paramJSONObject.optString("name", null);
      Ao = paramJSONObject.optString("language", null);
      if (!paramJSONObject.has("subtype")) {
        break label270;
      }
      str = paramJSONObject.getString("subtype");
      if (!"SUBTITLES".equals(str)) {
        break label178;
      }
      AR = 1;
    }
    for (;;)
    {
      Ax = paramJSONObject.optJSONObject("customData");
      return;
      if ("AUDIO".equals(str))
      {
        AQ = 2;
        break;
      }
      if ("VIDEO".equals(str))
      {
        AQ = 3;
        break;
      }
      throw new JSONException("invalid type: " + str);
      label178:
      if ("CAPTIONS".equals(str))
      {
        AR = 2;
      }
      else if ("DESCRIPTIONS".equals(str))
      {
        AR = 3;
      }
      else if ("CHAPTERS".equals(str))
      {
        AR = 4;
      }
      else if ("METADATA".equals(str))
      {
        AR = 5;
      }
      else
      {
        throw new JSONException("invalid subtype: " + str);
        label270:
        AR = 0;
      }
    }
  }
  
  private void clear()
  {
    AP = 0L;
    AQ = 0;
    Aq = null;
    mName = null;
    Ao = null;
    AR = -1;
    Ax = null;
  }
  
  final void R(int paramInt)
  {
    if ((paramInt < 0) || (paramInt > 5)) {
      throw new IllegalArgumentException("invalid subtype " + paramInt);
    }
    if ((paramInt != 0) && (AQ != 1)) {
      throw new IllegalArgumentException("subtypes are only valid for text tracks");
    }
    AR = paramInt;
  }
  
  public final JSONObject dU()
  {
    JSONObject localJSONObject = new JSONObject();
    try
    {
      localJSONObject.put("trackId", AP);
      switch (AQ)
      {
      case 1: 
        if (Aq != null) {
          localJSONObject.put("trackContentId", Aq);
        }
        if (As != null) {
          localJSONObject.put("trackContentType", As);
        }
        if (mName != null) {
          localJSONObject.put("name", mName);
        }
        if (!TextUtils.isEmpty(Ao)) {
          localJSONObject.put("language", Ao);
        }
        switch (AR)
        {
        }
        break;
      }
      for (;;)
      {
        if (Ax == null) {
          break label282;
        }
        localJSONObject.put("customData", Ax);
        return localJSONObject;
        localJSONObject.put("type", "TEXT");
        break;
        localJSONObject.put("type", "AUDIO");
        break;
        localJSONObject.put("type", "VIDEO");
        break;
        localJSONObject.put("subtype", "SUBTITLES");
        continue;
        localJSONObject.put("subtype", "CAPTIONS");
        continue;
        localJSONObject.put("subtype", "DESCRIPTIONS");
        continue;
        localJSONObject.put("subtype", "CHAPTERS");
        continue;
        localJSONObject.put("subtype", "METADATA");
        continue;
        break;
      }
      label282:
      return localJSONObject;
    }
    catch (JSONException localJSONException) {}
    return localJSONObject;
  }
  
  public final boolean equals(Object paramObject)
  {
    boolean bool2 = false;
    boolean bool1;
    if (this == paramObject) {
      bool1 = true;
    }
    do
    {
      return bool1;
      bool1 = bool2;
    } while (!(paramObject instanceof MediaTrack));
    paramObject = (MediaTrack)paramObject;
    int i;
    if (Ax == null)
    {
      i = 1;
      label39:
      if (Ax != null) {
        break label214;
      }
    }
    label214:
    for (int j = 1;; j = 0)
    {
      bool1 = bool2;
      if (i != j) {
        break;
      }
      if ((Ax != null) && (Ax != null))
      {
        bool1 = bool2;
        if (!io.d(Ax, Ax)) {
          break;
        }
      }
      bool1 = bool2;
      if (AP != AP) {
        break;
      }
      bool1 = bool2;
      if (AQ != AQ) {
        break;
      }
      bool1 = bool2;
      if (!gj.a(Aq, Aq)) {
        break;
      }
      bool1 = bool2;
      if (!gj.a(As, As)) {
        break;
      }
      bool1 = bool2;
      if (!gj.a(mName, mName)) {
        break;
      }
      bool1 = bool2;
      if (!gj.a(Ao, Ao)) {
        break;
      }
      bool1 = bool2;
      if (AR != AR) {
        break;
      }
      return true;
      i = 0;
      break label39;
    }
  }
  
  public final String getContentId()
  {
    return Aq;
  }
  
  public final String getContentType()
  {
    return As;
  }
  
  public final JSONObject getCustomData()
  {
    return Ax;
  }
  
  public final long getId()
  {
    return AP;
  }
  
  public final String getLanguage()
  {
    return Ao;
  }
  
  public final String getName()
  {
    return mName;
  }
  
  public final int getSubtype()
  {
    return AR;
  }
  
  public final int getType()
  {
    return AQ;
  }
  
  public final int hashCode()
  {
    return hl.hashCode(new Object[] { Long.valueOf(AP), Integer.valueOf(AQ), Aq, As, mName, Ao, Integer.valueOf(AR), Ax });
  }
  
  public final void setContentId(String paramString)
  {
    Aq = paramString;
  }
  
  public final void setContentType(String paramString)
  {
    As = paramString;
  }
  
  final void setCustomData(JSONObject paramJSONObject)
  {
    Ax = paramJSONObject;
  }
  
  final void setLanguage(String paramString)
  {
    Ao = paramString;
  }
  
  final void setName(String paramString)
  {
    mName = paramString;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.cast.MediaTrack
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */