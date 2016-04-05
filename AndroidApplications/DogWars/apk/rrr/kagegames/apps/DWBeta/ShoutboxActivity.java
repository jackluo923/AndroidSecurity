package kagegames.apps.DWBeta;

import android.content.res.AssetManager;
import android.graphics.Typeface;
import android.os.Bundle;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ListView;
import android.widget.TextView;
import com.admob.android.ads.AdView;
import java.util.List;

public class ShoutboxActivity
  extends _DWActivity
{
  Button btnRefresh;
  Button btnSend;
  EditText edShout;
  public View.OnClickListener mAdOverlayListener;
  public AdView mAdView;
  Typeface mFace;
  ShoutboxActivity.MyClickableListAdapter mListAdapter;
  private List mObjectList;
  ListView mShoutboxList;
  
  public ShoutboxActivity()
  {
    ShoutboxActivity.1 local1 = new kagegames/apps/DWBeta/ShoutboxActivity$1;
    local1.<init>(this);
    mAdOverlayListener = local1;
  }
  
  public void onCreate(Bundle paramBundle)
  {
    int i2 = 0;
    ShoutboxActivity.BtnSend_ClickListener localBtnSend_ClickListener = null;
    int i = 1;
    requestWindowFeature(i);
    i = 2130903069;
    setContentView(i);
    super.onCreate(paramBundle);
    i = 2131099668;
    Object localObject1 = findViewById(i);
    localObject1 = (TextView)localObject1;
    String str = "SHOUTBOX";
    ((TextView)localObject1).setText(str);
    int j = 2131099788;
    Object localObject2 = findViewById(j);
    localObject2 = (ListView)localObject2;
    mShoutboxList = ((ListView)localObject2);
    int k = 2131099786;
    Object localObject3 = findViewById(k);
    localObject3 = (EditText)localObject3;
    edShout = ((EditText)localObject3);
    int m = 2131099787;
    Object localObject4 = findViewById(m);
    localObject4 = (Button)localObject4;
    btnSend = ((Button)localObject4);
    int n = 2131099674;
    Object localObject5 = findViewById(n);
    localObject5 = (Button)localObject5;
    btnRefresh = ((Button)localObject5);
    int i1 = 2131099653;
    Object localObject6 = findViewById(i1);
    localObject6 = (AdView)localObject6;
    mAdView = ((AdView)localObject6);
    localObject6 = btnRefresh;
    ((Button)localObject6).setVisibility(i2);
    localObject6 = getAssets();
    Object localObject7 = "bohemian_typewriter.ttf";
    localObject6 = Typeface.createFromAsset((AssetManager)localObject6, (String)localObject7);
    mFace = ((Typeface)localObject6);
    localObject6 = mFace;
    ((TextView)localObject1).setTypeface((Typeface)localObject6);
    localObject6 = getAssets();
    localObject7 = "bohemian_typewriter.ttf";
    Typeface localTypeface = Typeface.createFromAsset((AssetManager)localObject6, (String)localObject7);
    ((TextView)localObject1).setTypeface(localTypeface);
    localObject6 = edShout;
    ((EditText)localObject6).setTypeface(localTypeface);
    localObject6 = btnSend;
    ((Button)localObject6).setTypeface(localTypeface);
    localObject6 = btnSend;
    localObject7 = new kagegames/apps/DWBeta/ShoutboxActivity$BtnSend_ClickListener;
    ((ShoutboxActivity.BtnSend_ClickListener)localObject7).<init>(this, localBtnSend_ClickListener);
    ((Button)localObject6).setOnClickListener((View.OnClickListener)localObject7);
    localObject6 = btnRefresh;
    localObject7 = new kagegames/apps/DWBeta/ShoutboxActivity$BtnRefresh_ClickListener;
    ((ShoutboxActivity.BtnRefresh_ClickListener)localObject7).<init>(this, localBtnSend_ClickListener);
    ((Button)localObject6).setOnClickListener((View.OnClickListener)localObject7);
    localObject6 = new kagegames/apps/DWBeta/ShoutboxActivity$LoadShoutboxTask;
    ((ShoutboxActivity.LoadShoutboxTask)localObject6).<init>(this, localBtnSend_ClickListener);
    localObject7 = new String[i2];
    ((ShoutboxActivity.LoadShoutboxTask)localObject6).execute((Object[])localObject7);
  }
}

/* Location:
 * Qualified Name:     kagegames.apps.DWBeta.ShoutboxActivity
 * Java Class Version: 1.2 (46.0)
 * JD-Core Version:    0.7.1
 */