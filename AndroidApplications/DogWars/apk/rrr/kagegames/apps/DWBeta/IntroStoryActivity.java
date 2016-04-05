package kagegames.apps.DWBeta;

import android.content.Intent;
import android.content.res.AssetManager;
import android.graphics.Typeface;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.View.OnClickListener;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.widget.Button;
import android.widget.TextView;
import android.widget.ViewFlipper;

public class IntroStoryActivity
  extends _MemEffActivity
{
  private static final int STORY_BOARD_COUNT = 3;
  private Button btnNext;
  private int mIndex;
  private Animation slideLeftIn;
  private Animation slideLeftOut;
  private Animation slideRightIn;
  private Animation slideRightOut;
  private TextView txtStory;
  private ViewFlipper viewFlipper;
  
  protected void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    Intent localIntent = new android/content/Intent;
    localIntent.<init>();
    setResult(paramInt2, localIntent);
    finish();
  }
  
  public void onCreate(Bundle paramBundle)
  {
    int i1 = 0;
    super.onCreate(paramBundle);
    int i = 1;
    requestWindowFeature(i);
    i = 2130903051;
    setContentView(i);
    i = 2131099715;
    Object localObject1 = findViewById(i);
    localObject1 = (TextView)localObject1;
    txtStory = ((TextView)localObject1);
    localObject1 = txtStory;
    Object localObject5 = DWApplication.getInstance();
    localObject5 = ((DWApplication)localObject5).getDWGameState();
    localObject5 = mSelectedNewOwner;
    localObject5 = ((NewOwnerObject)localObject5).getStoryBoardText(i1);
    ((TextView)localObject1).setText((CharSequence)localObject5);
    localObject1 = getAssets();
    localObject5 = "bohemian_typewriter.ttf";
    Typeface localTypeface = Typeface.createFromAsset((AssetManager)localObject1, (String)localObject5);
    localObject1 = txtStory;
    ((TextView)localObject1).setTypeface(localTypeface);
    int j = 2131099714;
    Object localObject2 = findViewById(j);
    localObject2 = (ViewFlipper)localObject2;
    viewFlipper = ((ViewFlipper)localObject2);
    int k = 2130968576;
    Animation localAnimation = AnimationUtils.loadAnimation(this, k);
    slideLeftIn = localAnimation;
    int m = 2130968577;
    Object localObject3 = AnimationUtils.loadAnimation(this, m);
    slideLeftOut = ((Animation)localObject3);
    localObject3 = viewFlipper;
    localObject5 = slideLeftIn;
    ((ViewFlipper)localObject3).setInAnimation((Animation)localObject5);
    localObject3 = viewFlipper;
    localObject5 = slideLeftOut;
    ((ViewFlipper)localObject3).setOutAnimation((Animation)localObject5);
    mIndex = i1;
    int n = 2131099716;
    Object localObject4 = findViewById(n);
    localObject4 = (Button)localObject4;
    btnNext = ((Button)localObject4);
    localObject4 = btnNext;
    localObject5 = new kagegames/apps/DWBeta/IntroStoryActivity$BtnNext_ClickListener;
    IntroStoryActivity.BtnNext_ClickListener localBtnNext_ClickListener = null;
    ((IntroStoryActivity.BtnNext_ClickListener)localObject5).<init>(this, localBtnNext_ClickListener);
    ((Button)localObject4).setOnClickListener((View.OnClickListener)localObject5);
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
 * Qualified Name:     kagegames.apps.DWBeta.IntroStoryActivity
 * Java Class Version: 1.2 (46.0)
 * JD-Core Version:    0.7.1
 */