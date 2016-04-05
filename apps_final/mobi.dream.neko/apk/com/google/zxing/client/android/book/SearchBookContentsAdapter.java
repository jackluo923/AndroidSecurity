package com.google.zxing.client.android.book;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import com.google.zxing.FakeR;
import java.util.List;

final class SearchBookContentsAdapter
  extends ArrayAdapter<SearchBookContentsResult>
{
  private static FakeR fakeR;
  
  SearchBookContentsAdapter(Context paramContext, List<SearchBookContentsResult> paramList)
  {
    super(paramContext, fakeR.getId("layout", "search_book_contents_list_item"), 0, paramList);
    fakeR = new FakeR(paramContext);
  }
  
  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    if (paramView == null) {}
    for (paramView = (SearchBookContentsListItem)LayoutInflater.from(getContext()).inflate(fakeR.getId("layout", "search_book_contents_list_item"), paramViewGroup, false);; paramView = (SearchBookContentsListItem)paramView)
    {
      paramView.set((SearchBookContentsResult)getItem(paramInt));
      paramViewGroup = paramView;
      do
      {
        return paramViewGroup;
        paramViewGroup = paramView;
      } while (!(paramView instanceof SearchBookContentsListItem));
    }
  }
}

/* Location:
 * Qualified Name:     com.google.zxing.client.android.book.SearchBookContentsAdapter
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */