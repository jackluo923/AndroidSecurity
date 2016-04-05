package mobi.monaca.framework.nativeui.component;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.widget.Button;
import mobi.monaca.framework.MonacaApplication;
import mobi.monaca.framework.nativeui.NonScaleBitmapDrawable;
import mobi.monaca.framework.nativeui.UIUtil;
import mobi.monaca.framework.nativeui.exception.NativeUIIOException;
import mobi.monaca.framework.psedo.R.string;

public class ButtonComponent$MonacaImageButton
  extends Button
{
  public ButtonComponent$MonacaImageButton(ButtonComponent paramButtonComponent, Context paramContext)
  {
    super(paramContext);
  }
  
  private void resizeImage()
    throws NativeUIIOException
  {
    Bitmap localBitmap = ButtonComponent.access$100(this$0, MonacaApplication.getStringFromResource(R.string.nc_style_image));
    if (localBitmap != null)
    {
      Object localObject = localBitmap;
      if (getMeasuredHeight() > 0) {
        localObject = UIUtil.resizeBitmap(localBitmap, getMeasuredHeight());
      }
      localObject = new ButtonComponent.ImageButtonDrawable(this$0, new NonScaleBitmapDrawable((Bitmap)localObject), null);
      this$0.imageButton.setBackgroundDrawable((Drawable)localObject);
      this$0.imageButton.setPadding(0, 0, 0, 0);
      return;
    }
    this$0.imageButton.setBackgroundDrawable(null);
  }
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    try
    {
      Bitmap localBitmap = ButtonComponent.access$100(this$0, MonacaApplication.getStringFromResource(R.string.nc_style_image));
      if (localBitmap != null)
      {
        int i = localBitmap.getWidth();
        int j = localBitmap.getHeight();
        setMeasuredDimension(resolveSize(i, paramInt1), resolveSize(j, paramInt2));
        return;
      }
      super.onMeasure(paramInt1, paramInt2);
      return;
    }
    catch (NativeUIIOException localNativeUIIOException)
    {
      localNativeUIIOException.printStackTrace();
      super.onMeasure(paramInt1, paramInt2);
    }
  }
  
  protected void onSizeChanged(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    try
    {
      resizeImage();
      super.onSizeChanged(paramInt1, paramInt2, paramInt3, paramInt4);
      return;
    }
    catch (NativeUIIOException localNativeUIIOException)
    {
      for (;;)
      {
        localNativeUIIOException.printStackTrace();
      }
    }
  }
}

/* Location:
 * Qualified Name:     mobi.monaca.framework.nativeui.component.ButtonComponent.MonacaImageButton
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */