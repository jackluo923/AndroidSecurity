package com.google.android.gms.dynamic;

import android.app.Fragment;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;

public final class b
  extends c.a
{
  private Fragment Mg;
  
  private b(Fragment paramFragment)
  {
    Mg = paramFragment;
  }
  
  public static b a(Fragment paramFragment)
  {
    if (paramFragment != null) {
      return new b(paramFragment);
    }
    return null;
  }
  
  public final void c(d paramd)
  {
    paramd = (View)e.e(paramd);
    Mg.registerForContextMenu(paramd);
  }
  
  public final void d(d paramd)
  {
    paramd = (View)e.e(paramd);
    Mg.unregisterForContextMenu(paramd);
  }
  
  public final d gD()
  {
    return e.h(Mg.getActivity());
  }
  
  public final c gE()
  {
    return a(Mg.getParentFragment());
  }
  
  public final d gF()
  {
    return e.h(Mg.getResources());
  }
  
  public final c gG()
  {
    return a(Mg.getTargetFragment());
  }
  
  public final Bundle getArguments()
  {
    return Mg.getArguments();
  }
  
  public final int getId()
  {
    return Mg.getId();
  }
  
  public final boolean getRetainInstance()
  {
    return Mg.getRetainInstance();
  }
  
  public final String getTag()
  {
    return Mg.getTag();
  }
  
  public final int getTargetRequestCode()
  {
    return Mg.getTargetRequestCode();
  }
  
  public final boolean getUserVisibleHint()
  {
    return Mg.getUserVisibleHint();
  }
  
  public final d getView()
  {
    return e.h(Mg.getView());
  }
  
  public final boolean isAdded()
  {
    return Mg.isAdded();
  }
  
  public final boolean isDetached()
  {
    return Mg.isDetached();
  }
  
  public final boolean isHidden()
  {
    return Mg.isHidden();
  }
  
  public final boolean isInLayout()
  {
    return Mg.isInLayout();
  }
  
  public final boolean isRemoving()
  {
    return Mg.isRemoving();
  }
  
  public final boolean isResumed()
  {
    return Mg.isResumed();
  }
  
  public final boolean isVisible()
  {
    return Mg.isVisible();
  }
  
  public final void setHasOptionsMenu(boolean paramBoolean)
  {
    Mg.setHasOptionsMenu(paramBoolean);
  }
  
  public final void setMenuVisibility(boolean paramBoolean)
  {
    Mg.setMenuVisibility(paramBoolean);
  }
  
  public final void setRetainInstance(boolean paramBoolean)
  {
    Mg.setRetainInstance(paramBoolean);
  }
  
  public final void setUserVisibleHint(boolean paramBoolean)
  {
    Mg.setUserVisibleHint(paramBoolean);
  }
  
  public final void startActivity(Intent paramIntent)
  {
    Mg.startActivity(paramIntent);
  }
  
  public final void startActivityForResult(Intent paramIntent, int paramInt)
  {
    Mg.startActivityForResult(paramIntent, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.dynamic.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */