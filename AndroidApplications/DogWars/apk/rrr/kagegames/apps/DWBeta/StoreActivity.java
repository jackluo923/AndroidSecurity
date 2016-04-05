package kagegames.apps.DWBeta;

import android.graphics.Typeface;
import android.os.Bundle;
import android.view.View.OnClickListener;
import android.view.Window;
import android.widget.AdapterView.OnItemSelectedListener;
import android.widget.Button;
import android.widget.TextView;

public class StoreActivity
  extends _DWActivity
{
  private final String TAG;
  private Button btnBuyStuff;
  private TextView descriptionText;
  private TextView headerText;
  private TextView itemTitleText;
  private StoreItemPetalAdapter mAdapter;
  private CoverFlow mCoverFlow;
  private int mPosition;
  private TextView priceText;
  private TextView quantityText;
  
  public StoreActivity()
  {
    String str = "StoreActivity";
    TAG = str;
    int i = -1;
    mPosition = i;
  }
  
  private void OnCreateInBackground()
  {
    StoreItemPetalAdapter localStoreItemPetalAdapter = mAdapter;
    int i = 240;
    int j = 190;
    localStoreItemPetalAdapter.createReflectedImages(i, j);
  }
  
  private void UpdateListUI()
  {
    int j = mPosition;
    if (j < 0) {
      return;
    }
    Object localObject1 = itemTitleText;
    Object localObject3 = mAdapter;
    int m = mPosition;
    localObject3 = ((StoreItemPetalAdapter)localObject3).getItem(m);
    localObject3 = ((StoreItemObject)localObject3).getTitle();
    ((TextView)localObject1).setText((CharSequence)localObject3);
    localObject1 = priceText;
    localObject3 = mAdapter;
    m = mPosition;
    localObject3 = ((StoreItemPetalAdapter)localObject3).getItem(m);
    localObject3 = ((StoreItemObject)localObject3).getPrice();
    ((TextView)localObject1).setText((CharSequence)localObject3);
    localObject1 = descriptionText;
    localObject3 = mAdapter;
    m = mPosition;
    localObject3 = ((StoreItemPetalAdapter)localObject3).getItem(m);
    localObject3 = ((StoreItemObject)localObject3).getDescription();
    ((TextView)localObject1).setText((CharSequence)localObject3);
    localObject1 = DWApplication.getInstance();
    localObject1 = ((DWApplication)localObject1).getDWGameState();
    localObject1 = ((DWGameState)localObject1).getCurOwner();
    localObject3 = mAdapter;
    m = mPosition;
    localObject3 = ((StoreItemPetalAdapter)localObject3).getItem(m);
    localObject3 = ((StoreItemObject)localObject3).getID();
    int i = ((DWOwner)localObject1).getQuantityOf((Long)localObject3);
    if (i <= 0)
    {
      localObject1 = quantityText;
      localObject3 = "Qty: None";
      ((TextView)localObject1).setText((CharSequence)localObject3);
    }
    for (;;)
    {
      localObject1 = btnBuyStuff;
      boolean bool2 = true;
      ((Button)localObject1).setEnabled(bool2);
      localObject1 = mAdapter;
      int k = mPosition;
      localObject1 = ((StoreItemPetalAdapter)localObject1).getItem(k);
      boolean bool1 = ((StoreItemObject)localObject1).isAllowedMultiple();
      if ((bool1) || (i <= 0)) {
        break;
      }
      Object localObject2 = btnBuyStuff;
      k = 0;
      ((Button)localObject2).setEnabled(k);
      break;
      localObject2 = quantityText;
      Object localObject4 = new java/lang/StringBuilder;
      String str = "Qty: ";
      ((StringBuilder)localObject4).<init>(str);
      str = Integer.toString(i);
      localObject4 = ((StringBuilder)localObject4).append(str);
      localObject4 = ((StringBuilder)localObject4).toString();
      ((TextView)localObject2).setText((CharSequence)localObject4);
    }
  }
  
  public void UpdateUI()
  {
    super.UpdateUI();
    UpdateListUI();
    super.CheckForInterrupts();
  }
  
  public void onCreate(Bundle paramBundle)
  {
    StoreActivity.BtnBuyStuff_ClickListener localBtnBuyStuff_ClickListener = null;
    int i4 = -1;
    int i = 2130903073;
    setContentView(i);
    super.onCreate(paramBundle);
    i = 3;
    setVolumeControlStream(i);
    Object localObject1 = new kagegames/apps/DWBeta/StoreItemPetalAdapter;
    ((StoreItemPetalAdapter)localObject1).<init>(this);
    mAdapter = ((StoreItemPetalAdapter)localObject1);
    localObject1 = getWindow();
    ((Window)localObject1).setLayout(i4, i4);
    int j = 2131099668;
    Object localObject2 = findViewById(j);
    localObject2 = (TextView)localObject2;
    headerText = ((TextView)localObject2);
    localObject2 = headerText;
    Object localObject9 = "STORE";
    ((TextView)localObject2).setText((CharSequence)localObject9);
    int k = 2131099724;
    Object localObject3 = findViewById(k);
    localObject3 = (Button)localObject3;
    btnBuyStuff = ((Button)localObject3);
    int m = 2131099790;
    Object localObject4 = findViewById(m);
    localObject4 = (TextView)localObject4;
    itemTitleText = ((TextView)localObject4);
    int n = 2131099739;
    Object localObject5 = findViewById(n);
    localObject5 = (TextView)localObject5;
    descriptionText = ((TextView)localObject5);
    int i1 = 2131099791;
    Object localObject6 = findViewById(i1);
    localObject6 = (TextView)localObject6;
    priceText = ((TextView)localObject6);
    int i2 = 2131099773;
    Object localObject7 = findViewById(i2);
    localObject7 = (TextView)localObject7;
    quantityText = ((TextView)localObject7);
    localObject7 = btnBuyStuff;
    localObject9 = new kagegames/apps/DWBeta/StoreActivity$BtnBuyStuff_ClickListener;
    ((StoreActivity.BtnBuyStuff_ClickListener)localObject9).<init>(this, localBtnBuyStuff_ClickListener);
    ((Button)localObject7).setOnClickListener((View.OnClickListener)localObject9);
    localObject7 = btnBuyStuff;
    localObject9 = mFace;
    ((Button)localObject7).setTypeface((Typeface)localObject9);
    localObject7 = headerText;
    localObject9 = mFace;
    ((TextView)localObject7).setTypeface((Typeface)localObject9);
    localObject7 = itemTitleText;
    localObject9 = mFace;
    ((TextView)localObject7).setTypeface((Typeface)localObject9);
    localObject7 = descriptionText;
    localObject9 = mFace;
    ((TextView)localObject7).setTypeface((Typeface)localObject9);
    localObject7 = priceText;
    localObject9 = mFace;
    ((TextView)localObject7).setTypeface((Typeface)localObject9);
    localObject7 = quantityText;
    localObject9 = mFace;
    ((TextView)localObject7).setTypeface((Typeface)localObject9);
    int i3 = 2131099738;
    Object localObject8 = findViewById(i3);
    localObject8 = (CoverFlow)localObject8;
    mCoverFlow = ((CoverFlow)localObject8);
    localObject8 = mCoverFlow;
    localObject9 = new kagegames/apps/DWBeta/StoreActivity$1;
    ((StoreActivity.1)localObject9).<init>(this);
    ((CoverFlow)localObject8).setOnItemSelectedListener((AdapterView.OnItemSelectedListener)localObject9);
    localObject8 = new kagegames/apps/DWBeta/StoreActivity$LoadStoreTask;
    ((StoreActivity.LoadStoreTask)localObject8).<init>(this, localBtnBuyStuff_ClickListener);
    int i5 = 0;
    String[] arrayOfString = new String[i5];
    ((StoreActivity.LoadStoreTask)localObject8).execute(arrayOfString);
    localObject8 = new kagegames/apps/DWBeta/PollManager;
    long l = 30000L;
    ((PollManager)localObject8).<init>(this, l);
    mPollManager = ((PollManager)localObject8);
    localObject8 = mPollManager;
    ((PollManager)localObject8).StartPolling();
  }
  
  public void onDestroy()
  {
    StoreItemPetalAdapter localStoreItemPetalAdapter = mAdapter;
    if (localStoreItemPetalAdapter != null)
    {
      localStoreItemPetalAdapter = mAdapter;
      localStoreItemPetalAdapter.releaseActivity();
    }
    localStoreItemPetalAdapter = null;
    mAdapter = localStoreItemPetalAdapter;
    super.onDestroy();
  }
}

/* Location:
 * Qualified Name:     kagegames.apps.DWBeta.StoreActivity
 * Java Class Version: 1.2 (46.0)
 * JD-Core Version:    0.7.1
 */