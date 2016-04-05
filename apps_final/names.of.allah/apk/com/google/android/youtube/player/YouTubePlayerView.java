package com.google.android.youtube.player;

import android.app.Activity;
import android.content.Context;
import android.content.res.Configuration;
import android.os.Bundle;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewTreeObserver;
import com.google.android.youtube.player.internal.ab;
import com.google.android.youtube.player.internal.ac;
import com.google.android.youtube.player.internal.b;
import com.google.android.youtube.player.internal.n;
import com.google.android.youtube.player.internal.s;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Set;

public final class YouTubePlayerView
  extends ViewGroup
  implements YouTubePlayer.Provider
{
  private final YouTubePlayerView.a a;
  private final Set<View> b;
  private final YouTubePlayerView.b c;
  private b d;
  private s e;
  private View f;
  private n g;
  private YouTubePlayer.Provider h;
  private Bundle i;
  private YouTubePlayer.OnInitializedListener j;
  private boolean k;
  
  public YouTubePlayerView(Context paramContext)
  {
    this(paramContext, null);
  }
  
  public YouTubePlayerView(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 0);
  }
  
  public YouTubePlayerView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    this(paramContext, paramAttributeSet, paramInt, ((YouTubeBaseActivity)paramContext).a());
  }
  
  YouTubePlayerView(Context paramContext, AttributeSet paramAttributeSet, int paramInt, YouTubePlayerView.b paramb)
  {
    super((Context)ac.a(paramContext, "context cannot be null"), paramAttributeSet, paramInt);
    c = ((YouTubePlayerView.b)ac.a(paramb, "listener cannot be null"));
    if (getBackground() == null) {
      setBackgroundColor(-16777216);
    }
    setClipToPadding(false);
    g = new n(paramContext);
    requestTransparentRegion(g);
    addView(g);
    b = new HashSet();
    a = new YouTubePlayerView.a(this, (byte)0);
  }
  
  private void a(View paramView)
  {
    if ((paramView == g) || ((e != null) && (paramView == f))) {}
    for (int m = 1; m == 0; m = 0) {
      throw new UnsupportedOperationException("No views can be added on top of the player");
    }
  }
  
  private void a(YouTubeInitializationResult paramYouTubeInitializationResult)
  {
    e = null;
    g.c();
    if (j != null)
    {
      j.onInitializationFailure(h, paramYouTubeInitializationResult);
      j = null;
    }
  }
  
  final void a()
  {
    if (e != null) {
      e.b();
    }
  }
  
  final void a(Activity paramActivity, YouTubePlayer.Provider paramProvider, String paramString, YouTubePlayer.OnInitializedListener paramOnInitializedListener, Bundle paramBundle)
  {
    if ((e != null) || (j != null)) {
      return;
    }
    ac.a(paramActivity, "activity cannot be null");
    h = ((YouTubePlayer.Provider)ac.a(paramProvider, "provider cannot be null"));
    j = ((YouTubePlayer.OnInitializedListener)ac.a(paramOnInitializedListener, "listener cannot be null"));
    i = paramBundle;
    g.b();
    d = ab.a().a(getContext(), paramString, new YouTubePlayerView.1(this, paramActivity), new YouTubePlayerView.2(this));
    d.e();
  }
  
  final void a(boolean paramBoolean)
  {
    if (e != null)
    {
      e.b(paramBoolean);
      b(paramBoolean);
    }
  }
  
  public final void addFocusables(ArrayList<View> paramArrayList, int paramInt)
  {
    ArrayList localArrayList = new ArrayList();
    super.addFocusables(localArrayList, paramInt);
    paramArrayList.addAll(localArrayList);
    b.clear();
    b.addAll(localArrayList);
  }
  
  public final void addFocusables(ArrayList<View> paramArrayList, int paramInt1, int paramInt2)
  {
    ArrayList localArrayList = new ArrayList();
    super.addFocusables(localArrayList, paramInt1, paramInt2);
    paramArrayList.addAll(localArrayList);
    b.clear();
    b.addAll(localArrayList);
  }
  
  public final void addView(View paramView)
  {
    a(paramView);
    super.addView(paramView);
  }
  
  public final void addView(View paramView, int paramInt)
  {
    a(paramView);
    super.addView(paramView, paramInt);
  }
  
  public final void addView(View paramView, int paramInt1, int paramInt2)
  {
    a(paramView);
    super.addView(paramView, paramInt1, paramInt2);
  }
  
  public final void addView(View paramView, int paramInt, ViewGroup.LayoutParams paramLayoutParams)
  {
    a(paramView);
    super.addView(paramView, paramInt, paramLayoutParams);
  }
  
  public final void addView(View paramView, ViewGroup.LayoutParams paramLayoutParams)
  {
    a(paramView);
    super.addView(paramView, paramLayoutParams);
  }
  
  final void b()
  {
    if (e != null) {
      e.c();
    }
  }
  
  final void b(boolean paramBoolean)
  {
    k = true;
    if (e != null) {
      e.a(paramBoolean);
    }
  }
  
  final void c()
  {
    if (e != null) {
      e.d();
    }
  }
  
  public final void clearChildFocus(View paramView)
  {
    if (hasFocusable())
    {
      requestFocus();
      return;
    }
    super.clearChildFocus(paramView);
  }
  
  final void d()
  {
    if (e != null) {
      e.e();
    }
  }
  
  public final boolean dispatchKeyEvent(KeyEvent paramKeyEvent)
  {
    boolean bool = false;
    if (e != null)
    {
      if (paramKeyEvent.getAction() == 0) {
        if ((e.a(paramKeyEvent.getKeyCode(), paramKeyEvent)) || (super.dispatchKeyEvent(paramKeyEvent))) {
          bool = true;
        }
      }
      do
      {
        return bool;
        if (paramKeyEvent.getAction() != 1) {
          break;
        }
      } while ((!e.b(paramKeyEvent.getKeyCode(), paramKeyEvent)) && (!super.dispatchKeyEvent(paramKeyEvent)));
      return true;
    }
    return super.dispatchKeyEvent(paramKeyEvent);
  }
  
  final Bundle e()
  {
    if (e == null) {
      return i;
    }
    return e.h();
  }
  
  public final void focusableViewAvailable(View paramView)
  {
    super.focusableViewAvailable(paramView);
    b.add(paramView);
  }
  
  public final void initialize(String paramString, YouTubePlayer.OnInitializedListener paramOnInitializedListener)
  {
    ac.a(paramString, "Developer key cannot be null or empty");
    c.a(this, paramString, paramOnInitializedListener);
  }
  
  protected final void onAttachedToWindow()
  {
    super.onAttachedToWindow();
    getViewTreeObserver().addOnGlobalFocusChangeListener(a);
  }
  
  public final void onConfigurationChanged(Configuration paramConfiguration)
  {
    super.onConfigurationChanged(paramConfiguration);
    if (e != null) {
      e.a(paramConfiguration);
    }
  }
  
  protected final void onDetachedFromWindow()
  {
    super.onDetachedFromWindow();
    getViewTreeObserver().removeOnGlobalFocusChangeListener(a);
  }
  
  protected final void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    if (getChildCount() > 0) {
      getChildAt(0).layout(0, 0, paramInt3 - paramInt1, paramInt4 - paramInt2);
    }
  }
  
  protected final void onMeasure(int paramInt1, int paramInt2)
  {
    if (getChildCount() > 0)
    {
      View localView = getChildAt(0);
      localView.measure(paramInt1, paramInt2);
      setMeasuredDimension(localView.getMeasuredWidth(), localView.getMeasuredHeight());
      return;
    }
    setMeasuredDimension(0, 0);
  }
  
  public final boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    super.onTouchEvent(paramMotionEvent);
    return true;
  }
  
  public final void requestChildFocus(View paramView1, View paramView2)
  {
    super.requestChildFocus(paramView1, paramView2);
    b.add(paramView2);
  }
  
  public final void setClipToPadding(boolean paramBoolean) {}
  
  public final void setPadding(int paramInt1, int paramInt2, int paramInt3, int paramInt4) {}
}

/* Location:
 * Qualified Name:     com.google.android.youtube.player.YouTubePlayerView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */