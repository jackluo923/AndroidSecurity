package uk.co.senab.photoview;

import android.content.Context;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.util.AttributeSet;
import android.view.View.OnLongClickListener;
import android.widget.ImageView;
import android.widget.ImageView.ScaleType;

public class PhotoView
  extends ImageView
{
  private final b a;
  private ImageView.ScaleType b;
  
  public PhotoView(Context paramContext)
  {
    this(paramContext, null);
  }
  
  public PhotoView(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 0);
  }
  
  public PhotoView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    super.setScaleType(ImageView.ScaleType.MATRIX);
    a = new b(this);
    if (b != null)
    {
      setScaleType(b);
      b = null;
    }
  }
  
  public RectF getDisplayRect()
  {
    return a.b();
  }
  
  public float getMaxScale()
  {
    return a.f();
  }
  
  public float getMidScale()
  {
    return a.e();
  }
  
  public float getMinScale()
  {
    return a.d();
  }
  
  public float getScale()
  {
    return a.g();
  }
  
  public ImageView.ScaleType getScaleType()
  {
    return a.h();
  }
  
  protected void onDetachedFromWindow()
  {
    a.a();
    super.onDetachedFromWindow();
  }
  
  public void setAllowParentInterceptOnEdge(boolean paramBoolean)
  {
    a.a(paramBoolean);
  }
  
  public void setImageDrawable(Drawable paramDrawable)
  {
    super.setImageDrawable(paramDrawable);
    if (a != null) {
      a.i();
    }
  }
  
  public void setImageResource(int paramInt)
  {
    super.setImageResource(paramInt);
    if (a != null) {
      a.i();
    }
  }
  
  public void setImageURI(Uri paramUri)
  {
    super.setImageURI(paramUri);
    if (a != null) {
      a.i();
    }
  }
  
  public void setMaxScale(float paramFloat)
  {
    a.c(paramFloat);
  }
  
  public void setMidScale(float paramFloat)
  {
    a.b(paramFloat);
  }
  
  public void setMinScale(float paramFloat)
  {
    a.a(paramFloat);
  }
  
  public void setOnLongClickListener(View.OnLongClickListener paramOnLongClickListener)
  {
    a.a(paramOnLongClickListener);
  }
  
  public void setOnMatrixChangeListener(g paramg)
  {
    a.a(paramg);
  }
  
  public void setOnPhotoTapListener(h paramh)
  {
    a.a(paramh);
  }
  
  public void setOnViewTapListener(i parami)
  {
    a.a(parami);
  }
  
  public void setScaleType(ImageView.ScaleType paramScaleType)
  {
    if (a != null)
    {
      a.a(paramScaleType);
      return;
    }
    b = paramScaleType;
  }
  
  public void setZoomable(boolean paramBoolean)
  {
    a.b(paramBoolean);
  }
}

/* Location:
 * Qualified Name:     uk.co.senab.photoview.PhotoView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */