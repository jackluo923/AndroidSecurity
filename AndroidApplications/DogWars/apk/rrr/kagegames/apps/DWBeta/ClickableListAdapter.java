package kagegames.apps.DWBeta;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import java.util.ArrayList;
import java.util.List;

public abstract class ClickableListAdapter
  extends BaseAdapter
{
  private List mDataObjects;
  private LayoutInflater mInflater;
  private int mViewId;
  
  public ClickableListAdapter(Context paramContext, int paramInt, List paramList)
  {
    Object localObject = LayoutInflater.from(paramContext);
    mInflater = ((LayoutInflater)localObject);
    mDataObjects = paramList;
    mViewId = paramInt;
    if (paramList == null)
    {
      localObject = new java/util/ArrayList;
      ((ArrayList)localObject).<init>();
      mDataObjects = ((List)localObject);
    }
  }
  
  protected abstract void bindHolder(ClickableListAdapter.ViewHolder paramViewHolder);
  
  protected abstract ClickableListAdapter.ViewHolder createHolder(View paramView);
  
  public int getCount()
  {
    List localList = mDataObjects;
    int i = localList.size();
    return i;
  }
  
  public Object getItem(int paramInt)
  {
    Object localObject = mDataObjects;
    localObject = ((List)localObject).get(paramInt);
    return localObject;
  }
  
  public long getItemId(int paramInt)
  {
    long l = paramInt;
    return l;
  }
  
  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    Object localObject2;
    Object localObject1;
    if (paramView == null)
    {
      localObject2 = mInflater;
      int i = mViewId;
      ViewGroup localViewGroup = null;
      paramView = ((LayoutInflater)localObject2).inflate(i, localViewGroup);
      localObject1 = createHolder(paramView);
      paramView.setTag(localObject1);
    }
    for (;;)
    {
      localObject2 = getItem(paramInt);
      data = localObject2;
      bindHolder((ClickableListAdapter.ViewHolder)localObject1);
      return paramView;
      localObject1 = paramView.getTag();
      localObject1 = (ClickableListAdapter.ViewHolder)localObject1;
    }
  }
}

/* Location:
 * Qualified Name:     kagegames.apps.DWBeta.ClickableListAdapter
 * Java Class Version: 1.2 (46.0)
 * JD-Core Version:    0.7.1
 */