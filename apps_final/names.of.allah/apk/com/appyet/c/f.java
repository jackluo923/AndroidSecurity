package com.appyet.c;

import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTransaction;
import android.support.v4.view.ViewPager;
import com.actionbarsherlock.app.SherlockFragmentActivity;
import com.appyet.context.ApplicationContext;
import com.appyet.data.FeedItem;
import java.util.List;

final class f
  extends com.appyet.f.a<Void, Void, Void>
{
  private FeedItem b;
  
  public f(a parama, FeedItem paramFeedItem)
  {
    b = paramFeedItem;
  }
  
  private Void f()
  {
    try
    {
      aa).h.b(b);
      return null;
    }
    catch (Exception localException)
    {
      for (;;)
      {
        com.appyet.d.d.a(localException);
      }
    }
  }
  
  protected final void a()
  {
    super.a();
    try
    {
      aa).n.b.remove(b);
      if (aa).n.b.size() == 0)
      {
        a.getSherlockActivity().getSupportFragmentManager().beginTransaction().remove(a).commit();
        a.getSherlockActivity().getSupportFragmentManager().popBackStack();
        return;
      }
      a.b(a).notifyDataSetChanged();
      if (a.c(a) >= aa).n.b.size()) {
        a.a(a, aa).n.b.size() - 1);
      }
      if (a.c(a) < 0) {
        a.a(a, 0);
      }
      a.d(a).setCurrentItem(a.c(a));
      return;
    }
    catch (Exception localException)
    {
      com.appyet.d.d.a(localException);
    }
  }
}

/* Location:
 * Qualified Name:     com.appyet.c.f
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */