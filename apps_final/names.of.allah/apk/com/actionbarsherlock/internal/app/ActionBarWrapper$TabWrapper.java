package com.actionbarsherlock.internal.app;

import android.graphics.drawable.Drawable;
import android.support.v4.app.FragmentActivity;
import android.support.v4.app.FragmentManager;
import android.view.View;

public class ActionBarWrapper$TabWrapper
  extends com.actionbarsherlock.app.ActionBar.Tab
  implements android.app.ActionBar.TabListener
{
  private com.actionbarsherlock.app.ActionBar.TabListener mListener;
  final android.app.ActionBar.Tab mNativeTab;
  private Object mTag;
  
  public ActionBarWrapper$TabWrapper(ActionBarWrapper paramActionBarWrapper, android.app.ActionBar.Tab paramTab)
  {
    mNativeTab = paramTab;
    mNativeTab.setTag(this);
  }
  
  public CharSequence getContentDescription()
  {
    return mNativeTab.getContentDescription();
  }
  
  public View getCustomView()
  {
    return mNativeTab.getCustomView();
  }
  
  public Drawable getIcon()
  {
    return mNativeTab.getIcon();
  }
  
  public int getPosition()
  {
    return mNativeTab.getPosition();
  }
  
  public Object getTag()
  {
    return mTag;
  }
  
  public CharSequence getText()
  {
    return mNativeTab.getText();
  }
  
  public void onTabReselected(android.app.ActionBar.Tab paramTab, android.app.FragmentTransaction paramFragmentTransaction)
  {
    if (mListener != null)
    {
      paramTab = null;
      if ((ActionBarWrapper.access$000(this$0) instanceof FragmentActivity)) {
        paramTab = ((FragmentActivity)ActionBarWrapper.access$000(this$0)).getSupportFragmentManager().beginTransaction().disallowAddToBackStack();
      }
      mListener.onTabReselected(this, paramTab);
      if ((paramTab != null) && (!paramTab.isEmpty())) {
        paramTab.commit();
      }
    }
  }
  
  public void onTabSelected(android.app.ActionBar.Tab paramTab, android.app.FragmentTransaction paramFragmentTransaction)
  {
    if (mListener != null)
    {
      if ((ActionBarWrapper.access$100(this$0) == null) && ((ActionBarWrapper.access$000(this$0) instanceof FragmentActivity))) {
        ActionBarWrapper.access$102(this$0, ((FragmentActivity)ActionBarWrapper.access$000(this$0)).getSupportFragmentManager().beginTransaction().disallowAddToBackStack());
      }
      mListener.onTabSelected(this, ActionBarWrapper.access$100(this$0));
      if (ActionBarWrapper.access$100(this$0) != null)
      {
        if (!ActionBarWrapper.access$100(this$0).isEmpty()) {
          ActionBarWrapper.access$100(this$0).commit();
        }
        ActionBarWrapper.access$102(this$0, null);
      }
    }
  }
  
  public void onTabUnselected(android.app.ActionBar.Tab paramTab, android.app.FragmentTransaction paramFragmentTransaction)
  {
    if (mListener != null)
    {
      paramTab = null;
      if ((ActionBarWrapper.access$000(this$0) instanceof FragmentActivity))
      {
        paramTab = ((FragmentActivity)ActionBarWrapper.access$000(this$0)).getSupportFragmentManager().beginTransaction().disallowAddToBackStack();
        ActionBarWrapper.access$102(this$0, paramTab);
      }
      mListener.onTabUnselected(this, paramTab);
    }
  }
  
  public void select()
  {
    mNativeTab.select();
  }
  
  public com.actionbarsherlock.app.ActionBar.Tab setContentDescription(int paramInt)
  {
    mNativeTab.setContentDescription(paramInt);
    return this;
  }
  
  public com.actionbarsherlock.app.ActionBar.Tab setContentDescription(CharSequence paramCharSequence)
  {
    mNativeTab.setContentDescription(paramCharSequence);
    return this;
  }
  
  public com.actionbarsherlock.app.ActionBar.Tab setCustomView(int paramInt)
  {
    mNativeTab.setCustomView(paramInt);
    return this;
  }
  
  public com.actionbarsherlock.app.ActionBar.Tab setCustomView(View paramView)
  {
    mNativeTab.setCustomView(paramView);
    return this;
  }
  
  public com.actionbarsherlock.app.ActionBar.Tab setIcon(int paramInt)
  {
    mNativeTab.setIcon(paramInt);
    return this;
  }
  
  public com.actionbarsherlock.app.ActionBar.Tab setIcon(Drawable paramDrawable)
  {
    mNativeTab.setIcon(paramDrawable);
    return this;
  }
  
  public com.actionbarsherlock.app.ActionBar.Tab setTabListener(com.actionbarsherlock.app.ActionBar.TabListener paramTabListener)
  {
    android.app.ActionBar.Tab localTab = mNativeTab;
    if (paramTabListener != null) {}
    for (TabWrapper localTabWrapper = this;; localTabWrapper = null)
    {
      localTab.setTabListener(localTabWrapper);
      mListener = paramTabListener;
      return this;
    }
  }
  
  public com.actionbarsherlock.app.ActionBar.Tab setTag(Object paramObject)
  {
    mTag = paramObject;
    return this;
  }
  
  public com.actionbarsherlock.app.ActionBar.Tab setText(int paramInt)
  {
    mNativeTab.setText(paramInt);
    return this;
  }
  
  public com.actionbarsherlock.app.ActionBar.Tab setText(CharSequence paramCharSequence)
  {
    mNativeTab.setText(paramCharSequence);
    return this;
  }
}

/* Location:
 * Qualified Name:     com.actionbarsherlock.internal.app.ActionBarWrapper.TabWrapper
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */