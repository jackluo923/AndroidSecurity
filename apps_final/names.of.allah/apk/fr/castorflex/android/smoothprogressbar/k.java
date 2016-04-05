package fr.castorflex.android.smoothprogressbar;

import android.content.Context;
import android.content.res.Resources;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.Interpolator;

public final class k
{
  Interpolator a;
  int b;
  int[] c;
  float d;
  boolean e;
  boolean f;
  int g;
  private float h;
  
  public k(Context paramContext)
  {
    paramContext = paramContext.getResources();
    a = new AccelerateInterpolator();
    b = paramContext.getInteger(f.spb_default_sections_count);
    c = new int[] { paramContext.getColor(d.spb_default_color) };
    d = Float.parseFloat(paramContext.getString(g.spb_default_speed));
    e = paramContext.getBoolean(c.spb_default_reversed);
    g = paramContext.getDimensionPixelSize(e.spb_default_stroke_separator_length);
    h = paramContext.getDimensionPixelOffset(e.spb_default_stroke_width);
  }
  
  public final i a()
  {
    return new i(a, b, g, c, h, d, e, f, (byte)0);
  }
  
  public final k a(float paramFloat)
  {
    if (paramFloat < 0.0F) {
      throw new IllegalArgumentException("The width must be >= 0");
    }
    h = paramFloat;
    return this;
  }
  
  public final k a(int paramInt)
  {
    c = new int[] { paramInt };
    return this;
  }
}

/* Location:
 * Qualified Name:     fr.castorflex.android.smoothprogressbar.k
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */