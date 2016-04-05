package kagegames.apps.DWBeta;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.BitmapFactory.Options;
import android.graphics.Typeface;
import android.view.View;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.TextView;
import java.util.List;

class FightListActivity$MyClickableListAdapter
  extends ClickableListAdapter
{
  final FightListActivity this$0;
  
  public FightListActivity$MyClickableListAdapter(Context paramContext, int paramInt, List<DWOwnerDogPair> paramList)
  {
    super(paramInt, paramList, localList);
  }
  
  protected void bindHolder(ClickableListAdapter.ViewHolder paramViewHolder)
  {
    Object localObject1 = paramViewHolder;
    localObject1 = (FightListActivity.FightRowViewHolder)localObject1;
    Object localObject3 = localObject1;
    Object localObject2 = data;
    localObject2 = (DWOwnerDogPair)localObject2;
    BitmapFactory.Options localOptions = new android/graphics/BitmapFactory$Options;
    localOptions.<init>();
    int i = 160;
    inTargetDensity = i;
    Object localObject4 = ownerName;
    Object localObject5 = ((DWOwnerDogPair)localObject2).getOwner();
    localObject5 = ((DWOwner)localObject5).getName();
    ((TextView)localObject4).setText((CharSequence)localObject5);
    localObject4 = ownerIcon;
    localObject5 = this$0;
    localObject5 = ((FightListActivity)localObject5).getResources();
    DWOwner localDWOwner1 = ((DWOwnerDogPair)localObject2).getOwner();
    int n = localDWOwner1.getIconResourceID();
    localObject5 = BitmapFactory.decodeResource((Resources)localObject5, n, localOptions);
    ((ImageView)localObject4).setImageBitmap((Bitmap)localObject5);
    localObject4 = cashText;
    localObject5 = ((DWOwnerDogPair)localObject2).getOwner();
    localObject5 = ((DWOwner)localObject5).getCashStr();
    ((TextView)localObject4).setText((CharSequence)localObject5);
    localObject4 = expText;
    localObject5 = ((DWOwnerDogPair)localObject2).getOwner();
    localObject5 = ((DWOwner)localObject5).getExpStr();
    ((TextView)localObject4).setText((CharSequence)localObject5);
    localObject4 = credText;
    localObject5 = ((DWOwnerDogPair)localObject2).getOwner();
    localObject5 = ((DWOwner)localObject5).getCredStr();
    ((TextView)localObject4).setText((CharSequence)localObject5);
    localObject4 = dogName;
    localObject5 = ((DWOwnerDogPair)localObject2).getDog();
    localObject5 = ((DWDog)localObject5).getName();
    ((TextView)localObject4).setText((CharSequence)localObject5);
    localObject4 = dogIcon;
    localObject5 = this$0;
    localObject5 = ((FightListActivity)localObject5).getResources();
    DWDog localDWDog3 = ((DWOwnerDogPair)localObject2).getDog();
    int i1 = localDWDog3.getIconResourceID();
    localObject5 = BitmapFactory.decodeResource((Resources)localObject5, i1, localOptions);
    ((ImageView)localObject4).setImageBitmap((Bitmap)localObject5);
    localObject4 = imgTags;
    localObject5 = DWApplication.getAppResources();
    DWOwner localDWOwner2 = ((DWOwnerDogPair)localObject2).getOwner();
    int i2 = localDWOwner2.getTagsResourceID();
    localObject5 = BitmapFactory.decodeResource((Resources)localObject5, i2);
    ((ImageView)localObject4).setImageBitmap((Bitmap)localObject5);
    localObject4 = imgCollar;
    localObject5 = DWApplication.getAppResources();
    DWOwner localDWOwner3 = ((DWOwnerDogPair)localObject2).getOwner();
    int i3 = localDWOwner3.getCollarResourceID();
    localObject5 = BitmapFactory.decodeResource((Resources)localObject5, i3);
    ((ImageView)localObject4).setImageBitmap((Bitmap)localObject5);
    localObject4 = winLossText;
    localObject5 = ((DWOwnerDogPair)localObject2).getDog();
    localObject5 = ((DWDog)localObject5).getWinLossStr();
    ((TextView)localObject4).setText((CharSequence)localObject5);
    localObject4 = progressHealth;
    localObject5 = ((DWOwnerDogPair)localObject2).getDog();
    int j = ((DWDog)localObject5).getHealth();
    ((ProgressBar)localObject4).setProgress(j);
    localObject4 = progressStrength;
    DWDog localDWDog1 = ((DWOwnerDogPair)localObject2).getDog();
    int k = localDWDog1.getStrength();
    ((ProgressBar)localObject4).setProgress(k);
    localObject4 = progressAggr;
    DWDog localDWDog2 = ((DWOwnerDogPair)localObject2).getDog();
    int m = localDWDog2.getAggression();
    ((ProgressBar)localObject4).setProgress(m);
  }
  
  protected ClickableListAdapter.ViewHolder createHolder(View paramView)
  {
    FightListActivity.FightRowViewHolder localFightRowViewHolder = new kagegames/apps/DWBeta/FightListActivity$FightRowViewHolder;
    localFightRowViewHolder.<init>();
    int i = 2131099752;
    Object localObject1 = paramView.findViewById(i);
    localObject1 = (TextView)localObject1;
    ownerName = ((TextView)localObject1);
    int j = 2131099753;
    Object localObject2 = paramView.findViewById(j);
    localObject2 = (ImageView)localObject2;
    ownerIcon = ((ImageView)localObject2);
    int k = 2131099755;
    Object localObject3 = paramView.findViewById(k);
    localObject3 = (TextView)localObject3;
    cashText = ((TextView)localObject3);
    int m = 2131099757;
    Object localObject4 = paramView.findViewById(m);
    localObject4 = (TextView)localObject4;
    expText = ((TextView)localObject4);
    int n = 2131099759;
    Object localObject5 = paramView.findViewById(n);
    localObject5 = (TextView)localObject5;
    credText = ((TextView)localObject5);
    int i1 = 2131099760;
    Object localObject6 = paramView.findViewById(i1);
    localObject6 = (TextView)localObject6;
    dogName = ((TextView)localObject6);
    int i2 = 2131099761;
    Object localObject7 = paramView.findViewById(i2);
    localObject7 = (ImageView)localObject7;
    dogIcon = ((ImageView)localObject7);
    int i3 = 2131099762;
    Object localObject8 = paramView.findViewById(i3);
    localObject8 = (ImageView)localObject8;
    imgTags = ((ImageView)localObject8);
    int i4 = 2131099763;
    Object localObject9 = paramView.findViewById(i4);
    localObject9 = (ImageView)localObject9;
    imgCollar = ((ImageView)localObject9);
    int i5 = 2131099765;
    Object localObject10 = paramView.findViewById(i5);
    localObject10 = (TextView)localObject10;
    winLossText = ((TextView)localObject10);
    int i6 = 2131099766;
    Object localObject11 = paramView.findViewById(i6);
    localObject11 = (ProgressBar)localObject11;
    progressHealth = ((ProgressBar)localObject11);
    int i7 = 2131099767;
    Object localObject12 = paramView.findViewById(i7);
    localObject12 = (ProgressBar)localObject12;
    progressStrength = ((ProgressBar)localObject12);
    int i8 = 2131099768;
    Object localObject13 = paramView.findViewById(i8);
    localObject13 = (ProgressBar)localObject13;
    progressAggr = ((ProgressBar)localObject13);
    localObject13 = ownerName;
    Object localObject14 = this$0;
    localObject14 = mFace;
    ((TextView)localObject13).setTypeface((Typeface)localObject14);
    localObject13 = cashText;
    localObject14 = this$0;
    localObject14 = mFace;
    ((TextView)localObject13).setTypeface((Typeface)localObject14);
    localObject13 = expText;
    localObject14 = this$0;
    localObject14 = mFace;
    ((TextView)localObject13).setTypeface((Typeface)localObject14);
    localObject13 = credText;
    localObject14 = this$0;
    localObject14 = mFace;
    ((TextView)localObject13).setTypeface((Typeface)localObject14);
    localObject13 = dogName;
    localObject14 = this$0;
    localObject14 = mFace;
    ((TextView)localObject13).setTypeface((Typeface)localObject14);
    localObject13 = winLossText;
    localObject14 = this$0;
    localObject14 = mFace;
    ((TextView)localObject13).setTypeface((Typeface)localObject14);
    return localFightRowViewHolder;
  }
}

/* Location:
 * Qualified Name:     kagegames.apps.DWBeta.FightListActivity.MyClickableListAdapter
 * Java Class Version: 1.2 (46.0)
 * JD-Core Version:    0.7.1
 */