package mobi.monaca.framework.nativeui.component;

import android.graphics.PorterDuff.Mode;
import android.graphics.PorterDuffColorFilter;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.StateListDrawable;
import mobi.monaca.framework.nativeui.UIContext;
import mobi.monaca.framework.nativeui.UIUtil;

public class ButtonComponent$ImageButtonDrawable
  extends StateListDrawable
{
  protected int backgroundColor;
  protected int pressedBackgroundColor;
  
  private ButtonComponent$ImageButtonDrawable(ButtonComponent paramButtonComponent, Drawable paramDrawable)
  {
    BitmapDrawable localBitmapDrawable = new BitmapDrawable(uiContext.getResources(), UIUtil.createBitmapWithColorFilter(paramDrawable, new PorterDuffColorFilter(1711276032, PorterDuff.Mode.MULTIPLY)));
    paramButtonComponent = new BitmapDrawable(uiContext.getResources(), UIUtil.createBitmapWithColorFilter(paramDrawable, new PorterDuffColorFilter(1711276032, PorterDuff.Mode.MULTIPLY)));
    addState(new int[] { 16842919 }, localBitmapDrawable);
    addState(new int[] { -16842910 }, paramButtonComponent);
    paramButtonComponent = paramDrawable.mutate();
    addState(new int[0], paramButtonComponent);
  }
}

/* Location:
 * Qualified Name:     mobi.monaca.framework.nativeui.component.ButtonComponent.ImageButtonDrawable
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */