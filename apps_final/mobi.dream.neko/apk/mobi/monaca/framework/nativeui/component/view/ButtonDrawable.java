package mobi.monaca.framework.nativeui.component.view;

import android.graphics.PorterDuff.Mode;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;

class ButtonDrawable
  extends LayerDrawable
{
  protected int backgroundColor;
  protected int pressedBackgroundColor;
  
  public ButtonDrawable(Drawable paramDrawable)
  {
    super(new Drawable[] { paramDrawable });
  }
  
  public boolean isStateful()
  {
    return true;
  }
  
  protected boolean onStateChange(int[] paramArrayOfInt)
  {
    int j = paramArrayOfInt.length;
    int i = 0;
    if (i < j)
    {
      if (paramArrayOfInt[i] == 16842919) {
        super.setColorFilter(1711276032, PorterDuff.Mode.MULTIPLY);
      }
      for (;;)
      {
        i += 1;
        break;
        super.clearColorFilter();
      }
    }
    return super.onStateChange(paramArrayOfInt);
  }
}

/* Location:
 * Qualified Name:     mobi.monaca.framework.nativeui.component.view.ButtonDrawable
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */