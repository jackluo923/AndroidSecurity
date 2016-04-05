package kagegames.apps.DWBeta;

import android.content.Context;
import android.graphics.Typeface;
import android.text.util.Linkify;
import android.view.View;
import android.widget.TextView;
import java.util.List;

class ShoutboxActivity$MyClickableListAdapter
  extends ClickableListAdapter
{
  final ShoutboxActivity this$0;
  
  public ShoutboxActivity$MyClickableListAdapter(Context paramContext, int paramInt, List<DWShoutRow> paramList)
  {
    super(paramInt, paramList, localList);
  }
  
  protected void bindHolder(ClickableListAdapter.ViewHolder paramViewHolder)
  {
    Object localObject1 = paramViewHolder;
    localObject1 = (ShoutboxActivity.ShoutboxRowViewHolder)localObject1;
    Object localObject3 = localObject1;
    Object localObject2 = data;
    localObject2 = (DWShoutRow)localObject2;
    Object localObject4 = ownerNameText;
    String str1 = ((DWShoutRow)localObject2).getName();
    ((TextView)localObject4).setText(str1);
    localObject4 = messageText;
    str1 = ((DWShoutRow)localObject2).getMessage();
    ((TextView)localObject4).setText(str1);
    localObject4 = ((DWShoutRow)localObject2).getName();
    str1 = "THE PITBOSS";
    int i = ((String)localObject4).compareTo(str1);
    TextView localTextView;
    if (i == 0)
    {
      localTextView = messageText;
      int j = -1377229;
      localTextView.setTextColor(j);
      localTextView = messageText;
      j = 15;
      Linkify.addLinks(localTextView, j);
    }
    for (;;)
    {
      localTextView = postedText;
      String str2 = ((DWShoutRow)localObject2).getTimePostedStr();
      localTextView.setText(str2);
      return;
      localTextView = messageText;
      int k = -2236963;
      localTextView.setTextColor(k);
    }
  }
  
  protected ClickableListAdapter.ViewHolder createHolder(View paramView)
  {
    ShoutboxActivity.ShoutboxRowViewHolder localShoutboxRowViewHolder = new kagegames/apps/DWBeta/ShoutboxActivity$ShoutboxRowViewHolder;
    localShoutboxRowViewHolder.<init>();
    int i = 2131099781;
    Object localObject1 = paramView.findViewById(i);
    localObject1 = (TextView)localObject1;
    messageText = ((TextView)localObject1);
    int j = 2131099779;
    Object localObject2 = paramView.findViewById(j);
    localObject2 = (TextView)localObject2;
    ownerNameText = ((TextView)localObject2);
    int k = 2131099782;
    Object localObject3 = paramView.findViewById(k);
    localObject3 = (TextView)localObject3;
    postedText = ((TextView)localObject3);
    localObject3 = messageText;
    Object localObject4 = this$0;
    localObject4 = mFace;
    ((TextView)localObject3).setTypeface((Typeface)localObject4);
    localObject3 = ownerNameText;
    localObject4 = this$0;
    localObject4 = mFace;
    ((TextView)localObject3).setTypeface((Typeface)localObject4);
    localObject3 = postedText;
    localObject4 = this$0;
    localObject4 = mFace;
    ((TextView)localObject3).setTypeface((Typeface)localObject4);
    return localShoutboxRowViewHolder;
  }
}

/* Location:
 * Qualified Name:     kagegames.apps.DWBeta.ShoutboxActivity.MyClickableListAdapter
 * Java Class Version: 1.2 (46.0)
 * JD-Core Version:    0.7.1
 */