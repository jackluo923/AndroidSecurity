package kagegames.apps.DWBeta;

import android.app.ListActivity;
import android.content.res.AssetManager;
import android.graphics.Typeface;
import android.os.Bundle;
import android.view.View;
import android.widget.ListView;
import android.widget.TextView;
import java.util.List;

public class ScoreboardListActivity
  extends ListActivity
{
  private boolean bIsLoadedFromMenu;
  Typeface mFace;
  ScoreboardListActivity.MyClickableListAdapter mListAdapter;
  private List mObjectList;
  
  public ScoreboardListActivity()
  {
    boolean bool = false;
    bIsLoadedFromMenu = bool;
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    int i = 1;
    requestWindowFeature(i);
    i = 2130903067;
    setContentView(i);
    i = 2131099668;
    Object localObject1 = findViewById(i);
    localObject1 = (TextView)localObject1;
    Object localObject2 = "SCOREBOARD";
    ((TextView)localObject1).setText((CharSequence)localObject2);
    localObject2 = getAssets();
    String str = "bohemian_typewriter.ttf";
    localObject2 = Typeface.createFromAsset((AssetManager)localObject2, str);
    mFace = ((Typeface)localObject2);
    localObject2 = mFace;
    ((TextView)localObject1).setTypeface((Typeface)localObject2);
    localObject2 = new kagegames/apps/DWBeta/ScoreboardListActivity$ServerTask;
    str = null;
    ((ScoreboardListActivity.ServerTask)localObject2).<init>(this, str);
    int j = 0;
    String[] arrayOfString = new String[j];
    ((ScoreboardListActivity.ServerTask)localObject2).execute(arrayOfString);
  }
  
  public void onListItemClick(ListView paramListView, View paramView, int paramInt, long paramLong) {}
}

/* Location:
 * Qualified Name:     kagegames.apps.DWBeta.ScoreboardListActivity
 * Java Class Version: 1.2 (46.0)
 * JD-Core Version:    0.7.1
 */