package net.simonvt.menudrawer;

import android.app.Activity;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.graphics.drawable.GradientDrawable.Orientation;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewParent;
import android.view.ViewTreeObserver;
import android.view.ViewTreeObserver.OnScrollChangedListener;
import android.view.Window;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.AnimationUtils;
import android.view.animation.Interpolator;
import android.widget.ImageView;
import java.lang.reflect.Method;
import net.simonvt.menudrawer.a.c;

public abstract class MenuDrawer
  extends ViewGroup
{
  static final boolean q;
  protected static final Interpolator r;
  protected static final Interpolator s;
  protected int A;
  protected final Rect B = new Rect();
  protected a C;
  protected a D;
  protected int E;
  protected boolean F;
  protected int G = 0;
  protected int H;
  protected int I;
  protected int J = 1;
  protected boolean K = true;
  protected int L;
  protected float M;
  protected boolean N;
  protected Bundle O;
  protected int P = 600;
  protected p Q;
  protected af R;
  protected Drawable S;
  protected boolean T;
  protected boolean U;
  protected final Rect V = new Rect();
  protected float W;
  protected boolean Z;
  private boolean a;
  private ViewTreeObserver.OnScrollChangedListener aa = new m(this);
  private boolean b;
  private final Rect c = new Rect();
  private View d;
  private int e = 0;
  private o f;
  private Activity g;
  private k h;
  private Runnable i = new l(this);
  private net.simonvt.menudrawer.a.a j;
  private int k;
  private int l;
  private int m;
  private x n;
  private x o;
  private final Rect p = new Rect();
  protected Drawable t;
  protected boolean u;
  protected int v;
  protected Drawable w;
  protected int x;
  protected Bitmap y;
  protected View z;
  
  static
  {
    if (Build.VERSION.SDK_INT >= 14) {}
    for (boolean bool = true;; bool = false)
    {
      q = bool;
      r = new ai();
      s = new AccelerateInterpolator();
      return;
    }
  }
  
  MenuDrawer(Activity paramActivity, int paramInt)
  {
    this(paramActivity);
    g = paramActivity;
    e = paramInt;
  }
  
  public MenuDrawer(Context paramContext)
  {
    this(paramContext, (byte)0);
  }
  
  private MenuDrawer(Context paramContext, byte paramByte)
  {
    this(paramContext, z.menuDrawerStyle);
  }
  
  private MenuDrawer(Context paramContext, int paramInt)
  {
    super(paramContext, null, paramInt);
    a(paramContext, null, paramInt);
  }
  
  public static MenuDrawer a(Activity paramActivity, r paramr, x paramx, int paramInt)
  {
    if (paramr == r.b) {
      paramr = new aj(paramActivity);
    }
    for (;;)
    {
      e = paramInt;
      paramr.setPosition(paramx);
      paramr.setId(aa.md__drawer);
      switch (paramInt)
      {
      default: 
        throw new RuntimeException("Unknown menu mode: " + paramInt);
        if (paramr == r.c)
        {
          paramr = new t(paramActivity, paramInt);
          if ((paramx == x.a) || (paramx == x.e)) {
            paramr.setupUpIndicator(paramActivity);
          }
        }
        else
        {
          paramr = new ag(paramActivity, paramInt);
          if ((paramx == x.a) || (paramx == x.e)) {
            paramr.setupUpIndicator(paramActivity);
          }
        }
        break;
      case 0: 
        paramActivity = (ViewGroup)paramActivity.findViewById(16908290);
        paramActivity.removeAllViews();
        paramActivity.addView(paramr, -1, -1);
        return paramr;
      case 1: 
        paramActivity = (ViewGroup)paramActivity.getWindow().getDecorView();
        paramx = (ViewGroup)paramActivity.getChildAt(0);
        paramActivity.removeAllViews();
        paramActivity.addView(paramr, -1, -1);
        D.addView(paramx, paramx.getLayoutParams());
        return paramr;
      }
    }
  }
  
  private void c()
  {
    int i1 = 1;
    k localk = h;
    if (h) {
      i1 = 0;
    }
    while (i1 != 0)
    {
      M = h.c;
      invalidate();
      if (h.h) {
        break;
      }
      postOnAnimation(i);
      return;
      int i2 = (int)(AnimationUtils.currentAnimationTimeMillis() - d);
      if (i2 < e)
      {
        float f1 = i2;
        float f2 = f;
        f1 = i.getInterpolation(f1 * f2);
        f2 = a;
        c = (f1 * g + f2);
      }
      else
      {
        c = b;
        h = true;
      }
    }
    d();
  }
  
  private void d()
  {
    M = 1.0F;
    N = false;
    invalidate();
  }
  
  private int getIndicatorStartPos()
  {
    switch (n.a[getPosition().ordinal()])
    {
    default: 
      return p.top;
    case 2: 
      return p.left;
    case 3: 
      return p.top;
    }
    return p.left;
  }
  
  private void setPosition(x paramx)
  {
    n = paramx;
    o = getPosition();
  }
  
  protected final int a(int paramInt)
  {
    return (int)(getResourcesgetDisplayMetricsdensity * paramInt + 0.5F);
  }
  
  public abstract void a();
  
  protected void a(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    setWillNotDraw(false);
    setFocusable(false);
    paramAttributeSet = paramContext.obtainStyledAttributes(paramAttributeSet, ac.MenuDrawer, z.menuDrawerStyle, ab.Widget_MenuDrawer);
    Drawable localDrawable1 = paramAttributeSet.getDrawable(0);
    Drawable localDrawable2 = paramAttributeSet.getDrawable(1);
    E = paramAttributeSet.getDimensionPixelSize(2, a(240));
    paramInt = paramAttributeSet.getResourceId(3, 0);
    if (paramInt != 0) {
      y = BitmapFactory.decodeResource(getResources(), paramInt);
    }
    u = paramAttributeSet.getBoolean(4, true);
    w = paramAttributeSet.getDrawable(7);
    if (w == null) {
      v = paramAttributeSet.getColor(6, -16777216);
    }
    for (;;)
    {
      x = paramAttributeSet.getDimensionPixelSize(5, a(6));
      H = paramAttributeSet.getDimensionPixelSize(8, a(24));
      b = paramAttributeSet.getBoolean(9, false);
      P = paramAttributeSet.getInt(10, 600);
      paramInt = paramAttributeSet.getResourceId(11, -1);
      if (paramInt != -1) {
        setSlideDrawable(paramInt);
      }
      l = paramAttributeSet.getResourceId(12, 0);
      m = paramAttributeSet.getResourceId(13, 0);
      Z = paramAttributeSet.getBoolean(14, true);
      setPosition(x.a(paramAttributeSet.getInt(15, 0)));
      paramAttributeSet.recycle();
      C = new s(paramContext);
      C.setId(aa.md__menu);
      C.setBackgroundDrawable(localDrawable2);
      D = new s(paramContext);
      D.setId(aa.md__content);
      D.setBackgroundDrawable(localDrawable1);
      t = new d((byte)0);
      h = new k(r);
      return;
      a = true;
    }
  }
  
  protected abstract void a(Canvas paramCanvas);
  
  void a(Bundle paramBundle) {}
  
  public void a(Parcelable paramParcelable)
  {
    O = ((Bundle)paramParcelable);
  }
  
  public abstract void a(boolean paramBoolean);
  
  protected final boolean a(View paramView)
  {
    for (paramView = paramView.getParent(); paramView != null; paramView = paramView.getParent()) {
      if (paramView == this) {
        return true;
      }
    }
    return false;
  }
  
  protected abstract void b(int paramInt);
  
  public abstract boolean b();
  
  protected void dispatchDraw(Canvas paramCanvas)
  {
    int i5 = 0;
    super.dispatchDraw(paramCanvas);
    int i2 = (int)W;
    if ((Z) && (i2 != 0)) {
      a(paramCanvas);
    }
    if ((u) && ((i2 != 0) || (U)))
    {
      if (w == null) {
        setDropShadowColor(v);
      }
      l();
      w.setBounds(V);
      w.draw(paramCanvas);
    }
    int i1;
    Integer localInteger;
    label155:
    float f1;
    label196:
    int i4;
    int i8;
    int i6;
    int i7;
    int i3;
    if ((z != null) && (y != null) && (a(z)))
    {
      i1 = 1;
      if ((i1 != 0) && ((i2 != 0) || (U)))
      {
        localInteger = (Integer)z.getTag(aa.mdActiveViewPosition);
        if (localInteger != null) {
          break label469;
        }
        i1 = 0;
        if (i1 == A)
        {
          z.getDrawingRect(B);
          offsetDescendantRectToMyCoords(z, B);
          if (!U) {
            break label478;
          }
          f1 = 1.0F;
          f1 = 1.0F - s.getInterpolation(1.0F - f1);
          i4 = y.getWidth();
          i8 = y.getHeight();
          i6 = (int)(i4 * f1);
          i7 = (int)(f1 * i8);
          i3 = L;
          switch (n.a[getPosition().ordinal()])
          {
          default: 
            i1 = 0;
            i2 = 0;
            i3 = 0;
            i4 = 0;
            label304:
            switch (n.a[getPosition().ordinal()])
            {
            default: 
              label344:
              p.left = i4;
              p.top = i3;
              p.right = i2;
              p.bottom = i1;
              paramCanvas.save();
              paramCanvas.clipRect(p);
              switch (n.a[getPosition().ordinal()])
              {
              default: 
                i1 = 0;
                i2 = i5;
              }
              break;
            }
            break;
          }
        }
      }
    }
    for (;;)
    {
      paramCanvas.drawBitmap(y, i1, i2, null);
      paramCanvas.restore();
      return;
      i1 = 0;
      break;
      label469:
      i1 = localInteger.intValue();
      break label155;
      label478:
      f1 = Math.abs(W) / E;
      break label196;
      i2 = B.top + (B.height() - i8) / 2;
      i1 = i2;
      if (N)
      {
        f1 = i3;
        i1 = (int)((i2 - i3) * M + f1);
      }
      i3 = i1;
      i4 = 0;
      i1 += i8;
      i2 = 0;
      break label304;
      i2 = B.left + (B.width() - i4) / 2;
      i1 = i2;
      if (N)
      {
        f1 = i3;
        i1 = (int)((i2 - i3) * M + f1);
      }
      i2 = i4 + i1;
      i3 = 0;
      i4 = i1;
      i1 = 0;
      break label304;
      i2 = al.a(D);
      i4 = i2 - i6;
      break label344;
      i1 = al.b(D);
      i3 = i1 - i7;
      break label344;
      i4 = al.c(D);
      i2 = i4 + i6;
      break label344;
      i3 = al.d(D);
      i1 = i3 + i7;
      break label344;
      i1 = p.left;
      i2 = p.top;
      continue;
      i1 = p.right - y.getWidth();
      i2 = p.top;
      continue;
      i1 = p.left;
      i2 = p.bottom - y.getHeight();
    }
  }
  
  protected boolean fitSystemWindows(Rect paramRect)
  {
    if ((e == 1) && (n != x.d)) {
      C.setPadding(0, top, 0, 0);
    }
    return super.fitSystemWindows(paramRect);
  }
  
  public boolean getAllowIndicatorAnimation()
  {
    return b;
  }
  
  public ViewGroup getContentContainer()
  {
    if (e == 0) {
      return D;
    }
    return (ViewGroup)findViewById(16908290);
  }
  
  public boolean getDrawOverlay()
  {
    return Z;
  }
  
  public int getDrawerState()
  {
    return G;
  }
  
  public Drawable getDropShadow()
  {
    return w;
  }
  
  protected GradientDrawable.Orientation getDropShadowOrientation()
  {
    switch (n.a[getPosition().ordinal()])
    {
    default: 
      return GradientDrawable.Orientation.RIGHT_LEFT;
    case 2: 
      return GradientDrawable.Orientation.BOTTOM_TOP;
    case 3: 
      return GradientDrawable.Orientation.LEFT_RIGHT;
    }
    return GradientDrawable.Orientation.TOP_BOTTOM;
  }
  
  public ViewGroup getMenuContainer()
  {
    return C;
  }
  
  public int getMenuSize()
  {
    return E;
  }
  
  public View getMenuView()
  {
    return d;
  }
  
  public abstract boolean getOffsetMenuEnabled();
  
  protected x getPosition()
  {
    int i1 = al.e(this);
    switch (n.a[n.ordinal()])
    {
    default: 
      return n;
    case 5: 
      if (i1 == 1) {
        return x.c;
      }
      return x.a;
    }
    if (i1 == 1) {
      return x.a;
    }
    return x.c;
  }
  
  public abstract int getTouchBezelSize();
  
  public abstract int getTouchMode();
  
  protected void l()
  {
    switch (n.a[getPosition().ordinal()])
    {
    default: 
      return;
    case 1: 
      V.top = 0;
      V.bottom = getHeight();
      V.right = al.a(D);
      V.left = (V.right - x);
      return;
    case 2: 
      V.left = 0;
      V.right = getWidth();
      V.bottom = al.b(D);
      V.top = (V.bottom - x);
      return;
    case 3: 
      V.top = 0;
      V.bottom = getHeight();
      V.left = al.c(D);
      V.right = (V.left + x);
      return;
    }
    V.left = 0;
    V.right = getWidth();
    V.top = al.d(D);
    V.bottom = (V.top + x);
  }
  
  public final void m()
  {
    a();
  }
  
  public final void n()
  {
    a(true);
  }
  
  public final void o()
  {
    p();
  }
  
  protected void onAttachedToWindow()
  {
    super.onAttachedToWindow();
    getViewTreeObserver().addOnScrollChangedListener(aa);
  }
  
  protected void onDetachedFromWindow()
  {
    getViewTreeObserver().removeOnScrollChangedListener(aa);
    super.onDetachedFromWindow();
  }
  
  protected void onFinishInflate()
  {
    super.onFinishInflate();
    View localView = findViewById(aa.mdMenu);
    if (localView != null)
    {
      removeView(localView);
      setMenuView(localView);
    }
    localView = findViewById(aa.mdContent);
    if (localView != null)
    {
      removeView(localView);
      setContentView(localView);
    }
    if (getChildCount() > 2) {
      throw new IllegalStateException("Menu and content view added in xml must have id's @id/mdMenu and @id/mdContent");
    }
  }
  
  protected void onRestoreInstanceState(Parcelable paramParcelable)
  {
    paramParcelable = (MenuDrawer.SavedState)paramParcelable;
    super.onRestoreInstanceState(paramParcelable.getSuperState());
    a(a);
  }
  
  public void onRtlPropertiesChanged(int paramInt)
  {
    boolean bool = true;
    super.onRtlPropertiesChanged(paramInt);
    if (!a) {
      setDropShadowColor(v);
    }
    if (getPosition() != o)
    {
      o = getPosition();
      setOffsetPixels(W * -1.0F);
    }
    af localaf;
    if (R != null)
    {
      localaf = R;
      if (paramInt != 1) {
        break label84;
      }
    }
    for (;;)
    {
      localaf.a(bool);
      requestLayout();
      invalidate();
      return;
      label84:
      bool = false;
    }
  }
  
  protected Parcelable onSaveInstanceState()
  {
    MenuDrawer.SavedState localSavedState = new MenuDrawer.SavedState(super.onSaveInstanceState());
    if (O == null) {
      O = new Bundle();
    }
    a(O);
    a = O;
    return localSavedState;
  }
  
  public abstract void p();
  
  public void postOnAnimation(Runnable paramRunnable)
  {
    if (Build.VERSION.SDK_INT >= 16)
    {
      super.postOnAnimation(paramRunnable);
      return;
    }
    postDelayed(paramRunnable, 16L);
  }
  
  protected final void q()
  {
    if (J == 1)
    {
      I = H;
      return;
    }
    if (J == 2)
    {
      I = getMeasuredWidth();
      return;
    }
    I = 0;
  }
  
  public void setActiveView(View paramView)
  {
    View localView = z;
    z = paramView;
    A = 0;
    if ((b) && (localView != null))
    {
      L = getIndicatorStartPos();
      N = true;
      paramView = h;
      h = false;
      e = 800;
      d = AnimationUtils.currentAnimationTimeMillis();
      a = 0.0F;
      b = 1.0F;
      g = 1.0F;
      f = (1.0F / e);
      c();
    }
    invalidate();
  }
  
  public void setAllowIndicatorAnimation(boolean paramBoolean)
  {
    if (paramBoolean != b)
    {
      b = paramBoolean;
      d();
    }
  }
  
  public void setContentView(int paramInt)
  {
    switch (e)
    {
    default: 
      return;
    case 0: 
      D.removeAllViews();
      LayoutInflater.from(getContext()).inflate(paramInt, D, true);
      return;
    }
    g.setContentView(paramInt);
  }
  
  public void setContentView(View paramView)
  {
    ViewGroup.LayoutParams localLayoutParams = new ViewGroup.LayoutParams(-1, -1);
    switch (e)
    {
    default: 
      return;
    case 0: 
      D.removeAllViews();
      D.addView(paramView, localLayoutParams);
      return;
    }
    g.setContentView(paramView, localLayoutParams);
  }
  
  public void setDrawOverlay(boolean paramBoolean)
  {
    Z = paramBoolean;
  }
  
  public void setDrawerIndicatorEnabled(boolean paramBoolean)
  {
    if (j == null) {
      throw new IllegalStateException("setupUpIndicator(Activity) has not been called");
    }
    T = paramBoolean;
    if (paramBoolean)
    {
      net.simonvt.menudrawer.a.a locala = j;
      af localaf = R;
      if (b()) {}
      for (int i1 = l;; i1 = m)
      {
        locala.a(localaf, i1);
        return;
      }
    }
    j.a(S, 0);
  }
  
  protected void setDrawerState(int paramInt)
  {
    if (paramInt != G)
    {
      int i1 = G;
      G = paramInt;
      if (f != null) {
        f.a(paramInt);
      }
    }
  }
  
  public void setDropShadow(int paramInt)
  {
    setDropShadow(getResources().getDrawable(paramInt));
  }
  
  public void setDropShadow(Drawable paramDrawable)
  {
    w = paramDrawable;
    if (paramDrawable != null) {}
    for (boolean bool = true;; bool = false)
    {
      a = bool;
      invalidate();
      return;
    }
  }
  
  public void setDropShadowColor(int paramInt)
  {
    w = new GradientDrawable(getDropShadowOrientation(), new int[] { paramInt, 0xFFFFFF & paramInt });
    invalidate();
  }
  
  public void setDropShadowEnabled(boolean paramBoolean)
  {
    u = paramBoolean;
    invalidate();
  }
  
  public void setDropShadowSize(int paramInt)
  {
    x = paramInt;
    invalidate();
  }
  
  public abstract void setHardwareLayerEnabled(boolean paramBoolean);
  
  public void setMaxAnimationDuration(int paramInt)
  {
    P = paramInt;
  }
  
  public abstract void setMenuSize(int paramInt);
  
  public void setMenuView(int paramInt)
  {
    C.removeAllViews();
    d = LayoutInflater.from(getContext()).inflate(paramInt, C, false);
    C.addView(d);
  }
  
  public void setMenuView(View paramView)
  {
    ViewGroup.LayoutParams localLayoutParams = new ViewGroup.LayoutParams(-1, -1);
    d = paramView;
    C.removeAllViews();
    C.addView(paramView, localLayoutParams);
  }
  
  public abstract void setOffsetMenuEnabled(boolean paramBoolean);
  
  protected void setOffsetPixels(float paramFloat)
  {
    int i2 = (int)W;
    int i3 = (int)paramFloat;
    W = paramFloat;
    int i1;
    Object localObject2;
    Object localObject1;
    Activity localActivity;
    if (R != null)
    {
      paramFloat = Math.abs(W) / E;
      R.a(paramFloat);
      if (!b()) {
        break label197;
      }
      i1 = l;
      if ((T) && (j != null) && (i1 != k))
      {
        k = i1;
        localObject2 = j;
        if ((!c) || (Build.VERSION.SDK_INT >= 14)) {
          break label217;
        }
        localObject1 = b;
        localActivity = a;
        localObject2 = (c)localObject1;
        if (a != null)
        {
          if (i1 != 0) {
            break label206;
          }
          localObject1 = null;
          label137:
          a.setContentDescription((CharSequence)localObject1);
        }
      }
    }
    label145:
    if (i3 != i2)
    {
      b(i3);
      if (i3 == 0) {
        break label241;
      }
    }
    label197:
    label206:
    label217:
    label241:
    for (boolean bool = true;; bool = false)
    {
      F = bool;
      Math.abs(i3);
      i1 = E;
      if (f != null) {
        localObject1 = f;
      }
      return;
      i1 = m;
      break;
      localObject1 = localActivity.getString(i1);
      break label137;
      if (Build.VERSION.SDK_INT < 11) {
        break label145;
      }
      net.simonvt.menudrawer.a.d.a(b, a, i1);
      break label145;
    }
  }
  
  public void setOnDrawerStateChangeListener(o paramo)
  {
    f = paramo;
  }
  
  public void setOnInterceptMoveEventListener(p paramp)
  {
    Q = paramp;
  }
  
  public void setSlideDrawable(int paramInt)
  {
    setSlideDrawable(getResources().getDrawable(paramInt));
  }
  
  public void setSlideDrawable(Drawable paramDrawable)
  {
    boolean bool = true;
    R = new af(paramDrawable);
    paramDrawable = R;
    if (al.e(this) == 1) {}
    for (;;)
    {
      paramDrawable.a(bool);
      if (j != null)
      {
        paramDrawable = j;
        if ((!c) || (Build.VERSION.SDK_INT >= 14)) {
          break label141;
        }
        paramDrawable = (c)b;
        if (c == null) {}
      }
      try
      {
        c.invoke(b, new Object[] { Boolean.valueOf(true) });
        label99:
        af localaf;
        if (T)
        {
          paramDrawable = j;
          localaf = R;
          if (!b()) {
            break label159;
          }
        }
        label141:
        label159:
        for (int i1 = l;; i1 = m)
        {
          paramDrawable.a(localaf, i1);
          return;
          bool = false;
          break;
          if (Build.VERSION.SDK_INT < 11) {
            break label99;
          }
          net.simonvt.menudrawer.a.d.c(a);
          break label99;
        }
      }
      catch (Throwable paramDrawable)
      {
        for (;;) {}
      }
    }
  }
  
  public abstract void setTouchBezelSize(int paramInt);
  
  public abstract void setTouchMode(int paramInt);
  
  public void setupUpIndicator(Activity paramActivity)
  {
    Object localObject;
    if (j == null)
    {
      j = new net.simonvt.menudrawer.a.a(paramActivity);
      paramActivity = j;
      if ((!c) || (Build.VERSION.SDK_INT >= 14)) {
        break label108;
      }
      paramActivity = (c)b;
      if (a == null) {
        break label103;
      }
      paramActivity = a.getDrawable();
      S = paramActivity;
      if (T)
      {
        paramActivity = j;
        localObject = R;
        if (!b()) {
          break label137;
        }
      }
    }
    label103:
    label108:
    label137:
    for (int i1 = l;; i1 = m)
    {
      paramActivity.a((Drawable)localObject, i1);
      return;
      paramActivity = null;
      break;
      if (Build.VERSION.SDK_INT >= 11)
      {
        localObject = b;
        paramActivity = net.simonvt.menudrawer.a.d.a(a);
        break;
      }
      paramActivity = null;
      break;
    }
  }
}

/* Location:
 * Qualified Name:     net.simonvt.menudrawer.MenuDrawer
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */