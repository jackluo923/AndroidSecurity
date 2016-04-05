package kagegames.apps.DWBeta;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Typeface;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import java.util.List;

class TrainListActivity$MyClickableListAdapter
  extends ClickableListAdapter
{
  final TrainListActivity this$0;
  
  public TrainListActivity$MyClickableListAdapter(Context paramContext, int paramInt, List<TrainListActivity.TrainingGameListObject> paramList)
  {
    super(paramInt, paramList, localList);
  }
  
  protected void bindHolder(ClickableListAdapter.ViewHolder paramViewHolder)
  {
    Object localObject1 = paramViewHolder;
    localObject1 = (TrainListActivity.MyViewHolder)localObject1;
    Object localObject2 = localObject1;
    Object localObject3 = data;
    localObject3 = (TrainListActivity.TrainingGameListObject)localObject3;
    Object localObject4 = icon;
    Object localObject5 = bmp;
    ((ImageView)localObject4).setImageBitmap((Bitmap)localObject5);
    localObject4 = text;
    localObject5 = text;
    ((TextView)localObject4).setText((CharSequence)localObject5);
  }
  
  protected ClickableListAdapter.ViewHolder createHolder(View paramView)
  {
    int i = 2131099784;
    Object localObject2 = paramView.findViewById(i);
    localObject2 = (TextView)localObject2;
    Object localObject3 = this$0;
    localObject3 = TrainListActivity.access$0((TrainListActivity)localObject3);
    ((TextView)localObject2).setTypeface((Typeface)localObject3);
    int j = 2131099783;
    Object localObject1 = paramView.findViewById(j);
    localObject1 = (ImageView)localObject1;
    TrainListActivity.MyViewHolder localMyViewHolder = new kagegames/apps/DWBeta/TrainListActivity$MyViewHolder;
    localMyViewHolder.<init>((TextView)localObject2, (ImageView)localObject1);
    TrainListActivity.MyClickableListAdapter.1 local1 = new kagegames/apps/DWBeta/TrainListActivity$MyClickableListAdapter$1;
    local1.<init>(this, localMyViewHolder);
    ((ImageView)localObject1).setOnClickListener(local1);
    return localMyViewHolder;
  }
}

/* Location:
 * Qualified Name:     kagegames.apps.DWBeta.TrainListActivity.MyClickableListAdapter
 * Java Class Version: 1.2 (46.0)
 * JD-Core Version:    0.7.1
 */