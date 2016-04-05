package com.google.android.gms.internal;

import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import com.google.android.gms.cast.MediaInfo;
import com.google.android.gms.cast.MediaStatus;
import com.google.android.gms.cast.TextTrackStyle;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.TimeUnit;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class gp
  extends gh
{
  private static final long Cm = TimeUnit.HOURS.toMillis(24L);
  private static final long Cn = TimeUnit.HOURS.toMillis(24L);
  private static final long Co = TimeUnit.HOURS.toMillis(24L);
  private static final long Cp = TimeUnit.SECONDS.toMillis(1L);
  private static final String NAMESPACE = gj.al("com.google.cast.media");
  private final gs CA;
  private final gs CB;
  private final List<gs> CC = new ArrayList();
  private final Runnable CD = new gp.a(this, null);
  private boolean CE;
  private long Cq;
  private MediaStatus Cr;
  private final gs Cs = new gs(Cn);
  private final gs Ct;
  private final gs Cu;
  private final gs Cv;
  private final gs Cw;
  private final gs Cx;
  private final gs Cy;
  private final gs Cz;
  private final Handler mHandler = new Handler(Looper.getMainLooper());
  
  public gp()
  {
    this(null);
  }
  
  public gp(String paramString)
  {
    super(NAMESPACE, "MediaControlChannel", paramString);
    CC.add(Cs);
    Ct = new gs(Cm);
    CC.add(Ct);
    Cu = new gs(Cm);
    CC.add(Cu);
    Cv = new gs(Cm);
    CC.add(Cv);
    Cw = new gs(Co);
    CC.add(Cw);
    Cx = new gs(Cm);
    CC.add(Cx);
    Cy = new gs(Cm);
    CC.add(Cy);
    Cz = new gs(Cm);
    CC.add(Cz);
    CA = new gs(Cm);
    CC.add(CA);
    CB = new gs(Cm);
    CC.add(CB);
    eo();
  }
  
  private void a(long paramLong, JSONObject paramJSONObject)
  {
    int k = 1;
    boolean bool = Cs.p(paramLong);
    int j;
    if ((Cw.eq()) && (!Cw.p(paramLong)))
    {
      i = 1;
      if (Cx.eq())
      {
        j = k;
        if (!Cx.p(paramLong)) {}
      }
      else
      {
        if ((!Cy.eq()) || (Cy.p(paramLong))) {
          break label235;
        }
        j = k;
      }
      label87:
      if (i == 0) {
        break label257;
      }
    }
    label235:
    label257:
    for (int i = 2;; i = 0)
    {
      k = i;
      if (j != 0) {
        k = i | 0x1;
      }
      if ((bool) || (Cr == null))
      {
        Cr = new MediaStatus(paramJSONObject);
        Cq = SystemClock.elapsedRealtime();
      }
      for (i = 7;; i = Cr.a(paramJSONObject, k))
      {
        if ((i & 0x1) != 0)
        {
          Cq = SystemClock.elapsedRealtime();
          onStatusUpdated();
        }
        if ((i & 0x2) != 0)
        {
          Cq = SystemClock.elapsedRealtime();
          onStatusUpdated();
        }
        if ((i & 0x4) != 0) {
          onMetadataUpdated();
        }
        paramJSONObject = CC.iterator();
        while (paramJSONObject.hasNext()) {
          ((gs)paramJSONObject.next()).c(paramLong, 0);
        }
        i = 0;
        break;
        j = 0;
        break label87;
      }
      return;
    }
  }
  
  private void eo()
  {
    z(false);
    Cq = 0L;
    Cr = null;
    Cs.clear();
    Cw.clear();
    Cx.clear();
  }
  
  private void z(boolean paramBoolean)
  {
    if (CE != paramBoolean)
    {
      CE = paramBoolean;
      if (paramBoolean) {
        mHandler.postDelayed(CD, Cp);
      }
    }
    else
    {
      return;
    }
    mHandler.removeCallbacks(CD);
  }
  
  public long a(gr paramgr)
  {
    JSONObject localJSONObject = new JSONObject();
    long l = dY();
    Cz.a(l, paramgr);
    z(true);
    try
    {
      localJSONObject.put("requestId", l);
      localJSONObject.put("type", "GET_STATUS");
      if (Cr != null) {
        localJSONObject.put("mediaSessionId", Cr.dV());
      }
      a(localJSONObject.toString(), l, null);
      return l;
    }
    catch (JSONException paramgr)
    {
      for (;;) {}
    }
  }
  
  public long a(gr paramgr, double paramDouble, JSONObject paramJSONObject)
  {
    if ((Double.isInfinite(paramDouble)) || (Double.isNaN(paramDouble))) {
      throw new IllegalArgumentException("Volume cannot be " + paramDouble);
    }
    JSONObject localJSONObject = new JSONObject();
    long l = dY();
    Cx.a(l, paramgr);
    z(true);
    try
    {
      localJSONObject.put("requestId", l);
      localJSONObject.put("type", "SET_VOLUME");
      localJSONObject.put("mediaSessionId", dV());
      paramgr = new JSONObject();
      paramgr.put("level", paramDouble);
      localJSONObject.put("volume", paramgr);
      if (paramJSONObject != null) {
        localJSONObject.put("customData", paramJSONObject);
      }
    }
    catch (JSONException paramgr)
    {
      for (;;) {}
    }
    a(localJSONObject.toString(), l, null);
    return l;
  }
  
  public long a(gr paramgr, long paramLong, int paramInt, JSONObject paramJSONObject)
  {
    JSONObject localJSONObject = new JSONObject();
    long l = dY();
    Cw.a(l, paramgr);
    z(true);
    for (;;)
    {
      try
      {
        localJSONObject.put("requestId", l);
        localJSONObject.put("type", "SEEK");
        localJSONObject.put("mediaSessionId", dV());
        localJSONObject.put("currentTime", gj.o(paramLong));
        if (paramInt != 1) {
          continue;
        }
        localJSONObject.put("resumeState", "PLAYBACK_START");
        if (paramJSONObject != null) {
          localJSONObject.put("customData", paramJSONObject);
        }
      }
      catch (JSONException paramgr)
      {
        continue;
      }
      a(localJSONObject.toString(), l, null);
      return l;
      if (paramInt == 2) {
        localJSONObject.put("resumeState", "PLAYBACK_PAUSE");
      }
    }
  }
  
  public long a(gr paramgr, MediaInfo paramMediaInfo, boolean paramBoolean, long paramLong, JSONObject paramJSONObject)
  {
    JSONObject localJSONObject = new JSONObject();
    long l = dY();
    Cs.a(l, paramgr);
    z(true);
    try
    {
      localJSONObject.put("requestId", l);
      localJSONObject.put("type", "LOAD");
      localJSONObject.put("media", paramMediaInfo.dU());
      localJSONObject.put("autoplay", paramBoolean);
      localJSONObject.put("currentTime", gj.o(paramLong));
      if (paramJSONObject != null) {
        localJSONObject.put("customData", paramJSONObject);
      }
    }
    catch (JSONException paramgr)
    {
      for (;;) {}
    }
    a(localJSONObject.toString(), l, null);
    return l;
  }
  
  public long a(gr paramgr, TextTrackStyle paramTextTrackStyle)
  {
    JSONObject localJSONObject = new JSONObject();
    long l = dY();
    CB.a(l, paramgr);
    z(true);
    try
    {
      localJSONObject.put("requestId", l);
      localJSONObject.put("type", "EDIT_TRACKS_INFO");
      if (paramTextTrackStyle != null) {
        localJSONObject.put("textTrackStyle", paramTextTrackStyle.dU());
      }
      localJSONObject.put("mediaSessionId", dV());
    }
    catch (JSONException paramgr)
    {
      for (;;) {}
    }
    a(localJSONObject.toString(), l, null);
    return l;
  }
  
  public long a(gr paramgr, JSONObject paramJSONObject)
  {
    JSONObject localJSONObject = new JSONObject();
    long l = dY();
    Ct.a(l, paramgr);
    z(true);
    try
    {
      localJSONObject.put("requestId", l);
      localJSONObject.put("type", "PAUSE");
      localJSONObject.put("mediaSessionId", dV());
      if (paramJSONObject != null) {
        localJSONObject.put("customData", paramJSONObject);
      }
    }
    catch (JSONException paramgr)
    {
      for (;;) {}
    }
    a(localJSONObject.toString(), l, null);
    return l;
  }
  
  public long a(gr paramgr, boolean paramBoolean, JSONObject paramJSONObject)
  {
    JSONObject localJSONObject = new JSONObject();
    long l = dY();
    Cy.a(l, paramgr);
    z(true);
    try
    {
      localJSONObject.put("requestId", l);
      localJSONObject.put("type", "SET_VOLUME");
      localJSONObject.put("mediaSessionId", dV());
      paramgr = new JSONObject();
      paramgr.put("muted", paramBoolean);
      localJSONObject.put("volume", paramgr);
      if (paramJSONObject != null) {
        localJSONObject.put("customData", paramJSONObject);
      }
    }
    catch (JSONException paramgr)
    {
      for (;;) {}
    }
    a(localJSONObject.toString(), l, null);
    return l;
  }
  
  public long a(gr paramgr, long[] paramArrayOfLong)
  {
    JSONObject localJSONObject = new JSONObject();
    long l = dY();
    CA.a(l, paramgr);
    z(true);
    try
    {
      localJSONObject.put("requestId", l);
      localJSONObject.put("type", "EDIT_TRACKS_INFO");
      localJSONObject.put("mediaSessionId", dV());
      paramgr = new JSONArray();
      int i = 0;
      while (i < paramArrayOfLong.length)
      {
        paramgr.put(i, paramArrayOfLong[i]);
        i += 1;
      }
      localJSONObject.put("activeTrackIds", paramgr);
    }
    catch (JSONException paramgr)
    {
      for (;;) {}
    }
    a(localJSONObject.toString(), l, null);
    return l;
  }
  
  public void a(long paramLong, int paramInt)
  {
    Iterator localIterator = CC.iterator();
    while (localIterator.hasNext()) {
      ((gs)localIterator.next()).c(paramLong, paramInt);
    }
  }
  
  public final void ai(String paramString)
  {
    BA.b("message received: %s", new Object[] { paramString });
    Object localObject2;
    long l;
    try
    {
      Object localObject1 = new JSONObject(paramString);
      localObject2 = ((JSONObject)localObject1).getString("type");
      l = ((JSONObject)localObject1).optLong("requestId", -1L);
      if (((String)localObject2).equals("MEDIA_STATUS"))
      {
        localObject1 = ((JSONObject)localObject1).getJSONArray("status");
        if (((JSONArray)localObject1).length() > 0)
        {
          a(l, ((JSONArray)localObject1).getJSONObject(0));
          return;
        }
        Cr = null;
        onStatusUpdated();
        onMetadataUpdated();
        Cz.c(l, 0);
        return;
      }
    }
    catch (JSONException localJSONException)
    {
      BA.d("Message is malformed (%s); ignoring: %s", new Object[] { localJSONException.getMessage(), paramString });
      return;
    }
    JSONObject localJSONObject;
    if (((String)localObject2).equals("INVALID_PLAYER_STATE"))
    {
      BA.d("received unexpected error: Invalid Player State.", new Object[0]);
      localJSONObject = localJSONException.optJSONObject("customData");
      localObject2 = CC.iterator();
      while (((Iterator)localObject2).hasNext()) {
        ((gs)((Iterator)localObject2).next()).b(l, 1, localJSONObject);
      }
    }
    if (((String)localObject2).equals("LOAD_FAILED"))
    {
      localJSONObject = localJSONObject.optJSONObject("customData");
      Cs.b(l, 1, localJSONObject);
      return;
    }
    if (((String)localObject2).equals("LOAD_CANCELLED"))
    {
      localJSONObject = localJSONObject.optJSONObject("customData");
      Cs.b(l, 2, localJSONObject);
      return;
    }
    if (((String)localObject2).equals("INVALID_REQUEST"))
    {
      BA.d("received unexpected error: Invalid Request.", new Object[0]);
      localJSONObject = localJSONObject.optJSONObject("customData");
      localObject2 = CC.iterator();
      while (((Iterator)localObject2).hasNext()) {
        ((gs)((Iterator)localObject2).next()).b(l, 1, localJSONObject);
      }
    }
  }
  
  public long b(gr paramgr, JSONObject paramJSONObject)
  {
    JSONObject localJSONObject = new JSONObject();
    long l = dY();
    Cv.a(l, paramgr);
    z(true);
    try
    {
      localJSONObject.put("requestId", l);
      localJSONObject.put("type", "STOP");
      localJSONObject.put("mediaSessionId", dV());
      if (paramJSONObject != null) {
        localJSONObject.put("customData", paramJSONObject);
      }
    }
    catch (JSONException paramgr)
    {
      for (;;) {}
    }
    a(localJSONObject.toString(), l, null);
    return l;
  }
  
  public long c(gr paramgr, JSONObject paramJSONObject)
  {
    JSONObject localJSONObject = new JSONObject();
    long l = dY();
    Cu.a(l, paramgr);
    z(true);
    try
    {
      localJSONObject.put("requestId", l);
      localJSONObject.put("type", "PLAY");
      localJSONObject.put("mediaSessionId", dV());
      if (paramJSONObject != null) {
        localJSONObject.put("customData", paramJSONObject);
      }
    }
    catch (JSONException paramgr)
    {
      for (;;) {}
    }
    a(localJSONObject.toString(), l, null);
    return l;
  }
  
  public long dV()
  {
    if (Cr == null) {
      throw new IllegalStateException("No current media session");
    }
    return Cr.dV();
  }
  
  public void dZ()
  {
    eo();
  }
  
  public long getApproximateStreamPosition()
  {
    MediaInfo localMediaInfo = getMediaInfo();
    if (localMediaInfo == null) {}
    while (Cq == 0L) {
      return 0L;
    }
    double d = Cr.getPlaybackRate();
    long l3 = Cr.getStreamPosition();
    int i = Cr.getPlayerState();
    if ((d == 0.0D) || (i != 2)) {
      return l3;
    }
    long l1 = SystemClock.elapsedRealtime() - Cq;
    if (l1 < 0L) {
      l1 = 0L;
    }
    for (;;)
    {
      if (l1 == 0L) {
        return l3;
      }
      long l2 = localMediaInfo.getStreamDuration();
      l1 = l3 + (l1 * d);
      if (l1 > l2) {
        l1 = l2;
      }
      for (;;)
      {
        return l1;
        if (l1 < 0L) {
          l1 = 0L;
        }
      }
    }
  }
  
  public MediaInfo getMediaInfo()
  {
    if (Cr == null) {
      return null;
    }
    return Cr.getMediaInfo();
  }
  
  public MediaStatus getMediaStatus()
  {
    return Cr;
  }
  
  public long getStreamDuration()
  {
    MediaInfo localMediaInfo = getMediaInfo();
    if (localMediaInfo != null) {
      return localMediaInfo.getStreamDuration();
    }
    return 0L;
  }
  
  protected void onMetadataUpdated() {}
  
  protected void onStatusUpdated() {}
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.gp
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */