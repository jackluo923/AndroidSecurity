package com.mobeta.android.dslv;

import android.content.Context;
import android.content.res.TypedArray;
import android.database.DataSetObserver;
import android.graphics.Canvas;
import android.graphics.Point;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.util.SparseIntArray;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewParent;
import android.widget.AbsListView.LayoutParams;
import android.widget.ListAdapter;
import android.widget.ListView;
import java.util.ArrayList;

public class DragSortListView
  extends ListView
{
  private View[] A = new View[1];
  private k B;
  private float C = 0.33333334F;
  private float D = 0.33333334F;
  private int E;
  private int F;
  private float G;
  private float H;
  private float I;
  private float J;
  private float K = 0.5F;
  private j L = new e(this);
  private int M;
  private int N;
  private int O;
  private int P;
  private int Q;
  private int R = 0;
  private boolean S = false;
  private boolean T = false;
  private p U = null;
  private MotionEvent V;
  private int W = 0;
  private float Z = 0.25F;
  private View a;
  private float aa = 0.0F;
  private g ab;
  private boolean ac = false;
  private m ad;
  private boolean ae = false;
  private boolean af = false;
  private q ag = new q(this);
  private s ah;
  private r ai;
  private n aj;
  private boolean ak;
  private float al = 0.0F;
  private boolean am = false;
  private boolean an = false;
  private Point b = new Point();
  private Point c = new Point();
  private int d;
  private boolean e = false;
  private DataSetObserver f;
  private float g = 1.0F;
  private float h = 1.0F;
  private int i;
  private int j;
  private int k;
  private boolean l = false;
  private int m;
  private int n;
  private int o;
  private int p;
  private int q;
  private i r;
  private o s;
  private t t;
  private boolean u = true;
  private int v = 0;
  private int w = 1;
  private int x;
  private int y;
  private int z = 0;
  
  public DragSortListView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    int i2 = 150;
    int i1 = 150;
    if (paramAttributeSet != null)
    {
      paramContext = getContext().obtainStyledAttributes(paramAttributeSet, w.DragSortListView, 0, 0);
      w = Math.max(1, paramContext.getDimensionPixelSize(0, 1));
      ac = paramContext.getBoolean(5, false);
      if (ac) {
        ad = new m(this);
      }
      g = paramContext.getFloat(6, g);
      h = g;
      u = paramContext.getBoolean(10, u);
      Z = Math.max(0.0F, Math.min(1.0F, 1.0F - paramContext.getFloat(7, 0.75F)));
      if (Z <= 0.0F) {
        break label589;
      }
    }
    label589:
    for (boolean bool1 = true;; bool1 = false)
    {
      l = bool1;
      setDragScrollStart(paramContext.getFloat(1, C));
      K = paramContext.getFloat(2, K);
      i2 = paramContext.getInt(8, 150);
      i1 = paramContext.getInt(9, 150);
      if (paramContext.getBoolean(17, true))
      {
        bool1 = paramContext.getBoolean(12, false);
        int i3 = paramContext.getInt(4, 1);
        boolean bool2 = paramContext.getBoolean(11, true);
        int i4 = paramContext.getInt(13, 0);
        int i5 = paramContext.getResourceId(14, 0);
        int i6 = paramContext.getResourceId(15, 0);
        int i7 = paramContext.getResourceId(16, 0);
        int i8 = paramContext.getColor(3, -16777216);
        paramAttributeSet = new a(this, i5, i4, i3, i7, i6);
        paramAttributeSet.b(bool1);
        paramAttributeSet.a(bool2);
        a = i8;
        U = paramAttributeSet;
        setOnTouchListener(paramAttributeSet);
      }
      paramContext.recycle();
      B = new k(this);
      if (i2 > 0) {
        ah = new s(this, i2);
      }
      if (i1 > 0) {
        aj = new n(this, i1);
      }
      V = MotionEvent.obtain(0L, 0L, 3, 0.0F, 0.0F, 0.0F, 0.0F, 0, 0.0F, 0.0F, 0, 0);
      f = new f(this);
      return;
    }
  }
  
  private int a(int paramInt1, int paramInt2)
  {
    int i1 = getHeaderViewsCount();
    int i2 = getFooterViewsCount();
    if ((paramInt1 <= i1) || (paramInt1 >= getCount() - i2)) {
      return paramInt2;
    }
    i2 = getDividerHeight();
    int i4 = x - w;
    int i3 = c(paramInt1);
    int i5 = b(paramInt1);
    if (k <= m) {
      if ((paramInt1 == k) && (j != k)) {
        if (paramInt1 == m) {
          i1 = paramInt2 + i5 - x;
        }
      }
    }
    while (paramInt1 <= m)
    {
      return (x - i2 - c(paramInt1 - 1)) / 2 + i1;
      i1 = i5 - i3 + paramInt2 - i4;
      continue;
      i1 = paramInt2;
      if (paramInt1 > k)
      {
        i1 = paramInt2;
        if (paramInt1 <= m)
        {
          i1 = paramInt2 - i4;
          continue;
          if ((paramInt1 > m) && (paramInt1 <= j))
          {
            i1 = paramInt2 + i4;
          }
          else
          {
            i1 = paramInt2;
            if (paramInt1 == k)
            {
              i1 = paramInt2;
              if (j != k) {
                i1 = paramInt2 + (i5 - i3);
              }
            }
          }
        }
      }
    }
    return (i3 - i2 - x) / 2 + i1;
  }
  
  private void a(int paramInt, float paramFloat)
  {
    if ((v == 0) || (v == 4))
    {
      if (v == 0)
      {
        m = (getHeaderViewsCount() + paramInt);
        j = m;
        k = m;
        i = m;
        View localView = getChildAt(m - getFirstVisiblePosition());
        if (localView != null) {
          localView.setVisibility(4);
        }
      }
      v = 1;
      al = paramFloat;
      if (T) {
        switch (W)
        {
        }
      }
    }
    while (ah != null)
    {
      ah.c();
      return;
      super.onTouchEvent(V);
      continue;
      super.onInterceptTouchEvent(V);
    }
    f();
  }
  
  private void a(int paramInt, Canvas paramCanvas)
  {
    Drawable localDrawable = getDivider();
    int i4 = getDividerHeight();
    ViewGroup localViewGroup;
    int i2;
    int i3;
    int i1;
    if ((localDrawable != null) && (i4 != 0))
    {
      localViewGroup = (ViewGroup)getChildAt(paramInt - getFirstVisiblePosition());
      if (localViewGroup != null)
      {
        i2 = getPaddingLeft();
        i3 = getWidth() - getPaddingRight();
        i1 = localViewGroup.getChildAt(0).getHeight();
        if (paramInt <= m) {
          break label130;
        }
        i1 += localViewGroup.getTop();
        paramInt = i1 + i4;
      }
    }
    for (;;)
    {
      paramCanvas.save();
      paramCanvas.clipRect(i2, i1, i3, paramInt);
      localDrawable.setBounds(i2, i1, i3, paramInt);
      localDrawable.draw(paramCanvas);
      paramCanvas.restore();
      return;
      label130:
      paramInt = localViewGroup.getBottom() - i1;
      i1 = paramInt - i4;
    }
  }
  
  private void a(int paramInt, View paramView, boolean paramBoolean)
  {
    ViewGroup.LayoutParams localLayoutParams = paramView.getLayoutParams();
    int i1;
    if ((paramInt != m) && (paramInt != j) && (paramInt != k))
    {
      i1 = -2;
      if (i1 != height)
      {
        height = i1;
        paramView.setLayoutParams(localLayoutParams);
      }
      if ((paramInt == j) || (paramInt == k))
      {
        if (paramInt >= m) {
          break label156;
        }
        ((c)paramView).setGravity(80);
      }
    }
    for (;;)
    {
      int i3 = paramView.getVisibility();
      int i2 = 0;
      i1 = i2;
      if (paramInt == m)
      {
        i1 = i2;
        if (a != null) {
          i1 = 4;
        }
      }
      if (i1 != i3) {
        paramView.setVisibility(i1);
      }
      return;
      i1 = b(paramInt, b(paramInt, paramView, paramBoolean));
      break;
      label156:
      if (paramInt > m) {
        ((c)paramView).setGravity(48);
      }
    }
  }
  
  private void a(MotionEvent paramMotionEvent)
  {
    int i1 = paramMotionEvent.getAction() & 0xFF;
    if (i1 != 0)
    {
      O = M;
      P = N;
    }
    M = ((int)paramMotionEvent.getX());
    N = ((int)paramMotionEvent.getY());
    if (i1 == 0)
    {
      O = M;
      P = N;
    }
    p = ((int)paramMotionEvent.getRawX() - M);
    q = ((int)paramMotionEvent.getRawY() - N);
  }
  
  private void a(View paramView)
  {
    ViewGroup.LayoutParams localLayoutParams = paramView.getLayoutParams();
    Object localObject = localLayoutParams;
    if (localLayoutParams == null)
    {
      localObject = new AbsListView.LayoutParams(-1, -2);
      paramView.setLayoutParams((ViewGroup.LayoutParams)localObject);
    }
    int i2 = ViewGroup.getChildMeasureSpec(z, getListPaddingLeft() + getListPaddingRight(), width);
    if (height > 0) {}
    for (int i1 = View.MeasureSpec.makeMeasureSpec(height, 1073741824);; i1 = View.MeasureSpec.makeMeasureSpec(0, 0))
    {
      paramView.measure(i2, i1);
      return;
    }
  }
  
  private boolean a(boolean paramBoolean, float paramFloat)
  {
    boolean bool = false;
    if (a != null)
    {
      B.c();
      if (!paramBoolean) {
        break label80;
      }
      a(m - getHeaderViewsCount(), paramFloat);
    }
    for (;;)
    {
      if (ac)
      {
        m localm = ad;
        if (e)
        {
          a.append("</DSLVStates>\n");
          localm.a();
          e = false;
        }
      }
      bool = true;
      return bool;
      label80:
      if (aj != null) {
        aj.c();
      } else {
        e();
      }
    }
  }
  
  private int b(int paramInt)
  {
    View localView = getChildAt(paramInt - getFirstVisiblePosition());
    if (localView != null) {
      return localView.getHeight();
    }
    return b(paramInt, c(paramInt));
  }
  
  private int b(int paramInt1, int paramInt2)
  {
    getDividerHeight();
    int i1;
    int i2;
    int i3;
    if ((l) && (j != k))
    {
      i1 = 1;
      i2 = x - w;
      i3 = (int)(aa * i2);
      if (paramInt1 != m) {
        break label114;
      }
      if (m != j) {
        break label90;
      }
      if (i1 == 0) {
        break label85;
      }
      i1 = i3 + w;
    }
    label85:
    label90:
    label114:
    do
    {
      return i1;
      i1 = 0;
      break;
      return x;
      if (m == k) {
        return x - i3;
      }
      return w;
      if (paramInt1 == j)
      {
        if (i1 != 0) {
          return paramInt2 + i3;
        }
        return paramInt2 + i2;
      }
      i1 = paramInt2;
    } while (paramInt1 != k);
    return paramInt2 + i2 - i3;
  }
  
  private int b(int paramInt, View paramView, boolean paramBoolean)
  {
    int i1 = 0;
    if (paramInt == m) {
      paramInt = i1;
    }
    View localView;
    label65:
    do
    {
      return paramInt;
      localView = paramView;
      if (paramInt >= getHeaderViewsCount()) {
        if (paramInt < getCount() - getFooterViewsCount()) {
          break label65;
        }
      }
      for (localView = paramView;; localView = ((ViewGroup)paramView).getChildAt(0))
      {
        paramView = localView.getLayoutParams();
        if ((paramView == null) || (height <= 0)) {
          break;
        }
        return height;
      }
      paramInt = localView.getHeight();
    } while ((paramInt != 0) && (!paramBoolean));
    a(localView);
    return localView.getMeasuredHeight();
  }
  
  private int c(int paramInt)
  {
    if (paramInt == m) {
      i1 = 0;
    }
    do
    {
      return i1;
      localObject = getChildAt(paramInt - getFirstVisiblePosition());
      if (localObject != null) {
        return b(paramInt, (View)localObject, false);
      }
      i2 = ag.a.get(paramInt, -1);
      i1 = i2;
    } while (i2 != -1);
    Object localObject = getAdapter();
    int i1 = ((ListAdapter)localObject).getItemViewType(paramInt);
    int i2 = ((ListAdapter)localObject).getViewTypeCount();
    if (i2 != A.length) {
      A = new View[i2];
    }
    if (i1 >= 0) {
      if (A[i1] == null)
      {
        localObject = ((ListAdapter)localObject).getView(paramInt, null, this);
        A[i1] = localObject;
        i1 = b(paramInt, (View)localObject, true);
        localObject = ag;
        i2 = a.get(paramInt, -1);
        if (i2 != i1)
        {
          if (i2 != -1) {
            break label253;
          }
          if (a.size() == c) {
            a.delete(((Integer)b.remove(0)).intValue());
          }
        }
      }
    }
    for (;;)
    {
      a.put(paramInt, i1);
      b.add(Integer.valueOf(paramInt));
      return i1;
      localObject = ((ListAdapter)localObject).getView(paramInt, A[i1], this);
      break;
      localObject = ((ListAdapter)localObject).getView(paramInt, null, this);
      break;
      label253:
      b.remove(Integer.valueOf(paramInt));
    }
  }
  
  private void c(int paramInt, View paramView, boolean paramBoolean)
  {
    ae = true;
    Object localObject1;
    Object localObject2;
    if (U != null)
    {
      c.set(M, N);
      localObject1 = U;
      localObject2 = a;
      localObject2 = b;
      Point localPoint = c;
      ((p)localObject1).a((Point)localObject2);
    }
    int i1 = b.x;
    int i4 = b.y;
    int i2 = getPaddingLeft();
    int i3;
    int i5;
    int i6;
    label319:
    int i9;
    int i10;
    int i11;
    label448:
    label498:
    int i8;
    int i7;
    label554:
    float f2;
    if (((R & 0x1) == 0) && (i1 > i2))
    {
      b.x = i2;
      i2 = getHeaderViewsCount();
      i3 = getFooterViewsCount();
      i5 = getFirstVisiblePosition();
      i6 = getLastVisiblePosition();
      i1 = getPaddingTop();
      if (i5 < i2) {
        i1 = getChildAt(i2 - i5 - 1).getBottom();
      }
      i2 = i1;
      if ((R & 0x8) == 0)
      {
        i2 = i1;
        if (i5 <= m) {
          i2 = Math.max(getChildAt(m - i5).getTop(), i1);
        }
      }
      i1 = getHeight() - getPaddingBottom();
      if (i6 >= getCount() - i3 - 1) {
        i1 = getChildAt(getCount() - i3 - 1 - i5).getBottom();
      }
      i3 = i1;
      if ((R & 0x4) == 0)
      {
        i3 = i1;
        if (i6 >= m) {
          i3 = Math.min(getChildAt(m - i5).getBottom(), i1);
        }
      }
      if (i4 >= i2) {
        break label907;
      }
      b.y = i2;
      d = (b.y + y);
      i9 = j;
      i10 = k;
      i1 = getFirstVisiblePosition();
      i2 = j;
      localObject2 = getChildAt(i2 - i1);
      localObject1 = localObject2;
      if (localObject2 == null)
      {
        i2 = i1 + getChildCount() / 2;
        localObject1 = getChildAt(i2 - i1);
      }
      i6 = ((View)localObject1).getTop();
      i3 = ((View)localObject1).getHeight();
      i1 = a(i2, i6);
      i11 = getDividerHeight();
      if (d >= i1) {
        break label992;
      }
      i4 = i1;
      i5 = i2;
      i2 = i5;
      i3 = i4;
      if (i5 >= 0)
      {
        i5 -= 1;
        i1 = b(i5);
        if (i5 != 0) {
          break label936;
        }
        i1 = i6 - i11 - i1;
        i3 = i4;
        i2 = i5;
      }
      i5 = getHeaderViewsCount();
      i8 = getFooterViewsCount();
      i6 = j;
      i7 = k;
      float f1 = aa;
      if (!l) {
        break label1197;
      }
      i11 = Math.abs(i1 - i3);
      if (d >= i1) {
        break label1133;
      }
      f2 = Z;
      i4 = (int)(i11 * (0.5F * f2));
      f2 = i4;
      i3 += i4;
      if (d >= i3) {
        break label1148;
      }
      j = (i2 - 1);
      k = i2;
      aa = ((i3 - d) * 0.5F / f2);
      label625:
      if (j >= i5) {
        break label1212;
      }
      j = i5;
      k = i5;
      i2 = i5;
      label650:
      if ((j == i6) && (k == i7) && (aa == f1)) {
        break label1365;
      }
    }
    label907:
    label936:
    label992:
    label1133:
    label1148:
    label1197:
    label1212:
    label1341:
    label1347:
    label1365:
    for (i1 = 1;; i1 = 0)
    {
      if (i2 != i)
      {
        if (r != null)
        {
          localObject1 = r;
          i1 = i;
        }
        i = i2;
      }
      for (i2 = 1;; i2 = i1)
      {
        if (i2 != 0)
        {
          j();
          i3 = c(paramInt);
          i5 = paramView.getHeight();
          i6 = b(paramInt, i3);
          if (paramInt == m) {
            break label1347;
          }
          i1 = i5 - i3;
        }
        for (i3 = i6 - i3;; i3 = i6)
        {
          i7 = x;
          i4 = i7;
          if (m != j)
          {
            i4 = i7;
            if (m != k) {
              i4 = i7 - w;
            }
          }
          if (paramInt <= i9)
          {
            if (paramInt <= j) {
              break label1341;
            }
            i1 = i4 - i3 + 0;
          }
          for (;;)
          {
            setSelectionFromTop(paramInt, i1 + paramView.getTop() - getPaddingTop());
            layoutChildren();
            if ((i2 != 0) || (paramBoolean)) {
              invalidate();
            }
            ae = false;
            return;
            if (((R & 0x2) != 0) || (i1 >= i2)) {
              break;
            }
            b.x = i2;
            break;
            if (x + i4 <= i3) {
              break label319;
            }
            b.y = (i3 - x);
            break label319;
            i7 = i6 - (i1 + i11);
            i6 = a(i5, i7);
            i2 = i5;
            i3 = i4;
            i1 = i6;
            if (d >= i6) {
              break label498;
            }
            i4 = i6;
            i1 = i6;
            i6 = i7;
            break label448;
            int i12 = getCount();
            i7 = i6;
            i6 = i3;
            i5 = i1;
            i4 = i2;
            for (;;)
            {
              i2 = i4;
              i3 = i5;
              if (i4 >= i12) {
                break;
              }
              if (i4 == i12 - 1)
              {
                i1 = i7 + i11 + i6;
                i2 = i4;
                i3 = i5;
                break;
              }
              i7 += i11 + i6;
              i8 = b(i4 + 1);
              i6 = a(i4 + 1, i7);
              i2 = i4;
              i3 = i5;
              i1 = i6;
              if (d < i6) {
                break;
              }
              i4 += 1;
              i5 = i6;
              i1 = i6;
              i6 = i8;
            }
            i4 = i3;
            i3 = i1;
            i1 = i4;
            break label554;
            if (d >= i1 - i4)
            {
              j = i2;
              k = (i2 + 1);
              aa = (0.5F * ((i1 - d) / f2 + 1.0F));
              break label625;
            }
            j = i2;
            k = i2;
            break label625;
            if (k < getCount() - i8) {
              break label650;
            }
            i2 = getCount() - i8 - 1;
            j = i2;
            k = i2;
            break label650;
            if (paramInt == i10)
            {
              if (paramInt <= j) {
                i1 = i1 - i4 + 0;
              } else if (paramInt == k) {
                i1 = i5 - i6 + 0;
              } else {
                i1 += 0;
              }
            }
            else if (paramInt <= j) {
              i1 = 0 - i4;
            } else if (paramInt == k) {
              i1 = 0 - i3;
            } else {
              i1 = 0;
            }
          }
          i1 = i5;
        }
      }
    }
  }
  
  private void d()
  {
    m = -1;
    j = -1;
    k = -1;
    i = -1;
  }
  
  private void e()
  {
    v = 2;
    if ((s != null) && (i >= 0) && (i < getCount()))
    {
      getHeaderViewsCount();
      o localo = s;
      int i1 = m;
      i1 = i;
    }
    m();
    g();
    d();
    j();
    if (T)
    {
      v = 3;
      return;
    }
    v = 0;
  }
  
  private void f()
  {
    v = 1;
    if (t != null) {
      t localt = t;
    }
    m();
    g();
    d();
    if (T)
    {
      v = 3;
      return;
    }
    v = 0;
  }
  
  private void g()
  {
    int i1 = 0;
    int i2 = getFirstVisiblePosition();
    if (m < i2)
    {
      View localView = getChildAt(0);
      if (localView != null) {
        i1 = localView.getTop();
      }
      setSelectionFromTop(i2 - 1, i1 - getPaddingTop());
    }
  }
  
  private void h()
  {
    W = 0;
    T = false;
    if (v == 3) {
      v = 0;
    }
    h = g;
    am = false;
    q localq = ag;
    a.clear();
    b.clear();
  }
  
  private void i()
  {
    int i1 = getPaddingTop();
    int i2 = getHeight() - i1 - getPaddingBottom();
    float f1 = i2;
    H = (i1 + C * f1);
    float f2 = i1;
    G = (f1 * (1.0F - D) + f2);
    E = ((int)H);
    F = ((int)G);
    I = (H - i1);
    J = (i1 + i2 - G);
  }
  
  private void j()
  {
    int i2 = getFirstVisiblePosition();
    int i3 = getLastVisiblePosition();
    int i1 = Math.max(0, getHeaderViewsCount() - i2);
    i3 = Math.min(i3 - i2, getCount() - 1 - getFooterViewsCount() - i2);
    while (i1 <= i3)
    {
      View localView = getChildAt(i1);
      if (localView != null) {
        a(i2 + i1, localView, false);
      }
      i1 += 1;
    }
  }
  
  private void k()
  {
    if (a != null)
    {
      a(a);
      x = a.getMeasuredHeight();
      y = (x / 2);
    }
  }
  
  private void l()
  {
    int i1 = getFirstVisiblePosition();
    int i2 = getChildCount() / 2;
    View localView = getChildAt(getChildCount() / 2);
    if (localView == null) {
      return;
    }
    c(i1 + i2, localView, true);
  }
  
  private void m()
  {
    if (a != null)
    {
      a.setVisibility(8);
      if (U != null) {
        U.a(a);
      }
      a = null;
      invalidate();
    }
  }
  
  public final void a()
  {
    if (v == 4)
    {
      B.c();
      m();
      d();
      j();
      if (T) {
        v = 3;
      }
    }
    else
    {
      return;
    }
    v = 0;
  }
  
  public final void a(int paramInt)
  {
    ak = false;
    a(paramInt, 0.0F);
  }
  
  public final boolean a(float paramFloat)
  {
    ak = true;
    return a(true, paramFloat);
  }
  
  public final boolean a(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    if ((!T) || (U == null)) {}
    do
    {
      return false;
      localObject = U.a(paramInt1);
    } while ((localObject == null) || (v != 0) || (!T) || (a != null) || (localObject == null) || (!u));
    if (getParent() != null) {
      getParent().requestDisallowInterceptTouchEvent(true);
    }
    paramInt1 = getHeaderViewsCount() + paramInt1;
    j = paramInt1;
    k = paramInt1;
    m = paramInt1;
    i = paramInt1;
    v = 4;
    R = 0;
    R |= paramInt2;
    a = ((View)localObject);
    k();
    n = paramInt3;
    o = paramInt4;
    Q = N;
    b.x = (M - n);
    b.y = (N - o);
    Object localObject = getChildAt(m - getFirstVisiblePosition());
    if (localObject != null) {
      ((View)localObject).setVisibility(4);
    }
    if (ac)
    {
      localObject = ad;
      a.append("<DSLVStates>\n");
      d = 0;
      e = true;
    }
    switch (W)
    {
    }
    for (;;)
    {
      requestLayout();
      if (ai != null) {
        ai.c();
      }
      return true;
      super.onTouchEvent(V);
      continue;
      super.onInterceptTouchEvent(V);
    }
  }
  
  public final boolean b()
  {
    return am;
  }
  
  public final boolean c()
  {
    return u;
  }
  
  protected void dispatchDraw(Canvas paramCanvas)
  {
    super.dispatchDraw(paramCanvas);
    if (v != 0)
    {
      if (j != m) {
        a(j, paramCanvas);
      }
      if ((k != j) && (k != m)) {
        a(k, paramCanvas);
      }
    }
    int i3;
    int i4;
    int i1;
    float f1;
    if (a != null)
    {
      i3 = a.getWidth();
      i4 = a.getHeight();
      int i2 = b.x;
      int i5 = getWidth();
      i1 = i2;
      if (i2 < 0) {
        i1 = -i2;
      }
      if (i1 >= i5) {
        break label216;
      }
      f1 = (i5 - i1) / i5;
    }
    label216:
    for (f1 *= f1;; f1 = 0.0F)
    {
      i1 = (int)(f1 * (255.0F * h));
      paramCanvas.save();
      paramCanvas.translate(b.x, b.y);
      paramCanvas.clipRect(0, 0, i3, i4);
      paramCanvas.saveLayerAlpha(0.0F, 0.0F, i3, i4, i1, 31);
      a.draw(paramCanvas);
      paramCanvas.restore();
      paramCanvas.restore();
      return;
    }
  }
  
  public float getFloatAlpha()
  {
    return h;
  }
  
  public ListAdapter getInputAdapter()
  {
    if (ab == null) {
      return null;
    }
    return ab.a();
  }
  
  protected void layoutChildren()
  {
    super.layoutChildren();
    if (a != null)
    {
      if ((a.isLayoutRequested()) && (!e)) {
        k();
      }
      a.layout(0, 0, a.getMeasuredWidth(), a.getMeasuredHeight());
      e = false;
    }
  }
  
  protected void onDraw(Canvas paramCanvas)
  {
    super.onDraw(paramCanvas);
    if (ac)
    {
      paramCanvas = ad;
      if (e)
      {
        a.append("<DSLVState>\n");
        int i2 = f.getChildCount();
        int i3 = f.getFirstVisiblePosition();
        a.append("    <Positions>");
        int i1 = 0;
        while (i1 < i2)
        {
          a.append(i3 + i1).append(",");
          i1 += 1;
        }
        a.append("</Positions>\n");
        a.append("    <Tops>");
        i1 = 0;
        while (i1 < i2)
        {
          a.append(f.getChildAt(i1).getTop()).append(",");
          i1 += 1;
        }
        a.append("</Tops>\n");
        a.append("    <Bottoms>");
        i1 = 0;
        while (i1 < i2)
        {
          a.append(f.getChildAt(i1).getBottom()).append(",");
          i1 += 1;
        }
        a.append("</Bottoms>\n");
        a.append("    <FirstExpPos>").append(f.j).append("</FirstExpPos>\n");
        a.append("    <FirstExpBlankHeight>").append(f.b(f.j) - f.c(f.j)).append("</FirstExpBlankHeight>\n");
        a.append("    <SecondExpPos>").append(f.k).append("</SecondExpPos>\n");
        a.append("    <SecondExpBlankHeight>").append(f.b(f.k) - f.c(f.k)).append("</SecondExpBlankHeight>\n");
        a.append("    <SrcPos>").append(f.m).append("</SrcPos>\n");
        a.append("    <SrcHeight>").append(f.x + f.getDividerHeight()).append("</SrcHeight>\n");
        a.append("    <ViewHeight>").append(f.getHeight()).append("</ViewHeight>\n");
        a.append("    <LastY>").append(f.P).append("</LastY>\n");
        a.append("    <FloatY>").append(f.d).append("</FloatY>\n");
        a.append("    <ShuffleEdges>");
        i1 = 0;
        while (i1 < i2)
        {
          a.append(f.a(i3 + i1, f.getChildAt(i1).getTop())).append(",");
          i1 += 1;
        }
        a.append("</ShuffleEdges>\n");
        a.append("</DSLVState>\n");
        c += 1;
        if (c > 1000)
        {
          paramCanvas.a();
          c = 0;
        }
      }
    }
  }
  
  public boolean onInterceptTouchEvent(MotionEvent paramMotionEvent)
  {
    if (!u) {
      return super.onInterceptTouchEvent(paramMotionEvent);
    }
    a(paramMotionEvent);
    S = true;
    int i1 = paramMotionEvent.getAction() & 0xFF;
    if (i1 == 0)
    {
      if (v != 0)
      {
        af = true;
        return true;
      }
      T = true;
    }
    if (a != null)
    {
      bool = true;
      if ((i1 == 1) || (i1 == 3)) {
        T = false;
      }
      return bool;
    }
    if (super.onInterceptTouchEvent(paramMotionEvent)) {
      am = true;
    }
    for (boolean bool = true;; bool = false) {
      switch (i1)
      {
      case 2: 
      default: 
        if (bool) {
          W = 1;
        }
        break;
      case 1: 
      case 3: 
        h();
        break;
        W = 2;
        break;
      }
    }
  }
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    super.onMeasure(paramInt1, paramInt2);
    if (a != null)
    {
      if (a.isLayoutRequested()) {
        k();
      }
      e = true;
    }
    z = paramInt1;
  }
  
  protected void onSizeChanged(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    super.onSizeChanged(paramInt1, paramInt2, paramInt3, paramInt4);
    i();
  }
  
  public boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    boolean bool2 = false;
    boolean bool1 = false;
    if (af)
    {
      af = false;
      bool2 = bool1;
    }
    do
    {
      return bool2;
      if (!u) {
        return super.onTouchEvent(paramMotionEvent);
      }
      bool1 = S;
      S = false;
      if (!bool1) {
        a(paramMotionEvent);
      }
      if (v == 4)
      {
        paramMotionEvent.getAction();
        switch (paramMotionEvent.getAction() & 0xFF)
        {
        }
        for (;;)
        {
          return true;
          if (v == 4) {
            a();
          }
          h();
          continue;
          if (v == 4)
          {
            ak = false;
            a(false, 0.0F);
          }
          h();
          continue;
          int i1 = (int)paramMotionEvent.getX();
          int i2 = (int)paramMotionEvent.getY();
          b.x = (i1 - n);
          b.y = (i2 - o);
          l();
          i1 = Math.min(i2, d + y);
          i2 = Math.max(i2, d - y);
          int i3 = B.b();
          if ((i1 > P) && (i1 > F) && (i3 != 1))
          {
            if (i3 != -1) {
              B.c();
            }
            B.a(1);
          }
          else if ((i2 < P) && (i2 < E) && (i3 != 0))
          {
            if (i3 != -1) {
              B.c();
            }
            B.a(0);
          }
          else if ((i2 >= E) && (i1 <= F) && (B.a()))
          {
            B.c();
          }
        }
      }
      bool1 = bool2;
      if (v == 0)
      {
        bool1 = bool2;
        if (super.onTouchEvent(paramMotionEvent)) {
          bool1 = true;
        }
      }
      switch (paramMotionEvent.getAction() & 0xFF)
      {
      case 2: 
      default: 
        bool2 = bool1;
      }
    } while (!bool1);
    W = 1;
    return bool1;
    h();
    return bool1;
  }
  
  public void requestLayout()
  {
    if (!ae) {
      super.requestLayout();
    }
  }
  
  public void setAdapter(ListAdapter paramListAdapter)
  {
    if (paramListAdapter != null)
    {
      ab = new g(this, paramListAdapter);
      paramListAdapter.registerDataSetObserver(f);
      if ((paramListAdapter instanceof o)) {
        setDropListener((o)paramListAdapter);
      }
      if ((paramListAdapter instanceof i)) {
        setDragListener((i)paramListAdapter);
      }
      if ((paramListAdapter instanceof t)) {
        setRemoveListener((t)paramListAdapter);
      }
    }
    for (;;)
    {
      super.setAdapter(ab);
      return;
      ab = null;
    }
  }
  
  public void setDragEnabled(boolean paramBoolean)
  {
    u = paramBoolean;
  }
  
  public void setDragListener(i parami)
  {
    r = parami;
  }
  
  public void setDragScrollProfile(j paramj)
  {
    if (paramj != null) {
      L = paramj;
    }
  }
  
  public void setDragScrollStart(float paramFloat)
  {
    if (paramFloat > 0.5F)
    {
      D = 0.5F;
      if (paramFloat <= 0.5F) {
        break label46;
      }
    }
    label46:
    for (C = 0.5F;; C = paramFloat)
    {
      if (getHeight() != 0) {
        i();
      }
      return;
      D = paramFloat;
      break;
    }
  }
  
  public void setDragSortListener(l paraml)
  {
    setDropListener(paraml);
    setDragListener(paraml);
    setRemoveListener(paraml);
  }
  
  public void setDropListener(o paramo)
  {
    s = paramo;
  }
  
  public void setFloatAlpha(float paramFloat)
  {
    h = paramFloat;
  }
  
  public void setFloatViewManager(p paramp)
  {
    U = paramp;
  }
  
  public void setMaxScrollSpeed(float paramFloat)
  {
    K = paramFloat;
  }
  
  public void setRemoveListener(t paramt)
  {
    t = paramt;
  }
}

/* Location:
 * Qualified Name:     com.mobeta.android.dslv.DragSortListView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */