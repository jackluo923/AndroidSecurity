package kagegames.apps.DWBeta;

import android.content.Intent;
import android.content.res.AssetManager;
import android.graphics.Typeface;
import android.net.Uri;
import android.os.Bundle;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.EditText;
import android.widget.TextView;

public class BuildCredActivity
  extends _DWActivity
{
  Button btnMarket;
  Button btnSubmit;
  TextView credValue;
  EditText edTags;
  TextView headerText;
  TextView label1;
  TextView label3;
  TextView yourTag;
  
  public void LaunchMarketplace(String paramString)
  {
    int i = 0;
    Intent localIntent = new android/content/Intent;
    String str = "android.intent.action.VIEW";
    Uri localUri = Uri.parse(paramString);
    localIntent.<init>(str, localUri);
    startActivity(localIntent);
  }
  
  public void UpdateUI()
  {
    super.UpdateUI();
    Object localObject1 = yourTag;
    Object localObject2 = new java/lang/StringBuilder;
    Object localObject3 = "Your TAG# is: ";
    ((StringBuilder)localObject2).<init>((String)localObject3);
    localObject3 = DWApplication.getInstance();
    localObject3 = ((DWApplication)localObject3).getDWGameState();
    localObject3 = ((DWGameState)localObject3).getCurOwner();
    localObject3 = ((DWOwner)localObject3).getTag();
    localObject2 = ((StringBuilder)localObject2).append((String)localObject3);
    localObject2 = ((StringBuilder)localObject2).toString();
    ((TextView)localObject1).setText((CharSequence)localObject2);
    localObject1 = credValue;
    localObject2 = DWApplication.getInstance();
    localObject2 = ((DWApplication)localObject2).getDWGameState();
    localObject2 = ((DWGameState)localObject2).getCurOwner();
    localObject2 = ((DWOwner)localObject2).getCredStr();
    ((TextView)localObject1).setText((CharSequence)localObject2);
    localObject1 = edTags;
    localObject2 = "";
    ((EditText)localObject1).setText((CharSequence)localObject2);
  }
  
  public void onCreate(Bundle paramBundle)
  {
    BuildCredActivity.BtnSubmit_ClickListener localBtnSubmit_ClickListener = null;
    int i = 3;
    setVolumeControlStream(i);
    i = 1;
    requestWindowFeature(i);
    i = 2130903040;
    setContentView(i);
    super.onCreate(paramBundle);
    i = 2131099668;
    Object localObject1 = findViewById(i);
    localObject1 = (TextView)localObject1;
    headerText = ((TextView)localObject1);
    int j = 2131099659;
    Object localObject2 = findViewById(j);
    localObject2 = (Button)localObject2;
    btnSubmit = ((Button)localObject2);
    int k = 2131099664;
    Object localObject3 = findViewById(k);
    localObject3 = (Button)localObject3;
    btnMarket = ((Button)localObject3);
    int m = 2131099658;
    Object localObject4 = findViewById(m);
    localObject4 = (EditText)localObject4;
    edTags = ((EditText)localObject4);
    int n = 2131099657;
    Object localObject5 = findViewById(n);
    localObject5 = (TextView)localObject5;
    label1 = ((TextView)localObject5);
    int i1 = 2131099663;
    Object localObject6 = findViewById(i1);
    localObject6 = (TextView)localObject6;
    label3 = ((TextView)localObject6);
    int i2 = 2131099662;
    Object localObject7 = findViewById(i2);
    localObject7 = (TextView)localObject7;
    yourTag = ((TextView)localObject7);
    int i3 = 2131099661;
    Object localObject8 = findViewById(i3);
    localObject8 = (TextView)localObject8;
    credValue = ((TextView)localObject8);
    localObject8 = headerText;
    Object localObject9 = "Build your Cred:";
    ((TextView)localObject8).setText((CharSequence)localObject9);
    localObject8 = getAssets();
    localObject9 = "bohemian_typewriter.ttf";
    Typeface localTypeface = Typeface.createFromAsset((AssetManager)localObject8, (String)localObject9);
    localObject8 = headerText;
    ((TextView)localObject8).setTypeface(localTypeface);
    localObject8 = credValue;
    ((TextView)localObject8).setTypeface(localTypeface);
    localObject8 = btnSubmit;
    ((Button)localObject8).setTypeface(localTypeface);
    localObject8 = btnMarket;
    ((Button)localObject8).setTypeface(localTypeface);
    localObject8 = edTags;
    ((EditText)localObject8).setTypeface(localTypeface);
    localObject8 = label1;
    ((TextView)localObject8).setTypeface(localTypeface);
    localObject8 = label3;
    ((TextView)localObject8).setTypeface(localTypeface);
    localObject8 = yourTag;
    ((TextView)localObject8).setTypeface(localTypeface);
    UpdateUI();
    localObject8 = btnSubmit;
    localObject9 = new kagegames/apps/DWBeta/BuildCredActivity$BtnSubmit_ClickListener;
    ((BuildCredActivity.BtnSubmit_ClickListener)localObject9).<init>(this, localBtnSubmit_ClickListener);
    ((Button)localObject8).setOnClickListener((View.OnClickListener)localObject9);
    localObject8 = btnMarket;
    localObject9 = new kagegames/apps/DWBeta/BuildCredActivity$BtnMarket_ClickListener;
    ((BuildCredActivity.BtnMarket_ClickListener)localObject9).<init>(this, localBtnSubmit_ClickListener);
    ((Button)localObject8).setOnClickListener((View.OnClickListener)localObject9);
  }
}

/* Location:
 * Qualified Name:     kagegames.apps.DWBeta.BuildCredActivity
 * Java Class Version: 1.2 (46.0)
 * JD-Core Version:    0.7.1
 */