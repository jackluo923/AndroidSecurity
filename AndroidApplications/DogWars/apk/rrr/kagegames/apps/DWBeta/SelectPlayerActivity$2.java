package kagegames.apps.DWBeta;

import android.content.Intent;
import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;

class SelectPlayerActivity$2
  implements AdapterView.OnItemClickListener
{
  final SelectPlayerActivity this$0;
  
  SelectPlayerActivity$2(SelectPlayerActivity paramSelectPlayerActivity) {}
  
  public void onItemClick(AdapterView paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    Object localObject1 = DWApplication.getInstance();
    localObject1 = ((DWApplication)localObject1).getDWGameState();
    Object localObject2 = this$0;
    localObject2 = SelectPlayerActivity.access$1((SelectPlayerActivity)localObject2);
    localObject2 = ((NewOwnerPetalAdapter)localObject2).getItem(paramInt);
    mSelectedNewOwner = ((NewOwnerObject)localObject2);
    Intent localIntent = new android/content/Intent;
    localIntent.<init>();
    localObject1 = this$0;
    int i = -1;
    ((SelectPlayerActivity)localObject1).setResult(i, localIntent);
    localObject1 = this$0;
    ((SelectPlayerActivity)localObject1).finish();
  }
}

/* Location:
 * Qualified Name:     kagegames.apps.DWBeta.SelectPlayerActivity.2
 * Java Class Version: 1.2 (46.0)
 * JD-Core Version:    0.7.1
 */