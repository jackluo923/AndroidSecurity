package mobi.monaca.framework.nativeui.component.view;

import android.content.Context;
import android.graphics.PorterDuff.Mode;
import android.graphics.PorterDuffColorFilter;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.StateListDrawable;
import mobi.monaca.framework.nativeui.UIUtil;

public class MonacaButton$ImageButtonDrawable
  extends StateListDrawable
{
  protected int backgroundColor;
  protected int pressedBackgroundColor;
  
  private MonacaButton$ImageButtonDrawable(MonacaButton paramMonacaButton, Drawable paramDrawable)
  {
    BitmapDrawable localBitmapDrawable = new BitmapDrawable(context.getResources(), UIUtil.createBitmapWithColorFilter(paramDrawable, new PorterDuffColorFilter(1711276032, PorterDuff.Mode.MULTIPLY)));
    paramMonacaButton = new BitmapDrawable(context.getResources(), UIUtil.createBitmapWithColorFilter(paramDrawable, new PorterDuffColorFilter(1711276032, PorterDuff.Mode.MULTIPLY)));
    addState(new int[] { 16842919 }, localBitmapDrawable);
    addState(new int[] { -16842910 }, paramMonacaButton);
    paramMonacaButton = paramDrawable.mutate();
    addState(new int[0], paramMonacaButton);
  }
}

/* Location:
 * Qualified Name:     mobi.monaca.framework.nativeui.component.view.MonacaButton.ImageButtonDrawable
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */