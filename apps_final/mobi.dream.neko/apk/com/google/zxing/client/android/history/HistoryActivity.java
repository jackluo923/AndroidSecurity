package com.google.zxing.client.android.history;

import android.app.AlertDialog.Builder;
import android.app.ListActivity;
import android.content.ActivityNotFoundException;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.content.res.Resources;
import android.net.Uri;
import android.os.Bundle;
import android.util.Log;
import android.view.ContextMenu;
import android.view.ContextMenu.ContextMenuInfo;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.widget.AdapterView.AdapterContextMenuInfo;
import android.widget.ListView;
import com.google.zxing.FakeR;
import com.google.zxing.client.android.CaptureActivity;
import java.util.Iterator;
import java.util.List;

public final class HistoryActivity
  extends ListActivity
{
  private static final String TAG = HistoryActivity.class.getSimpleName();
  private static FakeR fakeR;
  private HistoryItemAdapter adapter;
  private HistoryManager historyManager;
  
  private void reloadHistoryItems()
  {
    Object localObject = historyManager.buildHistoryItems();
    adapter.clear();
    localObject = ((List)localObject).iterator();
    while (((Iterator)localObject).hasNext())
    {
      HistoryItem localHistoryItem = (HistoryItem)((Iterator)localObject).next();
      adapter.add(localHistoryItem);
    }
    if (adapter.isEmpty()) {
      adapter.add(new HistoryItem(null, null, null));
    }
  }
  
  public boolean onContextItemSelected(MenuItem paramMenuItem)
  {
    int i = paramMenuItem.getItemId();
    historyManager.deleteHistoryItem(i);
    reloadHistoryItems();
    return true;
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    fakeR = new FakeR(this);
    historyManager = new HistoryManager(this);
    adapter = new HistoryItemAdapter(this);
    setListAdapter(adapter);
    registerForContextMenu(getListView());
  }
  
  public void onCreateContextMenu(ContextMenu paramContextMenu, View paramView, ContextMenu.ContextMenuInfo paramContextMenuInfo)
  {
    int i = position;
    if ((i >= adapter.getCount()) || (((HistoryItem)adapter.getItem(i)).getResult() != null)) {
      paramContextMenu.add(0, i, i, fakeR.getId("string", "history_clear_one_history_text"));
    }
  }
  
  public boolean onCreateOptionsMenu(Menu paramMenu)
  {
    if (historyManager.hasHistoryItems()) {
      getMenuInflater().inflate(fakeR.getId("menu", "history"), paramMenu);
    }
    return super.onCreateOptionsMenu(paramMenu);
  }
  
  protected void onListItemClick(ListView paramListView, View paramView, int paramInt, long paramLong)
  {
    if (((HistoryItem)adapter.getItem(paramInt)).getResult() != null)
    {
      paramListView = new Intent(this, CaptureActivity.class);
      paramListView.putExtra("ITEM_NUMBER", paramInt);
      setResult(-1, paramListView);
      finish();
    }
  }
  
  public boolean onOptionsItemSelected(MenuItem paramMenuItem)
  {
    int i = paramMenuItem.getItemId();
    if (i == fakeR.getId("id", "menu_history_send"))
    {
      paramMenuItem = HistoryManager.saveHistory(historyManager.buildHistory().toString());
      if (paramMenuItem == null)
      {
        paramMenuItem = new AlertDialog.Builder(this);
        paramMenuItem.setMessage(fakeR.getId("string", "msg_unmount_usb"));
        paramMenuItem.setPositiveButton(fakeR.getId("string", "button_ok"), null);
        paramMenuItem.show();
        return true;
      }
      Intent localIntent = new Intent("android.intent.action.SEND", Uri.parse("mailto:"));
      localIntent.addFlags(524288);
      String str = getResources().getString(fakeR.getId("string", "history_email_title"));
      localIntent.putExtra("android.intent.extra.SUBJECT", str);
      localIntent.putExtra("android.intent.extra.TEXT", str);
      localIntent.putExtra("android.intent.extra.STREAM", paramMenuItem);
      localIntent.setType("text/csv");
      try
      {
        startActivity(localIntent);
        return true;
      }
      catch (ActivityNotFoundException paramMenuItem)
      {
        Log.w(TAG, paramMenuItem.toString());
        return true;
      }
    }
    if (i == fakeR.getId("id", "menu_history_clear_text"))
    {
      paramMenuItem = new AlertDialog.Builder(this);
      paramMenuItem.setMessage(fakeR.getId("string", "msg_sure"));
      paramMenuItem.setCancelable(true);
      paramMenuItem.setPositiveButton(fakeR.getId("string", "button_ok"), new DialogInterface.OnClickListener()
      {
        public void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
        {
          historyManager.clearHistory();
          paramAnonymousDialogInterface.dismiss();
          finish();
        }
      });
      paramMenuItem.setNegativeButton(fakeR.getId("string", "button_cancel"), null);
      paramMenuItem.show();
      return true;
    }
    return super.onOptionsItemSelected(paramMenuItem);
  }
  
  protected void onResume()
  {
    super.onResume();
    reloadHistoryItems();
  }
}

/* Location:
 * Qualified Name:     com.google.zxing.client.android.history.HistoryActivity
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */