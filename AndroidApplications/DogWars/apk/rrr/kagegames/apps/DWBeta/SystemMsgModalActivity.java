package kagegames.apps.DWBeta;

import android.graphics.Typeface;
import android.os.Bundle;
import android.util.Log;
import android.view.KeyEvent;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.TextView;

public class SystemMsgModalActivity
  extends _DWActivity
{
  Button btnOk;
  TextView txtHeader;
  TextView txtMessage;
  
  public void UpdateUI()
  {
    super.UpdateUI();
    super.CheckForInterrupts();
  }
  
  public void onCreate(Bundle paramBundle)
  {
    int i = 3;
    setVolumeControlStream(i);
    i = 1;
    requestWindowFeature(i);
    i = 2130903074;
    setContentView(i);
    super.onCreate(paramBundle);
    i = 2131099668;
    Object localObject1 = findViewById(i);
    localObject1 = (TextView)localObject1;
    txtHeader = ((TextView)localObject1);
    int j = 2131099692;
    Object localObject2 = findViewById(j);
    localObject2 = (TextView)localObject2;
    txtMessage = ((TextView)localObject2);
    int k = 2131099792;
    Object localObject3 = findViewById(k);
    localObject3 = (Button)localObject3;
    btnOk = ((Button)localObject3);
    localObject3 = txtHeader;
    Object localObject4 = mFace;
    ((TextView)localObject3).setTypeface((Typeface)localObject4);
    localObject3 = txtMessage;
    localObject4 = mFace;
    ((TextView)localObject3).setTypeface((Typeface)localObject4);
    localObject3 = txtHeader;
    localObject4 = "SYSTEM MESSAGE";
    ((TextView)localObject3).setText((CharSequence)localObject4);
    localObject3 = txtMessage;
    localObject4 = DWApplication.getInstance();
    localObject4 = ((DWApplication)localObject4).getDWGameState();
    localObject4 = ((DWGameState)localObject4).getSystemMsg();
    localObject4 = ((DWSystemMsg)localObject4).getMessage();
    ((TextView)localObject3).setText((CharSequence)localObject4);
    localObject3 = btnOk;
    localObject4 = new kagegames/apps/DWBeta/SystemMsgModalActivity$BtnOk_ClickListener;
    SystemMsgModalActivity.BtnOk_ClickListener localBtnOk_ClickListener = null;
    ((SystemMsgModalActivity.BtnOk_ClickListener)localObject4).<init>(this, localBtnOk_ClickListener);
    ((Button)localObject3).setOnClickListener((View.OnClickListener)localObject4);
    UpdateUI();
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
 * Qualified Name:     kagegames.apps.DWBeta.SystemMsgModalActivity
 * Java Class Version: 1.2 (46.0)
 * JD-Core Version:    0.7.1
 */