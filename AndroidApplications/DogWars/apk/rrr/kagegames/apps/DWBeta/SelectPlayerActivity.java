package kagegames.apps.DWBeta;

import android.content.res.AssetManager;
import android.graphics.Typeface;
import android.os.Bundle;
import android.util.Log;
import android.view.Window;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.AdapterView.OnItemSelectedListener;
import android.widget.TextView;

public class SelectPlayerActivity
  extends _MemEffActivity
{
  private final String TAG;
  private NewOwnerPetalAdapter mAdapter;
  private CoverFlow mCoverFlow;
  
  public SelectPlayerActivity()
  {
    Object localObject = "SelectPlayerActivity";
    TAG = ((String)localObject);
    localObject = new kagegames/apps/DWBeta/NewOwnerPetalAdapter;
    ((NewOwnerPetalAdapter)localObject).<init>(this);
    mAdapter = ((NewOwnerPetalAdapter)localObject);
  }
  
  public void onCreate(Bundle paramBundle)
  {
    int n = -1;
    super.onCreate(paramBundle);
    String str1 = "SelectPlayerActivity";
    String str2 = "OnCreate() in SelectPlayerActivity";
    Log.d(str1, str2);
    int i = 1;
    requestWindowFeature(i);
    i = 2130903057;
    setContentView(i);
    Window localWindow = getWindow();
    localWindow.setLayout(n, n);
    int j = 2131099729;
    Object localObject3 = findViewById(j);
    localObject3 = (TextView)localObject3;
    j = 2131099742;
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
    NewOwnerPetalAdapter localNewOwnerPetalAdapter = new kagegames/apps/DWBeta/NewOwnerPetalAdapter;
    localNewOwnerPetalAdapter.<init>(this);
    localObject4 = new kagegames/apps/DWBeta/SelectPlayerActivity$ServerTask;
    str2 = null;
    ((SelectPlayerActivity.ServerTask)localObject4).<init>(this, str2);
    int m = 0;
    Object localObject5 = new String[m];
    ((SelectPlayerActivity.ServerTask)localObject4).execute((Object[])localObject5);
    localObject4 = mCoverFlow;
    localObject5 = new kagegames/apps/DWBeta/SelectPlayerActivity$1;
    ((SelectPlayerActivity.1)localObject5).<init>(this, (TextView)localObject2, (TextView)localObject1);
    ((CoverFlow)localObject4).setOnItemSelectedListener((AdapterView.OnItemSelectedListener)localObject5);
    localObject4 = mCoverFlow;
    localObject5 = new kagegames/apps/DWBeta/SelectPlayerActivity$2;
    ((SelectPlayerActivity.2)localObject5).<init>(this);
    ((CoverFlow)localObject4).setOnItemClickListener((AdapterView.OnItemClickListener)localObject5);
  }
  
  public void onDestroy()
  {
    NewOwnerPetalAdapter localNewOwnerPetalAdapter = mAdapter;
    if (localNewOwnerPetalAdapter != null)
    {
      localNewOwnerPetalAdapter = mAdapter;
      localNewOwnerPetalAdapter.releaseActivity();
    }
    localNewOwnerPetalAdapter = null;
    mAdapter = localNewOwnerPetalAdapter;
    super.onDestroy();
  }
  
  public void onPause()
  {
    super.onResume();
    String str1 = "SelectPlayerActivity";
    String str2 = "OnPause() in SelectPlayerActivity";
    Log.d(str1, str2);
  }
  
  public void onResume()
  {
    super.onResume();
    String str1 = "SelectPlayerActivity";
    String str2 = "OnResume() in SelectPlayerActivity";
    Log.d(str1, str2);
  }
}

/* Location:
 * Qualified Name:     kagegames.apps.DWBeta.SelectPlayerActivity
 * Java Class Version: 1.2 (46.0)
 * JD-Core Version:    0.7.1
 */