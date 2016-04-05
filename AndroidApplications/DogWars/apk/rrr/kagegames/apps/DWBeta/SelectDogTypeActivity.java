package kagegames.apps.DWBeta;

import android.content.Intent;
import android.content.res.AssetManager;
import android.graphics.Typeface;
import android.os.Bundle;
import android.util.Log;
import android.view.KeyEvent;
import android.view.Window;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.AdapterView.OnItemSelectedListener;
import android.widget.TextView;

public class SelectDogTypeActivity
  extends _MemEffActivity
{
  private final String TAG;
  private NewDogPetalAdapter mAdapter;
  private CoverFlow mCoverFlow;
  
  public SelectDogTypeActivity()
  {
    Object localObject = "SelectDogTypeActivity";
    TAG = ((String)localObject);
    localObject = new kagegames/apps/DWBeta/NewDogPetalAdapter;
    ((NewDogPetalAdapter)localObject).<init>(this);
    mAdapter = ((NewDogPetalAdapter)localObject);
  }
  
  protected void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    Intent localIntent = new android/content/Intent;
    localIntent.<init>();
    setResult(paramInt2, localIntent);
    finish();
  }
  
  public void onCreate(Bundle paramBundle)
  {
    int n = -1;
    super.onCreate(paramBundle);
    String str1 = "SelectDogTypeActivity";
    String str2 = "OnCreate() in SelectDogTypeActivity";
    Log.d(str1, str2);
    int i = 1;
    requestWindowFeature(i);
    i = 2130903056;
    setContentView(i);
    Window localWindow = getWindow();
    localWindow.setLayout(n, n);
    int j = 2131099729;
    Object localObject3 = findViewById(j);
    localObject3 = (TextView)localObject3;
    j = 2131099740;
    Object localObject2 = findViewById(j);
    localObject2 = (TextView)localObject2;
    j = 2131099739;
    Object localObject1 = findViewById(j);
    localObject1 = (TextView)localObject1;
    AssetManager localAssetManager = getAssets();
    str2 = "bohemian_typewriter.ttf";
    Typeface localTypeface = Typeface.createFromAsset(localAssetManager, str2);
    ((TextView)localObject3).setTypeface(localTypeface);
    ((TextView)localObject1).setTypeface(localTypeface);
    ((TextView)localObject2).setTypeface(localTypeface);
    int k = 2131099738;
    Object localObject4 = findViewById(k);
    localObject4 = (CoverFlow)localObject4;
    mCoverFlow = ((CoverFlow)localObject4);
    NewDogPetalAdapter localNewDogPetalAdapter = new kagegames/apps/DWBeta/NewDogPetalAdapter;
    localNewDogPetalAdapter.<init>(this);
    localObject4 = new kagegames/apps/DWBeta/SelectDogTypeActivity$ServerTask;
    str2 = null;
    ((SelectDogTypeActivity.ServerTask)localObject4).<init>(this, str2);
    int m = 0;
    Object localObject5 = new String[m];
    ((SelectDogTypeActivity.ServerTask)localObject4).execute((Object[])localObject5);
    localObject4 = mCoverFlow;
    localObject5 = new kagegames/apps/DWBeta/SelectDogTypeActivity$1;
    ((SelectDogTypeActivity.1)localObject5).<init>(this, (TextView)localObject2, (TextView)localObject1);
    ((CoverFlow)localObject4).setOnItemSelectedListener((AdapterView.OnItemSelectedListener)localObject5);
    localObject4 = mCoverFlow;
    localObject5 = new kagegames/apps/DWBeta/SelectDogTypeActivity$2;
    ((SelectDogTypeActivity.2)localObject5).<init>(this);
    ((CoverFlow)localObject4).setOnItemClickListener((AdapterView.OnItemClickListener)localObject5);
  }
  
  public void onDestroy()
  {
    NewDogPetalAdapter localNewDogPetalAdapter = mAdapter;
    if (localNewDogPetalAdapter != null)
    {
      localNewDogPetalAdapter = mAdapter;
      localNewDogPetalAdapter.releaseActivity();
    }
    localNewDogPetalAdapter = null;
    mAdapter = localNewDogPetalAdapter;
    super.onDestroy();
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
 * Qualified Name:     kagegames.apps.DWBeta.SelectDogTypeActivity
 * Java Class Version: 1.2 (46.0)
 * JD-Core Version:    0.7.1
 */