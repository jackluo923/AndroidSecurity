package com.google.zxing.client.android.book;

import android.content.Context;
import android.text.Spannable;
import android.text.SpannableString;
import android.text.style.StyleSpan;
import android.util.AttributeSet;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.google.zxing.FakeR;
import java.util.Locale;

public final class SearchBookContentsListItem
  extends LinearLayout
{
  private static FakeR fakeR;
  private TextView pageNumberView;
  private TextView snippetView;
  
  SearchBookContentsListItem(Context paramContext)
  {
    super(paramContext);
    fakeR = new FakeR(paramContext);
  }
  
  public SearchBookContentsListItem(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }
  
  protected void onFinishInflate()
  {
    super.onFinishInflate();
    pageNumberView = ((TextView)findViewById(fakeR.getId("id", "page_number_view")));
    snippetView = ((TextView)findViewById(fakeR.getId("id", "snippet_view")));
  }
  
  public void set(SearchBookContentsResult paramSearchBookContentsResult)
  {
    pageNumberView.setText(paramSearchBookContentsResult.getPageNumber());
    Object localObject = paramSearchBookContentsResult.getSnippet();
    if (((String)localObject).length() > 0)
    {
      if (paramSearchBookContentsResult.getValidSnippet())
      {
        paramSearchBookContentsResult = SearchBookContentsResult.getQuery().toLowerCase(Locale.getDefault());
        String str = ((String)localObject).toLowerCase(Locale.getDefault());
        localObject = new SpannableString((CharSequence)localObject);
        StyleSpan localStyleSpan = new StyleSpan(1);
        int j = paramSearchBookContentsResult.length();
        int i = 0;
        for (;;)
        {
          i = str.indexOf(paramSearchBookContentsResult, i);
          if (i < 0)
          {
            snippetView.setText((CharSequence)localObject);
            return;
          }
          ((Spannable)localObject).setSpan(localStyleSpan, i, i + j, 0);
          i += j;
        }
      }
      snippetView.setText((CharSequence)localObject);
      return;
    }
    snippetView.setText("");
  }
}

/* Location:
 * Qualified Name:     com.google.zxing.client.android.book.SearchBookContentsListItem
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */