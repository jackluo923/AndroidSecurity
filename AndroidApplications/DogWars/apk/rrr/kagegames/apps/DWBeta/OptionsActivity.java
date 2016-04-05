package kagegames.apps.DWBeta;

import android.graphics.Typeface;
import android.os.Bundle;
import android.view.View.OnClickListener;
import android.widget.TextView;
import android.widget.ToggleButton;

public class OptionsActivity
  extends _DWActivity
{
  TextView headerText;
  ToggleButton toggleSound;
  ToggleButton toggleVibrate;
  
  public void onCreate(Bundle paramBundle)
  {
    OptionsActivity.toggleSound_ClickListener localtoggleSound_ClickListener = null;
    int i = 3;
    setVolumeControlStream(i);
    i = 1;
    requestWindowFeature(i);
    i = 2130903058;
    setContentView(i);
    super.onCreate(paramBundle);
    i = 2131099668;
    Object localObject1 = findViewById(i);
    localObject1 = (TextView)localObject1;
    headerText = ((TextView)localObject1);
    localObject1 = headerText;
    Object localObject4 = mFace;
    ((TextView)localObject1).setTypeface((Typeface)localObject4);
    localObject1 = headerText;
    localObject4 = "Options";
    ((TextView)localObject1).setText((CharSequence)localObject4);
    int j = 2131099743;
    Object localObject2 = findViewById(j);
    localObject2 = (ToggleButton)localObject2;
    toggleSound = ((ToggleButton)localObject2);
    int k = 2131099744;
    Object localObject3 = findViewById(k);
    localObject3 = (ToggleButton)localObject3;
    toggleVibrate = ((ToggleButton)localObject3);
    localObject3 = toggleSound;
    localObject4 = DWApplication.getInstance();
    localObject4 = ((DWApplication)localObject4).getPrefsManager();
    boolean bool1 = ((PrefsManager)localObject4).isSoundOn();
    ((ToggleButton)localObject3).setChecked(bool1);
    localObject3 = toggleVibrate;
    Object localObject5 = DWApplication.getInstance();
    localObject5 = ((DWApplication)localObject5).getPrefsManager();
    boolean bool2 = ((PrefsManager)localObject5).isVibrateOn();
    ((ToggleButton)localObject3).setChecked(bool2);
    localObject3 = toggleSound;
    Object localObject6 = new kagegames/apps/DWBeta/OptionsActivity$toggleSound_ClickListener;
    ((OptionsActivity.toggleSound_ClickListener)localObject6).<init>(this, localtoggleSound_ClickListener);
    ((ToggleButton)localObject3).setOnClickListener((View.OnClickListener)localObject6);
    localObject3 = toggleVibrate;
    localObject6 = new kagegames/apps/DWBeta/OptionsActivity$toggleVibrate_ClickListener;
    ((OptionsActivity.toggleVibrate_ClickListener)localObject6).<init>(this, localtoggleSound_ClickListener);
    ((ToggleButton)localObject3).setOnClickListener((View.OnClickListener)localObject6);
    localObject3 = toggleSound;
    localObject6 = mFace;
    ((ToggleButton)localObject3).setTypeface((Typeface)localObject6);
    localObject3 = toggleVibrate;
    localObject6 = mFace;
    ((ToggleButton)localObject3).setTypeface((Typeface)localObject6);
  }
}

/* Location:
 * Qualified Name:     kagegames.apps.DWBeta.OptionsActivity
 * Java Class Version: 1.2 (46.0)
 * JD-Core Version:    0.7.1
 */