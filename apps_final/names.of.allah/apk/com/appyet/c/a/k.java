package com.appyet.c.a;

import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentPagerAdapter;
import com.appyet.a.a.e;

final class k
  extends FragmentPagerAdapter
{
  public k(i parami, FragmentManager paramFragmentManager)
  {
    super(paramFragmentManager);
  }
  
  public final int getCount()
  {
    if (i.c(a) != null) {
      return ca).h / 10 + 1;
    }
    return 0;
  }
  
  public final Fragment getItem(int paramInt)
  {
    l locall = new l();
    locall.a(paramInt);
    locall.a(i.b(a));
    return locall;
  }
  
  public final int getItemPosition(Object paramObject)
  {
    return -2;
  }
}

/* Location:
 * Qualified Name:     com.appyet.c.a.k
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */