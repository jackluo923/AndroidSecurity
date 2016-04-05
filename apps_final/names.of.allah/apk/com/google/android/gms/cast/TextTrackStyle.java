package com.google.android.gms.cast;

import android.content.Context;
import android.graphics.Color;
import android.graphics.Typeface;
import android.view.accessibility.CaptioningManager;
import android.view.accessibility.CaptioningManager.CaptionStyle;
import com.google.android.gms.internal.gj;
import com.google.android.gms.internal.hl;
import com.google.android.gms.internal.io;
import com.google.android.gms.internal.iq;
import org.json.JSONException;
import org.json.JSONObject;

public final class TextTrackStyle
{
  public static final int COLOR_UNSPECIFIED = 0;
  public static final float DEFAULT_FONT_SCALE = 1.0F;
  public static final int EDGE_TYPE_DEPRESSED = 4;
  public static final int EDGE_TYPE_DROP_SHADOW = 2;
  public static final int EDGE_TYPE_NONE = 0;
  public static final int EDGE_TYPE_OUTLINE = 1;
  public static final int EDGE_TYPE_RAISED = 3;
  public static final int EDGE_TYPE_UNSPECIFIED = -1;
  public static final int FONT_FAMILY_CASUAL = 4;
  public static final int FONT_FAMILY_CURSIVE = 5;
  public static final int FONT_FAMILY_MONOSPACED_SANS_SERIF = 1;
  public static final int FONT_FAMILY_MONOSPACED_SERIF = 3;
  public static final int FONT_FAMILY_SANS_SERIF = 0;
  public static final int FONT_FAMILY_SERIF = 2;
  public static final int FONT_FAMILY_SMALL_CAPITALS = 6;
  public static final int FONT_FAMILY_UNSPECIFIED = -1;
  public static final int FONT_STYLE_BOLD = 1;
  public static final int FONT_STYLE_BOLD_ITALIC = 3;
  public static final int FONT_STYLE_ITALIC = 2;
  public static final int FONT_STYLE_NORMAL = 0;
  public static final int FONT_STYLE_UNSPECIFIED = -1;
  public static final int WINDOW_TYPE_NONE = 0;
  public static final int WINDOW_TYPE_NORMAL = 1;
  public static final int WINDOW_TYPE_ROUNDED = 2;
  public static final int WINDOW_TYPE_UNSPECIFIED = -1;
  private JSONObject Ax;
  private float Bp;
  private int Bq;
  private int Br;
  private int Bs;
  private int Bt;
  private int Bu;
  private int Bv;
  private String Bw;
  private int Bx;
  private int By;
  private int ta;
  
  public TextTrackStyle()
  {
    clear();
  }
  
  private int ah(String paramString)
  {
    int j = 0;
    int i = j;
    if (paramString != null)
    {
      i = j;
      if (paramString.length() == 9)
      {
        i = j;
        if (paramString.charAt(0) != '#') {}
      }
    }
    try
    {
      i = Integer.parseInt(paramString.substring(1, 3), 16);
      j = Integer.parseInt(paramString.substring(3, 5), 16);
      int k = Integer.parseInt(paramString.substring(5, 7), 16);
      i = Color.argb(Integer.parseInt(paramString.substring(7, 9), 16), i, j, k);
      return i;
    }
    catch (NumberFormatException paramString) {}
    return 0;
  }
  
  private void clear()
  {
    Bp = 1.0F;
    Bq = 0;
    ta = 0;
    Br = -1;
    Bs = 0;
    Bt = -1;
    Bu = 0;
    Bv = 0;
    Bw = null;
    Bx = -1;
    By = -1;
    Ax = null;
  }
  
  public static TextTrackStyle fromSystemSettings(Context paramContext)
  {
    TextTrackStyle localTextTrackStyle = new TextTrackStyle();
    if (!iq.gd()) {
      return localTextTrackStyle;
    }
    paramContext = (CaptioningManager)paramContext.getSystemService("captioning");
    Bp = paramContext.getFontScale();
    paramContext = paramContext.getUserStyle();
    ta = backgroundColor;
    Bq = foregroundColor;
    label117:
    boolean bool1;
    boolean bool2;
    switch (edgeType)
    {
    default: 
      localTextTrackStyle.setEdgeType(0);
      Bs = edgeColor;
      paramContext = paramContext.getTypeface();
      if (paramContext != null)
      {
        if (!Typeface.MONOSPACE.equals(paramContext)) {
          break label158;
        }
        localTextTrackStyle.setFontGenericFamily(1);
        bool1 = paramContext.isBold();
        bool2 = paramContext.isItalic();
        if ((!bool1) || (!bool2)) {
          break label194;
        }
        localTextTrackStyle.setFontStyle(3);
      }
      break;
    }
    for (;;)
    {
      return localTextTrackStyle;
      localTextTrackStyle.setEdgeType(1);
      break;
      localTextTrackStyle.setEdgeType(2);
      break;
      label158:
      if ((!Typeface.SANS_SERIF.equals(paramContext)) && (Typeface.SERIF.equals(paramContext)))
      {
        localTextTrackStyle.setFontGenericFamily(2);
        break label117;
      }
      localTextTrackStyle.setFontGenericFamily(0);
      break label117;
      label194:
      if (bool1) {
        localTextTrackStyle.setFontStyle(1);
      } else if (bool2) {
        localTextTrackStyle.setFontStyle(2);
      } else {
        localTextTrackStyle.setFontStyle(0);
      }
    }
  }
  
  private String o(int paramInt)
  {
    return String.format("#%02X%02X%02X%02X", new Object[] { Integer.valueOf(Color.red(paramInt)), Integer.valueOf(Color.green(paramInt)), Integer.valueOf(Color.blue(paramInt)), Integer.valueOf(Color.alpha(paramInt)) });
  }
  
  public final void b(JSONObject paramJSONObject)
  {
    clear();
    Bp = ((float)paramJSONObject.optDouble("fontScale", 1.0D));
    Bq = ah(paramJSONObject.optString("foregroundColor"));
    ta = ah(paramJSONObject.optString("backgroundColor"));
    String str;
    if (paramJSONObject.has("edgeType"))
    {
      str = paramJSONObject.getString("edgeType");
      if ("NONE".equals(str)) {
        Br = 0;
      }
    }
    else
    {
      Bs = ah(paramJSONObject.optString("edgeColor"));
      if (paramJSONObject.has("windowType"))
      {
        str = paramJSONObject.getString("windowType");
        if (!"NONE".equals(str)) {
          break label313;
        }
        Bt = 0;
      }
      label118:
      Bu = ah(paramJSONObject.optString("windowColor"));
      if (Bt == 2) {
        Bv = paramJSONObject.optInt("windowRoundedCornerRadius", 0);
      }
      Bw = paramJSONObject.optString("fontFamily", null);
      if (paramJSONObject.has("fontGenericFamily"))
      {
        str = paramJSONObject.getString("fontGenericFamily");
        if (!"SANS_SERIF".equals(str)) {
          break label349;
        }
        Bx = 0;
      }
      label196:
      if (paramJSONObject.has("fontStyle"))
      {
        str = paramJSONObject.getString("fontStyle");
        if (!"NORMAL".equals(str)) {
          break label458;
        }
        By = 0;
      }
    }
    for (;;)
    {
      Ax = paramJSONObject.optJSONObject("customData");
      return;
      if ("OUTLINE".equals(str))
      {
        Br = 1;
        break;
      }
      if ("DROP_SHADOW".equals(str))
      {
        Br = 2;
        break;
      }
      if ("RAISED".equals(str))
      {
        Br = 3;
        break;
      }
      if (!"DEPRESSED".equals(str)) {
        break;
      }
      Br = 4;
      break;
      label313:
      if ("NORMAL".equals(str))
      {
        Bt = 1;
        break label118;
      }
      if (!"ROUNDED_CORNERS".equals(str)) {
        break label118;
      }
      Bt = 2;
      break label118;
      label349:
      if ("MONOSPACED_SANS_SERIF".equals(str))
      {
        Bx = 1;
        break label196;
      }
      if ("SERIF".equals(str))
      {
        Bx = 2;
        break label196;
      }
      if ("MONOSPACED_SERIF".equals(str))
      {
        Bx = 3;
        break label196;
      }
      if ("CASUAL".equals(str))
      {
        Bx = 4;
        break label196;
      }
      if ("CURSIVE".equals(str))
      {
        Bx = 5;
        break label196;
      }
      if (!"SMALL_CAPITALS".equals(str)) {
        break label196;
      }
      Bx = 6;
      break label196;
      label458:
      if ("BOLD".equals(str)) {
        By = 1;
      } else if ("ITALIC".equals(str)) {
        By = 2;
      } else if ("BOLD_ITALIC".equals(str)) {
        By = 3;
      }
    }
  }
  
  public final JSONObject dU()
  {
    JSONObject localJSONObject = new JSONObject();
    try
    {
      localJSONObject.put("fontScale", Bp);
      if (Bq != 0) {
        localJSONObject.put("foregroundColor", o(Bq));
      }
      if (ta != 0) {
        localJSONObject.put("backgroundColor", o(ta));
      }
      switch (Br)
      {
      case 0: 
        if (Bs != 0) {
          localJSONObject.put("edgeColor", o(Bs));
        }
        switch (Bt)
        {
        case 0: 
          label156:
          if (Bu != 0) {
            localJSONObject.put("windowColor", o(Bu));
          }
          if (Bt == 2) {
            localJSONObject.put("windowRoundedCornerRadius", Bv);
          }
          if (Bw != null) {
            localJSONObject.put("fontFamily", Bw);
          }
          switch (Bx)
          {
          case 0: 
            label264:
            switch (By)
            {
            }
            break;
          }
          break;
        }
        break;
      }
      for (;;)
      {
        if (Ax == null) {
          break label589;
        }
        localJSONObject.put("customData", Ax);
        return localJSONObject;
        localJSONObject.put("edgeType", "NONE");
        break;
        localJSONObject.put("edgeType", "OUTLINE");
        break;
        localJSONObject.put("edgeType", "DROP_SHADOW");
        break;
        localJSONObject.put("edgeType", "RAISED");
        break;
        localJSONObject.put("edgeType", "DEPRESSED");
        break;
        localJSONObject.put("windowType", "NONE");
        break label156;
        localJSONObject.put("windowType", "NORMAL");
        break label156;
        localJSONObject.put("windowType", "ROUNDED_CORNERS");
        break label156;
        localJSONObject.put("fontGenericFamily", "SANS_SERIF");
        break label264;
        localJSONObject.put("fontGenericFamily", "MONOSPACED_SANS_SERIF");
        break label264;
        localJSONObject.put("fontGenericFamily", "SERIF");
        break label264;
        localJSONObject.put("fontGenericFamily", "MONOSPACED_SERIF");
        break label264;
        localJSONObject.put("fontGenericFamily", "CASUAL");
        break label264;
        localJSONObject.put("fontGenericFamily", "CURSIVE");
        break label264;
        localJSONObject.put("fontGenericFamily", "SMALL_CAPITALS");
        break label264;
        localJSONObject.put("fontStyle", "NORMAL");
        continue;
        localJSONObject.put("fontStyle", "BOLD");
        continue;
        localJSONObject.put("fontStyle", "ITALIC");
        continue;
        localJSONObject.put("fontStyle", "BOLD_ITALIC");
        continue;
        break;
        break label156;
        break label264;
      }
      label589:
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
    } while (!(paramObject instanceof TextTrackStyle));
    paramObject = (TextTrackStyle)paramObject;
    int i;
    if (Ax == null)
    {
      i = 1;
      label39:
      if (Ax != null) {
        break label250;
      }
    }
    label250:
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
      if (Bp != Bp) {
        break;
      }
      bool1 = bool2;
      if (Bq != Bq) {
        break;
      }
      bool1 = bool2;
      if (ta != ta) {
        break;
      }
      bool1 = bool2;
      if (Br != Br) {
        break;
      }
      bool1 = bool2;
      if (Bs != Bs) {
        break;
      }
      bool1 = bool2;
      if (Bt != Bt) {
        break;
      }
      bool1 = bool2;
      if (Bv != Bv) {
        break;
      }
      bool1 = bool2;
      if (!gj.a(Bw, Bw)) {
        break;
      }
      bool1 = bool2;
      if (Bx != Bx) {
        break;
      }
      bool1 = bool2;
      if (By != By) {
        break;
      }
      return true;
      i = 0;
      break label39;
    }
  }
  
  public final int getBackgroundColor()
  {
    return ta;
  }
  
  public final JSONObject getCustomData()
  {
    return Ax;
  }
  
  public final int getEdgeColor()
  {
    return Bs;
  }
  
  public final int getEdgeType()
  {
    return Br;
  }
  
  public final String getFontFamily()
  {
    return Bw;
  }
  
  public final int getFontGenericFamily()
  {
    return Bx;
  }
  
  public final float getFontScale()
  {
    return Bp;
  }
  
  public final int getFontStyle()
  {
    return By;
  }
  
  public final int getForegroundColor()
  {
    return Bq;
  }
  
  public final int getWindowColor()
  {
    return Bu;
  }
  
  public final int getWindowCornerRadius()
  {
    return Bv;
  }
  
  public final int getWindowType()
  {
    return Bt;
  }
  
  public final int hashCode()
  {
    return hl.hashCode(new Object[] { Float.valueOf(Bp), Integer.valueOf(Bq), Integer.valueOf(ta), Integer.valueOf(Br), Integer.valueOf(Bs), Integer.valueOf(Bt), Integer.valueOf(Bu), Integer.valueOf(Bv), Bw, Integer.valueOf(Bx), Integer.valueOf(By), Ax });
  }
  
  public final void setBackgroundColor(int paramInt)
  {
    ta = paramInt;
  }
  
  public final void setCustomData(JSONObject paramJSONObject)
  {
    Ax = paramJSONObject;
  }
  
  public final void setEdgeColor(int paramInt)
  {
    Bs = paramInt;
  }
  
  public final void setEdgeType(int paramInt)
  {
    if ((paramInt < 0) || (paramInt > 4)) {
      throw new IllegalArgumentException("invalid edgeType");
    }
    Br = paramInt;
  }
  
  public final void setFontFamily(String paramString)
  {
    Bw = paramString;
  }
  
  public final void setFontGenericFamily(int paramInt)
  {
    if ((paramInt < 0) || (paramInt > 6)) {
      throw new IllegalArgumentException("invalid fontGenericFamily");
    }
    Bx = paramInt;
  }
  
  public final void setFontScale(float paramFloat)
  {
    Bp = paramFloat;
  }
  
  public final void setFontStyle(int paramInt)
  {
    if ((paramInt < 0) || (paramInt > 3)) {
      throw new IllegalArgumentException("invalid fontStyle");
    }
    By = paramInt;
  }
  
  public final void setForegroundColor(int paramInt)
  {
    Bq = paramInt;
  }
  
  public final void setWindowColor(int paramInt)
  {
    Bu = paramInt;
  }
  
  public final void setWindowCornerRadius(int paramInt)
  {
    if (paramInt < 0) {
      throw new IllegalArgumentException("invalid windowCornerRadius");
    }
    Bv = paramInt;
  }
  
  public final void setWindowType(int paramInt)
  {
    if ((paramInt < 0) || (paramInt > 2)) {
      throw new IllegalArgumentException("invalid windowType");
    }
    Bt = paramInt;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.cast.TextTrackStyle
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */