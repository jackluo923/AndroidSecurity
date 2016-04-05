package com.appyet.c;

import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentPagerAdapter;
import com.appyet.context.ApplicationContext;
import com.appyet.context.f;
import java.util.List;

final class g
  extends FragmentPagerAdapter
{
  public g(a parama, FragmentManager paramFragmentManager)
  {
    super(paramFragmentManager);
  }
  
  public final int getCount()
  {
    if (aa).n.b != null) {
      return aa).n.b.size();
    }
    return 0;
  }
  
  public final Fragment getItem(int paramInt)
  {
    k localk = new k();
    localk.a(paramInt);
    return localk;
  }
  
  public final int getItemPosition(Object paramObject)
  {
    return -2;
  }
}

/* Location:
 * Qualified Name:     com.appyet.c.g
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */