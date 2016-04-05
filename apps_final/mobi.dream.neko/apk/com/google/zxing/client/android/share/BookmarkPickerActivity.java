package com.google.zxing.client.android.share;

import android.app.ListActivity;
import android.content.ContentResolver;
import android.content.Intent;
import android.database.Cursor;
import android.os.Bundle;
import android.provider.Browser;
import android.util.Log;
import android.view.View;
import android.widget.ListView;

public final class BookmarkPickerActivity
  extends ListActivity
{
  private static final String[] BOOKMARK_PROJECTION = { "title", "url" };
  private static final String BOOKMARK_SELECTION = "bookmark = 1";
  private static final String TAG = BookmarkPickerActivity.class.getSimpleName();
  static final int TITLE_COLUMN = 0;
  static final int URL_COLUMN = 1;
  private Cursor cursor = null;
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    cursor = getContentResolver().query(Browser.BOOKMARKS_URI, BOOKMARK_PROJECTION, "bookmark = 1", null, null);
    if (cursor == null)
    {
      Log.w(TAG, "No cursor returned for bookmark query");
      finish();
      return;
    }
    startManagingCursor(cursor);
    setListAdapter(new BookmarkAdapter(this, cursor));
  }
  
  protected void onListItemClick(ListView paramListView, View paramView, int paramInt, long paramLong)
  {
    if ((!cursor.isClosed()) && (cursor.moveToPosition(paramInt)))
    {
      paramListView = new Intent();
      paramListView.addFlags(524288);
      paramListView.putExtra("title", cursor.getString(0));
      paramListView.putExtra("url", cursor.getString(1));
      setResult(-1, paramListView);
    }
    for (;;)
    {
      finish();
      return;
      setResult(0);
    }
  }
}

/* Location:
 * Qualified Name:     com.google.zxing.client.android.share.BookmarkPickerActivity
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */