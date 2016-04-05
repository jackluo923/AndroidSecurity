package kagegames.apps.DWBeta;

import android.graphics.Typeface;
import android.os.Bundle;
import android.view.View;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;
import java.util.List;

public class FightListActivity
  extends _DWListActivity
{
  FightListActivity.MyClickableListAdapter mListAdapter;
  private List mObjectList;
  
  public void UpdateUI()
  {
    super.UpdateUI();
    Object localObject = mObjectList;
    if (localObject != null)
    {
      localObject = mObjectList;
      List localList1 = mObjectList;
      ((List)localObject).removeAll(localList1);
    }
    localObject = DWApplication.getInstance();
    localObject = ((DWApplication)localObject).getDWGameState();
    localObject = ((DWGameState)localObject).getFightList();
    mObjectList = ((List)localObject);
    localObject = new kagegames/apps/DWBeta/FightListActivity$MyClickableListAdapter;
    int i = 2130903062;
    List localList2 = mObjectList;
    ((FightListActivity.MyClickableListAdapter)localObject).<init>(this, this, i, localList2);
    mListAdapter = ((FightListActivity.MyClickableListAdapter)localObject);
    localObject = mListAdapter;
    setListAdapter((ListAdapter)localObject);
    super.CheckForInterrupts();
  }
  
  public void onCreate(Bundle paramBundle)
  {
    int i = 1;
    requestWindowFeature(i);
    i = 2130903048;
    setContentView(i);
    super.onCreate(paramBundle);
    i = 2131099668;
    Object localObject1 = findViewById(i);
    localObject1 = (TextView)localObject1;
    Object localObject2 = "Pick a Dog to Fight:";
    ((TextView)localObject1).setText((CharSequence)localObject2);
    localObject2 = mFace;
    ((TextView)localObject1).setTypeface((Typeface)localObject2);
    localObject2 = new kagegames/apps/DWBeta/PollManagerList;
    long l = 12000L;
    ((PollManagerList)localObject2).<init>(this, l);
    mPollManagerList = ((PollManagerList)localObject2);
    localObject2 = mPollManagerList;
    ((PollManagerList)localObject2).StartPolling();
    localObject2 = new kagegames/apps/DWBeta/FightListActivity$LoadFightListTask;
    FightListActivity.LoadFightListTask localLoadFightListTask = null;
    ((FightListActivity.LoadFightListTask)localObject2).<init>(this, localLoadFightListTask);
    int j = 0;
    String[] arrayOfString = new String[j];
    ((FightListActivity.LoadFightListTask)localObject2).execute(arrayOfString);
  }
  
  public void onListItemClick(ListView paramListView, View paramView, int paramInt, long paramLong)
  {
    Object localObject = DWApplication.getInstance();
    localObject = ((DWApplication)localObject).getDWGameState();
    ((DWGameState)localObject).setCurFightListIndex(paramInt);
    localObject = new kagegames/apps/DWBeta/FightListActivity$PickFightTask;
    FightListActivity.PickFightTask localPickFightTask = null;
    ((FightListActivity.PickFightTask)localObject).<init>(this, localPickFightTask);
    int i = 0;
    String[] arrayOfString = new String[i];
    ((FightListActivity.PickFightTask)localObject).execute(arrayOfString);
  }
}

/* Location:
 * Qualified Name:     kagegames.apps.DWBeta.FightListActivity
 * Java Class Version: 1.2 (46.0)
 * JD-Core Version:    0.7.1
 */