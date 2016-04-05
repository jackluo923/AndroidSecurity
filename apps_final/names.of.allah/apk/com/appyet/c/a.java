package com.appyet.c;

import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.content.Intent;
import android.content.res.Resources;
import android.os.Bundle;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTransaction;
import android.support.v4.view.ViewPager;
import android.support.v4.view.bb;
import android.text.ClipboardManager;
import android.view.ContextMenu;
import android.view.ContextMenu.ContextMenuInfo;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Toast;
import com.actionbarsherlock.app.ActionBar;
import com.actionbarsherlock.app.SherlockFragment;
import com.actionbarsherlock.app.SherlockFragmentActivity;
import com.actionbarsherlock.view.Menu;
import com.actionbarsherlock.view.MenuInflater;
import com.actionbarsherlock.widget.ShareActionProvider;
import com.actionbarsherlock.widget.ShareActionProvider.OnShareTargetSelectedListener;
import com.appyet.activity.MainActivity;
import com.appyet.activity.TranslateActivity;
import com.appyet.context.ApplicationContext;
import com.appyet.data.Feed;
import com.appyet.data.FeedItem;
import com.appyet.data.FeedItem.FlagEnum;
import com.appyet.manager.ap;
import com.appyet.manager.bl;
import com.appyet.manager.bo;
import com.appyet.manager.bp;
import com.appyet.manager.bw;
import com.appyet.metadata.MetadataModuleFeed;
import com.appyet.metadata.MetadataTheme;
import com.viewpagerindicator.UnderlinePageIndicator;
import java.util.Hashtable;
import java.util.Iterator;
import java.util.List;
import net.simonvt.menudrawer.MenuDrawer;

public final class a
  extends SherlockFragment
  implements bb, ShareActionProvider.OnShareTargetSelectedListener
{
  private g a;
  private ApplicationContext b;
  private int c;
  private Long d;
  private ViewPager e;
  private UnderlinePageIndicator f;
  private i g = null;
  
  private Intent a()
  {
    try
    {
      FeedItem localFeedItem = (FeedItem)b.n.b.get(c);
      Intent localIntent = new Intent("android.intent.action.SEND");
      localIntent.setType("text/plain");
      localIntent.putExtra("android.intent.extra.SUBJECT", localFeedItem.getTitle());
      localIntent.putExtra("android.intent.extra.TEXT", localFeedItem.getTitle() + " " + localFeedItem.getLink().toString());
      return localIntent;
    }
    catch (Exception localException)
    {
      com.appyet.d.d.a(localException);
    }
    return null;
  }
  
  private void c(int paramInt)
  {
    try
    {
      c = paramInt;
      Object localObject;
      if ((b.n.b != null) && (paramInt >= 0) && (paramInt < b.n.b.size()))
      {
        localObject = (FeedItem)b.n.b.get(paramInt);
        b.n.f = ((FeedItem)localObject).getFeedItemId();
        if (!((FeedItem)localObject).getIsRead())
        {
          if ((!b.d.b()) || (!((FeedItem)localObject).getIsStar())) {
            ((FeedItem)localObject).setIsRead(true);
          }
          ((FeedItem)localObject).setFlag(FeedItem.FlagEnum.Update);
        }
        getSherlockActivity().supportInvalidateOptionsMenu();
      }
      for (;;)
      {
        b.e.a("FeedArticleDetail");
        if (b.d.V()) {
          break;
        }
        b.d.i(b.d.U() + 1);
        if ((b.d.U() <= 200) || (b.g.a() == bo.a)) {
          break;
        }
        localObject = new AlertDialog.Builder(getActivity()).create();
        ((AlertDialog)localObject).setTitle(2131230910);
        ((AlertDialog)localObject).setMessage(getString(2131230913));
        ((AlertDialog)localObject).setButton(-1, getString(2131230911), new c(this));
        ((AlertDialog)localObject).setButton(-2, getString(2131230818), new d(this));
        ((AlertDialog)localObject).show();
        return;
        getSherlockActivity().getSupportFragmentManager().beginTransaction().remove(this).commitAllowingStateLoss();
        getSherlockActivity().getSupportFragmentManager().popBackStack();
      }
      return;
    }
    catch (Exception localException)
    {
      com.appyet.d.d.a(localException);
    }
  }
  
  public final void a(int paramInt)
  {
    c(paramInt);
    if ((a != null) && (!b.n.j) && (paramInt + 1 == b.n.b.size()) && ((g == null) || (g.d() == com.appyet.f.h.a) || (g.d() == com.appyet.f.h.c)))
    {
      g = new i(this);
      g.a(new Void[0]);
    }
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
    c = getArguments().getInt("ARG_POSITION");
    d = Long.valueOf(getArguments().getLong("ARG_MODULE_ID"));
    setHasOptionsMenu(true);
    getActivity();
  }
  
  public final void onCreateContextMenu(ContextMenu paramContextMenu, View paramView, ContextMenu.ContextMenuInfo paramContextMenuInfo)
  {
    super.onCreateContextMenu(paramContextMenu, paramView, paramContextMenuInfo);
  }
  
  public final void onCreateOptionsMenu(Menu paramMenu, MenuInflater paramMenuInflater)
  {
    paramMenuInflater.inflate(2131689475, paramMenu);
    paramMenuInflater = (ShareActionProvider)paramMenu.findItem(2131362044).getActionProvider();
    paramMenuInflater.setShareHistoryFileName("share_history.xml");
    paramMenuInflater.setOnShareTargetSelectedListener(this);
    paramMenuInflater.setShareIntent(a());
    for (;;)
    {
      com.actionbarsherlock.view.MenuItem localMenuItem;
      try
      {
        paramMenuInflater = (FeedItem)b.n.b.get(c);
        localMenuItem = paramMenu.findItem(2131362045);
        if (b.m.a.ActionBarFgColor)
        {
          if (paramMenuInflater.getIsStar())
          {
            localMenuItem.setIcon(2130837755);
            paramMenuInflater = (MetadataModuleFeed)b.n.d.get(paramMenuInflater.getFeed().getFeedId());
            paramMenu.findItem(2131362047).setVisible(IsShowTransalte);
            paramMenu.findItem(2131362049).setVisible(IsShowCopyLink);
            return;
          }
          localMenuItem.setIcon(2130837754);
          continue;
        }
        if (!paramMenuInflater.getIsStar()) {
          break label214;
        }
      }
      catch (Exception paramMenu)
      {
        com.appyet.d.d.a(paramMenu);
        return;
      }
      localMenuItem.setIcon(2130837755);
      continue;
      label214:
      localMenuItem.setIcon(2130837753);
    }
  }
  
  public final View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    return paramLayoutInflater.inflate(2130903102, null);
  }
  
  public final void onDestroy()
  {
    b.f.c();
    super.onDestroy();
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
      catch (Exception localException2)
      {
        com.appyet.d.d.a(localException2);
        continue;
        FeedItem localFeedItem1 = (FeedItem)b.n.b.get(c);
        if (localFeedItem1 == null) {
          continue;
        }
        if (!b.m.a.ActionBarFgColor) {
          continue;
        }
        if (!localFeedItem1.getIsStar()) {
          continue;
        }
        paramMenuItem.setIcon(2130837754);
        try
        {
          new j(this, localFeedItem1).a(new Void[0]);
        }
        catch (Exception localException3)
        {
          com.appyet.d.d.a(localException3);
        }
        continue;
        paramMenuItem.setIcon(2130837755);
        continue;
        if (!localException3.getIsStar()) {
          continue;
        }
        paramMenuItem.setIcon(2130837753);
        continue;
        paramMenuItem.setIcon(2130837755);
        continue;
        FeedItem localFeedItem2 = (FeedItem)b.n.b.get(c);
        if (localFeedItem2 == null) {
          continue;
        }
        Object localObject = new Intent(getSherlockActivity(), TranslateActivity.class);
        ((Intent)localObject).putExtra("URL", localFeedItem2.getLink());
        startActivity((Intent)localObject);
        continue;
        localFeedItem2 = (FeedItem)b.n.b.get(c);
        if (localFeedItem2 == null) {
          continue;
        }
        try
        {
          if (localFeedItem2.getLink() == null) {
            continue;
          }
          ((ClipboardManager)b.getSystemService("clipboard")).setText(localFeedItem2.getLink().toString());
          Toast.makeText(b, String.format(getString(2131230850), new Object[] { localFeedItem2.getLink().toString() }), 1).show();
        }
        catch (Exception localException4)
        {
          com.appyet.d.d.a(localException4);
        }
        catch (Error localError)
        {
          com.appyet.d.d.a(localError);
        }
        continue;
        FeedItem localFeedItem3 = (FeedItem)b.n.b.get(c);
        if ((localFeedItem3 == null) || (localFeedItem3 == null) || (localFeedItem3.getIsDeleted())) {
          continue;
        }
        localFeedItem3.setIsDeleted(true);
        new f(this, localFeedItem3).a(new Void[0]);
        continue;
      }
      return super.onOptionsItemSelected(paramMenuItem);
      try
      {
        CharSequence[] arrayOfCharSequence = getResources().getTextArray(2131623940);
        localObject = new AlertDialog.Builder(getActivity());
        ((AlertDialog.Builder)localObject).setTitle(getString(2131230831));
        ((AlertDialog.Builder)localObject).setSingleChoiceItems(arrayOfCharSequence, b.d.K(), new b(this));
        ((AlertDialog.Builder)localObject).create().show();
      }
      catch (Exception localException1)
      {
        com.appyet.d.d.a(localException1);
      }
    }
  }
  
  public final void onPause()
  {
    try
    {
      new h(this).a(new Void[0]);
      if (b.n.b != null)
      {
        Iterator localIterator = b.n.b.iterator();
        while (localIterator.hasNext())
        {
          FeedItem localFeedItem = (FeedItem)localIterator.next();
          localFeedItem.setArticle(null);
          localFeedItem.setDescription(null);
        }
      }
    }
    catch (Exception localException)
    {
      for (;;)
      {
        com.appyet.d.d.a(localException);
      }
      b.f.a();
      super.onPause();
    }
  }
  
  public final void onResume()
  {
    try
    {
      if ((b.n.b == null) || (b.n.b.size() == 0))
      {
        getSherlockActivity().getSupportFragmentManager().beginTransaction().remove(this).commitAllowingStateLoss();
        getSherlockActivity().getSupportFragmentManager().popBackStack();
      }
    }
    catch (Exception localException)
    {
      for (;;)
      {
        com.appyet.d.d.a(localException);
      }
    }
    super.onResume();
    b.f.b();
  }
  
  public final void onSaveInstanceState(Bundle paramBundle)
  {
    super.onSaveInstanceState(paramBundle);
    paramBundle.putInt("pageItem", e.getCurrentItem());
  }
  
  public final boolean onShareTargetSelected(ShareActionProvider paramShareActionProvider, Intent paramIntent)
  {
    if ((b.y == 3) || (b.y == 4)) {
      return false;
    }
    b.startActivity(paramIntent);
    b.e.a("Share", paramIntent.getAction(), "FeedArticle");
    return true;
  }
  
  public final void onViewCreated(View paramView, Bundle paramBundle)
  {
    e = ((ViewPager)getView().findViewById(2131361925));
    if (a == null) {
      a = new g(this, getChildFragmentManager());
    }
    e.setAdapter(a);
    e.setCurrentItem(c);
    c(c);
    if (paramBundle != null) {
      e.setCurrentItem(paramBundle.getInt("pageItem", 0));
    }
    f = ((UnderlinePageIndicator)getView().findViewById(2131361926));
    f.setViewPager(e);
    f.setThumbWidth(130);
    f.setCurrentItem(c);
    f.setOnPageChangeListener(this);
    f.setSelectedColor(getResources().getColor(2131296350));
    Object localObject = (MainActivity)getSherlockActivity();
    if (((MainActivity)localObject).a() != null) {
      ((MainActivity)localObject).a().setTouchMode(1);
    }
    localObject = ((MainActivity)localObject).getSupportActionBar();
    ((ActionBar)localObject).setDisplayHomeAsUpEnabled(true);
    ((ActionBar)localObject).setHomeButtonEnabled(true);
    localObject = (ViewGroup)getView().findViewById(2131361924);
    b.f.a(getSherlockActivity(), (ViewGroup)localObject);
    super.onViewCreated(paramView, paramBundle);
  }
}

/* Location:
 * Qualified Name:     com.appyet.c.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */