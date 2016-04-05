package com.google.zxing.client.android.share;

import android.content.Context;
import android.database.Cursor;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.google.zxing.FakeR;

final class BookmarkAdapter
  extends BaseAdapter
{
  private static FakeR fakeR;
  private final Context context;
  private final Cursor cursor;
  
  BookmarkAdapter(Context paramContext, Cursor paramCursor)
  {
    fakeR = new FakeR(paramContext);
    context = paramContext;
    cursor = paramCursor;
  }
  
  public int getCount()
  {
    return cursor.getCount();
  }
  
  public Object getItem(int paramInt)
  {
    return null;
  }
  
  public long getItemId(int paramInt)
  {
    return paramInt;
  }
  
  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    if ((paramView instanceof LinearLayout)) {}
    for (paramView = (LinearLayout)paramView;; paramView = (LinearLayout)LayoutInflater.from(context).inflate(fakeR.getId("layout", "bookmark_picker_list_item"), paramViewGroup, false))
    {
      if (!cursor.isClosed())
      {
        cursor.moveToPosition(paramInt);
        paramViewGroup = cursor.getString(0);
        ((TextView)paramView.findViewById(fakeR.getId("id", "bookmark_title"))).setText(paramViewGroup);
        paramViewGroup = cursor.getString(1);
        ((TextView)paramView.findViewById(fakeR.getId("id", "bookmark_url"))).setText(paramViewGroup);
      }
      return paramView;
    }
  }
}

/* Location:
 * Qualified Name:     com.google.zxing.client.android.share.BookmarkAdapter
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */