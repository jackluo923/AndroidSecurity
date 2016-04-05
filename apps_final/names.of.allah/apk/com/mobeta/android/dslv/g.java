package com.mobeta.android.dslv;

import android.view.View;
import android.view.ViewGroup;
import android.widget.AbsListView.LayoutParams;
import android.widget.BaseAdapter;
import android.widget.Checkable;
import android.widget.ListAdapter;

final class g
  extends BaseAdapter
{
  private ListAdapter b;
  
  public g(DragSortListView paramDragSortListView, ListAdapter paramListAdapter)
  {
    b = paramListAdapter;
    b.registerDataSetObserver(new h(this, paramDragSortListView));
  }
  
  public final ListAdapter a()
  {
    return b;
  }
  
  public final boolean areAllItemsEnabled()
  {
    return b.areAllItemsEnabled();
  }
  
  public final int getCount()
  {
    return b.getCount();
  }
  
  public final Object getItem(int paramInt)
  {
    return b.getItem(paramInt);
  }
  
  public final long getItemId(int paramInt)
  {
    return b.getItemId(paramInt);
  }
  
  public final int getItemViewType(int paramInt)
  {
    return b.getItemViewType(paramInt);
  }
  
  public final View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    if (paramView != null)
    {
      paramViewGroup = (c)paramView;
      View localView1 = paramViewGroup.getChildAt(0);
      View localView2 = b.getView(paramInt, localView1, a);
      paramView = paramViewGroup;
      if (localView2 != localView1)
      {
        if (localView1 != null) {
          paramViewGroup.removeViewAt(0);
        }
        paramViewGroup.addView(localView2);
        paramView = paramViewGroup;
      }
      DragSortListView.a(a, a.getHeaderViewsCount() + paramInt, paramView);
      return paramView;
    }
    paramViewGroup = b.getView(paramInt, null, a);
    if ((paramViewGroup instanceof Checkable)) {}
    for (paramView = new d(a.getContext());; paramView = new c(a.getContext()))
    {
      paramView.setLayoutParams(new AbsListView.LayoutParams(-1, -2));
      paramView.addView(paramViewGroup);
      break;
    }
  }
  
  public final int getViewTypeCount()
  {
    return b.getViewTypeCount();
  }
  
  public final boolean hasStableIds()
  {
    return b.hasStableIds();
  }
  
  public final boolean isEmpty()
  {
    return b.isEmpty();
  }
  
  public final boolean isEnabled(int paramInt)
  {
    return b.isEnabled(paramInt);
  }
}

/* Location:
 * Qualified Name:     com.mobeta.android.dslv.g
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */