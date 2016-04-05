package com.google.android.gms.cast;

import android.text.TextUtils;
import com.google.android.gms.internal.gj;
import com.google.android.gms.internal.hl;
import com.google.android.gms.internal.io;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public final class MediaInfo
{
  public static final int STREAM_TYPE_BUFFERED = 1;
  public static final int STREAM_TYPE_INVALID = -1;
  public static final int STREAM_TYPE_LIVE = 2;
  public static final int STREAM_TYPE_NONE = 0;
  private final String Aq;
  private int Ar;
  private String As;
  private MediaMetadata At;
  private long Au;
  private List<MediaTrack> Av;
  private TextTrackStyle Aw;
  private JSONObject Ax;
  
  MediaInfo(String paramString)
  {
    if (TextUtils.isEmpty(paramString)) {
      throw new IllegalArgumentException("content ID cannot be null or empty");
    }
    Aq = paramString;
    Ar = -1;
  }
  
  MediaInfo(JSONObject paramJSONObject)
  {
    Aq = paramJSONObject.getString("contentId");
    Object localObject1 = paramJSONObject.getString("streamType");
    if ("NONE".equals(localObject1)) {
      Ar = 0;
    }
    Object localObject2;
    for (;;)
    {
      As = paramJSONObject.getString("contentType");
      if (paramJSONObject.has("metadata"))
      {
        localObject1 = paramJSONObject.getJSONObject("metadata");
        At = new MediaMetadata(((JSONObject)localObject1).getInt("metadataType"));
        At.b((JSONObject)localObject1);
      }
      Au = gj.b(paramJSONObject.optDouble("duration", 0.0D));
      if (!paramJSONObject.has("tracks")) {
        break;
      }
      Av = new ArrayList();
      localObject1 = paramJSONObject.getJSONArray("tracks");
      while (i < ((JSONArray)localObject1).length())
      {
        localObject2 = new MediaTrack(((JSONArray)localObject1).getJSONObject(i));
        Av.add(localObject2);
        i += 1;
      }
      if ("BUFFERED".equals(localObject1)) {
        Ar = 1;
      } else if ("LIVE".equals(localObject1)) {
        Ar = 2;
      } else {
        Ar = -1;
      }
    }
    Av = null;
    if (paramJSONObject.has("textTrackStyle"))
    {
      localObject1 = paramJSONObject.getJSONObject("textTrackStyle");
      localObject2 = new TextTrackStyle();
      ((TextTrackStyle)localObject2).b((JSONObject)localObject1);
    }
    for (Aw = ((TextTrackStyle)localObject2);; Aw = null)
    {
      Ax = paramJSONObject.optJSONObject("customData");
      return;
    }
  }
  
  final void a(MediaMetadata paramMediaMetadata)
  {
    At = paramMediaMetadata;
  }
  
  final void b(List<MediaTrack> paramList)
  {
    Av = paramList;
  }
  
  final void dT()
  {
    if (TextUtils.isEmpty(Aq)) {
      throw new IllegalArgumentException("content ID cannot be null or empty");
    }
    if (TextUtils.isEmpty(As)) {
      throw new IllegalArgumentException("content type cannot be null or empty");
    }
    if (Ar == -1) {
      throw new IllegalArgumentException("a valid stream type must be specified");
    }
  }
  
  public final JSONObject dU()
  {
    JSONObject localJSONObject = new JSONObject();
    for (;;)
    {
      try
      {
        localJSONObject.put("contentId", Aq);
        switch (Ar)
        {
        default: 
          localJSONObject.put("streamType", localObject);
          if (As != null) {
            localJSONObject.put("contentType", As);
          }
          if (At != null) {
            localJSONObject.put("metadata", At.dU());
          }
          localJSONObject.put("duration", gj.o(Au));
          if (Av != null)
          {
            localObject = new JSONArray();
            Iterator localIterator = Av.iterator();
            if (localIterator.hasNext())
            {
              ((JSONArray)localObject).put(((MediaTrack)localIterator.next()).dU());
              continue;
            }
            localJSONObject.put("tracks", localObject);
          }
          if (Aw != null) {
            localJSONObject.put("textTrackStyle", Aw.dU());
          }
          if (Ax == null) {
            break label215;
          }
          localJSONObject.put("customData", Ax);
          return localJSONObject;
        }
      }
      catch (JSONException localJSONException) {}
      Object localObject = "NONE";
      continue;
      label215:
      return localJSONObject;
      String str = "BUFFERED";
      continue;
      str = "LIVE";
    }
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
    } while (!(paramObject instanceof MediaInfo));
    paramObject = (MediaInfo)paramObject;
    int i;
    if (Ax == null)
    {
      i = 1;
      label39:
      if (Ax != null) {
        break label181;
      }
    }
    label181:
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
      if (!gj.a(Aq, Aq)) {
        break;
      }
      bool1 = bool2;
      if (Ar != Ar) {
        break;
      }
      bool1 = bool2;
      if (!gj.a(As, As)) {
        break;
      }
      bool1 = bool2;
      if (!gj.a(At, At)) {
        break;
      }
      bool1 = bool2;
      if (Au != Au) {
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
  
  public final List<MediaTrack> getMediaTracks()
  {
    return Av;
  }
  
  public final MediaMetadata getMetadata()
  {
    return At;
  }
  
  public final long getStreamDuration()
  {
    return Au;
  }
  
  public final int getStreamType()
  {
    return Ar;
  }
  
  public final TextTrackStyle getTextTrackStyle()
  {
    return Aw;
  }
  
  public final int hashCode()
  {
    return hl.hashCode(new Object[] { Aq, Integer.valueOf(Ar), As, At, Long.valueOf(Au), String.valueOf(Ax) });
  }
  
  final void m(long paramLong)
  {
    if (paramLong < 0L) {
      throw new IllegalArgumentException("Stream duration cannot be negative");
    }
    Au = paramLong;
  }
  
  final void setContentType(String paramString)
  {
    if (TextUtils.isEmpty(paramString)) {
      throw new IllegalArgumentException("content type cannot be null or empty");
    }
    As = paramString;
  }
  
  final void setCustomData(JSONObject paramJSONObject)
  {
    Ax = paramJSONObject;
  }
  
  final void setStreamType(int paramInt)
  {
    if ((paramInt < -1) || (paramInt > 2)) {
      throw new IllegalArgumentException("invalid stream type");
    }
    Ar = paramInt;
  }
  
  public final void setTextTrackStyle(TextTrackStyle paramTextTrackStyle)
  {
    Aw = paramTextTrackStyle;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.cast.MediaInfo
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */