package uk.co.senab.photoview;

import android.content.Context;
import android.graphics.Matrix;
import android.graphics.Matrix.ScaleToFit;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.os.Build.VERSION;
import android.util.Log;
import android.view.GestureDetector;
import android.view.GestureDetector.OnDoubleTapListener;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnLongClickListener;
import android.view.View.OnTouchListener;
import android.view.ViewParent;
import android.view.ViewTreeObserver;
import android.view.ViewTreeObserver.OnGlobalLayoutListener;
import android.widget.ImageView;
import android.widget.ImageView.ScaleType;
import java.lang.ref.WeakReference;

public final class b
  implements GestureDetector.OnDoubleTapListener, View.OnTouchListener, ViewTreeObserver.OnGlobalLayoutListener, r
{
  static final boolean a = Log.isLoggable("PhotoViewAttacher", 3);
  private float b = 1.0F;
  private float c = 1.75F;
  private float d = 3.0F;
  private boolean e = true;
  private WeakReference<ImageView> f;
  private ViewTreeObserver g;
  private GestureDetector h;
  private m i;
  private final Matrix j = new Matrix();
  private final Matrix k = new Matrix();
  private final Matrix l = new Matrix();
  private final RectF m = new RectF();
  private final float[] n = new float[9];
  private g o;
  private h p;
  private i q;
  private View.OnLongClickListener r;
  private int s;
  private int t;
  private int u;
  private int v;
  private f w;
  private int x = 2;
  private boolean y;
  private ImageView.ScaleType z = ImageView.ScaleType.FIT_CENTER;
  
  public b(ImageView paramImageView)
  {
    f = new WeakReference(paramImageView);
    paramImageView.setOnTouchListener(this);
    g = paramImageView.getViewTreeObserver();
    g.addOnGlobalLayoutListener(this);
    b(paramImageView);
    Object localObject;
    int i1;
    if (!paramImageView.isInEditMode())
    {
      localObject = paramImageView.getContext();
      i1 = Build.VERSION.SDK_INT;
      if (i1 >= 5) {
        break label204;
      }
      localObject = new n((Context)localObject);
    }
    for (;;)
    {
      a = this;
      i = ((m)localObject);
      h = new GestureDetector(paramImageView.getContext(), new c(this));
      h.setOnDoubleTapListener(this);
      b(true);
      return;
      label204:
      if (i1 < 8) {
        localObject = new o((Context)localObject);
      } else {
        localObject = new p((Context)localObject);
      }
    }
  }
  
  private RectF a(Matrix paramMatrix)
  {
    Object localObject = c();
    if (localObject != null)
    {
      localObject = ((ImageView)localObject).getDrawable();
      if (localObject != null)
      {
        m.set(0.0F, 0.0F, ((Drawable)localObject).getIntrinsicWidth(), ((Drawable)localObject).getIntrinsicHeight());
        paramMatrix.mapRect(m);
        return m;
      }
    }
    return null;
  }
  
  private void a(Drawable paramDrawable)
  {
    Object localObject = c();
    if ((localObject == null) || (paramDrawable == null)) {
      return;
    }
    float f1 = ((ImageView)localObject).getWidth();
    float f2 = ((ImageView)localObject).getHeight();
    int i1 = paramDrawable.getIntrinsicWidth();
    int i2 = paramDrawable.getIntrinsicHeight();
    j.reset();
    float f3 = f1 / i1;
    float f4 = f2 / i2;
    if (z == ImageView.ScaleType.CENTER) {
      j.postTranslate((f1 - i1) / 2.0F, (f2 - i2) / 2.0F);
    }
    for (;;)
    {
      m();
      return;
      if (z == ImageView.ScaleType.CENTER_CROP)
      {
        f3 = Math.max(f3, f4);
        j.postScale(f3, f3);
        j.postTranslate((f1 - i1 * f3) / 2.0F, (f2 - i2 * f3) / 2.0F);
      }
      else if (z == ImageView.ScaleType.CENTER_INSIDE)
      {
        f3 = Math.min(1.0F, Math.min(f3, f4));
        j.postScale(f3, f3);
        j.postTranslate((f1 - i1 * f3) / 2.0F, (f2 - i2 * f3) / 2.0F);
      }
      else
      {
        paramDrawable = new RectF(0.0F, 0.0F, i1, i2);
        localObject = new RectF(0.0F, 0.0F, f1, f2);
        switch (d.a[z.ordinal()])
        {
        default: 
          break;
        case 2: 
          j.setRectToRect(paramDrawable, (RectF)localObject, Matrix.ScaleToFit.START);
          break;
        case 4: 
          j.setRectToRect(paramDrawable, (RectF)localObject, Matrix.ScaleToFit.CENTER);
          break;
        case 3: 
          j.setRectToRect(paramDrawable, (RectF)localObject, Matrix.ScaleToFit.END);
          break;
        case 5: 
          j.setRectToRect(paramDrawable, (RectF)localObject, Matrix.ScaleToFit.FILL);
        }
      }
    }
  }
  
  private static boolean a(ImageView paramImageView)
  {
    return (paramImageView != null) && (paramImageView.getDrawable() != null);
  }
  
  private static void b(float paramFloat1, float paramFloat2, float paramFloat3)
  {
    if (paramFloat1 >= paramFloat2) {
      throw new IllegalArgumentException("MinZoom should be less than MidZoom");
    }
    if (paramFloat2 >= paramFloat3) {
      throw new IllegalArgumentException("MidZoom should be less than MaxZoom");
    }
  }
  
  private void b(Matrix paramMatrix)
  {
    ImageView localImageView1 = c();
    if (localImageView1 != null)
    {
      ImageView localImageView2 = c();
      if ((localImageView2 != null) && (!(localImageView2 instanceof PhotoView)) && (localImageView2.getScaleType() != ImageView.ScaleType.MATRIX)) {
        throw new IllegalStateException("The ImageView's ScaleType has been changed since attaching a PhotoViewAttacher");
      }
      localImageView1.setImageMatrix(paramMatrix);
      if ((o != null) && (a(paramMatrix) != null)) {
        paramMatrix = o;
      }
    }
  }
  
  private static void b(ImageView paramImageView)
  {
    if ((paramImageView != null) && (!(paramImageView instanceof PhotoView))) {
      paramImageView.setScaleType(ImageView.ScaleType.MATRIX);
    }
  }
  
  private void c(float paramFloat1, float paramFloat2, float paramFloat3)
  {
    ImageView localImageView = c();
    if (localImageView != null) {
      localImageView.post(new e(this, g(), paramFloat1, paramFloat2, paramFloat3));
    }
  }
  
  private void k()
  {
    l();
    b(j());
  }
  
  private void l()
  {
    float f2 = 0.0F;
    ImageView localImageView = c();
    if (localImageView == null) {}
    RectF localRectF;
    do
    {
      return;
      localRectF = a(j());
    } while (localRectF == null);
    float f1 = localRectF.height();
    float f3 = localRectF.width();
    int i1 = localImageView.getHeight();
    if (f1 <= i1) {
      switch (d.a[z.ordinal()])
      {
      default: 
        f1 = (i1 - f1) / 2.0F - top;
      }
    }
    for (;;)
    {
      i1 = localImageView.getWidth();
      if (f3 <= i1) {
        switch (d.a[z.ordinal()])
        {
        default: 
          f2 = (i1 - f3) / 2.0F - left;
          label166:
          x = 2;
        }
      }
      for (;;)
      {
        l.postTranslate(f2, f1);
        return;
        f1 = -top;
        break;
        f1 = i1 - f1 - top;
        break;
        if (top > 0.0F)
        {
          f1 = -top;
          break;
        }
        if (bottom >= i1) {
          break label340;
        }
        f1 = i1 - bottom;
        break;
        f2 = -left;
        break label166;
        f2 = i1 - f3 - left;
        break label166;
        if (left > 0.0F)
        {
          x = 0;
          f2 = -left;
        }
        else if (right < i1)
        {
          f2 = i1 - right;
          x = 1;
        }
        else
        {
          x = -1;
        }
      }
      label340:
      f1 = 0.0F;
    }
  }
  
  private void m()
  {
    l.reset();
    b(j());
    l();
  }
  
  public final void a()
  {
    if ((g != null) && (g.isAlive())) {
      g.removeGlobalOnLayoutListener(this);
    }
    g = null;
    o = null;
    p = null;
    q = null;
    f = null;
  }
  
  public final void a(float paramFloat)
  {
    b(paramFloat, c, d);
    b = paramFloat;
  }
  
  public final void a(float paramFloat1, float paramFloat2)
  {
    if (a) {
      Log.d("PhotoViewAttacher", String.format("onDrag: dx: %.2f. dy: %.2f", new Object[] { Float.valueOf(paramFloat1), Float.valueOf(paramFloat2) }));
    }
    ImageView localImageView = c();
    if ((localImageView != null) && (a(localImageView)))
    {
      l.postTranslate(paramFloat1, paramFloat2);
      k();
      if ((e) && (!i.a()) && ((x == 2) || ((x == 0) && (paramFloat1 >= 1.0F)) || ((x == 1) && (paramFloat1 <= -1.0F)))) {
        localImageView.getParent().requestDisallowInterceptTouchEvent(false);
      }
    }
  }
  
  public final void a(float paramFloat1, float paramFloat2, float paramFloat3)
  {
    if (a) {
      Log.d("PhotoViewAttacher", String.format("onScale: scale: %.2f. fX: %.2f. fY: %.2f", new Object[] { Float.valueOf(paramFloat1), Float.valueOf(paramFloat2), Float.valueOf(paramFloat3) }));
    }
    if ((a(c())) && ((g() < d) || (paramFloat1 < 1.0F)))
    {
      l.postScale(paramFloat1, paramFloat1, paramFloat2, paramFloat3);
      k();
    }
  }
  
  public final void a(float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4)
  {
    if (a) {
      Log.d("PhotoViewAttacher", "onFling. sX: " + paramFloat1 + " sY: " + paramFloat2 + " Vx: " + paramFloat3 + " Vy: " + paramFloat4);
    }
    ImageView localImageView = c();
    if (a(localImageView))
    {
      w = new f(this, localImageView.getContext());
      w.a(localImageView.getWidth(), localImageView.getHeight(), (int)paramFloat3, (int)paramFloat4);
      localImageView.post(w);
    }
  }
  
  public final void a(View.OnLongClickListener paramOnLongClickListener)
  {
    r = paramOnLongClickListener;
  }
  
  public final void a(ImageView.ScaleType paramScaleType)
  {
    if (paramScaleType == null) {}
    for (int i1 = 0;; i1 = 1)
    {
      if ((i1 != 0) && (paramScaleType != z))
      {
        z = paramScaleType;
        i();
      }
      return;
      switch (d.a[paramScaleType.ordinal()])
      {
      }
    }
    throw new IllegalArgumentException(paramScaleType.name() + " is not supported in PhotoView");
  }
  
  public final void a(g paramg)
  {
    o = paramg;
  }
  
  public final void a(h paramh)
  {
    p = paramh;
  }
  
  public final void a(i parami)
  {
    q = parami;
  }
  
  public final void a(boolean paramBoolean)
  {
    e = paramBoolean;
  }
  
  public final RectF b()
  {
    l();
    return a(j());
  }
  
  public final void b(float paramFloat)
  {
    b(b, paramFloat, d);
    c = paramFloat;
  }
  
  public final void b(boolean paramBoolean)
  {
    y = paramBoolean;
    i();
  }
  
  public final ImageView c()
  {
    ImageView localImageView = null;
    if (f != null) {
      localImageView = (ImageView)f.get();
    }
    if (localImageView == null) {
      a();
    }
    return localImageView;
  }
  
  public final void c(float paramFloat)
  {
    b(b, c, paramFloat);
    d = paramFloat;
  }
  
  public final float d()
  {
    return b;
  }
  
  public final float e()
  {
    return c;
  }
  
  public final float f()
  {
    return d;
  }
  
  public final float g()
  {
    l.getValues(n);
    return n[0];
  }
  
  public final ImageView.ScaleType h()
  {
    return z;
  }
  
  public final void i()
  {
    ImageView localImageView = c();
    if (localImageView != null)
    {
      if (y)
      {
        b(localImageView);
        a(localImageView.getDrawable());
      }
    }
    else {
      return;
    }
    m();
  }
  
  protected final Matrix j()
  {
    k.set(j);
    k.postConcat(l);
    return k;
  }
  
  public final boolean onDoubleTap(MotionEvent paramMotionEvent)
  {
    try
    {
      float f1 = g();
      float f2 = paramMotionEvent.getX();
      float f3 = paramMotionEvent.getY();
      if (f1 < c) {
        c(c, f2, f3);
      } else if ((f1 >= c) && (f1 < d)) {
        c(d, f2, f3);
      } else {
        c(b, f2, f3);
      }
    }
    catch (ArrayIndexOutOfBoundsException paramMotionEvent)
    {
      for (;;) {}
    }
    return true;
  }
  
  public final boolean onDoubleTapEvent(MotionEvent paramMotionEvent)
  {
    return false;
  }
  
  public final void onGlobalLayout()
  {
    ImageView localImageView = c();
    if ((localImageView != null) && (y))
    {
      int i1 = localImageView.getTop();
      int i2 = localImageView.getRight();
      int i3 = localImageView.getBottom();
      int i4 = localImageView.getLeft();
      if ((i1 != s) || (i3 != u) || (i4 != v) || (i2 != t))
      {
        a(localImageView.getDrawable());
        s = i1;
        t = i2;
        u = i3;
        v = i4;
      }
    }
  }
  
  public final boolean onSingleTapConfirmed(MotionEvent paramMotionEvent)
  {
    if (c() != null)
    {
      Object localObject;
      if (p != null)
      {
        localObject = b();
        if ((localObject != null) && (((RectF)localObject).contains(paramMotionEvent.getX(), paramMotionEvent.getY())))
        {
          float f1 = left;
          ((RectF)localObject).width();
          f1 = top;
          ((RectF)localObject).height();
          paramMotionEvent = p;
          return true;
        }
      }
      if (q != null)
      {
        localObject = q;
        paramMotionEvent.getX();
        paramMotionEvent.getY();
        ((i)localObject).a();
      }
    }
    return false;
  }
  
  public final boolean onTouch(View paramView, MotionEvent paramMotionEvent)
  {
    boolean bool1 = false;
    boolean bool2 = false;
    if (y)
    {
      bool1 = bool2;
      switch (paramMotionEvent.getAction())
      {
      default: 
        bool1 = bool2;
      }
    }
    for (;;)
    {
      bool2 = bool1;
      if (h != null)
      {
        bool2 = bool1;
        if (h.onTouchEvent(paramMotionEvent)) {
          bool2 = true;
        }
      }
      bool1 = bool2;
      if (i != null)
      {
        bool1 = bool2;
        if (i.a(paramMotionEvent)) {
          bool1 = true;
        }
      }
      return bool1;
      paramView.getParent().requestDisallowInterceptTouchEvent(true);
      bool1 = bool2;
      if (w != null)
      {
        w.a();
        w = null;
        bool1 = bool2;
        continue;
        bool1 = bool2;
        if (g() < b)
        {
          RectF localRectF = b();
          bool1 = bool2;
          if (localRectF != null)
          {
            paramView.post(new e(this, g(), b, localRectF.centerX(), localRectF.centerY()));
            bool1 = true;
          }
        }
      }
    }
  }
}

/* Location:
 * Qualified Name:     uk.co.senab.photoview.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */