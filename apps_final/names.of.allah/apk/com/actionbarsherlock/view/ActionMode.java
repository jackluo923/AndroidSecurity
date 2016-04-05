package com.actionbarsherlock.view;

import android.view.View;

public abstract class ActionMode
{
  private Object mTag;
  
  public abstract void finish();
  
  public abstract View getCustomView();
  
  public abstract Menu getMenu();
  
  public abstract MenuInflater getMenuInflater();
  
  public abstract CharSequence getSubtitle();
  
  public Object getTag()
  {
    return mTag;
  }
  
  public abstract CharSequence getTitle();
  
  public abstract void invalidate();
  
  public boolean isUiFocusable()
  {
    return true;
  }
  
  public abstract void setCustomView(View paramView);
  
  public abstract void setSubtitle(int paramInt);
  
  public abstract void setSubtitle(CharSequence paramCharSequence);
  
  public void setTag(Object paramObject)
  {
    mTag = paramObject;
  }
  
  public abstract void setTitle(int paramInt);
  
  public abstract void setTitle(CharSequence paramCharSequence);
}

/* Location:
 * Qualified Name:     com.actionbarsherlock.view.ActionMode
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */