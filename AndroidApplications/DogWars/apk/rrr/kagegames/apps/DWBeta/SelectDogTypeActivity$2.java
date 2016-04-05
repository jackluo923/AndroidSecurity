package kagegames.apps.DWBeta;

import android.content.Intent;
import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;

class SelectDogTypeActivity$2
  implements AdapterView.OnItemClickListener
{
  final SelectDogTypeActivity this$0;
  
  SelectDogTypeActivity$2(SelectDogTypeActivity paramSelectDogTypeActivity) {}
  
  public void onItemClick(AdapterView paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    Object localObject1 = DWApplication.getInstance();
    localObject1 = ((DWApplication)localObject1).getDWGameState();
    Object localObject2 = this$0;
    localObject2 = SelectDogTypeActivity.access$1((SelectDogTypeActivity)localObject2);
    localObject2 = ((NewDogPetalAdapter)localObject2).getItem(paramInt);
    mSelectedNewDog = ((NewDogObject)localObject2);
    Intent localIntent = new android/content/Intent;
    localIntent.<init>();
    localObject1 = this$0;
    int i = -1;
    ((SelectDogTypeActivity)localObject1).setResult(i, localIntent);
    localObject1 = this$0;
    ((SelectDogTypeActivity)localObject1).finish();
  }
}

/* Location:
 * Qualified Name:     kagegames.apps.DWBeta.SelectDogTypeActivity.2
 * Java Class Version: 1.2 (46.0)
 * JD-Core Version:    0.7.1
 */