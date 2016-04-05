package uk.co.senab.a.b;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.app.Activity;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.Resources.Theme;
import android.content.res.TypedArray;
import android.graphics.Paint;
import android.graphics.drawable.ClipDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.ShapeDrawable;
import android.graphics.drawable.shapes.RectShape;
import android.os.Build.VERSION;
import android.util.TypedValue;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.Interpolator;
import android.widget.RelativeLayout.LayoutParams;
import android.widget.TextView;
import fr.castorflex.android.smoothprogressbar.SmoothProgressBar;
import fr.castorflex.android.smoothprogressbar.k;

public class c
  extends f
{
  private ViewGroup a;
  public View b;
  private TextView c;
  private SmoothProgressBar d;
  private CharSequence e;
  private CharSequence f;
  private CharSequence g;
  private int h;
  private long i;
  private int j;
  private int k = -2;
  private final Interpolator l = new AccelerateInterpolator();
  
  public c()
  {
    int m = d();
    if (Build.VERSION.SDK_INT < m) {
      throw new IllegalStateException("This HeaderTransformer is designed to run on SDK " + m + "+. If using ActionBarSherlock or ActionBarCompat you should use the appropriate provided extra.");
    }
  }
  
  protected static TypedArray a(Context paramContext, int paramInt, int[] paramArrayOfInt)
  {
    TypedValue localTypedValue = new TypedValue();
    paramContext.getTheme().resolveAttribute(paramInt, localTypedValue, true);
    return paramContext.obtainStyledAttributes(resourceId, paramArrayOfInt);
  }
  
  private void b(Activity paramActivity, View paramView)
  {
    TypedArray localTypedArray = a(paramActivity, q.ptrHeaderStyle, w.PullToRefreshHeader);
    int m;
    if (a != null)
    {
      m = localTypedArray.getDimensionPixelSize(1, b(paramActivity));
      a.getLayoutParams().height = m;
      a.requestLayout();
    }
    if (localTypedArray.hasValue(0)) {}
    for (paramActivity = localTypedArray.getDrawable(0);; paramActivity = a(paramActivity))
    {
      if (paramActivity != null)
      {
        c.setBackgroundDrawable(paramActivity);
        if ((a != null) && (paramActivity.getOpacity() == -1)) {
          a.setBackgroundResource(0);
        }
      }
      paramActivity = paramView.getContext();
      m = localTypedArray.getResourceId(2, c(paramActivity));
      if (m != 0) {
        c.setTextAppearance(paramActivity, m);
      }
      if (localTypedArray.hasValue(3)) {
        h = localTypedArray.getColor(3, h);
      }
      j = localTypedArray.getInt(4, 1);
      if (localTypedArray.hasValue(5)) {
        k = localTypedArray.getDimensionPixelSize(5, k);
      }
      if (localTypedArray.hasValue(6)) {
        e = localTypedArray.getString(6);
      }
      if (localTypedArray.hasValue(7)) {
        f = localTypedArray.getString(7);
      }
      if (localTypedArray.hasValue(8)) {
        g = localTypedArray.getString(8);
      }
      localTypedArray.recycle();
      return;
    }
  }
  
  public Drawable a(Context paramContext)
  {
    paramContext = a(paramContext, 16843470, new int[] { 16842964 });
    try
    {
      Drawable localDrawable = paramContext.getDrawable(0);
      return localDrawable;
    }
    finally
    {
      paramContext.recycle();
    }
  }
  
  public final void a(float paramFloat)
  {
    if (d != null)
    {
      d.setVisibility(0);
      paramFloat = l.getInterpolation(paramFloat);
      d.setProgress(Math.round(paramFloat * d.getMax()));
    }
  }
  
  public final void a(Activity paramActivity)
  {
    b(paramActivity, b);
  }
  
  public void a(Activity paramActivity, View paramView)
  {
    b = paramView;
    d = ((SmoothProgressBar)paramView.findViewById(t.ptr_progress));
    c = ((TextView)paramView.findViewById(t.ptr_text));
    a = ((ViewGroup)paramView.findViewById(t.ptr_content));
    e = paramActivity.getString(v.pull_to_refresh_pull_label);
    f = paramActivity.getString(v.pull_to_refresh_refreshing_label);
    g = paramActivity.getString(v.pull_to_refresh_release_label);
    i = paramActivity.getResources().getInteger(17694720);
    h = paramActivity.getResources().getColor(r.default_progress_bar_color);
    b(paramActivity, paramView);
    paramActivity = new RelativeLayout.LayoutParams(-1, k);
    switch (j)
    {
    }
    for (;;)
    {
      d.setLayoutParams(paramActivity);
      if (d != null)
      {
        int m = d.getResources().getDimensionPixelSize(s.ptr_progress_bar_stroke_width);
        d.setIndeterminateDrawable(new k(d.getContext()).a(h).a(m).a());
        paramActivity = new ShapeDrawable();
        paramActivity.setShape(new RectShape());
        paramActivity.getPaint().setColor(h);
        paramActivity = new ClipDrawable(paramActivity, 17, 1);
        d.setProgressDrawable(paramActivity);
      }
      e();
      return;
      paramActivity.addRule(8, t.ptr_content);
      continue;
      paramActivity.addRule(3, t.ptr_content);
    }
  }
  
  public boolean a()
  {
    if (b.getVisibility() != 0) {}
    for (boolean bool = true;; bool = false)
    {
      if (bool)
      {
        b.setVisibility(0);
        AnimatorSet localAnimatorSet = new AnimatorSet();
        localAnimatorSet.playTogether(new Animator[] { ObjectAnimator.ofFloat(a, "translationY", new float[] { -a.getHeight(), 0.0F }), ObjectAnimator.ofFloat(b, "alpha", new float[] { 0.0F, 1.0F }) });
        localAnimatorSet.setDuration(i);
        localAnimatorSet.start();
      }
      return bool;
    }
  }
  
  public int b(Context paramContext)
  {
    paramContext = paramContext.getTheme().obtainStyledAttributes(new int[] { 16843499 });
    try
    {
      int m = paramContext.getDimensionPixelSize(0, 0);
      return m;
    }
    finally
    {
      paramContext.recycle();
    }
  }
  
  public boolean b()
  {
    boolean bool;
    Object localObject;
    if (b.getVisibility() != 8)
    {
      bool = true;
      if (bool)
      {
        if (a.getAlpha() < 0.5F) {
          break label147;
        }
        localObject = new AnimatorSet();
        ObjectAnimator localObjectAnimator1 = ObjectAnimator.ofFloat(a, "translationY", new float[] { 0.0F, -a.getHeight() });
        ObjectAnimator localObjectAnimator2 = ObjectAnimator.ofFloat(b, "alpha", new float[] { 1.0F, 0.0F });
        ((AnimatorSet)localObject).playTogether(new Animator[] { localObjectAnimator1, localObjectAnimator2 });
      }
    }
    for (;;)
    {
      ((Animator)localObject).setDuration(i);
      ((Animator)localObject).addListener(new d(this));
      ((Animator)localObject).start();
      return bool;
      bool = false;
      break;
      label147:
      localObject = ObjectAnimator.ofFloat(b, "alpha", new float[] { 1.0F, 0.0F });
    }
  }
  
  public int c(Context paramContext)
  {
    paramContext = a(paramContext, 16843470, new int[] { 16843512 });
    try
    {
      int m = paramContext.getResourceId(0, 0);
      return m;
    }
    finally
    {
      paramContext.recycle();
    }
  }
  
  public void c()
  {
    if (a != null) {
      ObjectAnimator.ofFloat(a, "alpha", new float[] { 1.0F, 0.0F }).start();
    }
  }
  
  public int d()
  {
    return 14;
  }
  
  public final void e()
  {
    if (d != null)
    {
      d.setVisibility(0);
      d.setProgress(0);
      d.setIndeterminate(false);
    }
    if (c != null)
    {
      c.setVisibility(0);
      c.setText(e);
    }
    if (a != null)
    {
      a.setVisibility(0);
      ViewGroup localViewGroup = a;
      if (Build.VERSION.SDK_INT >= 11) {
        localViewGroup.setAlpha(1.0F);
      }
    }
  }
  
  public final void f()
  {
    if (c != null) {
      c.setText(f);
    }
    if (d != null)
    {
      d.setVisibility(0);
      d.setIndeterminate(true);
    }
  }
  
  public final void g()
  {
    if (c != null) {
      c.setText(g);
    }
    if (d != null) {
      d.setProgress(d.getMax());
    }
  }
}

/* Location:
 * Qualified Name:     uk.co.senab.a.b.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */