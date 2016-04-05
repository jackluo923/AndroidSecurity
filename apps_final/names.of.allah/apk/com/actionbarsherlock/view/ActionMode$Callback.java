package com.actionbarsherlock.view;

public abstract interface ActionMode$Callback
{
  public abstract boolean onActionItemClicked(ActionMode paramActionMode, MenuItem paramMenuItem);
  
  public abstract boolean onCreateActionMode(ActionMode paramActionMode, Menu paramMenu);
  
  public abstract void onDestroyActionMode(ActionMode paramActionMode);
  
  public abstract boolean onPrepareActionMode(ActionMode paramActionMode, Menu paramMenu);
}

/* Location:
 * Qualified Name:     com.actionbarsherlock.view.ActionMode.Callback
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */