package com.google.android.gms.dynamic;

import android.content.Intent;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.view.View;

public final class h
  extends c.a
{
  private Fragment FS;
  
  private h(Fragment paramFragment)
  {
    FS = paramFragment;
  }
  
  public static h a(Fragment paramFragment)
  {
    if (paramFragment != null) {
      return new h(paramFragment);
    }
    return null;
  }
  
  public final void c(d paramd)
  {
    paramd = (View)e.e(paramd);
    FS.registerForContextMenu(paramd);
  }
  
  public final void d(d paramd)
  {
    paramd = (View)e.e(paramd);
    FS.unregisterForContextMenu(paramd);
  }
  
  public final d gD()
  {
    return e.h(FS.getActivity());
  }
  
  public final c gE()
  {
    return a(FS.getParentFragment());
  }
  
  public final d gF()
  {
    return e.h(FS.getResources());
  }
  
  public final c gG()
  {
    return a(FS.getTargetFragment());
  }
  
  public final Bundle getArguments()
  {
    return FS.getArguments();
  }
  
  public final int getId()
  {
    return FS.getId();
  }
  
  public final boolean getRetainInstance()
  {
    return FS.getRetainInstance();
  }
  
  public final String getTag()
  {
    return FS.getTag();
  }
  
  public final int getTargetRequestCode()
  {
    return FS.getTargetRequestCode();
  }
  
  public final boolean getUserVisibleHint()
  {
    return FS.getUserVisibleHint();
  }
  
  public final d getView()
  {
    return e.h(FS.getView());
  }
  
  public final boolean isAdded()
  {
    return FS.isAdded();
  }
  
  public final boolean isDetached()
  {
    return FS.isDetached();
  }
  
  public final boolean isHidden()
  {
    return FS.isHidden();
  }
  
  public final boolean isInLayout()
  {
    return FS.isInLayout();
  }
  
  public final boolean isRemoving()
  {
    return FS.isRemoving();
  }
  
  public final boolean isResumed()
  {
    return FS.isResumed();
  }
  
  public final boolean isVisible()
  {
    return FS.isVisible();
  }
  
  public final void setHasOptionsMenu(boolean paramBoolean)
  {
    FS.setHasOptionsMenu(paramBoolean);
  }
  
  public final void setMenuVisibility(boolean paramBoolean)
  {
    FS.setMenuVisibility(paramBoolean);
  }
  
  public final void setRetainInstance(boolean paramBoolean)
  {
    FS.setRetainInstance(paramBoolean);
  }
  
  public final void setUserVisibleHint(boolean paramBoolean)
  {
    FS.setUserVisibleHint(paramBoolean);
  }
  
  public final void startActivity(Intent paramIntent)
  {
    FS.startActivity(paramIntent);
  }
  
  public final void startActivityForResult(Intent paramIntent, int paramInt)
  {
    FS.startActivityForResult(paramIntent, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.dynamic.h
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */