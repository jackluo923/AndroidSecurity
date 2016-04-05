package kagegames.apps.DWBeta;

import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemSelectedListener;
import android.widget.TextView;

class SelectDogTypeActivity$1
  implements AdapterView.OnItemSelectedListener
{
  final SelectDogTypeActivity this$0;
  
  SelectDogTypeActivity$1(SelectDogTypeActivity paramSelectDogTypeActivity, TextView paramTextView1, TextView paramTextView2) {}
  
  public void onItemSelected(AdapterView paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    TextView localTextView = val$dogTitleText;
    Object localObject = this$0;
    localObject = SelectDogTypeActivity.access$1((SelectDogTypeActivity)localObject);
    localObject = ((NewDogPetalAdapter)localObject).getItem(paramInt);
    localObject = ((NewDogObject)localObject).getTitle();
    localTextView.setText((CharSequence)localObject);
    localTextView = val$descriptionText;
    localObject = this$0;
    localObject = SelectDogTypeActivity.access$1((SelectDogTypeActivity)localObject);
    localObject = ((NewDogPetalAdapter)localObject).getItem(paramInt);
    localObject = ((NewDogObject)localObject).getDescription();
    localTextView.setText((CharSequence)localObject);
  }
  
  public void onNothingSelected(AdapterView<?> paramAdapterView) {}
}

/* Location:
 * Qualified Name:     kagegames.apps.DWBeta.SelectDogTypeActivity.1
 * Java Class Version: 1.2 (46.0)
 * JD-Core Version:    0.7.1
 */