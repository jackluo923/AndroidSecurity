package kagegames.apps.DWBeta;

import android.view.View;
import android.view.View.OnLongClickListener;

public abstract class ClickableListAdapter$OnLongClickListener
  implements View.OnLongClickListener
{
  private ClickableListAdapter.ViewHolder mViewHolder;
  
  public ClickableListAdapter$OnLongClickListener(ClickableListAdapter.ViewHolder paramViewHolder)
  {
    mViewHolder = paramViewHolder;
  }
  
  public abstract void onLongClick(View paramView, ClickableListAdapter.ViewHolder paramViewHolder);
  
  public boolean onLongClick(View paramView)
  {
    ClickableListAdapter.ViewHolder localViewHolder = mViewHolder;
    onLongClick(paramView, localViewHolder);
    boolean bool = true;
    return bool;
  }
}

/* Location:
 * Qualified Name:     kagegames.apps.DWBeta.ClickableListAdapter.OnLongClickListener
 * Java Class Version: 1.2 (46.0)
 * JD-Core Version:    0.7.1
 */