package com.appyet.c;

import android.content.Intent;
import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import android.support.v4.view.bb;
import android.view.ContextMenu;
import android.view.ContextMenu.ContextMenuInfo;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.actionbarsherlock.app.ActionBar;
import com.actionbarsherlock.app.SherlockFragment;
import com.actionbarsherlock.app.SherlockFragmentActivity;
import com.actionbarsherlock.view.Menu;
import com.actionbarsherlock.view.MenuInflater;
import com.actionbarsherlock.widget.ShareActionProvider;
import com.actionbarsherlock.widget.ShareActionProvider.OnShareTargetSelectedListener;
import com.appyet.activity.ImageViewerActivity;
import com.appyet.context.ApplicationContext;
import com.appyet.d.d;
import com.appyet.manager.ap;
import com.appyet.view.PhotoViewPager;
import com.viewpagerindicator.LinePageIndicator;
import com.viewpagerindicator.c;
import java.util.ArrayList;

public final class ar
  extends SherlockFragment
  implements bb, ShareActionProvider.OnShareTargetSelectedListener
{
  private as a;
  private ApplicationContext b;
  private int c;
  private String d;
  private String e;
  private PhotoViewPager f;
  private c g;
  private ArrayList<String> h;
  
  private Intent a()
  {
    try
    {
      Intent localIntent3 = new Intent("android.intent.action.SEND");
      localIntent3.setType("text/plain");
      if (d != null) {
        localIntent3.putExtra("android.intent.extra.SUBJECT", d);
      }
      if ((d != null) && (e != null))
      {
        localIntent3.putExtra("android.intent.extra.TEXT", d + " " + e);
        return localIntent3;
      }
      Intent localIntent1 = localIntent3;
      if (e != null)
      {
        localIntent3.putExtra("android.intent.extra.TEXT", e);
        return localIntent3;
      }
    }
    catch (Exception localException)
    {
      d.a(localException);
      Intent localIntent2 = null;
      return localIntent2;
    }
  }
  
  public final void a(int paramInt)
  {
    c = paramInt;
    c = paramInt;
  }
  
  public final void a(int paramInt1, float paramFloat, int paramInt2) {}
  
  public final void b(int paramInt) {}
  
  public final boolean onContextItemSelected(android.view.MenuItem paramMenuItem)
  {
    return super.onContextItemSelected(paramMenuItem);
  }
  
  public final void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    b = ((ApplicationContext)getSherlockActivity().getApplicationContext());
    setHasOptionsMenu(true);
    try
    {
      paramBundle = getActivity().getIntent().getExtras();
      if (paramBundle != null)
      {
        if (paramBundle.containsKey("SHARE_TITLE")) {
          d = paramBundle.getString("SHARE_TITLE");
        }
        if (paramBundle.containsKey("SHARE_URL")) {
          e = paramBundle.getString("SHARE_URL");
        }
        if (paramBundle.containsKey("SELECTED_POSITION")) {
          c = paramBundle.getInt("SELECTED_POSITION");
        }
        if (paramBundle.containsKey("IMAGE_LINKS")) {
          h = paramBundle.getStringArrayList("IMAGE_LINKS");
        }
      }
      return;
    }
    catch (Exception paramBundle)
    {
      d.a(paramBundle);
    }
  }
  
  public final void onCreateContextMenu(ContextMenu paramContextMenu, View paramView, ContextMenu.ContextMenuInfo paramContextMenuInfo)
  {
    super.onCreateContextMenu(paramContextMenu, paramView, paramContextMenuInfo);
  }
  
  public final void onCreateOptionsMenu(Menu paramMenu, MenuInflater paramMenuInflater)
  {
    paramMenuInflater.inflate(2131689482, paramMenu);
    paramMenu = (ShareActionProvider)paramMenu.findItem(2131362035).getActionProvider();
    paramMenu.setShareHistoryFileName("share_history.xml");
    paramMenu.setOnShareTargetSelectedListener(this);
    paramMenu.setShareIntent(a());
  }
  
  public final View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    return paramLayoutInflater.inflate(2130903118, null);
  }
  
  public final boolean onOptionsItemSelected(com.actionbarsherlock.view.MenuItem paramMenuItem)
  {
    for (;;)
    {
      try
      {
        int i = paramMenuItem.getItemId();
        switch (i)
        {
        }
      }
      catch (Exception localException)
      {
        d.a(localException);
        continue;
      }
      return super.onOptionsItemSelected(paramMenuItem);
      getActivity().finish();
    }
  }
  
  public final void onResume()
  {
    super.onResume();
  }
  
  public final void onSaveInstanceState(Bundle paramBundle)
  {
    super.onSaveInstanceState(paramBundle);
    paramBundle.putInt("pageItem", f.getCurrentItem());
  }
  
  public final boolean onShareTargetSelected(ShareActionProvider paramShareActionProvider, Intent paramIntent)
  {
    if ((b.y == 3) || (b.y == 4)) {
      return false;
    }
    b.startActivity(paramIntent);
    b.e.a("Share", paramIntent.getAction(), "Image");
    return true;
  }
  
  public final void onViewCreated(View paramView, Bundle paramBundle)
  {
    f = ((PhotoViewPager)getView().findViewById(2131361925));
    if (a == null) {
      a = new as(this, getChildFragmentManager());
    }
    f.setAdapter(a);
    f.setCurrentItem(c);
    if (paramBundle != null) {
      f.setCurrentItem(paramBundle.getInt("pageItem", 0));
    }
    g = ((LinePageIndicator)getView().findViewById(2131361926));
    g.setViewPager(f);
    g.setOnPageChangeListener(this);
    g.setCurrentItem(c);
    ActionBar localActionBar = ((ImageViewerActivity)getSherlockActivity()).getSupportActionBar();
    localActionBar.setDisplayHomeAsUpEnabled(true);
    localActionBar.setHomeButtonEnabled(true);
    super.onViewCreated(paramView, paramBundle);
  }
}

/* Location:
 * Qualified Name:     com.appyet.c.ar
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */