package com.appyet.c;

import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentPagerAdapter;
import java.util.ArrayList;

final class as
  extends FragmentPagerAdapter
{
  public as(ar paramar, FragmentManager paramFragmentManager)
  {
    super(paramFragmentManager);
  }
  
  public final int getCount()
  {
    if (ar.a(a) != null) {
      return ar.a(a).size();
    }
    return 0;
  }
  
  public final Fragment getItem(int paramInt)
  {
    at localat = new at();
    Bundle localBundle = new Bundle();
    localBundle.putString("IMAGE_LINK", (String)ar.a(a).get(paramInt));
    localat.setArguments(localBundle);
    return localat;
  }
  
  public final int getItemPosition(Object paramObject)
  {
    return -2;
  }
}

/* Location:
 * Qualified Name:     com.appyet.c.as
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */