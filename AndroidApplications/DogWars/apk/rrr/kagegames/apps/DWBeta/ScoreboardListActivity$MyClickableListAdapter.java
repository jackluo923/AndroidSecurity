package kagegames.apps.DWBeta;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Typeface;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import java.util.List;

class ScoreboardListActivity$MyClickableListAdapter
  extends ClickableListAdapter
{
  final ScoreboardListActivity this$0;
  
  public ScoreboardListActivity$MyClickableListAdapter(Context paramContext, int paramInt, List<DWScoreboardEntry> paramList)
  {
    super(paramInt, paramList, localList);
  }
  
  protected void bindHolder(ClickableListAdapter.ViewHolder paramViewHolder)
  {
    Object localObject1 = paramViewHolder;
    localObject1 = (ScoreboardListActivity.ScoreboardEntryViewHolder)localObject1;
    Object localObject3 = localObject1;
    Object localObject2 = data;
    localObject2 = (DWScoreboardEntry)localObject2;
    Object localObject4 = categoryIcon;
    Object localObject5 = ((DWScoreboardEntry)localObject2).getCategoryIcon();
    ((ImageView)localObject4).setImageBitmap((Bitmap)localObject5);
    localObject4 = categoryText;
    localObject5 = ((DWScoreboardEntry)localObject2).getCategoryText();
    ((TextView)localObject4).setText((CharSequence)localObject5);
    localObject4 = valueText;
    localObject5 = ((DWScoreboardEntry)localObject2).getValueStr();
    ((TextView)localObject4).setText((CharSequence)localObject5);
    localObject4 = ownerName;
    localObject5 = ((DWScoreboardEntry)localObject2).getPair();
    localObject5 = ((DWOwnerDogPair)localObject5).getOwner();
    localObject5 = ((DWOwner)localObject5).getName();
    ((TextView)localObject4).setText((CharSequence)localObject5);
    localObject4 = dogName;
    localObject5 = ((DWScoreboardEntry)localObject2).getPair();
    localObject5 = ((DWOwnerDogPair)localObject5).getDog();
    localObject5 = ((DWDog)localObject5).getName();
    ((TextView)localObject4).setText((CharSequence)localObject5);
    localObject4 = ownerIcon;
    localObject5 = this$0;
    localObject5 = ((ScoreboardListActivity)localObject5).getResources();
    Object localObject6 = ((DWScoreboardEntry)localObject2).getPair();
    localObject6 = ((DWOwnerDogPair)localObject6).getOwner();
    int i = ((DWOwner)localObject6).getIconResourceID();
    localObject5 = BitmapFactory.decodeResource((Resources)localObject5, i);
    ((ImageView)localObject4).setImageBitmap((Bitmap)localObject5);
    localObject4 = dogIcon;
    localObject5 = this$0;
    localObject5 = ((ScoreboardListActivity)localObject5).getResources();
    Object localObject7 = ((DWScoreboardEntry)localObject2).getPair();
    localObject7 = ((DWOwnerDogPair)localObject7).getDog();
    int j = ((DWDog)localObject7).getIconResourceID();
    localObject5 = BitmapFactory.decodeResource((Resources)localObject5, j);
    ((ImageView)localObject4).setImageBitmap((Bitmap)localObject5);
  }
  
  protected ClickableListAdapter.ViewHolder createHolder(View paramView)
  {
    ScoreboardListActivity.ScoreboardEntryViewHolder localScoreboardEntryViewHolder = new kagegames/apps/DWBeta/ScoreboardListActivity$ScoreboardEntryViewHolder;
    localScoreboardEntryViewHolder.<init>();
    int i = 2131099775;
    Object localObject1 = paramView.findViewById(i);
    localObject1 = (ImageView)localObject1;
    categoryIcon = ((ImageView)localObject1);
    int j = 2131099774;
    Object localObject2 = paramView.findViewById(j);
    localObject2 = (TextView)localObject2;
    categoryText = ((TextView)localObject2);
    int k = 2131099776;
    Object localObject3 = paramView.findViewById(k);
    localObject3 = (TextView)localObject3;
    valueText = ((TextView)localObject3);
    int m = 2131099779;
    Object localObject4 = paramView.findViewById(m);
    localObject4 = (TextView)localObject4;
    ownerName = ((TextView)localObject4);
    int n = 2131099777;
    Object localObject5 = paramView.findViewById(n);
    localObject5 = (ImageView)localObject5;
    ownerIcon = ((ImageView)localObject5);
    int i1 = 2131099780;
    Object localObject6 = paramView.findViewById(i1);
    localObject6 = (TextView)localObject6;
    dogName = ((TextView)localObject6);
    int i2 = 2131099778;
    Object localObject7 = paramView.findViewById(i2);
    localObject7 = (ImageView)localObject7;
    dogIcon = ((ImageView)localObject7);
    localObject7 = categoryText;
    Object localObject8 = this$0;
    localObject8 = mFace;
    ((TextView)localObject7).setTypeface((Typeface)localObject8);
    localObject7 = valueText;
    localObject8 = this$0;
    localObject8 = mFace;
    ((TextView)localObject7).setTypeface((Typeface)localObject8);
    localObject7 = ownerName;
    localObject8 = this$0;
    localObject8 = mFace;
    ((TextView)localObject7).setTypeface((Typeface)localObject8);
    localObject7 = dogName;
    localObject8 = this$0;
    localObject8 = mFace;
    ((TextView)localObject7).setTypeface((Typeface)localObject8);
    return localScoreboardEntryViewHolder;
  }
}

/* Location:
 * Qualified Name:     kagegames.apps.DWBeta.ScoreboardListActivity.MyClickableListAdapter
 * Java Class Version: 1.2 (46.0)
 * JD-Core Version:    0.7.1
 */