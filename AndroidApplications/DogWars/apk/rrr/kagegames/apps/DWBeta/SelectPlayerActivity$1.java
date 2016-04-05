package kagegames.apps.DWBeta;

import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemSelectedListener;
import android.widget.TextView;

class SelectPlayerActivity$1
  implements AdapterView.OnItemSelectedListener
{
  final SelectPlayerActivity this$0;
  
  SelectPlayerActivity$1(SelectPlayerActivity paramSelectPlayerActivity, TextView paramTextView1, TextView paramTextView2) {}
  
  public void onItemSelected(AdapterView paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    TextView localTextView = val$playerTitleText;
    Object localObject = this$0;
    localObject = SelectPlayerActivity.access$1((SelectPlayerActivity)localObject);
    localObject = ((NewOwnerPetalAdapter)localObject).getItem(paramInt);
    localObject = ((NewOwnerObject)localObject).getTitle();
    localTextView.setText((CharSequence)localObject);
    localTextView = val$descriptionText;
    localObject = this$0;
    localObject = SelectPlayerActivity.access$1((SelectPlayerActivity)localObject);
    localObject = ((NewOwnerPetalAdapter)localObject).getItem(paramInt);
    localObject = ((NewOwnerObject)localObject).getDescription();
    localTextView.setText((CharSequence)localObject);
  }
  
  public void onNothingSelected(AdapterView<?> paramAdapterView) {}
}

/* Location:
 * Qualified Name:     kagegames.apps.DWBeta.SelectPlayerActivity.1
 * Java Class Version: 1.2 (46.0)
 * JD-Core Version:    0.7.1
 */