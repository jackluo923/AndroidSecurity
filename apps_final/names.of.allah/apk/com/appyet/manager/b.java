package com.appyet.manager;

import android.app.Activity;
import android.content.res.Resources;
import android.view.ViewGroup;
import com.appyet.b.a.t;
import com.appyet.context.ApplicationContext;
import com.appyet.d.d;
import com.appyet.f.o;
import com.appyet.metadata.Metadata;
import com.appyet.metadata.MetadataAppSync;
import com.appyet.metadata.MetadataApplication;
import com.google.a.k;
import com.google.a.r;
import com.google.android.gms.ads.AdRequest.Builder;
import com.google.android.gms.ads.AdSize;
import com.google.android.gms.ads.AdView;
import java.io.BufferedReader;
import java.io.DataInputStream;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.Date;
import java.util.Random;

public final class b
{
  public String a = "WeChap3awEbr";
  private ApplicationContext b;
  private AdView c;
  
  public b(ApplicationContext paramApplicationContext)
  {
    b = paramApplicationContext;
    d();
  }
  
  private void d()
  {
    Object localObject1;
    do
    {
      BufferedReader localBufferedReader;
      try
      {
        StringBuilder localStringBuilder = new StringBuilder();
        localObject2 = b.getResources().openRawResource(2131099648);
        DataInputStream localDataInputStream = new DataInputStream((InputStream)localObject2);
        localBufferedReader = new BufferedReader(new InputStreamReader(localDataInputStream, "UTF-8"));
        for (;;)
        {
          String str = localBufferedReader.readLine();
          if (str == null) {
            break;
          }
          localStringBuilder.append(str);
        }
        localDataInputStream.close();
      }
      catch (Exception localException)
      {
        b.q.MetadataApplication.IsShowAd = Boolean.valueOf(true);
        b.q.MetadataApplication.VendorAdmobIdBanner = "a15170387834572";
        b.q.MetadataApplication.VendorAdmobIdFullBanner = "a15170387834572";
        b.q.MetadataApplication.UserAdAllocation = Integer.valueOf(0);
        b.q.MetadataApplication.UserAdmobIdBanner = "";
        b.q.MetadataApplication.UserAdmobIdFullBanner = "";
        d.a(localException);
        return;
      }
      localBufferedReader.close();
      ((InputStream)localObject2).close();
      localObject1 = new o(a.a + t.c + af.a + al.a + ar.d + com.appyet.d.a.a).a(localException.toString());
      Object localObject2 = new r();
      a = "yyyy-MM-dd'T'HH:mm:ss";
      localObject2 = ((r)localObject2).a();
      b.q = ((Metadata)((k)localObject2).a((String)localObject1, Metadata.class));
      if (!b.q.MetadataApplication.PackageName.equals(b.getPackageName()))
      {
        b.q.MetadataApplication.IsShowAd = Boolean.valueOf(true);
        b.q.MetadataApplication.VendorAdmobIdBanner = "a15170387834572";
        b.q.MetadataApplication.VendorAdmobIdFullBanner = "a15170387834572";
        b.q.MetadataApplication.UserAdAllocation = Integer.valueOf(0);
        b.q.MetadataApplication.UserAdmobIdBanner = "";
        b.q.MetadataApplication.UserAdmobIdFullBanner = "";
      }
      localObject1 = new Date();
    } while ((b.q.MetadataApplication.ApplicationTypeId == 1) || (b.q.MetadataApplication.SubscriptionExpireDate == null) || (b.q.MetadataApplication.SubscriptionExpireDate.compareTo((Date)localObject1) >= 0));
    b.q.MetadataApplication.IsShowAd = Boolean.valueOf(true);
    b.q.MetadataApplication.VendorAdmobIdBanner = "a15170387834572";
    b.q.MetadataApplication.VendorAdmobIdFullBanner = "a15170387834572";
    b.q.MetadataApplication.UserAdAllocation = Integer.valueOf(0);
    b.q.MetadataApplication.UserAdmobIdBanner = "";
    b.q.MetadataApplication.UserAdmobIdFullBanner = "";
  }
  
  private com.appyet.a.a e()
  {
    com.appyet.a.a locala = new com.appyet.a.a();
    try
    {
      if (b.r == null) {
        break label502;
      }
      if ((!b.r.IsValid.booleanValue()) || (b.r.IsExpired.booleanValue()))
      {
        a = Boolean.valueOf(true);
        b = b.r.VendorAdmobIdBanner;
        c = b.r.VendorAdmobIdFullBanner;
        return locala;
      }
      if (!b.r.IsShowAd.booleanValue()) {
        break label482;
      }
      a = Boolean.valueOf(true);
      if ((b.r.UserAdAllocation == null) || (b.r.UserAdAllocation.intValue() <= 0))
      {
        b = b.r.VendorAdmobIdBanner;
        c = b.r.VendorAdmobIdFullBanner;
        return locala;
      }
    }
    catch (Exception localException)
    {
      d.a(localException);
      a = Boolean.valueOf(true);
      b = "4e9e34fb3d06472b";
      c = "936668ecf7014517";
      return locala;
    }
    if (b.r.UserAdAllocation.intValue() > 100)
    {
      if ((b.r.UserAdmobIdBanner != null) && (b.r.UserAdmobIdBanner.trim().length() > 0))
      {
        b = b.r.UserAdmobIdBanner;
        c = b.r.UserAdmobIdFullBanner;
        return locala;
      }
      b = b.q.MetadataApplication.UserAdmobIdBanner;
      c = b.q.MetadataApplication.UserAdmobIdFullBanner;
      return locala;
    }
    if (new Random(new Date().getTime()).nextInt(100) + 1 < b.r.UserAdAllocation.intValue())
    {
      if ((b.r.UserAdmobIdBanner != null) && (b.r.UserAdmobIdBanner.trim().length() > 0))
      {
        b = b.r.UserAdmobIdBanner;
        c = b.r.UserAdmobIdFullBanner;
        return locala;
      }
      b = b.q.MetadataApplication.UserAdmobIdBanner;
      c = b.q.MetadataApplication.UserAdmobIdFullBanner;
      return locala;
    }
    b = b.r.VendorAdmobIdBanner;
    c = b.r.VendorAdmobIdFullBanner;
    return locala;
    label482:
    a = Boolean.valueOf(false);
    b = null;
    c = null;
    return locala;
    label502:
    if (b.q.MetadataApplication.IsShowAd.booleanValue())
    {
      a = Boolean.valueOf(true);
      if ((b.q.MetadataApplication.UserAdAllocation == null) || (b.q.MetadataApplication.UserAdAllocation.intValue() <= 0))
      {
        b = b.q.MetadataApplication.VendorAdmobIdBanner;
        c = b.q.MetadataApplication.VendorAdmobIdFullBanner;
        return locala;
      }
      if (b.q.MetadataApplication.UserAdAllocation.intValue() > 100)
      {
        b = b.q.MetadataApplication.UserAdmobIdBanner;
        c = b.q.MetadataApplication.UserAdmobIdFullBanner;
        return locala;
      }
      if (new Random(new Date().getTime()).nextInt(100) + 1 < b.q.MetadataApplication.UserAdAllocation.intValue())
      {
        b = b.q.MetadataApplication.UserAdmobIdBanner;
        c = b.q.MetadataApplication.UserAdmobIdFullBanner;
        return locala;
      }
      b = b.q.MetadataApplication.VendorAdmobIdBanner;
      c = b.q.MetadataApplication.VendorAdmobIdFullBanner;
      return locala;
    }
    a = Boolean.valueOf(false);
    b = null;
    c = null;
    return locala;
  }
  
  public final void a()
  {
    try
    {
      if (c != null) {
        c.pause();
      }
      return;
    }
    catch (Exception localException)
    {
      d.a(localException);
      c = null;
    }
  }
  
  public final void a(Activity paramActivity, ViewGroup paramViewGroup)
  {
    for (;;)
    {
      com.appyet.a.a locala;
      try
      {
        locala = e();
        if (!a.booleanValue()) {
          return;
        }
        paramViewGroup.removeAllViews();
        paramViewGroup.setVisibility(8);
        c = null;
        if (b.y == 4)
        {
          c = new AdView(paramActivity);
          c.setAdUnitId(c);
          c.setAdSize(AdSize.FULL_BANNER);
          c.setAdListener(new c(this, paramViewGroup));
          paramViewGroup.addView(c);
          paramActivity = new AdRequest.Builder().build();
          c.loadAd(paramActivity);
          return;
        }
      }
      catch (Exception paramActivity)
      {
        d.a(paramActivity);
        return;
      }
      if (b.y == 3)
      {
        c = new AdView(paramActivity);
        c.setAdUnitId(b);
        c.setAdSize(AdSize.BANNER);
      }
      else
      {
        c = new AdView(paramActivity);
        c.setAdUnitId(b);
        c.setAdSize(AdSize.BANNER);
      }
    }
  }
  
  public final void b()
  {
    try
    {
      if (c != null) {
        c.resume();
      }
      return;
    }
    catch (Exception localException)
    {
      d.a(localException);
      c = null;
    }
  }
  
  public final void c()
  {
    try
    {
      if (c != null)
      {
        c.destroy();
        c = null;
      }
      return;
    }
    catch (Exception localException)
    {
      d.a(localException);
      c = null;
    }
  }
}

/* Location:
 * Qualified Name:     com.appyet.manager.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */