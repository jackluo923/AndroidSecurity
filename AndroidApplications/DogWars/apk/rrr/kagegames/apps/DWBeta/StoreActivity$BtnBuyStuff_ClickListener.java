package kagegames.apps.DWBeta;

import android.view.View;
import android.view.View.OnClickListener;

class StoreActivity$BtnBuyStuff_ClickListener
  implements View.OnClickListener
{
  final StoreActivity this$0;
  
  private StoreActivity$BtnBuyStuff_ClickListener(StoreActivity paramStoreActivity) {}
  
  StoreActivity$BtnBuyStuff_ClickListener(StoreActivity paramStoreActivity, BtnBuyStuff_ClickListener paramBtnBuyStuff_ClickListener)
  {
    this(paramStoreActivity);
  }
  
  public void onClick(View paramView)
  {
    Object localObject1 = DWApplication.getInstance();
    localObject1 = ((DWApplication)localObject1).getDWGameState();
    Object localObject2 = this$0;
    localObject2 = StoreActivity.access$0((StoreActivity)localObject2);
    int i = ((CoverFlow)localObject2).getSelectedItemPosition();
    ((DWGameState)localObject1).setCurItemIndex(i);
    localObject1 = new kagegames/apps/DWBeta/StoreActivity$BuyItemTask;
    StoreActivity localStoreActivity = this$0;
    StoreActivity.BuyItemTask localBuyItemTask = null;
    ((StoreActivity.BuyItemTask)localObject1).<init>(localStoreActivity, localBuyItemTask);
    int j = 0;
    String[] arrayOfString = new String[j];
    ((StoreActivity.BuyItemTask)localObject1).execute(arrayOfString);
  }
}

/* Location:
 * Qualified Name:     kagegames.apps.DWBeta.StoreActivity.BtnBuyStuff_ClickListener
 * Java Class Version: 1.2 (46.0)
 * JD-Core Version:    0.7.1
 */