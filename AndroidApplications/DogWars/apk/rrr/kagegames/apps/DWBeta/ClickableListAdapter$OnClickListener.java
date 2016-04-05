package kagegames.apps.DWBeta;

import android.view.View;
import android.view.View.OnClickListener;

public abstract class ClickableListAdapter$OnClickListener
  implements View.OnClickListener
{
  private ClickableListAdapter.ViewHolder mViewHolder;
  
  public ClickableListAdapter$OnClickListener(ClickableListAdapter.ViewHolder paramViewHolder)
  {
    mViewHolder = paramViewHolder;
  }
  
  public void onClick(View paramView)
  {
    ClickableListAdapter.ViewHolder localViewHolder = mViewHolder;
    onClick(paramView, localViewHolder);
  }
  
  public abstract void onClick(View paramView, ClickableListAdapter.ViewHolder paramViewHolder);
}

/* Location:
 * Qualified Name:     kagegames.apps.DWBeta.ClickableListAdapter.OnClickListener
 * Java Class Version: 1.2 (46.0)
 * JD-Core Version:    0.7.1
 */