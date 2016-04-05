package com.appyet.c;

import android.app.Activity;
import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.app.SearchManager;
import android.app.SearchableInfo;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.Bitmap.Config;
import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTransaction;
import android.text.TextUtils.TruncateAt;
import android.view.ContextMenu;
import android.view.ContextMenu.ContextMenuInfo;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.AdapterView.AdapterContextMenuInfo;
import android.widget.GridView;
import android.widget.HeaderViewListAdapter;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListView;
import android.widget.ProgressBar;
import android.widget.TextView;
import android.widget.Toast;
import com.actionbarsherlock.app.ActionBar;
import com.actionbarsherlock.app.SherlockFragment;
import com.actionbarsherlock.app.SherlockFragmentActivity;
import com.actionbarsherlock.view.Menu;
import com.actionbarsherlock.widget.SearchView;
import com.actionbarsherlock.widget.SearchView.OnCloseListener;
import com.actionbarsherlock.widget.SearchView.OnQueryTextListener;
import com.appyet.activity.MainActivity;
import com.appyet.context.ApplicationContext;
import com.appyet.data.Feed;
import com.appyet.data.FeedItem;
import com.appyet.data.FeedItem.ArticleStatusEnum;
import com.appyet.data.FeedItem.FlagEnum;
import com.appyet.data.Module;
import com.appyet.manager.ar;
import com.appyet.manager.bp;
import com.appyet.manager.bq;
import com.appyet.manager.bw;
import com.appyet.metadata.MetadataModuleFeed;
import com.appyet.metadata.MetadataTheme;
import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import net.simonvt.menudrawer.MenuDrawer;
import uk.co.senab.a.b.i;

public final class r
  extends SherlockFragment
  implements SearchView.OnCloseListener, SearchView.OnQueryTextListener, com.appyet.receiver.b, uk.co.senab.a.b.a.b
{
  protected ApplicationContext a;
  protected List<Feed> b = null;
  protected Long c = null;
  protected com.actionbarsherlock.view.MenuItem d = null;
  protected boolean e = false;
  protected boolean f = true;
  private ae g;
  private int h = 0;
  private TextView i;
  private com.appyet.receiver.c j;
  private ListView k;
  private GridView l;
  private an m;
  private ak n;
  private int o = 0;
  private SearchView p;
  private com.a.a.b.f q = com.a.a.b.f.a();
  private com.a.a.b.d r;
  private com.a.a.b.d s;
  private al t = null;
  private uk.co.senab.a.a.a.e u;
  
  private ao a(List<FeedItem> paramList)
  {
    int i3 = 1;
    for (;;)
    {
      try
      {
        if ((g != null) && ((k.getAdapter() != null) || (l.getAdapter() != null))) {
          break;
        }
        if ((a.n.a != null) && (a.n.a.getLayout() != null) && (a.n.a.getLayout().equals("GRID")))
        {
          g = new ae(this, a, paramList, 2130903104);
          paramList = new ao(this);
          c = 2;
          return paramList;
        }
        if (a.d.E() == com.appyet.context.c.b) {
          g = new ae(this, a, paramList, 2130903107);
        } else {
          g = new ae(this, a, paramList, 2130903106);
        }
      }
      catch (Exception paramList)
      {
        com.appyet.d.d.a(paramList);
        return null;
      }
    }
    ao localao = new ao(this);
    a = new ArrayList();
    b = new ArrayList();
    int i1 = 0;
    while (i1 < g.getCount())
    {
      ((FeedItem)g.getItem(i1)).setFlag(FeedItem.FlagEnum.None);
      i1 += 1;
    }
    Iterator localIterator = paramList.iterator();
    int i2;
    if (localIterator.hasNext())
    {
      FeedItem localFeedItem1 = (FeedItem)localIterator.next();
      i2 = g.getCount();
      i1 = 0;
      label294:
      if (i1 < i2)
      {
        FeedItem localFeedItem2 = (FeedItem)g.getItem(i1);
        if (!localFeedItem2.getFeedItemId().equals(localFeedItem1.getFeedItemId())) {
          break label627;
        }
        localFeedItem2.setIsDeleted(localFeedItem1.getIsDeleted());
        localFeedItem2.setIsRead(localFeedItem1.getIsRead());
        localFeedItem2.setIsStar(localFeedItem1.getIsStar());
        localFeedItem2.setCommentsCount(localFeedItem1.getCommentsCount());
        localFeedItem2.setArticleStatus(localFeedItem1.getArticleStatus());
        localFeedItem2.setEnclosureStatus(localFeedItem1.getEnclosureStatus());
        localFeedItem2.setFlag(FeedItem.FlagEnum.Update);
        i1 = 1;
        label402:
        if (i1 != 0) {
          break label625;
        }
        if ((a.n.a != null) && (a.n.a.getLayout() != null) && (a.n.a.getLayout().equals("GRID"))) {
          g = new ae(this, a, paramList, 2130903104);
        }
        for (;;)
        {
          paramList = new ao(this);
          c = 2;
          return paramList;
          if (a.d.E() == com.appyet.context.c.b) {
            g = new ae(this, a, paramList, 2130903107);
          } else {
            g = new ae(this, a, paramList, 2130903106);
          }
        }
        label552:
        if (i2 >= g.getCount()) {
          break label654;
        }
        paramList = (FeedItem)g.getItem(i2);
        if (paramList.getFlag() == FeedItem.FlagEnum.None)
        {
          b.add(paramList);
          i1 = 1;
          break label645;
        }
      }
    }
    for (;;)
    {
      label604:
      c = i1;
      return localao;
      label625:
      label627:
      label645:
      label654:
      do
      {
        i1 = 0;
        break label604;
        break label645;
        i1 = 0;
        break label402;
        break;
        i1 += 1;
        break label294;
        i2 = 0;
        i1 = 0;
        break label552;
        i2 += 1;
        break label552;
      } while (i1 == 0);
      i1 = i3;
    }
  }
  
  private FeedItem a(int paramInt)
  {
    if ((a.n.a == null) || (a.n.a.getLayout() == null) || (!a.n.a.getLayout().equals("GRID")))
    {
      if (k.getAdapter().getClass() == HeaderViewListAdapter.class) {
        if (paramInt - 1 >= 0) {}
      }
      while (paramInt < 0)
      {
        return null;
        return (FeedItem)g.getItem(paramInt - 1);
      }
    }
    return (FeedItem)g.getItem(paramInt);
  }
  
  public static void a(ApplicationContext paramApplicationContext, int paramInt, af paramaf, FeedItem paramFeedItem, boolean paramBoolean, Feed paramFeed, MetadataModuleFeed paramMetadataModuleFeed)
  {
    if ((paramInt == 2130903106) || (paramInt == 2130903107))
    {
      b.setText(paramFeedItem.getTitle());
      label98:
      label186:
      label284:
      label368:
      label400:
      label453:
      float f1;
      if ((paramFeed == null) || (paramFeed.getTitle() == null) || (paramFeed.getTitle().trim().length() == 0) || (!paramBoolean) || (!IsShowPublisher))
      {
        c.setVisibility(8);
        a.setText(paramFeedItem.getSnippet());
        if (!paramFeedItem.getIsStar()) {
          break label680;
        }
        f.setVisibility(0);
        if (paramFeedItem.getEnclosureLink() == null) {
          break label704;
        }
        g.setVisibility(0);
        g.setImageResource(2130837759);
        if (paramFeedItem.getEnclosureDuration() != null) {
          h.setMax(paramFeedItem.getEnclosureDuration().intValue());
        }
        if ((paramFeedItem.getEnclosureCurrentPosition() == null) || (paramFeedItem.getEnclosureCurrentPosition().intValue() <= 1000)) {
          break label692;
        }
        h.setProgress(paramFeedItem.getEnclosureCurrentPosition().intValue());
        h.setVisibility(0);
        d.setText(com.appyet.d.a.a(paramApplicationContext, paramFeedItem.getPubDate()) + " (" + com.appyet.d.a.a(paramApplicationContext, paramFeedItem.getPubDate()) + ")");
        if (paramFeedItem.getCommentsCount() == null) {
          break label738;
        }
        m.setVisibility(0);
        n.setVisibility(0);
        if (paramFeedItem.getCommentsCount().equals("0")) {
          break label725;
        }
        m.setText(paramFeedItem.getCommentsCount());
        if (paramFeedItem.getEnclosureLink() == null) {
          break label863;
        }
        k.setVisibility(0);
        paramFeed = new DecimalFormat("#.#");
        if (paramFeedItem.getEnclosureLength() != null) {
          break label759;
        }
        paramMetadataModuleFeed = String.format("%s", new Object[] { paramFeed.format(0L) }) + " " + paramApplicationContext.getString(2131230859);
        if (paramFeedItem.getEnclosureType() == null) {
          break label851;
        }
        if (!paramFeedItem.getEnclosureType().toLowerCase().contains("audio")) {
          break label823;
        }
        paramFeed = paramApplicationContext.getString(2131230812);
        e.setText(com.appyet.d.a.a(paramFeedItem.getEnclosureDuration().intValue()) + " " + paramMetadataModuleFeed + " " + paramFeed);
        f1 = 1.0F;
        if (paramApplicationContext.getResources().getBoolean(2131558413)) {
          f1 = 1.2F;
        }
        if (d.E() != com.appyet.context.c.b) {
          break label875;
        }
        a.setVisibility(8);
        label496:
        if ((paramFeedItem.getArticleStatus() == FeedItem.ArticleStatusEnum.DownloadCompleted) || (paramFeedItem.getArticleStatus() != FeedItem.ArticleStatusEnum.DownloadPending)) {
          break label886;
        }
        l.setImageResource(2130837640);
        l.setVisibility(0);
      }
      for (;;)
      {
        b.setTextSize(2, 16.0F * f1);
        c.setTextSize(2, 14.0F * f1);
        a.setTextSize(2, 14.0F * f1);
        d.setTextSize(2, 14.0F * f1);
        e.setTextSize(2, f1 * 14.0F);
        m.a(paramFeedItem.getIsRead(), b, d, a, e, c, null);
        m.a(paramFeedItem.getIsRead(), null, m, null, null, null, null);
        return;
        c.setVisibility(0);
        c.setText(paramFeed.getTitle());
        break;
        label680:
        f.setVisibility(8);
        break label98;
        label692:
        h.setVisibility(8);
        break label186;
        label704:
        g.setVisibility(8);
        h.setVisibility(8);
        break label186;
        label725:
        m.setText("0");
        break label284;
        label738:
        m.setVisibility(8);
        n.setVisibility(8);
        break label284;
        label759:
        paramMetadataModuleFeed = String.format("%s", new Object[] { paramFeed.format(paramFeedItem.getEnclosureLength().intValue() / 1048576.0D) }) + " " + paramApplicationContext.getString(2131230859);
        break label368;
        label823:
        if (paramFeedItem.getEnclosureType().toLowerCase().contains("video"))
        {
          paramFeed = paramApplicationContext.getString(2131230813);
          break label400;
        }
        label851:
        paramFeed = paramApplicationContext.getString(2131230814);
        break label400;
        label863:
        k.setVisibility(8);
        break label453;
        label875:
        a.setVisibility(0);
        break label496;
        label886:
        l.setVisibility(8);
      }
    }
    p.setText(paramFeedItem.getTitle());
    m.a(paramFeedItem.getIsRead(), null, null, null, null, null, p);
  }
  
  private boolean a(Intent paramIntent)
  {
    if (paramIntent != null) {
      try
      {
        if (paramIntent.hasExtra("ACTION_WIDGET_OPEN_FEEDITEM_ID"))
        {
          long l1 = paramIntent.getLongExtra("ACTION_WIDGET_OPEN_FEEDITEM_ID", -1L);
          if (l1 != -1L)
          {
            paramIntent.removeExtra("ACTION_WIDGET_OPEN_FEEDITEM_ID");
            int i1 = 0;
            while (i1 < g.getCount())
            {
              if (((FeedItem)g.getItem(i1)).getFeedItemId().equals(Long.valueOf(l1)))
              {
                n.a(i1, c);
                return true;
              }
              i1 += 1;
            }
          }
        }
        return false;
      }
      catch (Exception paramIntent)
      {
        com.appyet.d.d.a(paramIntent);
        a.e.a(paramIntent);
      }
    }
  }
  
  private void f()
  {
    a.t.a(c.longValue());
  }
  
  private void g()
  {
    try
    {
      if ((a.n.f == null) || (g == null) || (g.isEmpty())) {
        break label131;
      }
      i1 = 0;
    }
    catch (Exception localException)
    {
      for (;;)
      {
        int i1;
        label131:
        label145:
        com.appyet.d.d.a(localException);
        com.appyet.context.f localf2 = a.n;
        continue;
        label172:
        i1 += 1;
      }
    }
    finally
    {
      a.n.f = null;
    }
    if (i1 < g.getCount())
    {
      if (!((FeedItem)g.getItem(i1)).getFeedItemId().equals(a.n.f)) {
        break label172;
      }
      if ((a.n.a == null) || (a.n.a.getLayout() == null) || (!a.n.a.getLayout().equals("GRID"))) {
        break label145;
      }
      l.setSelection(i1);
    }
    for (;;)
    {
      com.appyet.context.f localf1 = a.n;
      f = null;
      return;
      k.setSelection(i1);
    }
  }
  
  private void h()
  {
    try
    {
      if ((a.n.b == null) || (a.n.b.size() == 0))
      {
        c();
        return;
      }
      if (g == null) {
        break label283;
      }
      if (a.n.b.size() != o)
      {
        c();
        return;
      }
    }
    catch (Exception localException)
    {
      com.appyet.d.d.a(localException);
      return;
    }
    if (a.n.b.size() != g.getCount())
    {
      c();
      return;
    }
    for (;;)
    {
      int i1;
      if (i1 < a.n.b.size())
      {
        if ((FeedItem)g.getItem(i1) != (FeedItem)a.n.b.get(i1)) {
          c();
        }
      }
      else
      {
        if ((a.n.a != null) && (a.n.a.getLayout() != null) && (a.n.a.getLayout().equals("GRID"))) {
          if (l.getAdapter() == null) {
            l.setAdapter(g);
          }
        }
        for (;;)
        {
          g();
          g.notifyDataSetChanged();
          i.setVisibility(8);
          d();
          return;
          if (k.getAdapter() == null) {
            k.setAdapter(g);
          }
        }
        label283:
        return;
        i1 = 0;
        continue;
      }
      i1 += 1;
    }
  }
  
  private void i()
  {
    if ((a.n.a != null) && (a.n.a.getLayout() != null) && (a.n.a.getLayout().equals("GRID")))
    {
      l.setOnScrollListener(new ag(this, q, e, f));
      return;
    }
    k.setOnScrollListener(new ag(this, q, e, f));
  }
  
  public final void a()
  {
    if (g != null) {
      g.notifyDataSetChanged();
    }
  }
  
  public final void b()
  {
    try
    {
      c();
      return;
    }
    catch (Exception localException)
    {
      com.appyet.d.d.a(localException);
    }
  }
  
  public final void c()
  {
    try
    {
      if ((m == null) || (m.d() == com.appyet.f.h.c))
      {
        m = new an(this);
        m.a(new Void[0]);
      }
      return;
    }
    catch (Exception localException)
    {
      com.appyet.d.d.a(localException);
    }
  }
  
  public final void d()
  {
    int i1 = 2131361857;
    for (Object localObject = "";; localObject = " (" + g.getCount() + "+)")
    {
      try
      {
        if (g != null)
        {
          if (!a.n.j) {
            continue;
          }
          localObject = " (" + g.getCount() + ")";
        }
        if (a.n.a == null) {
          break label262;
        }
        getSherlockActivity().getSupportActionBar().setTitle(com.appyet.f.w.a(a, a.n.a.getName()) + (String)localObject);
        i2 = Resources.getSystem().getIdentifier("action_bar_title", "id", "android");
        if (i2 != 0) {
          break label415;
        }
      }
      catch (Exception localException)
      {
        int i2;
        while (localException.getMessage() != null)
        {
          com.appyet.d.d.a(localException);
          return;
          if (a.n.h == null) {
            break;
          }
          getSherlockActivity().getSupportActionBar().setTitle(a.n.h + localException);
          i2 = Resources.getSystem().getIdentifier("action_bar_title", "id", "android");
          if (i2 == 0) {}
          for (;;)
          {
            TextView localTextView = (TextView)getSherlockActivity().getWindow().findViewById(i1);
            localTextView.setEllipsize(TextUtils.TruncateAt.MARQUEE);
            localTextView.setSelected(true);
            localTextView.setMarqueeRepeatLimit(-1);
            if (a.m.a.ActionBarFgColor)
            {
              localTextView.setTextColor(getResources().getColor(2131296333));
              return;
            }
            localTextView.setTextColor(getResources().getColor(2131296335));
            return;
            i1 = i2;
          }
          i1 = i2;
        }
      }
      localObject = (TextView)getSherlockActivity().getWindow().findViewById(i1);
      ((TextView)localObject).setEllipsize(TextUtils.TruncateAt.MARQUEE);
      ((TextView)localObject).setSelected(true);
      ((TextView)localObject).setMarqueeRepeatLimit(-1);
      if (!a.m.a.ActionBarFgColor) {
        break;
      }
      ((TextView)localObject).setTextColor(getResources().getColor(2131296333));
      return;
    }
    ((TextView)localObject).setTextColor(getResources().getColor(2131296335));
    return;
    label262:
    label415:
    return;
  }
  
  public final void e()
  {
    u.a();
    if ((a.n.a != null) && (a.n.a.getType().equals("Feed")))
    {
      f();
      return;
    }
    if (a.c() == 0)
    {
      Toast.makeText(a, 2131230802, 1).show();
      a.t.a(true);
      return;
    }
    Toast.makeText(a, 2131230802, 1).show();
  }
  
  public final void onActivityCreated(Bundle paramBundle)
  {
    super.onActivityCreated(paramBundle);
    for (;;)
    {
      Object localObject;
      String str;
      try
      {
        localObject = getView();
        i = ((TextView)((View)localObject).findViewById(2131361921));
        k = ((ListView)((View)localObject).findViewById(2131361922));
        l = ((GridView)((View)localObject).findViewById(2131361923));
        localObject = getArguments();
        if ((localObject == null) || (!((Bundle)localObject).containsKey("DisplayType")))
        {
          a.n.g = com.appyet.context.d.d;
          if ((a.n.a == null) || (a.n.a.getLayout() == null) || (!a.n.a.getLayout().equals("GRID"))) {
            break label478;
          }
          k.setVisibility(8);
          l.setVisibility(0);
          if (!a.m.a.PrimaryBgColor.equals("DARK")) {
            break label498;
          }
          i.setTextColor(getResources().getColor(2131296319));
          k.setCacheColorHint(0);
          l.setCacheColorHint(0);
          if ((paramBundle != null) && (paramBundle.containsKey("STATE_PAUSE_ON_SCROLL"))) {
            e = paramBundle.getBoolean("STATE_PAUSE_ON_SCROLL", false);
          }
          if ((paramBundle != null) && (paramBundle.containsKey("STATE_PAUSE_ON_FLING"))) {
            f = paramBundle.getBoolean("STATE_PAUSE_ON_FLING", true);
          }
          k.setOnItemClickListener(new t(this));
          l.setOnItemClickListener(new u(this));
          registerForContextMenu(k);
          registerForContextMenu(l);
          paramBundle = (MainActivity)getActivity();
          if (paramBundle.a() != null) {
            paramBundle.a().setTouchMode(2);
          }
          a.e.a("FeedArticleList");
          return;
        }
        str = ((Bundle)localObject).getString("DisplayType");
        if (str.equals("Module"))
        {
          c = Long.valueOf(((Bundle)localObject).getLong("ModuleId"));
          a.n.g = com.appyet.context.d.a;
          continue;
        }
        if (!str.equals("Search")) {
          break label438;
        }
      }
      catch (Exception paramBundle)
      {
        com.appyet.d.d.a(paramBundle);
        return;
      }
      a.n.g = com.appyet.context.d.b;
      a.n.h = ((Bundle)localObject).getString("SearchTerm");
      continue;
      label438:
      if (str.equals("FeedQuery"))
      {
        c = Long.valueOf(((Bundle)localObject).getLong("ModuleId"));
        a.n.g = com.appyet.context.d.c;
        continue;
        label478:
        k.setVisibility(0);
        l.setVisibility(8);
        continue;
        label498:
        i.setTextColor(getResources().getColor(2131296318));
      }
    }
  }
  
  public final void onAttach(Activity paramActivity)
  {
    super.onAttach(paramActivity);
    try
    {
      n = ((ak)paramActivity);
      return;
    }
    catch (ClassCastException localClassCastException)
    {
      throw new ClassCastException(paramActivity.toString() + " must implement OnHeadlineSelectedListener");
    }
  }
  
  public final boolean onClose()
  {
    return false;
  }
  
  public final void onConfigurationChanged(Configuration paramConfiguration)
  {
    super.onConfigurationChanged(paramConfiguration);
    ar.a(getActivity());
  }
  
  public final boolean onContextItemSelected(android.view.MenuItem paramMenuItem)
  {
    AdapterView.AdapterContextMenuInfo localAdapterContextMenuInfo = (AdapterView.AdapterContextMenuInfo)paramMenuItem.getMenuInfo();
    try
    {
      if (paramMenuItem.getItemId() == 2131362039)
      {
        i1 = position;
        try
        {
          new aq(this, i1).a(new Void[0]);
          return true;
        }
        catch (Exception localException1)
        {
          for (;;)
          {
            com.appyet.d.d.a(localException1);
          }
        }
      }
      if (paramMenuItem.getItemId() != 2131362040) {
        break label109;
      }
    }
    catch (Exception localException2)
    {
      com.appyet.d.d.a(localException2);
      return super.onContextItemSelected(paramMenuItem);
    }
    int i1 = position;
    try
    {
      new ap(this, i1).a(new Void[0]);
      return true;
    }
    catch (Exception localException3)
    {
      for (;;)
      {
        com.appyet.d.d.a(localException3);
      }
    }
    label109:
    if (paramMenuItem.getItemId() == 2131362041)
    {
      i1 = position;
      try
      {
        new aj(this, i1).a(new Void[0]);
        return true;
      }
      catch (Exception localException4)
      {
        for (;;)
        {
          com.appyet.d.d.a(localException4);
        }
      }
    }
    if (paramMenuItem.getItemId() == 2131362042)
    {
      i1 = position;
      try
      {
        new ai(this, i1).a(new Void[0]);
        return true;
      }
      catch (Exception localException5)
      {
        for (;;)
        {
          com.appyet.d.d.a(localException5);
        }
      }
    }
    if (paramMenuItem.getItemId() == 2131362043)
    {
      FeedItem localFeedItem = a(position);
      if ((localFeedItem != null) && (!localFeedItem.getIsDeleted()))
      {
        localFeedItem.setIsDeleted(true);
        new ad(this, localFeedItem).a(new Void[0]);
      }
    }
    else
    {
      boolean bool = super.onContextItemSelected(paramMenuItem);
      return bool;
    }
    return true;
  }
  
  public final void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    a = ((ApplicationContext)getActivity().getApplicationContext());
    a.n.i = 0;
    a.n.j = false;
    if (a.n.b != null)
    {
      a.n.b.clear();
      a.n.b = null;
    }
    a.n.f = null;
    r = new com.a.a.b.e().a().a(2130837734).b(2130837736).c().e().a(Bitmap.Config.RGB_565).f();
    s = new com.a.a.b.e().a().a(2130837733).c().e().a(Bitmap.Config.RGB_565).f();
    setHasOptionsMenu(true);
    if (a.d.c()) {
      Toast.makeText(getActivity(), 2131230839, 0).show();
    }
  }
  
  public final void onCreateContextMenu(ContextMenu paramContextMenu, View paramView, ContextMenu.ContextMenuInfo paramContextMenuInfo)
  {
    super.onCreateContextMenu(paramContextMenu, paramView, paramContextMenuInfo);
    try
    {
      paramView = (AdapterView.AdapterContextMenuInfo)paramContextMenuInfo;
      paramView = (FeedItem)g.getItem(position);
      if (paramView.getTitle() != null) {
        paramContextMenu.setHeaderTitle(paramView.getTitle());
      }
      getSherlockActivity().getMenuInflater().inflate(2131689474, paramContextMenu);
      return;
    }
    catch (Exception paramContextMenu)
    {
      com.appyet.d.d.a(paramContextMenu);
    }
  }
  
  public final void onCreateOptionsMenu(Menu paramMenu, com.actionbarsherlock.view.MenuInflater paramMenuInflater)
  {
    super.onCreateOptionsMenu(paramMenu, paramMenuInflater);
    paramMenuInflater.inflate(2131689476, paramMenu);
    for (;;)
    {
      try
      {
        d = paramMenu.findItem(2131362050);
        p = ((SearchView)d.getActionView());
        p.setIconifiedByDefault(true);
        paramMenu = (SearchManager)a.getSystemService("search");
        if (paramMenu != null)
        {
          paramMenuInflater = paramMenu.getSearchablesInGlobalSearch();
          paramMenu = paramMenu.getSearchableInfo(getActivity().getComponentName());
          Iterator localIterator = paramMenuInflater.iterator();
          if (localIterator.hasNext())
          {
            paramMenuInflater = (SearchableInfo)localIterator.next();
            if ((paramMenuInflater.getSuggestAuthority() != null) && (paramMenuInflater.getSuggestAuthority().startsWith("applications"))) {
              paramMenu = paramMenuInflater;
            }
          }
          else
          {
            p.setSearchableInfo(paramMenu);
          }
        }
        else
        {
          p.setOnQueryTextListener(this);
          p.setOnCloseListener(this);
          if (a.m.a.ActionBarFgColor)
          {
            d.setIcon(2130837691);
            return;
          }
          d.setIcon(2130837708);
          return;
        }
      }
      catch (Exception paramMenu)
      {
        com.appyet.d.d.a(paramMenu);
        return;
      }
    }
  }
  
  public final View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    return paramLayoutInflater.inflate(2130903101, null);
  }
  
  public final void onDestroy()
  {
    super.onDestroy();
    try
    {
      if (k != null) {
        k.setAdapter(null);
      }
      if (l != null) {
        l.setAdapter(null);
      }
      return;
    }
    catch (Exception localException)
    {
      com.appyet.d.d.a(localException);
    }
  }
  
  public final void onLowMemory()
  {
    ApplicationContext localApplicationContext = a;
    ApplicationContext.d();
    super.onLowMemory();
  }
  
  public final boolean onOptionsItemSelected(com.actionbarsherlock.view.MenuItem paramMenuItem)
  {
    switch (paramMenuItem.getItemId())
    {
    }
    for (;;)
    {
      return super.onOptionsItemSelected(paramMenuItem);
      if ((a.n.a != null) && (a.n.a.getLayout() != null) && (a.n.a.getLayout().equals("GRID")))
      {
        a.n.a.setLayout("LIST");
        a.h.a(c.longValue(), "LIST");
        label192:
        if ((a.n.a == null) || (a.n.a.getLayout() == null) || (!a.n.a.getLayout().equals("GRID"))) {
          break label338;
        }
        k.setVisibility(8);
        l.setVisibility(0);
      }
      for (;;)
      {
        l.setAdapter(null);
        k.setAdapter(null);
        if (g != null)
        {
          g.clear();
          g = null;
        }
        c();
        break;
        a.n.a.setLayout("GRID");
        a.h.a(c.longValue(), "GRID");
        break label192;
        label338:
        k.setVisibility(0);
        l.setVisibility(8);
      }
      a.d.a(false);
      c();
      continue;
      a.d.a(true);
      c();
      continue;
      try
      {
        y localy = new y(this);
        if (!a.d.I()) {
          break label482;
        }
        new AlertDialog.Builder(getActivity()).setMessage(2131230816).setIcon(2130837684).setTitle(2131230815).setPositiveButton(getString(2131230817), localy).setNegativeButton(getString(2131230818), localy).show();
      }
      catch (Exception localException1)
      {
        com.appyet.d.d.a(localException1);
      }
      continue;
      label482:
      new ah(this).a(new Void[0]);
      continue;
      try
      {
        w localw = new w(this);
        if (!a.d.I()) {
          break label589;
        }
        new AlertDialog.Builder(getActivity()).setMessage(2131230816).setIcon(2130837684).setTitle(2131230815).setPositiveButton(getString(2131230817), localw).setNegativeButton(getString(2131230818), localw).show();
      }
      catch (Exception localException2)
      {
        com.appyet.d.d.a(localException2);
      }
      continue;
      label589:
      new ac(this).a(new Void[0]);
      continue;
      try
      {
        x localx = new x(this);
        if (!a.d.I()) {
          break label696;
        }
        new AlertDialog.Builder(getActivity()).setMessage(2131230816).setIcon(2130837684).setTitle(2131230815).setPositiveButton(getString(2131230817), localx).setNegativeButton(getString(2131230818), localx).show();
      }
      catch (Exception localException3)
      {
        com.appyet.d.d.a(localException3);
      }
      continue;
      label696:
      new ab(this).a(new Void[0]);
      continue;
      getActivity().onSearchRequested();
      continue;
      try
      {
        CharSequence[] arrayOfCharSequence = getResources().getTextArray(2131623938);
        AlertDialog.Builder localBuilder = new AlertDialog.Builder(getActivity());
        localBuilder.setTitle(getString(2131230860));
        localBuilder.setSingleChoiceItems(arrayOfCharSequence, a.d.e(), new v(this));
        localBuilder.create().show();
      }
      catch (Exception localException4)
      {
        com.appyet.d.d.a(localException4);
      }
      continue;
      f();
    }
  }
  
  public final void onPause()
  {
    super.onPause();
    getActivity().unregisterReceiver(j);
    aa.a.clear();
    com.a.a.b.f.a().b();
    a.a = false;
    if ((a.n.a != null) && (a.n.a.getLayout() != null) && (a.n.a.getLayout().equals("GRID")))
    {
      i1 = l.getFirstVisiblePosition();
      if ((l != null) && (i1 > 0) && (a.n.b != null) && (a.n.b.size() > 0) && (i1 < a.n.b.size()))
      {
        a.n.f = ((FeedItem)a.n.b.get(i1)).getFeedItemId();
        return;
      }
      a.n.f = null;
      return;
    }
    int i1 = k.getFirstVisiblePosition();
    if ((k != null) && (i1 > 0) && (a.n.b != null) && (a.n.b.size() > 0) && (i1 < a.n.b.size()))
    {
      a.n.f = ((FeedItem)a.n.b.get(i1)).getFeedItemId();
      return;
    }
    a.n.f = null;
  }
  
  public final void onPrepareOptionsMenu(Menu paramMenu)
  {
    boolean bool2 = true;
    com.actionbarsherlock.view.MenuItem localMenuItem1 = paramMenu.findItem(2131362051);
    com.actionbarsherlock.view.MenuItem localMenuItem2 = paramMenu.findItem(2131362052);
    localMenuItem1.setEnabled(true);
    localMenuItem2.setEnabled(true);
    if (a.d.c())
    {
      localMenuItem1.setVisible(true);
      localMenuItem2.setVisible(false);
      localMenuItem1 = paramMenu.findItem(2131362056);
      if (c == null) {
        break label180;
      }
      bool1 = true;
      label88:
      localMenuItem1.setVisible(bool1);
      localMenuItem1 = paramMenu.findItem(2131362057);
      if ((a.n.a == null) || (!a.n.a.getType().equals("Feed"))) {
        break label186;
      }
    }
    label180:
    label186:
    for (boolean bool1 = bool2;; bool1 = false)
    {
      localMenuItem1.setVisible(bool1);
      super.onPrepareOptionsMenu(paramMenu);
      return;
      localMenuItem1.setVisible(false);
      localMenuItem2.setVisible(true);
      break;
      bool1 = false;
      break label88;
    }
  }
  
  public final boolean onQueryTextChange(String paramString)
  {
    return false;
  }
  
  public final boolean onQueryTextSubmit(String paramString)
  {
    FragmentTransaction localFragmentTransaction = getActivity().getSupportFragmentManager().beginTransaction();
    r localr = new r();
    Bundle localBundle = new Bundle();
    localBundle.putString("DisplayType", "Search");
    localBundle.putString("SearchTerm", paramString);
    localr.setArguments(localBundle);
    localr.setRetainInstance(true);
    localFragmentTransaction.setTransition(4097);
    localFragmentTransaction.replace(2131361986, localr, "ContentFrameFragment");
    localFragmentTransaction.addToBackStack(null);
    localFragmentTransaction.commitAllowingStateLoss();
    d.collapseActionView();
    return true;
  }
  
  public final void onResume()
  {
    super.onResume();
    a.a = true;
    j = new com.appyet.receiver.c(this);
    Object localObject = new IntentFilter(a.x);
    getActivity().registerReceiver(j, (IntentFilter)localObject);
    if ((a.n.b == null) || (a.d.X() > 0))
    {
      a.d.j(0);
      c();
      localObject = getSherlockActivity().getSupportActionBar();
      if (!getResources().getBoolean(2131558413)) {
        break label136;
      }
      ((ActionBar)localObject).setDisplayHomeAsUpEnabled(false);
      ((ActionBar)localObject).setHomeButtonEnabled(false);
    }
    for (;;)
    {
      i();
      return;
      h();
      break;
      label136:
      ((ActionBar)localObject).setDisplayHomeAsUpEnabled(true);
      ((ActionBar)localObject).setHomeButtonEnabled(true);
    }
  }
  
  public final void onSaveInstanceState(Bundle paramBundle)
  {
    super.onSaveInstanceState(paramBundle);
    paramBundle.putBoolean("STATE_PAUSE_ON_SCROLL", e);
    paramBundle.putBoolean("STATE_PAUSE_ON_FLING", f);
  }
  
  public final void onViewCreated(View paramView, Bundle paramBundle)
  {
    super.onViewCreated(paramView, paramBundle);
    paramView = (ViewGroup)paramView;
    u = new uk.co.senab.a.a.a.e(paramView.getContext());
    paramBundle = uk.co.senab.a.b.a.a(getActivity());
    a = aa;
    c = paramView;
    paramView = paramBundle.a(new int[] { 2131361922, 2131361923, 2131361921 });
    b = this;
    paramBundle = new s(this);
    if (d == null) {
      d = new HashMap();
    }
    d.put(TextView.class, paramBundle);
    paramView.a(u);
  }
}

/* Location:
 * Qualified Name:     com.appyet.c.r
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */