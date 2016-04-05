package kagegames.apps.DWBeta;

import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Typeface;
import android.os.Bundle;
import android.util.Log;
import android.view.KeyEvent;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.ListView;
import android.widget.ProgressBar;
import android.widget.TextView;

public class FightChallengeActivity
  extends _DWActivity
{
  Button btnBringIt;
  Button btnPussOut;
  TextView cashText;
  TextView credText;
  ImageView dogIcon;
  TextView dogName;
  TextView expText;
  ImageView imgCollar;
  ImageView imgTags;
  ListView items;
  ImageView ownerIcon;
  TextView ownerName;
  ProgressBar progressOppAggr;
  ProgressBar progressOppHealth;
  ProgressBar progressOppStrength;
  TextView txtHeader;
  TextView txtMain;
  TextView winLossText;
  
  public void UpdateUI()
  {
    super.UpdateUI();
    super.CheckForInterrupts();
  }
  
  public void onCreate(Bundle paramBundle)
  {
    Object localObject20 = null;
    int i = 3;
    setVolumeControlStream(i);
    i = 1;
    requestWindowFeature(i);
    i = 2130903047;
    setContentView(i);
    super.onCreate(paramBundle);
    i = 2131099668;
    Object localObject1 = findViewById(i);
    localObject1 = (TextView)localObject1;
    txtHeader = ((TextView)localObject1);
    int j = 2131099692;
    Object localObject2 = findViewById(j);
    localObject2 = (TextView)localObject2;
    txtMain = ((TextView)localObject2);
    int k = 2131099705;
    Object localObject3 = findViewById(k);
    localObject3 = (Button)localObject3;
    btnBringIt = ((Button)localObject3);
    int m = 2131099706;
    Object localObject4 = findViewById(m);
    localObject4 = (Button)localObject4;
    btnPussOut = ((Button)localObject4);
    localObject4 = txtHeader;
    Object localObject18 = mFace;
    ((TextView)localObject4).setTypeface((Typeface)localObject18);
    localObject4 = txtHeader;
    localObject18 = "FIGHT CHALLENGE!";
    ((TextView)localObject4).setText((CharSequence)localObject18);
    localObject4 = btnBringIt;
    localObject18 = new kagegames/apps/DWBeta/FightChallengeActivity$BtnBringIt_ClickListener;
    ((FightChallengeActivity.BtnBringIt_ClickListener)localObject18).<init>(this, (FightChallengeActivity.BtnBringIt_ClickListener)localObject20);
    ((Button)localObject4).setOnClickListener((View.OnClickListener)localObject18);
    localObject4 = btnPussOut;
    localObject18 = new kagegames/apps/DWBeta/FightChallengeActivity$BtnPussOut_ClickListener;
    ((FightChallengeActivity.BtnPussOut_ClickListener)localObject18).<init>(this, (FightChallengeActivity.BtnPussOut_ClickListener)localObject20);
    ((Button)localObject4).setOnClickListener((View.OnClickListener)localObject18);
    int n = 2131099752;
    Object localObject5 = findViewById(n);
    localObject5 = (TextView)localObject5;
    ownerName = ((TextView)localObject5);
    int i1 = 2131099753;
    Object localObject6 = findViewById(i1);
    localObject6 = (ImageView)localObject6;
    ownerIcon = ((ImageView)localObject6);
    int i2 = 2131099755;
    Object localObject7 = findViewById(i2);
    localObject7 = (TextView)localObject7;
    cashText = ((TextView)localObject7);
    int i3 = 2131099757;
    Object localObject8 = findViewById(i3);
    localObject8 = (TextView)localObject8;
    expText = ((TextView)localObject8);
    int i4 = 2131099759;
    Object localObject9 = findViewById(i4);
    localObject9 = (TextView)localObject9;
    credText = ((TextView)localObject9);
    int i5 = 2131099760;
    Object localObject10 = findViewById(i5);
    localObject10 = (TextView)localObject10;
    dogName = ((TextView)localObject10);
    int i6 = 2131099761;
    Object localObject11 = findViewById(i6);
    localObject11 = (ImageView)localObject11;
    dogIcon = ((ImageView)localObject11);
    int i7 = 2131099762;
    Object localObject12 = findViewById(i7);
    localObject12 = (ImageView)localObject12;
    imgTags = ((ImageView)localObject12);
    int i8 = 2131099763;
    Object localObject13 = findViewById(i8);
    localObject13 = (ImageView)localObject13;
    imgCollar = ((ImageView)localObject13);
    int i9 = 2131099765;
    Object localObject14 = findViewById(i9);
    localObject14 = (TextView)localObject14;
    winLossText = ((TextView)localObject14);
    int i10 = 2131099766;
    Object localObject15 = findViewById(i10);
    localObject15 = (ProgressBar)localObject15;
    progressOppHealth = ((ProgressBar)localObject15);
    int i11 = 2131099767;
    Object localObject16 = findViewById(i11);
    localObject16 = (ProgressBar)localObject16;
    progressOppStrength = ((ProgressBar)localObject16);
    int i12 = 2131099768;
    Object localObject17 = findViewById(i12);
    localObject17 = (ProgressBar)localObject17;
    progressOppAggr = ((ProgressBar)localObject17);
    localObject17 = ownerName;
    localObject18 = mFace;
    ((TextView)localObject17).setTypeface((Typeface)localObject18);
    localObject17 = cashText;
    localObject18 = mFace;
    ((TextView)localObject17).setTypeface((Typeface)localObject18);
    localObject17 = expText;
    localObject18 = mFace;
    ((TextView)localObject17).setTypeface((Typeface)localObject18);
    localObject17 = credText;
    localObject18 = mFace;
    ((TextView)localObject17).setTypeface((Typeface)localObject18);
    localObject17 = dogName;
    localObject18 = mFace;
    ((TextView)localObject17).setTypeface((Typeface)localObject18);
    localObject17 = winLossText;
    localObject18 = mFace;
    ((TextView)localObject17).setTypeface((Typeface)localObject18);
    localObject17 = DWApplication.getInstance();
    localObject17 = ((DWApplication)localObject17).getDWGameState();
    DWOwnerDogPair localDWOwnerDogPair = ((DWGameState)localObject17).getFightRequest();
    localObject17 = ownerName;
    localObject18 = localDWOwnerDogPair.getOwner();
    localObject18 = ((DWOwner)localObject18).getName();
    ((TextView)localObject17).setText((CharSequence)localObject18);
    localObject17 = ownerIcon;
    localObject18 = getResources();
    localObject20 = localDWOwnerDogPair.getOwner();
    int i16 = ((DWOwner)localObject20).getIconResourceID();
    localObject18 = BitmapFactory.decodeResource((Resources)localObject18, i16);
    ((ImageView)localObject17).setImageBitmap((Bitmap)localObject18);
    localObject17 = cashText;
    localObject18 = localDWOwnerDogPair.getOwner();
    localObject18 = ((DWOwner)localObject18).getCashStr();
    ((TextView)localObject17).setText((CharSequence)localObject18);
    localObject17 = expText;
    localObject18 = localDWOwnerDogPair.getOwner();
    localObject18 = ((DWOwner)localObject18).getExpStr();
    ((TextView)localObject17).setText((CharSequence)localObject18);
    localObject17 = credText;
    localObject18 = localDWOwnerDogPair.getOwner();
    localObject18 = ((DWOwner)localObject18).getCredStr();
    ((TextView)localObject17).setText((CharSequence)localObject18);
    localObject17 = dogName;
    localObject18 = localDWOwnerDogPair.getDog();
    localObject18 = ((DWDog)localObject18).getName();
    ((TextView)localObject17).setText((CharSequence)localObject18);
    localObject17 = dogIcon;
    localObject18 = getResources();
    DWDog localDWDog3 = localDWOwnerDogPair.getDog();
    int i17 = localDWDog3.getIconResourceID();
    localObject18 = BitmapFactory.decodeResource((Resources)localObject18, i17);
    ((ImageView)localObject17).setImageBitmap((Bitmap)localObject18);
    localObject17 = winLossText;
    localObject18 = localDWOwnerDogPair.getDog();
    localObject18 = ((DWDog)localObject18).getWinLossStr();
    ((TextView)localObject17).setText((CharSequence)localObject18);
    localObject17 = progressOppHealth;
    localObject18 = localDWOwnerDogPair.getDog();
    int i13 = ((DWDog)localObject18).getHealth();
    ((ProgressBar)localObject17).setProgress(i13);
    localObject17 = progressOppStrength;
    DWDog localDWDog1 = localDWOwnerDogPair.getDog();
    int i14 = localDWDog1.getStrength();
    ((ProgressBar)localObject17).setProgress(i14);
    localObject17 = progressOppAggr;
    DWDog localDWDog2 = localDWOwnerDogPair.getDog();
    int i15 = localDWDog2.getAggression();
    ((ProgressBar)localObject17).setProgress(i15);
    localObject17 = imgTags;
    Object localObject19 = DWApplication.getAppResources();
    DWOwner localDWOwner1 = localDWOwnerDogPair.getOwner();
    int i18 = localDWOwner1.getTagsResourceID();
    localObject19 = BitmapFactory.decodeResource((Resources)localObject19, i18);
    ((ImageView)localObject17).setImageBitmap((Bitmap)localObject19);
    localObject17 = imgCollar;
    localObject19 = DWApplication.getAppResources();
    DWOwner localDWOwner2 = localDWOwnerDogPair.getOwner();
    int i19 = localDWOwner2.getCollarResourceID();
    localObject19 = BitmapFactory.decodeResource((Resources)localObject19, i19);
    ((ImageView)localObject17).setImageBitmap((Bitmap)localObject19);
    localObject17 = DWApplication.getInstance();
    localObject17 = ((DWApplication)localObject17).getSoundsManager();
    ((SoundsManager)localObject17).playChallengeSoundEffect();
    UpdateUI();
    localObject17 = new kagegames/apps/DWBeta/PollManager;
    long l = 8000L;
    ((PollManager)localObject17).<init>(this, l);
    mPollManager = ((PollManager)localObject17);
    localObject17 = mPollManager;
    ((PollManager)localObject17).StartPolling();
  }
  
  public void onDestroy()
  {
    boolean bool1 = isFinishing();
    Object localObject;
    if (bool1)
    {
      localObject = "DogWars";
      String str1 = "OnDestroy() (user finish) in _DWActivity";
      Log.d((String)localObject, str1);
    }
    for (;;)
    {
      localObject = DWApplication.getInstance();
      boolean bool2 = false;
      ((DWApplication)localObject).setInInterrupt(bool2);
      super.onDestroy();
      return;
      localObject = "DogWars";
      String str2 = "OnDestroy() (system finish) in _DWActivity";
      Log.d((String)localObject, str2);
    }
  }
  
  public boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent)
  {
    int i = 4;
    if (paramInt == i) {}
    boolean bool;
    for (i = 1;; bool = super.onKeyDown(paramInt, paramKeyEvent)) {
      return i;
    }
  }
  
  public boolean onKeyUp(int paramInt, KeyEvent paramKeyEvent)
  {
    int i = 4;
    if (paramInt == i) {}
    boolean bool;
    for (i = 1;; bool = super.onKeyUp(paramInt, paramKeyEvent)) {
      return i;
    }
  }
}

/* Location:
 * Qualified Name:     kagegames.apps.DWBeta.FightChallengeActivity
 * Java Class Version: 1.2 (46.0)
 * JD-Core Version:    0.7.1
 */