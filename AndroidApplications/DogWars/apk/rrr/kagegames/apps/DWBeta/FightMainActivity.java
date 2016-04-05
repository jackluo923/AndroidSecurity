package kagegames.apps.DWBeta;

import android.content.res.AssetManager;
import android.graphics.Typeface;
import android.os.Bundle;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.TextView;
import android.widget.ToggleButton;

public class FightMainActivity
  extends _DWActivity
{
  Button btnPickFight;
  TextView headerText;
  TextView main1Text;
  TextView main2Text;
  ToggleButton toggleReadyToFight;
  
  public void UpdateUI()
  {
    super.UpdateUI();
    super.CheckForInterrupts();
  }
  
  public void onCreate(Bundle paramBundle)
  {
    FightMainActivity.BtnReadyToFight_ClickListener localBtnReadyToFight_ClickListener = null;
    int i = 1;
    requestWindowFeature(i);
    i = 2130903049;
    setContentView(i);
    super.onCreate(paramBundle);
    i = 3;
    setVolumeControlStream(i);
    i = 2131099708;
    Object localObject1 = findViewById(i);
    localObject1 = (ToggleButton)localObject1;
    toggleReadyToFight = ((ToggleButton)localObject1);
    int j = 2131099710;
    Object localObject2 = findViewById(j);
    localObject2 = (Button)localObject2;
    btnPickFight = ((Button)localObject2);
    int k = 2131099707;
    Object localObject3 = findViewById(k);
    localObject3 = (TextView)localObject3;
    main1Text = ((TextView)localObject3);
    int m = 2131099709;
    Object localObject4 = findViewById(m);
    localObject4 = (TextView)localObject4;
    main2Text = ((TextView)localObject4);
    int n = 2131099668;
    Object localObject5 = findViewById(n);
    localObject5 = (TextView)localObject5;
    headerText = ((TextView)localObject5);
    localObject5 = headerText;
    Object localObject6 = "FIGHT!";
    ((TextView)localObject5).setText((CharSequence)localObject6);
    localObject5 = getAssets();
    localObject6 = "bohemian_typewriter.ttf";
    Typeface localTypeface = Typeface.createFromAsset((AssetManager)localObject5, (String)localObject6);
    localObject5 = headerText;
    ((TextView)localObject5).setTypeface(localTypeface);
    localObject5 = main1Text;
    ((TextView)localObject5).setTypeface(localTypeface);
    localObject5 = main2Text;
    ((TextView)localObject5).setTypeface(localTypeface);
    localObject5 = toggleReadyToFight;
    ((ToggleButton)localObject5).setTypeface(localTypeface);
    localObject5 = btnPickFight;
    ((Button)localObject5).setTypeface(localTypeface);
    localObject5 = toggleReadyToFight;
    localObject6 = "READY TO FIGHT!";
    ((ToggleButton)localObject5).setTextOn((CharSequence)localObject6);
    localObject5 = toggleReadyToFight;
    localObject6 = DWApplication.getInstance();
    localObject6 = ((DWApplication)localObject6).getDWGameState();
    localObject6 = ((DWGameState)localObject6).getCurOwner();
    boolean bool = ((DWOwner)localObject6).IsReadyToFight();
    ((ToggleButton)localObject5).setChecked(bool);
    localObject5 = toggleReadyToFight;
    Object localObject7 = new kagegames/apps/DWBeta/FightMainActivity$BtnReadyToFight_ClickListener;
    ((FightMainActivity.BtnReadyToFight_ClickListener)localObject7).<init>(this, localBtnReadyToFight_ClickListener);
    ((ToggleButton)localObject5).setOnClickListener((View.OnClickListener)localObject7);
    localObject5 = btnPickFight;
    localObject7 = new kagegames/apps/DWBeta/FightMainActivity$BtnPickFight_ClickListener;
    ((FightMainActivity.BtnPickFight_ClickListener)localObject7).<init>(this, localBtnReadyToFight_ClickListener);
    ((Button)localObject5).setOnClickListener((View.OnClickListener)localObject7);
    localObject5 = new kagegames/apps/DWBeta/PollManager;
    long l = 30000L;
    ((PollManager)localObject5).<init>(this, l);
    mPollManager = ((PollManager)localObject5);
    localObject5 = mPollManager;
    ((PollManager)localObject5).StartPolling();
  }
}

/* Location:
 * Qualified Name:     kagegames.apps.DWBeta.FightMainActivity
 * Java Class Version: 1.2 (46.0)
 * JD-Core Version:    0.7.1
 */