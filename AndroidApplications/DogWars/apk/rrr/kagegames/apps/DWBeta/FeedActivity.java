package kagegames.apps.DWBeta;

import android.content.res.AssetManager;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Typeface;
import android.os.Bundle;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.TextView;

public class FeedActivity
  extends _DWActivity
{
  TextView FoodText;
  TextView WaterText;
  Button btnPrmDogFood;
  Button btnRawMeat;
  Button btnRegDogFood;
  Button btnWater;
  TextView dogNameText;
  TextView headerText;
  ImageView imgCollar;
  ImageView imgDogIcon;
  ImageView imgTags;
  
  public void UpdateUI()
  {
    boolean bool2 = true;
    boolean bool1 = false;
    super.UpdateUI();
    Object localObject1 = dogNameText;
    Object localObject4 = DWApplication.getInstance();
    localObject4 = ((DWApplication)localObject4).getDWGameState();
    localObject4 = ((DWGameState)localObject4).getCurDog();
    localObject4 = ((DWDog)localObject4).getName();
    ((TextView)localObject1).setText((CharSequence)localObject4);
    localObject1 = FoodText;
    localObject4 = DWApplication.getInstance();
    localObject4 = ((DWApplication)localObject4).getDWGameState();
    localObject4 = ((DWGameState)localObject4).getCurDog();
    localObject4 = ((DWDog)localObject4).getFoodStr();
    ((TextView)localObject1).setText((CharSequence)localObject4);
    localObject1 = WaterText;
    localObject4 = DWApplication.getInstance();
    localObject4 = ((DWApplication)localObject4).getDWGameState();
    localObject4 = ((DWGameState)localObject4).getCurDog();
    localObject4 = ((DWDog)localObject4).getWaterStr();
    ((TextView)localObject1).setText((CharSequence)localObject4);
    localObject1 = DWApplication.getInstance();
    localObject1 = ((DWApplication)localObject1).getDWGameState();
    localObject1 = ((DWGameState)localObject1).getCurOwner();
    localObject4 = DWOwner.INDEX_REG_FOOD;
    int i = ((DWOwner)localObject1).getQuantityOf((Long)localObject4);
    label175:
    Button localButton;
    if (i > 0)
    {
      Object localObject2 = btnRegDogFood;
      ((Button)localObject2).setEnabled(bool2);
      localObject2 = DWApplication.getInstance();
      localObject2 = ((DWApplication)localObject2).getDWGameState();
      localObject2 = ((DWGameState)localObject2).getCurOwner();
      localObject4 = DWOwner.INDEX_PRM_FOOD;
      int j = ((DWOwner)localObject2).getQuantityOf((Long)localObject4);
      if (j <= 0) {
        break label228;
      }
      Object localObject3 = btnPrmDogFood;
      ((Button)localObject3).setEnabled(bool2);
      localObject3 = DWApplication.getInstance();
      localObject3 = ((DWApplication)localObject3).getDWGameState();
      localObject3 = ((DWGameState)localObject3).getCurOwner();
      localObject4 = DWOwner.INDEX_RAW_MEAT;
      int k = ((DWOwner)localObject3).getQuantityOf((Long)localObject4);
      if (k <= 0) {
        break label241;
      }
      localButton = btnRawMeat;
      localButton.setEnabled(bool2);
    }
    for (;;)
    {
      return;
      localButton = btnRegDogFood;
      localButton.setEnabled(bool1);
      break;
      label228:
      localButton = btnPrmDogFood;
      localButton.setEnabled(bool1);
      break label175;
      label241:
      localButton = btnRawMeat;
      localButton.setEnabled(bool1);
    }
  }
  
  public void onCreate(Bundle paramBundle)
  {
    FeedActivity.BtnWater_ClickListener localBtnWater_ClickListener = null;
    int i = 1;
    requestWindowFeature(i);
    i = 2130903044;
    setContentView(i);
    super.onCreate(paramBundle);
    i = 3;
    setVolumeControlStream(i);
    i = 2131099685;
    Object localObject1 = findViewById(i);
    localObject1 = (Button)localObject1;
    btnWater = ((Button)localObject1);
    int j = 2131099687;
    Object localObject2 = findViewById(j);
    localObject2 = (Button)localObject2;
    btnRegDogFood = ((Button)localObject2);
    int k = 2131099689;
    Object localObject3 = findViewById(k);
    localObject3 = (Button)localObject3;
    btnPrmDogFood = ((Button)localObject3);
    int m = 2131099691;
    Object localObject4 = findViewById(m);
    localObject4 = (Button)localObject4;
    btnRawMeat = ((Button)localObject4);
    int n = 2131099668;
    Object localObject5 = findViewById(n);
    localObject5 = (TextView)localObject5;
    headerText = ((TextView)localObject5);
    int i1 = 2131099675;
    Object localObject6 = findViewById(i1);
    localObject6 = (TextView)localObject6;
    dogNameText = ((TextView)localObject6);
    int i2 = 2131099678;
    Object localObject7 = findViewById(i2);
    localObject7 = (TextView)localObject7;
    FoodText = ((TextView)localObject7);
    int i3 = 2131099680;
    Object localObject8 = findViewById(i3);
    localObject8 = (TextView)localObject8;
    WaterText = ((TextView)localObject8);
    int i4 = 2131099681;
    Object localObject9 = findViewById(i4);
    localObject9 = (ImageView)localObject9;
    imgDogIcon = ((ImageView)localObject9);
    int i5 = 2131099682;
    Object localObject10 = findViewById(i5);
    localObject10 = (ImageView)localObject10;
    imgTags = ((ImageView)localObject10);
    int i6 = 2131099683;
    Object localObject11 = findViewById(i6);
    localObject11 = (ImageView)localObject11;
    imgCollar = ((ImageView)localObject11);
    localObject11 = headerText;
    Object localObject12 = "Feed/Water Your Dog";
    ((TextView)localObject11).setText((CharSequence)localObject12);
    localObject11 = getAssets();
    localObject12 = "bohemian_typewriter.ttf";
    Typeface localTypeface = Typeface.createFromAsset((AssetManager)localObject11, (String)localObject12);
    localObject11 = headerText;
    ((TextView)localObject11).setTypeface(localTypeface);
    localObject11 = dogNameText;
    ((TextView)localObject11).setTypeface(localTypeface);
    localObject11 = FoodText;
    ((TextView)localObject11).setTypeface(localTypeface);
    localObject11 = WaterText;
    ((TextView)localObject11).setTypeface(localTypeface);
    localObject11 = btnWater;
    ((Button)localObject11).setTypeface(localTypeface);
    localObject11 = btnRegDogFood;
    ((Button)localObject11).setTypeface(localTypeface);
    localObject11 = btnPrmDogFood;
    ((Button)localObject11).setTypeface(localTypeface);
    localObject11 = btnRawMeat;
    ((Button)localObject11).setTypeface(localTypeface);
    localObject11 = imgDogIcon;
    localObject12 = DWApplication.getAppResources();
    Object localObject13 = DWApplication.getInstance();
    localObject13 = ((DWApplication)localObject13).getDWGameState();
    localObject13 = ((DWGameState)localObject13).getCurDog();
    int i7 = ((DWDog)localObject13).getIconResourceID();
    localObject12 = BitmapFactory.decodeResource((Resources)localObject12, i7);
    ((ImageView)localObject11).setImageBitmap((Bitmap)localObject12);
    localObject11 = imgTags;
    localObject12 = DWApplication.getAppResources();
    Object localObject14 = DWApplication.getInstance();
    localObject14 = ((DWApplication)localObject14).getDWGameState();
    localObject14 = ((DWGameState)localObject14).getCurOwner();
    int i8 = ((DWOwner)localObject14).getTagsResourceID();
    localObject12 = BitmapFactory.decodeResource((Resources)localObject12, i8);
    ((ImageView)localObject11).setImageBitmap((Bitmap)localObject12);
    localObject11 = imgCollar;
    localObject12 = DWApplication.getAppResources();
    Object localObject15 = DWApplication.getInstance();
    localObject15 = ((DWApplication)localObject15).getDWGameState();
    localObject15 = ((DWGameState)localObject15).getCurOwner();
    int i9 = ((DWOwner)localObject15).getCollarResourceID();
    localObject12 = BitmapFactory.decodeResource((Resources)localObject12, i9);
    ((ImageView)localObject11).setImageBitmap((Bitmap)localObject12);
    localObject11 = btnWater;
    localObject12 = new kagegames/apps/DWBeta/FeedActivity$BtnWater_ClickListener;
    ((FeedActivity.BtnWater_ClickListener)localObject12).<init>(this, localBtnWater_ClickListener);
    ((Button)localObject11).setOnClickListener((View.OnClickListener)localObject12);
    localObject11 = btnRegDogFood;
    localObject12 = new kagegames/apps/DWBeta/FeedActivity$BtnRegDogFood_ClickListener;
    ((FeedActivity.BtnRegDogFood_ClickListener)localObject12).<init>(this, localBtnWater_ClickListener);
    ((Button)localObject11).setOnClickListener((View.OnClickListener)localObject12);
    localObject11 = btnPrmDogFood;
    localObject12 = new kagegames/apps/DWBeta/FeedActivity$BtnPrmDogFood_ClickListener;
    ((FeedActivity.BtnPrmDogFood_ClickListener)localObject12).<init>(this, localBtnWater_ClickListener);
    ((Button)localObject11).setOnClickListener((View.OnClickListener)localObject12);
    localObject11 = btnRawMeat;
    localObject12 = new kagegames/apps/DWBeta/FeedActivity$BtnRawMeat_ClickListener;
    ((FeedActivity.BtnRawMeat_ClickListener)localObject12).<init>(this, localBtnWater_ClickListener);
    ((Button)localObject11).setOnClickListener((View.OnClickListener)localObject12);
    UpdateUI();
  }
}

/* Location:
 * Qualified Name:     kagegames.apps.DWBeta.FeedActivity
 * Java Class Version: 1.2 (46.0)
 * JD-Core Version:    0.7.1
 */