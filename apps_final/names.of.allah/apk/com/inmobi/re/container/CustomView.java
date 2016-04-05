package com.inmobi.re.container;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Paint.Style;
import android.graphics.Path;
import android.graphics.Path.FillType;
import android.graphics.RectF;
import android.view.View;

public class CustomView
  extends View
{
  private float a;
  private float b;
  private float c;
  private float d;
  private float e;
  private CustomView.SwitchIconType f;
  private int g;
  private Paint h;
  private Path i;
  private RectF j;
  
  private CustomView(Context paramContext)
  {
    super(paramContext);
  }
  
  public CustomView(Context paramContext, float paramFloat, CustomView.SwitchIconType paramSwitchIconType)
  {
    this(paramContext);
    f = paramSwitchIconType;
    a = paramFloat;
    g = 15;
    b = (50.0F * a / 2.0F);
    c = (30.0F * a / 2.0F);
    d = (b - c / 3.0F);
    e = (b + c / 3.0F);
    h = new Paint(1);
    j = new RectF();
    i = new Path();
  }
  
  protected void onDraw(Canvas paramCanvas)
  {
    super.onDraw(paramCanvas);
    h.reset();
    switch (CustomView.a.a[f.ordinal()])
    {
    default: 
      return;
    case 1: 
      h.setAntiAlias(true);
      h.setColor(-16777216);
      h.setStrokeWidth(3.0F);
      h.setStyle(Paint.Style.FILL_AND_STROKE);
      paramCanvas.drawCircle(b, b, c, h);
      h.setColor(-1);
      h.setStyle(Paint.Style.STROKE);
      paramCanvas.drawLine(d, d, e, e, h);
      paramCanvas.drawLine(d, e, e, d, h);
      paramCanvas.drawCircle(b, b, c, h);
      return;
    case 2: 
      h.setAntiAlias(true);
      h.setColor(0);
      h.setStrokeWidth(3.0F);
      h.setStyle(Paint.Style.FILL_AND_STROKE);
      paramCanvas.drawCircle(b, b, b, h);
      return;
    case 3: 
      i.reset();
      i.setFillType(Path.FillType.EVEN_ODD);
      i.moveTo(getWidth() / 2 - g * a / 2.0F, getHeight() / 2 - g * a / 2.0F);
      i.lineTo(getWidth() / 2 + g * a / 2.0F, getHeight() / 2);
      i.lineTo(getWidth() / 2 - g * a / 2.0F, getHeight() / 2 + g * a / 2.0F);
      i.lineTo(getWidth() / 2 - g * a / 2.0F, getHeight() / 2 - g * a / 2.0F);
      i.close();
      h.setAntiAlias(true);
      h.setColor(-16777216);
      h.setStrokeWidth(3.0F);
      h.setStyle(Paint.Style.FILL_AND_STROKE);
      paramCanvas.drawPath(i, h);
      return;
    case 4: 
      i.reset();
      i.setFillType(Path.FillType.EVEN_ODD);
      i.moveTo(getWidth() / 2 - g * a / 2.0F, getHeight() / 2 - g * a / 2.0F);
      i.lineTo(getWidth() / 2 + g * a / 2.0F, getHeight() / 2);
      i.lineTo(getWidth() / 2 - g * a / 2.0F, getHeight() / 2 + g * a / 2.0F);
      i.lineTo(getWidth() / 2 - g * a / 2.0F, getHeight() / 2 - g * a / 2.0F);
      i.close();
      h.setAntiAlias(true);
      h.setColor(-12303292);
      h.setStrokeWidth(3.0F);
      h.setStyle(Paint.Style.FILL_AND_STROKE);
      paramCanvas.drawPath(i, h);
      return;
    case 5: 
      i.reset();
      i.setFillType(Path.FillType.EVEN_ODD);
      i.moveTo(getWidth() / 2 - g * a / 2.0F, getHeight() / 2);
      i.lineTo(getWidth() / 2 + g * a / 2.0F, getHeight() / 2 - g * a / 2.0F);
      i.lineTo(getWidth() / 2 + g * a / 2.0F, getHeight() / 2 + g * a / 2.0F);
      i.lineTo(getWidth() / 2 - g * a / 2.0F, getHeight() / 2);
      i.close();
      h.setAntiAlias(true);
      h.setColor(-16777216);
      h.setStrokeWidth(3.0F);
      h.setStyle(Paint.Style.FILL_AND_STROKE);
      paramCanvas.drawPath(i, h);
      return;
    case 6: 
      i.reset();
      h.setAntiAlias(true);
      h.setColor(-16777216);
      h.setStrokeWidth(5.0F);
      h.setStyle(Paint.Style.STROKE);
      j.set(getWidth() / 2 - g * a / 2.0F, getHeight() / 2 - g * a / 2.0F, getWidth() / 2 + g * a / 2.0F, getHeight() / 2 + g * a / 2.0F);
      paramCanvas.drawArc(j, 0.0F, 270.0F, false, h);
      i.setFillType(Path.FillType.EVEN_ODD);
      i.moveTo(getWidth() / 2 + g * a / 2.0F, getHeight() / 2 - a * 2.0F);
      i.lineTo(getWidth() / 2 + g * a / 2.0F - a * 2.0F, getHeight() / 2);
      i.lineTo(getWidth() / 2 + g * a / 2.0F + a * 2.0F, getHeight() / 2);
      i.lineTo(getWidth() / 2 + g * a / 2.0F, getHeight() / 2 - a * 2.0F);
      i.close();
      h.setStyle(Paint.Style.FILL_AND_STROKE);
      paramCanvas.drawPath(i, h);
      return;
    }
    h.setAntiAlias(true);
    h.setColor(-16777216);
    h.setStrokeWidth(5.0F);
    h.setStyle(Paint.Style.STROKE);
    float f1 = getWidth() / 2;
    float f2 = g * a / 2.0F;
    float f3 = getHeight() / 2;
    float f4 = g * a / 2.0F;
    float f5 = getWidth() / 2;
    float f6 = g * a / 2.0F;
    float f7 = getHeight() / 2;
    paramCanvas.drawLine(f1 - f2, f3 - f4, f6 + f5, g * a / 2.0F + f7, h);
    f1 = getWidth() / 2;
    f2 = g * a / 2.0F;
    f3 = getHeight() / 2;
    f4 = g * a / 2.0F;
    f5 = getWidth() / 2;
    paramCanvas.drawLine(f1 - f2, f4 + f3, g * a / 2.0F + f5, getHeight() / 2 - g * a / 2.0F, h);
  }
  
  public void setSwitchInt(CustomView.SwitchIconType paramSwitchIconType)
  {
    f = paramSwitchIconType;
  }
}

/* Location:
 * Qualified Name:     com.inmobi.re.container.CustomView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */