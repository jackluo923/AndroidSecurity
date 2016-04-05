package com.google.android.gms.games.internal;

import android.app.Activity;
import android.content.Context;
import android.os.IBinder;
import android.view.Display;
import android.view.View;
import android.view.View.OnAttachStateChangeListener;
import android.view.ViewTreeObserver;
import android.view.ViewTreeObserver.OnGlobalLayoutListener;
import android.view.Window;
import com.google.android.gms.internal.iq;
import java.lang.ref.WeakReference;

final class PopupManager$PopupManagerHCMR1
  extends PopupManager
  implements View.OnAttachStateChangeListener, ViewTreeObserver.OnGlobalLayoutListener
{
  private boolean Ns = false;
  private WeakReference<View> OZ;
  
  protected PopupManager$PopupManagerHCMR1(GamesClientImpl paramGamesClientImpl, int paramInt)
  {
    super(paramGamesClientImpl, paramInt, null);
  }
  
  private void h(View paramView)
  {
    int j = -1;
    int i = j;
    if (iq.gc())
    {
      localObject = paramView.getDisplay();
      i = j;
      if (localObject != null) {
        i = ((Display)localObject).getDisplayId();
      }
    }
    Object localObject = paramView.getWindowToken();
    int[] arrayOfInt = new int[2];
    paramView.getLocationInWindow(arrayOfInt);
    j = paramView.getWidth();
    int k = paramView.getHeight();
    OW.OY = i;
    OW.OX = ((IBinder)localObject);
    OW.left = arrayOfInt[0];
    OW.top = arrayOfInt[1];
    OW.right = (arrayOfInt[0] + j);
    OW.bottom = (arrayOfInt[1] + k);
    if (Ns)
    {
      hG();
      Ns = false;
    }
  }
  
  protected final void cl(int paramInt)
  {
    OW = new PopupManager.PopupLocationInfo(paramInt, null, null);
  }
  
  public final void g(View paramView)
  {
    OV.hr();
    Object localObject2;
    Object localObject1;
    if (OZ != null)
    {
      localObject2 = (View)OZ.get();
      Context localContext = OV.getContext();
      localObject1 = localObject2;
      if (localObject2 == null)
      {
        localObject1 = localObject2;
        if ((localContext instanceof Activity)) {
          localObject1 = ((Activity)localContext).getWindow().getDecorView();
        }
      }
      if (localObject1 != null)
      {
        ((View)localObject1).removeOnAttachStateChangeListener(this);
        localObject1 = ((View)localObject1).getViewTreeObserver();
        if (!iq.gb()) {
          break label186;
        }
        ((ViewTreeObserver)localObject1).removeOnGlobalLayoutListener(this);
      }
    }
    for (;;)
    {
      OZ = null;
      localObject2 = OV.getContext();
      localObject1 = paramView;
      if (paramView == null)
      {
        localObject1 = paramView;
        if ((localObject2 instanceof Activity))
        {
          localObject1 = ((Activity)localObject2).findViewById(16908290);
          paramView = (View)localObject1;
          if (localObject1 == null) {
            paramView = ((Activity)localObject2).getWindow().getDecorView();
          }
          GamesLog.j("PopupManager", "You have not specified a View to use as content view for popups. Falling back to the Activity content view which may not work properly in future versions of the API. Use setViewForPopups() to set your content view.");
          localObject1 = paramView;
        }
      }
      if (localObject1 == null) {
        break;
      }
      h((View)localObject1);
      OZ = new WeakReference(localObject1);
      ((View)localObject1).addOnAttachStateChangeListener(this);
      ((View)localObject1).getViewTreeObserver().addOnGlobalLayoutListener(this);
      return;
      label186:
      ((ViewTreeObserver)localObject1).removeGlobalOnLayoutListener(this);
    }
    GamesLog.k("PopupManager", "No content view usable to display popups. Popups will not be displayed in response to this client's calls. Use setViewForPopups() to set your content view.");
  }
  
  public final void hG()
  {
    if (OW.OX != null)
    {
      super.hG();
      return;
    }
    if (OZ != null) {}
    for (boolean bool = true;; bool = false)
    {
      Ns = bool;
      return;
    }
  }
  
  public final void onGlobalLayout()
  {
    if (OZ == null) {}
    View localView;
    do
    {
      return;
      localView = (View)OZ.get();
    } while (localView == null);
    h(localView);
  }
  
  public final void onViewAttachedToWindow(View paramView)
  {
    h(paramView);
  }
  
  public final void onViewDetachedFromWindow(View paramView)
  {
    OV.hr();
    paramView.removeOnAttachStateChangeListener(this);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.games.internal.PopupManager.PopupManagerHCMR1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */