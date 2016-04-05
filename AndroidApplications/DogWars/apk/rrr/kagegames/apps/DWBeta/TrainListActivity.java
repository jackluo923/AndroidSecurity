package kagegames.apps.DWBeta;

import android.content.Context;
import android.content.Intent;
import android.content.res.AssetManager;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Typeface;
import android.os.Bundle;
import android.view.View;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;
import android.widget.Toast;
import java.util.ArrayList;
import java.util.List;

public class TrainListActivity
  extends _DWListActivity
{
  private Typeface mFace;
  private Bitmap mIconBasic;
  private List mObjectList;
  
  public TrainListActivity()
  {
    ArrayList localArrayList = new java/util/ArrayList;
    localArrayList.<init>();
    mObjectList = localArrayList;
  }
  
  public void onCreate(Bundle paramBundle)
  {
    int i = 1;
    requestWindowFeature(i);
    i = 2130903075;
    setContentView(i);
    super.onCreate(paramBundle);
    Object localObject2 = getResources();
    int k = 2130837527;
    localObject2 = BitmapFactory.decodeResource((Resources)localObject2, k);
    mIconBasic = ((Bitmap)localObject2);
    int j = 2131099668;
    Object localObject1 = findViewById(j);
    localObject1 = (TextView)localObject1;
    Object localObject3 = "TRAINING GAMES";
    ((TextView)localObject1).setText((CharSequence)localObject3);
    localObject3 = getAssets();
    Object localObject4 = "bohemian_typewriter.ttf";
    localObject3 = Typeface.createFromAsset((AssetManager)localObject3, (String)localObject4);
    mFace = ((Typeface)localObject3);
    localObject3 = mFace;
    ((TextView)localObject1).setTypeface((Typeface)localObject3);
    localObject3 = mObjectList;
    localObject4 = new kagegames/apps/DWBeta/TrainListActivity$TrainingGameListObject;
    Object localObject5 = "Biting";
    Bitmap localBitmap = mIconBasic;
    ((TrainListActivity.TrainingGameListObject)localObject4).<init>((String)localObject5, localBitmap);
    ((List)localObject3).add(localObject4);
    localObject3 = mObjectList;
    localObject4 = new kagegames/apps/DWBeta/TrainListActivity$TrainingGameListObject;
    localObject5 = "Dragging";
    localBitmap = mIconBasic;
    ((TrainListActivity.TrainingGameListObject)localObject4).<init>((String)localObject5, localBitmap);
    ((List)localObject3).add(localObject4);
    localObject3 = mObjectList;
    localObject4 = new kagegames/apps/DWBeta/TrainListActivity$TrainingGameListObject;
    localObject5 = "Running";
    localBitmap = mIconBasic;
    ((TrainListActivity.TrainingGameListObject)localObject4).<init>((String)localObject5, localBitmap);
    ((List)localObject3).add(localObject4);
    localObject3 = new kagegames/apps/DWBeta/TrainListActivity$MyClickableListAdapter;
    int m = 2130903066;
    localObject5 = mObjectList;
    ((TrainListActivity.MyClickableListAdapter)localObject3).<init>(this, this, m, (List)localObject5);
    setListAdapter((ListAdapter)localObject3);
    UpdateUI();
  }
  
  public void onListItemClick(ListView paramListView, View paramView, int paramInt, long paramLong)
  {
    int k = 17;
    int j = 1;
    int i = 0;
    Intent localIntent = new android/content/Intent;
    localIntent.<init>();
    switch (paramInt)
    {
    }
    for (;;)
    {
      return;
      Object localObject1 = DWApplication.getInstance();
      localObject1 = ((DWApplication)localObject1).getDWGameState();
      localObject1 = ((DWGameState)localObject1).getCurOwner();
      boolean bool1 = ((DWOwner)localObject1).CanBiteTrain();
      Object localObject2;
      String str;
      if (bool1)
      {
        localObject2 = getApplicationContext();
        str = "kagegames.apps.DWBeta.TrainBiting";
        localIntent.setClassName((Context)localObject2, str);
        startActivity(localIntent);
      }
      else
      {
        localObject2 = "Get a rope from the Store to Bite Train your dog!";
        Toast localToast = Toast.makeText(this, (CharSequence)localObject2, j);
        localToast.setGravity(k, str, str);
        localToast.show();
        continue;
        localObject2 = DWApplication.getInstance();
        localObject2 = ((DWApplication)localObject2).getDWGameState();
        localObject2 = ((DWGameState)localObject2).getCurOwner();
        boolean bool2 = ((DWOwner)localObject2).CanDragTrain();
        Object localObject3;
        if (bool2)
        {
          localObject3 = getApplicationContext();
          str = "kagegames.apps.DWBeta.TrainDragging";
          localIntent.setClassName((Context)localObject3, str);
          startActivity(localIntent);
        }
        else
        {
          localObject3 = "Get a harness and a tire from the Store to Drag Train your dog!";
          localToast = Toast.makeText(this, (CharSequence)localObject3, j);
          localToast.setGravity(k, str, str);
          localToast.show();
          continue;
          localObject3 = "The Run Training Game has not been unlocked.  Continue to train and fight in order to access this game!";
          localToast = Toast.makeText(this, (CharSequence)localObject3, j);
          localToast.setGravity(k, str, str);
          localToast.show();
        }
      }
    }
  }
}

/* Location:
 * Qualified Name:     kagegames.apps.DWBeta.TrainListActivity
 * Java Class Version: 1.2 (46.0)
 * JD-Core Version:    0.7.1
 */