package kagegames.apps.DWBeta;

import android.content.res.AssetManager;
import android.graphics.Typeface;
import android.os.Bundle;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.EditText;
import android.widget.RadioButton;

public class NameOwnerDogActivity
  extends _MemEffActivity
{
  Button btnSubmit;
  EditText edDogName;
  EditText edOwnerEmail;
  EditText edOwnerName;
  RadioButton radioFemale;
  RadioButton radioMale;
  
  public void onCreate(Bundle paramBundle)
  {
    int i2 = 1;
    super.onCreate(paramBundle);
    int i = 3;
    setVolumeControlStream(i);
    requestWindowFeature(i2);
    i = 2130903055;
    setContentView(i);
    i = 2131099732;
    Object localObject1 = findViewById(i);
    localObject1 = (RadioButton)localObject1;
    radioMale = ((RadioButton)localObject1);
    int j = 2131099733;
    Object localObject2 = findViewById(j);
    localObject2 = (RadioButton)localObject2;
    radioFemale = ((RadioButton)localObject2);
    localObject2 = radioMale;
    ((RadioButton)localObject2).setChecked(i2);
    int k = 2131099659;
    Object localObject3 = findViewById(k);
    localObject3 = (Button)localObject3;
    btnSubmit = ((Button)localObject3);
    int m = 2131099731;
    Object localObject4 = findViewById(m);
    localObject4 = (EditText)localObject4;
    edDogName = ((EditText)localObject4);
    int n = 2131099730;
    Object localObject5 = findViewById(n);
    localObject5 = (EditText)localObject5;
    edOwnerName = ((EditText)localObject5);
    int i1 = 2131099735;
    Object localObject6 = findViewById(i1);
    localObject6 = (EditText)localObject6;
    edOwnerEmail = ((EditText)localObject6);
    localObject6 = btnSubmit;
    Object localObject7 = new kagegames/apps/DWBeta/NameOwnerDogActivity$BtnSubmit_ClickListener;
    NameOwnerDogActivity.BtnSubmit_ClickListener localBtnSubmit_ClickListener = null;
    ((NameOwnerDogActivity.BtnSubmit_ClickListener)localObject7).<init>(this, localBtnSubmit_ClickListener);
    ((Button)localObject6).setOnClickListener((View.OnClickListener)localObject7);
    localObject6 = getAssets();
    localObject7 = "bohemian_typewriter.ttf";
    Typeface localTypeface = Typeface.createFromAsset((AssetManager)localObject6, (String)localObject7);
    localObject6 = edDogName;
    ((EditText)localObject6).setTypeface(localTypeface);
    localObject6 = edOwnerName;
    ((EditText)localObject6).setTypeface(localTypeface);
    localObject6 = edOwnerEmail;
    ((EditText)localObject6).setTypeface(localTypeface);
    localObject6 = radioMale;
    ((RadioButton)localObject6).setTypeface(localTypeface);
    localObject6 = radioFemale;
    ((RadioButton)localObject6).setTypeface(localTypeface);
  }
}

/* Location:
 * Qualified Name:     kagegames.apps.DWBeta.NameOwnerDogActivity
 * Java Class Version: 1.2 (46.0)
 * JD-Core Version:    0.7.1
 */