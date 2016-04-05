package com.appyet.activity;

import android.widget.ProgressBar;
import com.appyet.context.ApplicationContext;
import com.appyet.d.d;
import com.appyet.f.a;
import com.appyet.manager.af;
import com.appyet.manager.ak;
import com.appyet.manager.bp;
import java.io.File;
import java.util.ArrayList;
import java.util.List;

final class m
  extends a<Void, Void, List<File>>
{
  m(DownloadActivity paramDownloadActivity) {}
  
  private List<File> f()
  {
    try
    {
      if (a.a.d.R() == 0) {
        return a.a.l.a(ak.a);
      }
      if (a.a.d.R() == 1) {
        return a.a.l.a(ak.b);
      }
      if (a.a.d.R() == 2)
      {
        ArrayList localArrayList = a.a.l.a(ak.c);
        return localArrayList;
      }
    }
    catch (Exception localException)
    {
      d.a(localException);
    }
    return null;
  }
  
  protected final void a()
  {
    super.a();
    DownloadActivity.b(a).setVisibility(0);
  }
}

/* Location:
 * Qualified Name:     com.appyet.activity.m
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */