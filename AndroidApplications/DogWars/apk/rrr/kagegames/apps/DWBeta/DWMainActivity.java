package kagegames.apps.DWBeta;

import android.graphics.Typeface;
import android.os.Bundle;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.TextView;

public class DWMainActivity
  extends _DWActivity
{
  private static final String TAG = "DWMainActivity";
  private Button btnBuyStuff;
  private Button btnCred;
  private Button btnFeed;
  private Button btnFight;
  private Button btnOptions;
  private Button btnScoreboard;
  private Button btnShoutbox;
  private Button btnTrain;
  private TextView txtFightStatus;
  
  public void UpdateUI()
  {
    super.UpdateUI();
    Object localObject1 = DWApplication.getInstance();
    localObject1 = ((DWApplication)localObject1).getDWGameState();
    localObject1 = ((DWGameState)localObject1).getCurOwner();
    boolean bool1 = ((DWOwner)localObject1).IsWaitingForResponse();
    Object localObject2;
    String str;
    if (bool1)
    {
      localObject2 = txtFightStatus;
      str = "Waiting for Opponent...";
      ((TextView)localObject2).setText(str);
    }
    for (;;)
    {
      super.CheckForInterrupts();
      return;
      localObject2 = DWApplication.getInstance();
      localObject2 = ((DWApplication)localObject2).getDWGameState();
      localObject2 = ((DWGameState)localObject2).getCurOwner();
      boolean bool2 = ((DWOwner)localObject2).IsReadyToFight();
      TextView localTextView;
      if (bool2)
      {
        localTextView = txtFightStatus;
        str = "READY TO FIGHT!!!";
        localTextView.setText(str);
      }
      else
      {
        localTextView = txtFightStatus;
        str = "Not ready to Fight";
        localTextView.setText(str);
      }
    }
  }
  
  public void onCreate(Bundle paramBundle)
  {
    DWMainActivity.BtnShoutbox_ClickListener localBtnShoutbox_ClickListener = null;
    int i = 3;
    setVolumeControlStream(i);
    i = 2130903053;
    setContentView(i);
    super.onCreate(paramBundle);
    i = 2131099718;
    Object localObject2 = findViewById(i);
    localObject2 = (Button)localObject2;
    btnShoutbox = ((Button)localObject2);
    int j = 2131099719;
    Object localObject3 = findViewById(j);
    localObject3 = (Button)localObject3;
    btnFight = ((Button)localObject3);
    int k = 2131099720;
    Object localObject4 = findViewById(k);
    localObject4 = (Button)localObject4;
    btnScoreboard = ((Button)localObject4);
    int m = 2131099721;
    Object localObject5 = findViewById(m);
    localObject5 = (Button)localObject5;
    btnCred = ((Button)localObject5);
    int n = 2131099723;
    Object localObject6 = findViewById(n);
    localObject6 = (Button)localObject6;
    btnTrain = ((Button)localObject6);
    int i1 = 2131099724;
    Object localObject7 = findViewById(i1);
    localObject7 = (Button)localObject7;
    btnBuyStuff = ((Button)localObject7);
    int i2 = 2131099726;
    Object localObject8 = findViewById(i2);
    localObject8 = (Button)localObject8;
    btnFeed = ((Button)localObject8);
    int i3 = 2131099725;
    Object localObject9 = findViewById(i3);
    localObject9 = (Button)localObject9;
    btnOptions = ((Button)localObject9);
    int i4 = 2131099722;
    Object localObject10 = findViewById(i4);
    localObject10 = (TextView)localObject10;
    txtFightStatus = ((TextView)localObject10);
    int i5 = 2131099668;
    Object localObject1 = findViewById(i5);
    localObject1 = (TextView)localObject1;
    Object localObject11 = btnShoutbox;
    Object localObject12 = new kagegames/apps/DWBeta/DWMainActivity$BtnShoutbox_ClickListener;
    ((DWMainActivity.BtnShoutbox_ClickListener)localObject12).<init>(this, localBtnShoutbox_ClickListener);
    ((Button)localObject11).setOnClickListener((View.OnClickListener)localObject12);
    localObject11 = btnFight;
    localObject12 = new kagegames/apps/DWBeta/DWMainActivity$BtnFight_ClickListener;
    ((DWMainActivity.BtnFight_ClickListener)localObject12).<init>(this, localBtnShoutbox_ClickListener);
    ((Button)localObject11).setOnClickListener((View.OnClickListener)localObject12);
    localObject11 = btnScoreboard;
    localObject12 = new kagegames/apps/DWBeta/DWMainActivity$BtnScoreboard_ClickListener;
    ((DWMainActivity.BtnScoreboard_ClickListener)localObject12).<init>(this, localBtnShoutbox_ClickListener);
    ((Button)localObject11).setOnClickListener((View.OnClickListener)localObject12);
    localObject11 = btnCred;
    localObject12 = new kagegames/apps/DWBeta/DWMainActivity$BtnCred_ClickListener;
    ((DWMainActivity.BtnCred_ClickListener)localObject12).<init>(this, localBtnShoutbox_ClickListener);
    ((Button)localObject11).setOnClickListener((View.OnClickListener)localObject12);
    localObject11 = btnTrain;
    localObject12 = new kagegames/apps/DWBeta/DWMainActivity$BtnTrain_ClickListener;
    ((DWMainActivity.BtnTrain_ClickListener)localObject12).<init>(this, localBtnShoutbox_ClickListener);
    ((Button)localObject11).setOnClickListener((View.OnClickListener)localObject12);
    localObject11 = btnBuyStuff;
    localObject12 = new kagegames/apps/DWBeta/DWMainActivity$BtnBuyStuff_ClickListener;
    ((DWMainActivity.BtnBuyStuff_ClickListener)localObject12).<init>(this, localBtnShoutbox_ClickListener);
    ((Button)localObject11).setOnClickListener((View.OnClickListener)localObject12);
    localObject11 = btnFeed;
    localObject12 = new kagegames/apps/DWBeta/DWMainActivity$BtnFeed_ClickListener;
    ((DWMainActivity.BtnFeed_ClickListener)localObject12).<init>(this, localBtnShoutbox_ClickListener);
    ((Button)localObject11).setOnClickListener((View.OnClickListener)localObject12);
    localObject11 = btnOptions;
    localObject12 = new kagegames/apps/DWBeta/DWMainActivity$BtnOptions_ClickListener;
    ((DWMainActivity.BtnOptions_ClickListener)localObject12).<init>(this, localBtnShoutbox_ClickListener);
    ((Button)localObject11).setOnClickListener((View.OnClickListener)localObject12);
    localObject11 = mFace;
    ((TextView)localObject1).setTypeface((Typeface)localObject11);
    localObject11 = txtFightStatus;
    localObject12 = mFace;
    ((TextView)localObject11).setTypeface((Typeface)localObject12);
    localObject11 = btnShoutbox;
    localObject12 = mFace;
    ((Button)localObject11).setTypeface((Typeface)localObject12);
    localObject11 = btnFight;
    localObject12 = mFace;
    ((Button)localObject11).setTypeface((Typeface)localObject12);
    localObject11 = btnScoreboard;
    localObject12 = mFace;
    ((Button)localObject11).setTypeface((Typeface)localObject12);
    localObject11 = btnCred;
    localObject12 = mFace;
    ((Button)localObject11).setTypeface((Typeface)localObject12);
    localObject11 = btnTrain;
    localObject12 = mFace;
    ((Button)localObject11).setTypeface((Typeface)localObject12);
    localObject11 = btnBuyStuff;
    localObject12 = mFace;
    ((Button)localObject11).setTypeface((Typeface)localObject12);
    localObject11 = btnFeed;
    localObject12 = mFace;
    ((Button)localObject11).setTypeface((Typeface)localObject12);
    localObject11 = btnOptions;
    localObject12 = mFace;
    ((Button)localObject11).setTypeface((Typeface)localObject12);
    localObject11 = new kagegames/apps/DWBeta/DWMainActivity$LoadMainTask;
    ((DWMainActivity.LoadMainTask)localObject11).<init>(this, localBtnShoutbox_ClickListener);
    int i6 = 0;
    String[] arrayOfString = new String[i6];
    ((DWMainActivity.LoadMainTask)localObject11).execute(arrayOfString);
    localObject11 = new kagegames/apps/DWBeta/PollManager;
    long l = 30000L;
    ((PollManager)localObject11).<init>(this, l);
    mPollManager = ((PollManager)localObject11);
    localObject11 = mPollManager;
    ((PollManager)localObject11).StartPolling();
  }
}

/* Location:
 * Qualified Name:     kagegames.apps.DWBeta.DWMainActivity
 * Java Class Version: 1.2 (46.0)
 * JD-Core Version:    0.7.1
 */