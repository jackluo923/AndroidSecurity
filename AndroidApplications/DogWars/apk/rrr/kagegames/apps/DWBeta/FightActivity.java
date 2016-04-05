package kagegames.apps.DWBeta;

import android.content.Intent;
import android.content.res.AssetManager;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.BitmapFactory.Options;
import android.graphics.Matrix;
import android.graphics.Typeface;
import android.os.Bundle;
import android.util.Log;
import android.view.KeyEvent;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.TextView;

public class FightActivity
  extends _DWActivity
{
  private static String TAG;
  Button btnAdrenaline;
  Button btnAttack;
  Button btnGiveUp;
  ImageView dogIconMe;
  ImageView dogIconOpp;
  TextView headerText;
  ImageView imgCollarMe;
  ImageView imgCollarOpp;
  ImageView imgTagsMe;
  ImageView imgTagsOpp;
  private ProgressBar mProgressHealthMe;
  private ProgressBar mProgressHealthOpp;
  TextView mainText;
  TextView txtMyName;
  TextView txtOppName;
  
  static
  {
    String str = "FightActivity";
    TAG = str;
  }
  
  private void LoadBitmaps()
  {
    BitmapFactory.Options localOptions2 = new android/graphics/BitmapFactory$Options;
    localOptions2.<init>();
    int j = 160;
    int i = j;
    Object localObject2 = localOptions2;
    inTargetDensity = i;
    Object localObject1 = this;
    localObject1 = dogIconMe;
    Object localObject3 = localObject1;
    Object localObject5 = DWApplication.getAppResources();
    Object localObject8 = DWApplication.getInstance();
    localObject8 = ((DWApplication)localObject8).getDWGameState();
    localObject8 = ((DWGameState)localObject8).getCurDog();
    int i3 = ((DWDog)localObject8).getIconResourceID();
    localObject5 = BitmapFactory.decodeResource((Resources)localObject5, i3);
    ((ImageView)localObject3).setImageBitmap((Bitmap)localObject5);
    localObject1 = this;
    localObject1 = imgTagsMe;
    localObject3 = localObject1;
    localObject5 = DWApplication.getAppResources();
    Object localObject9 = DWApplication.getInstance();
    localObject9 = ((DWApplication)localObject9).getDWGameState();
    localObject9 = ((DWGameState)localObject9).getCurOwner();
    int i4 = ((DWOwner)localObject9).getTagsResourceID();
    localObject5 = BitmapFactory.decodeResource((Resources)localObject5, i4);
    ((ImageView)localObject3).setImageBitmap((Bitmap)localObject5);
    localObject1 = this;
    localObject1 = imgCollarMe;
    localObject3 = localObject1;
    localObject5 = DWApplication.getAppResources();
    Object localObject10 = DWApplication.getInstance();
    localObject10 = ((DWApplication)localObject10).getDWGameState();
    localObject10 = ((DWGameState)localObject10).getCurOwner();
    int i5 = ((DWOwner)localObject10).getCollarResourceID();
    localObject5 = BitmapFactory.decodeResource((Resources)localObject5, i5);
    ((ImageView)localObject3).setImageBitmap((Bitmap)localObject5);
    localObject3 = getResources();
    localObject5 = DWApplication.getInstance();
    localObject5 = ((DWApplication)localObject5).getDWGameState();
    localObject5 = ((DWGameState)localObject5).getCurFight();
    localObject5 = ((DWFight)localObject5).getOpponentDog();
    int m = ((DWDog)localObject5).getIconResourceID();
    localObject1 = localObject3;
    localObject2 = m;
    BitmapFactory.Options localOptions1 = localOptions2;
    Bitmap localBitmap1 = BitmapFactory.decodeResource((Resources)localObject1, localObject2, localOptions1);
    localObject3 = DWApplication.getAppResources();
    Object localObject6 = DWApplication.getInstance();
    localObject6 = ((DWApplication)localObject6).getDWGameState();
    localObject6 = ((DWGameState)localObject6).getCurFight();
    localObject6 = ((DWFight)localObject6).getOpponentOwner();
    int n = ((DWOwner)localObject6).getTagsResourceID();
    Bitmap localBitmap4 = BitmapFactory.decodeResource((Resources)localObject3, n);
    localObject3 = DWApplication.getAppResources();
    Object localObject7 = DWApplication.getInstance();
    localObject7 = ((DWApplication)localObject7).getDWGameState();
    localObject7 = ((DWGameState)localObject7).getCurFight();
    localObject7 = ((DWFight)localObject7).getOpponentOwner();
    int i1 = ((DWOwner)localObject7).getCollarResourceID();
    Bitmap localBitmap3 = BitmapFactory.decodeResource((Resources)localObject3, i1);
    Matrix localMatrix1 = new android/graphics/Matrix;
    localMatrix1.<init>();
    float f1 = -1.0F;
    float f2 = 1.0F;
    localMatrix1.preScale(f1, f2);
    int k = 0;
    int i2 = 0;
    i5 = localBitmap1.getWidth();
    int i6 = localBitmap1.getHeight();
    boolean bool1 = false;
    Bitmap localBitmap5 = Bitmap.createBitmap(localBitmap1, k, i2, i5, i6, localMatrix1, bool1);
    int i7 = 0;
    int i8 = 0;
    int i9 = localBitmap4.getWidth();
    int i10 = localBitmap4.getHeight();
    boolean bool2 = false;
    Bitmap localBitmap2 = localBitmap4;
    Matrix localMatrix2 = localMatrix1;
    localBitmap4 = Bitmap.createBitmap(localBitmap2, i7, i8, i9, i10, localMatrix2, bool2);
    i7 = 0;
    i8 = 0;
    i9 = localBitmap3.getWidth();
    i10 = localBitmap3.getHeight();
    bool2 = false;
    localBitmap2 = localBitmap3;
    localMatrix2 = localMatrix1;
    localBitmap3 = Bitmap.createBitmap(localBitmap2, i7, i8, i9, i10, localMatrix2, bool2);
    localObject1 = this;
    localObject1 = dogIconOpp;
    Object localObject4 = localObject1;
    localObject1 = localObject4;
    localObject2 = localBitmap5;
    ((ImageView)localObject1).setImageBitmap((Bitmap)localObject2);
    localObject1 = this;
    localObject1 = imgTagsOpp;
    localObject4 = localObject1;
    localObject1 = localObject4;
    localObject2 = localBitmap4;
    ((ImageView)localObject1).setImageBitmap((Bitmap)localObject2);
    localObject1 = this;
    localObject1 = imgCollarOpp;
    localObject4 = localObject1;
    localObject1 = localObject4;
    localObject2 = localBitmap3;
    ((ImageView)localObject1).setImageBitmap((Bitmap)localObject2);
  }
  
  public void UpdateUI()
  {
    int m = 4;
    int n = 0;
    super.UpdateUI();
    Object localObject1 = DWApplication.getInstance();
    localObject1 = ((DWApplication)localObject1).getDWGameState();
    localObject1 = ((DWGameState)localObject1).getCurFight();
    if (localObject1 == null)
    {
      localObject1 = mPollManager;
      ((PollManager)localObject1).pause();
      Intent localIntent = new android/content/Intent;
      localIntent.<init>();
      int i = -1;
      setResult(i, localIntent);
      finish();
      return;
    }
    Object localObject2 = DWApplication.getInstance();
    localObject2 = ((DWApplication)localObject2).getDWGameState();
    localObject2 = ((DWGameState)localObject2).getCurFightResult();
    Object localObject6;
    Object localObject3;
    Object localObject9;
    if (localObject2 != null)
    {
      localObject2 = btnAttack;
      ((Button)localObject2).setVisibility(n);
      localObject2 = btnAttack;
      localObject6 = "Return to Game";
      ((Button)localObject2).setText((CharSequence)localObject6);
      localObject2 = btnGiveUp;
      ((Button)localObject2).setVisibility(m);
      localObject2 = btnAdrenaline;
      ((Button)localObject2).setVisibility(m);
      localObject2 = DWApplication.getInstance();
      localObject2 = ((DWApplication)localObject2).getDWGameState();
      localObject2 = ((DWGameState)localObject2).getCurFightResult();
      localObject2 = ((DWFightResult)localObject2).getMyResult();
      if (localObject2 != null)
      {
        localObject2 = DWApplication.getInstance();
        localObject2 = ((DWApplication)localObject2).getDWGameState();
        localObject2 = ((DWGameState)localObject2).getCurFightResult();
        boolean bool1 = ((DWFightResult)localObject2).didWin();
        if (!bool1) {
          break label441;
        }
        localObject3 = mainText;
        localObject6 = new java/lang/StringBuilder;
        localObject9 = DWApplication.getInstance();
        localObject9 = ((DWApplication)localObject9).getDWGameState();
        localObject9 = ((DWGameState)localObject9).getCurFightResult();
        localObject9 = ((DWFightResult)localObject9).getMyResult();
        localObject9 = ((DWFighterResult)localObject9).getMessage();
        localObject9 = String.valueOf(localObject9);
        ((StringBuilder)localObject6).<init>((String)localObject9);
        localObject9 = "\nYou earned: $";
        localObject6 = ((StringBuilder)localObject6).append((String)localObject9);
        localObject9 = DWApplication.getInstance();
        localObject9 = ((DWApplication)localObject9).getDWGameState();
        localObject9 = ((DWGameState)localObject9).getCurFightResult();
        localObject9 = ((DWFightResult)localObject9).getMyResult();
        localObject9 = ((DWFighterResult)localObject9).getWinningsStr();
        localObject6 = ((StringBuilder)localObject6).append((String)localObject9);
        localObject6 = ((StringBuilder)localObject6).toString();
        ((TextView)localObject3).setText((CharSequence)localObject6);
      }
    }
    for (;;)
    {
      localObject3 = txtMyName;
      localObject6 = DWApplication.getInstance();
      localObject6 = ((DWApplication)localObject6).getDWGameState();
      localObject6 = ((DWGameState)localObject6).getCurDog();
      localObject6 = ((DWDog)localObject6).getName();
      ((TextView)localObject3).setText((CharSequence)localObject6);
      localObject3 = txtOppName;
      localObject6 = DWApplication.getInstance();
      localObject6 = ((DWApplication)localObject6).getDWGameState();
      localObject6 = ((DWGameState)localObject6).getCurFight();
      localObject6 = ((DWFight)localObject6).getOpponentDog();
      localObject6 = ((DWDog)localObject6).getName();
      ((TextView)localObject3).setText((CharSequence)localObject6);
      localObject3 = mProgressHealthMe;
      ((ProgressBar)localObject3).setProgress(n);
      localObject3 = mProgressHealthOpp;
      ((ProgressBar)localObject3).setProgress(n);
      localObject3 = mProgressHealthMe;
      localObject6 = DWApplication.getInstance();
      localObject6 = ((DWApplication)localObject6).getDWGameState();
      localObject6 = ((DWGameState)localObject6).getCurDog();
      int j = ((DWDog)localObject6).getHealth();
      ((ProgressBar)localObject3).setProgress(j);
      localObject3 = mProgressHealthOpp;
      Object localObject7 = DWApplication.getInstance();
      localObject7 = ((DWApplication)localObject7).getDWGameState();
      localObject7 = ((DWGameState)localObject7).getCurFight();
      localObject7 = ((DWFight)localObject7).getOpponentDog();
      int k = ((DWDog)localObject7).getHealth();
      ((ProgressBar)localObject3).setProgress(k);
      super.CheckForInterrupts();
      break;
      label441:
      localObject3 = mainText;
      Object localObject8 = new java/lang/StringBuilder;
      localObject9 = DWApplication.getInstance();
      localObject9 = ((DWApplication)localObject9).getDWGameState();
      localObject9 = ((DWGameState)localObject9).getCurFightResult();
      localObject9 = ((DWFightResult)localObject9).getMyResult();
      localObject9 = ((DWFighterResult)localObject9).getMessage();
      localObject9 = String.valueOf(localObject9);
      ((StringBuilder)localObject8).<init>((String)localObject9);
      localObject9 = "\nBut you still earned: $";
      localObject8 = ((StringBuilder)localObject8).append((String)localObject9);
      localObject9 = DWApplication.getInstance();
      localObject9 = ((DWApplication)localObject9).getDWGameState();
      localObject9 = ((DWGameState)localObject9).getCurFightResult();
      localObject9 = ((DWFightResult)localObject9).getMyResult();
      localObject9 = ((DWFighterResult)localObject9).getWinningsStr();
      localObject8 = ((StringBuilder)localObject8).append((String)localObject9);
      localObject8 = ((StringBuilder)localObject8).toString();
      ((TextView)localObject3).setText((CharSequence)localObject8);
      continue;
      localObject3 = DWApplication.getInstance();
      localObject3 = ((DWApplication)localObject3).getDWGameState();
      localObject3 = ((DWGameState)localObject3).getCurFight();
      boolean bool2 = ((DWFight)localObject3).IsMyTurn();
      if (bool2)
      {
        Object localObject4 = btnAttack;
        ((Button)localObject4).setVisibility(n);
        localObject4 = btnGiveUp;
        ((Button)localObject4).setVisibility(n);
        localObject4 = btnAdrenaline;
        ((Button)localObject4).setVisibility(n);
        localObject4 = DWApplication.getInstance();
        localObject4 = ((DWApplication)localObject4).getDWGameState();
        localObject4 = ((DWGameState)localObject4).getCurOwner();
        boolean bool3 = ((DWOwner)localObject4).HasAdrenaline();
        if (bool3)
        {
          localObject5 = btnAdrenaline;
          boolean bool4 = true;
          ((Button)localObject5).setEnabled(bool4);
        }
        for (;;)
        {
          localObject5 = mainText;
          str = "YOUR TURN!";
          ((TextView)localObject5).setText(str);
          break;
          localObject5 = btnAdrenaline;
          ((Button)localObject5).setEnabled(n);
        }
      }
      Object localObject5 = btnAttack;
      ((Button)localObject5).setVisibility(localObject9);
      localObject5 = btnGiveUp;
      ((Button)localObject5).setVisibility(localObject9);
      localObject5 = btnAdrenaline;
      ((Button)localObject5).setVisibility(localObject9);
      localObject5 = mainText;
      String str = "waiting for opponent...";
      ((TextView)localObject5).setText(str);
    }
  }
  
  public void onCreate(Bundle paramBundle)
  {
    FightActivity.BtnAttack_ClickListener localBtnAttack_ClickListener = null;
    int i = 3;
    setVolumeControlStream(i);
    i = 1;
    requestWindowFeature(i);
    i = 2130903045;
    setContentView(i);
    super.onCreate(paramBundle);
    i = 2131099668;
    Object localObject1 = findViewById(i);
    localObject1 = (TextView)localObject1;
    headerText = ((TextView)localObject1);
    int j = 2131099692;
    Object localObject2 = findViewById(j);
    localObject2 = (TextView)localObject2;
    mainText = ((TextView)localObject2);
    int k = 2131099675;
    Object localObject3 = findViewById(k);
    localObject3 = (TextView)localObject3;
    txtMyName = ((TextView)localObject3);
    int m = 2131099698;
    Object localObject4 = findViewById(m);
    localObject4 = (TextView)localObject4;
    txtOppName = ((TextView)localObject4);
    int n = 2131099695;
    Object localObject5 = findViewById(n);
    localObject5 = (Button)localObject5;
    btnAttack = ((Button)localObject5);
    int i1 = 2131099696;
    Object localObject6 = findViewById(i1);
    localObject6 = (Button)localObject6;
    btnGiveUp = ((Button)localObject6);
    int i2 = 2131099697;
    Object localObject7 = findViewById(i2);
    localObject7 = (Button)localObject7;
    btnAdrenaline = ((Button)localObject7);
    int i3 = 2131099693;
    Object localObject8 = findViewById(i3);
    localObject8 = (ProgressBar)localObject8;
    mProgressHealthMe = ((ProgressBar)localObject8);
    int i4 = 2131099699;
    Object localObject9 = findViewById(i4);
    localObject9 = (ProgressBar)localObject9;
    mProgressHealthOpp = ((ProgressBar)localObject9);
    int i5 = 2131099681;
    Object localObject10 = findViewById(i5);
    localObject10 = (ImageView)localObject10;
    dogIconMe = ((ImageView)localObject10);
    int i6 = 2131099701;
    Object localObject11 = findViewById(i6);
    localObject11 = (ImageView)localObject11;
    dogIconOpp = ((ImageView)localObject11);
    int i7 = 2131099682;
    Object localObject12 = findViewById(i7);
    localObject12 = (ImageView)localObject12;
    imgTagsMe = ((ImageView)localObject12);
    int i8 = 2131099683;
    Object localObject13 = findViewById(i8);
    localObject13 = (ImageView)localObject13;
    imgCollarMe = ((ImageView)localObject13);
    int i9 = 2131099702;
    Object localObject14 = findViewById(i9);
    localObject14 = (ImageView)localObject14;
    imgTagsOpp = ((ImageView)localObject14);
    int i10 = 2131099703;
    Object localObject15 = findViewById(i10);
    localObject15 = (ImageView)localObject15;
    imgCollarOpp = ((ImageView)localObject15);
    localObject15 = getAssets();
    Object localObject16 = "bohemian_typewriter.ttf";
    Typeface localTypeface = Typeface.createFromAsset((AssetManager)localObject15, (String)localObject16);
    localObject15 = headerText;
    ((TextView)localObject15).setTypeface(localTypeface);
    localObject15 = mainText;
    ((TextView)localObject15).setTypeface(localTypeface);
    localObject15 = txtMyName;
    ((TextView)localObject15).setTypeface(localTypeface);
    localObject15 = txtOppName;
    ((TextView)localObject15).setTypeface(localTypeface);
    localObject15 = btnAttack;
    ((Button)localObject15).setTypeface(localTypeface);
    localObject15 = btnGiveUp;
    ((Button)localObject15).setTypeface(localTypeface);
    localObject15 = btnAdrenaline;
    ((Button)localObject15).setTypeface(localTypeface);
    localObject15 = headerText;
    localObject16 = "FIGHT!";
    ((TextView)localObject15).setText((CharSequence)localObject16);
    LoadBitmaps();
    localObject15 = btnAttack;
    localObject16 = new kagegames/apps/DWBeta/FightActivity$BtnAttack_ClickListener;
    ((FightActivity.BtnAttack_ClickListener)localObject16).<init>(this, localBtnAttack_ClickListener);
    ((Button)localObject15).setOnClickListener((View.OnClickListener)localObject16);
    localObject15 = btnGiveUp;
    localObject16 = new kagegames/apps/DWBeta/FightActivity$BtnGiveUp_ClickListener;
    ((FightActivity.BtnGiveUp_ClickListener)localObject16).<init>(this, localBtnAttack_ClickListener);
    ((Button)localObject15).setOnClickListener((View.OnClickListener)localObject16);
    localObject15 = btnAdrenaline;
    localObject16 = new kagegames/apps/DWBeta/FightActivity$BtnAdrenaline_ClickListener;
    ((FightActivity.BtnAdrenaline_ClickListener)localObject16).<init>(this, localBtnAttack_ClickListener);
    ((Button)localObject15).setOnClickListener((View.OnClickListener)localObject16);
    localObject15 = new kagegames/apps/DWBeta/PollManager;
    long l = 8000L;
    ((PollManager)localObject15).<init>(this, l);
    mPollManager = ((PollManager)localObject15);
    localObject15 = mPollManager;
    ((PollManager)localObject15).StartPolling();
    localObject15 = DWApplication.getInstance();
    localObject15 = ((DWApplication)localObject15).getSoundsManager();
    ((SoundsManager)localObject15).playFightMusic();
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
      localObject = DWApplication.getInstance();
      localObject = ((DWApplication)localObject).getSoundsManager();
      ((SoundsManager)localObject).pauseSound();
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
 * Qualified Name:     kagegames.apps.DWBeta.FightActivity
 * Java Class Version: 1.2 (46.0)
 * JD-Core Version:    0.7.1
 */