package com.actionbarsherlock.app;

import android.support.v4.app.FragmentTransaction;

public abstract interface ActionBar$TabListener
{
  public abstract void onTabReselected(ActionBar.Tab paramTab, FragmentTransaction paramFragmentTransaction);
  
  public abstract void onTabSelected(ActionBar.Tab paramTab, FragmentTransaction paramFragmentTransaction);
  
  public abstract void onTabUnselected(ActionBar.Tab paramTab, FragmentTransaction paramFragmentTransaction);
}

/* Location:
 * Qualified Name:     com.actionbarsherlock.app.ActionBar.TabListener
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */