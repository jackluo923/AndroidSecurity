package com.google.zxing.client.android.history;

import android.app.Activity;
import android.content.Context;
import android.content.res.Resources;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.google.zxing.FakeR;
import com.google.zxing.Result;
import java.util.ArrayList;

final class HistoryItemAdapter
  extends ArrayAdapter<HistoryItem>
{
  private static FakeR fakeR;
  private final Activity activity;
  
  HistoryItemAdapter(Activity paramActivity)
  {
    super(paramActivity, paramActivity.getApplicationContext().getResources().getIdentifier("history_list_item", "layout", paramActivity.getApplicationContext().getPackageName()), new ArrayList());
    fakeR = new FakeR(paramActivity);
    activity = paramActivity;
  }
  
  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    Object localObject;
    if ((paramView instanceof LinearLayout))
    {
      paramView = (LinearLayout)paramView;
      paramViewGroup = (HistoryItem)getItem(paramInt);
      localObject = paramViewGroup.getResult();
      if (localObject == null) {
        break label118;
      }
      localObject = ((Result)localObject).getText();
    }
    for (paramViewGroup = paramViewGroup.getDisplayAndDetails();; paramViewGroup = paramViewGroup.getString(fakeR.getId("string", "history_empty_detail")))
    {
      ((TextView)paramView.findViewById(fakeR.getId("id", "history_title"))).setText((CharSequence)localObject);
      ((TextView)paramView.findViewById(fakeR.getId("id", "history_detail"))).setText(paramViewGroup);
      return paramView;
      paramView = (LinearLayout)LayoutInflater.from(activity).inflate(fakeR.getId("layout", "history_list_item"), paramViewGroup, false);
      break;
      label118:
      paramViewGroup = getContext().getResources();
      localObject = paramViewGroup.getString(fakeR.getId("string", "history_empty"));
    }
  }
}

/* Location:
 * Qualified Name:     com.google.zxing.client.android.history.HistoryItemAdapter
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */