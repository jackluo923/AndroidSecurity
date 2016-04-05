package com.google.android.gms.dynamic;

import android.content.Intent;
import android.os.Bundle;
import android.os.IInterface;

public abstract interface c
  extends IInterface
{
  public abstract void c(d paramd);
  
  public abstract void d(d paramd);
  
  public abstract d gD();
  
  public abstract c gE();
  
  public abstract d gF();
  
  public abstract c gG();
  
  public abstract Bundle getArguments();
  
  public abstract int getId();
  
  public abstract boolean getRetainInstance();
  
  public abstract String getTag();
  
  public abstract int getTargetRequestCode();
  
  public abstract boolean getUserVisibleHint();
  
  public abstract d getView();
  
  public abstract boolean isAdded();
  
  public abstract boolean isDetached();
  
  public abstract boolean isHidden();
  
  public abstract boolean isInLayout();
  
  public abstract boolean isRemoving();
  
  public abstract boolean isResumed();
  
  public abstract boolean isVisible();
  
  public abstract void setHasOptionsMenu(boolean paramBoolean);
  
  public abstract void setMenuVisibility(boolean paramBoolean);
  
  public abstract void setRetainInstance(boolean paramBoolean);
  
  public abstract void setUserVisibleHint(boolean paramBoolean);
  
  public abstract void startActivity(Intent paramIntent);
  
  public abstract void startActivityForResult(Intent paramIntent, int paramInt);
}

/* Location:
 * Qualified Name:     com.google.android.gms.dynamic.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */