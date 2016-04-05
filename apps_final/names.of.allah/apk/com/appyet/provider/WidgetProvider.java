package com.appyet.provider;

import android.annotation.TargetApi;
import android.app.PendingIntent;
import android.appwidget.AppWidgetManager;
import android.appwidget.AppWidgetProvider;
import android.appwidget.AppWidgetProviderInfo;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.Canvas;
import android.net.Uri;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.util.DisplayMetrics;
import android.widget.RemoteViews;
import com.appyet.activity.MainActivity;
import com.appyet.context.ApplicationContext;
import com.appyet.d.a;
import com.appyet.data.FeedItem;
import com.appyet.data.Module;
import com.appyet.data.Widget;
import com.appyet.f.w;
import com.appyet.manager.al;
import com.appyet.manager.ap;
import com.appyet.metadata.Metadata;
import com.appyet.metadata.MetadataModule;
import com.appyet.metadata.MetadataModuleFeedSql;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class WidgetProvider
  extends AppWidgetProvider
{
  public static String a;
  public static String b = "ACTION_WIDGET_FORWARD";
  public static String c = "ACTION_WIDGET_BACKWARD";
  public static String d = "ACTION_WIDGET_OPEN";
  private static final int[] e = { -14570819, 42240, -4380082, -10138773, -7880654 };
  
  @TargetApi(16)
  private static int a(Context paramContext, int paramInt)
  {
    double d1;
    try
    {
      Object localObject = AppWidgetManager.getInstance(paramContext);
      if (Build.VERSION.SDK_INT >= 16)
      {
        d1 = ((AppWidgetManager)localObject).getAppWidgetOptions(paramInt).getInt("appWidgetMinHeight") / 55.0D;
        if (d1 > 1.5D) {
          break label122;
        }
        return 1;
      }
      localObject = ((AppWidgetManager)localObject).getAppWidgetInfo(paramInt);
      if (localObject == null) {
        return 2;
      }
      paramInt = minHeight;
      float f = getResourcesgetDisplayMetricsdensity;
      d1 = paramInt / f / 55.0D;
      if (d1 > 1.5D)
      {
        if (d1 <= 2.5D) {
          return 2;
        }
        if (d1 <= 3.5D) {
          return 3;
        }
        return 4;
      }
    }
    catch (Exception paramContext)
    {
      com.appyet.d.d.a(paramContext);
    }
    return 1;
    label122:
    if (d1 <= 2.5D) {
      return 2;
    }
    if (d1 <= 3.5D) {
      return 3;
    }
    return 4;
  }
  
  private static Uri a(ApplicationContext paramApplicationContext, FeedItem paramFeedItem)
  {
    for (;;)
    {
      try
      {
        if (paramFeedItem.getThumbnailMD5() != null)
        {
          paramApplicationContext = j;
          if (paramApplicationContext.g(paramFeedItem.getThumbnailMD5()))
          {
            paramApplicationContext = paramApplicationContext.d(paramFeedItem.getThumbnailMD5());
            if (paramApplicationContext != null) {
              return paramApplicationContext;
            }
            return null;
          }
        }
        else
        {
          return null;
        }
      }
      catch (Exception paramApplicationContext)
      {
        com.appyet.d.d.a(paramApplicationContext);
        return null;
      }
      paramApplicationContext = null;
    }
  }
  
  public static void a(Context paramContext, AppWidgetManager paramAppWidgetManager, int paramInt1, int paramInt2)
  {
    ApplicationContext localApplicationContext = (ApplicationContext)paramContext.getApplicationContext();
    Object localObject4 = null;
    Object localObject2 = null;
    Object localObject6;
    Module localModule;
    Object localObject1;
    Object localObject3;
    try
    {
      localObject6 = h.j(paramInt1);
      if (localObject6 == null) {
        return;
      }
      localModule = h.g(((Widget)localObject6).getModuleId().longValue());
      if (!localModule.getType().equals("Feed")) {
        break label291;
      }
      localObject1 = h.e(((Widget)localObject6).getModuleId().longValue());
    }
    catch (Exception paramContext)
    {
      label136:
      com.appyet.d.d.a(paramContext);
      e.a(paramContext);
      return;
    }
    if ((localObject3 == null) || (((List)localObject3).size() == 0)) {}
    int i;
    label291:
    Object localObject5;
    Object localObject7;
    int j;
    switch (a(paramContext, paramInt1))
    {
    case 1: 
    case 2: 
    case 3: 
    case 4: 
      for (;;)
      {
        ((RemoteViews)localObject1).setTextViewText(2131361896, "0/0");
        ((RemoteViews)localObject1).setTextViewText(2131361897, w.b(localApplicationContext, localModule.getName()));
        ((RemoteViews)localObject1).setTextViewText(2131361893, localApplicationContext.getResources().getString(2131230811));
        localObject2 = Bitmap.createBitmap(1, 1, Bitmap.Config.ARGB_8888);
        paramInt2 = ((Widget)localObject6).getModuleId().intValue();
        i = e.length;
        new Canvas((Bitmap)localObject2).drawColor(e[(paramInt2 % i)]);
        ((RemoteViews)localObject1).setImageViewBitmap(2131361898, (Bitmap)localObject2);
        paramContext = new RemoteViews(paramContext.getPackageName(), 2130903091);
        paramContext.removeAllViews(2131361902);
        paramContext.addView(2131361902, (RemoteViews)localObject1);
        paramContext.setViewVisibility(2131361903, 8);
        paramAppWidgetManager.updateAppWidget(paramInt1, paramContext);
        return;
        if (!localModule.getType().equals("FeedQuery")) {
          break;
        }
        localObject1 = q.MetadataModuleFeedSqls.iterator();
        do
        {
          while (!((Iterator)localObject5).hasNext())
          {
            if (!((Iterator)localObject1).hasNext()) {
              break;
            }
            localObject3 = (MetadataModuleFeedSql)((Iterator)localObject1).next();
            localObject5 = q.MetadataModules.iterator();
          }
          localObject7 = (MetadataModule)((Iterator)localObject5).next();
        } while ((Id != ModuleId) || (!Guid.equals(localModule.getGuid())));
        localObject1 = h.c(Query);
        break label1856;
        localObject1 = new RemoteViews(paramContext.getPackageName(), 2130903071);
        continue;
        localObject1 = new RemoteViews(paramContext.getPackageName(), 2130903070);
        continue;
        localObject1 = new RemoteViews(paramContext.getPackageName(), 2130903074);
      }
      j = (int)((Widget)localObject6).getPosition().longValue() + paramInt2;
      i = j;
      if (j < 0) {
        i = 0;
      }
      if (i >= ((List)localObject3).size())
      {
        i = 0;
        label523:
        j = i - 1;
        if (j < 0)
        {
          j = ((List)localObject3).size() - 1;
          label545:
          localObject7 = a(localApplicationContext, (FeedItem)((List)localObject3).get(i));
          localObject4 = localObject2;
          if (j >= 0)
          {
            localObject4 = localObject2;
            if (j < ((List)localObject3).size()) {
              localObject4 = a(localApplicationContext, (FeedItem)((List)localObject3).get(j));
            }
          }
          switch (a(paramContext, paramInt1))
          {
          }
        }
      }
      break;
    }
    for (;;)
    {
      localObject5 = new RemoteViews(paramContext.getPackageName(), 2130903091);
      ((RemoteViews)localObject5).removeAllViews(2131361902);
      ((RemoteViews)localObject5).addView(2131361902, (RemoteViews)localObject1);
      if (localObject2 != null) {
        ((RemoteViews)localObject5).addView(2131361902, (RemoteViews)localObject2);
      }
      ((RemoteViews)localObject5).setViewVisibility(2131361903, 0);
      Object localObject8 = new Intent(paramContext, WidgetProvider.class);
      ((Intent)localObject8).setAction(b);
      ((Intent)localObject8).setData(Uri.withAppendedPath(Uri.parse(a), String.valueOf(paramInt1)));
      ((RemoteViews)localObject5).setOnClickPendingIntent(2131361903, PendingIntent.getBroadcast(paramContext, 0, (Intent)localObject8, 0));
      ((Widget)localObject6).setPosition(Long.valueOf(i));
      h.b((Widget)localObject6);
      if (((List)localObject3).size() > i)
      {
        localObject6 = (FeedItem)((List)localObject3).get(i);
        if (((List)localObject3).size() >= 100)
        {
          ((RemoteViews)localObject1).setTextViewText(2131361896, i + 1 + "/" + ((List)localObject3).size() + "+");
          label858:
          ((RemoteViews)localObject1).setTextViewText(2131361897, w.b(localApplicationContext, localModule.getName()) + " / " + a.a(localApplicationContext, ((FeedItem)localObject6).getPubDate()));
          ((RemoteViews)localObject1).setTextViewText(2131361893, ((FeedItem)localObject6).getTitle());
          if (localObject7 != null) {
            break label1739;
          }
          localObject8 = Bitmap.createBitmap(1, 1, Bitmap.Config.ARGB_8888);
          paramInt2 = e.length;
          new Canvas((Bitmap)localObject8).drawColor(e[(i % paramInt2)]);
          ((RemoteViews)localObject1).setImageViewBitmap(2131361898, (Bitmap)localObject8);
          label968:
          localObject8 = new Intent(paramContext, WidgetProvider.class);
          ((Intent)localObject8).setAction(d);
          ((Intent)localObject8).setData(Uri.withAppendedPath(Uri.parse(a), String.valueOf(((FeedItem)localObject6).getFeedItemId())));
          paramContext = PendingIntent.getBroadcast(paramContext, 0, (Intent)localObject8, 0);
          if (localObject7 != null) {
            break label1752;
          }
          ((RemoteViews)localObject1).setOnClickPendingIntent(2131361898, paramContext);
        }
      }
      else
      {
        label1034:
        if ((j >= 0) && (localObject2 != null))
        {
          if (((List)localObject3).size() <= j) {
            break label1820;
          }
          paramContext = (FeedItem)((List)localObject3).get(j);
          if (((List)localObject3).size() < 100) {
            break label1764;
          }
          ((RemoteViews)localObject2).setTextViewText(2131361896, j + 1 + "/" + ((List)localObject3).size() + "+");
          label1127:
          ((RemoteViews)localObject2).setTextViewText(2131361897, w.b(localApplicationContext, localModule.getName()) + " / " + a.a(localApplicationContext, paramContext.getPubDate()));
          ((RemoteViews)localObject2).setTextViewText(2131361893, paramContext.getTitle());
          if (localObject4 != null) {
            break label1807;
          }
          paramContext = Bitmap.createBitmap(1, 1, Bitmap.Config.ARGB_8888);
          paramInt2 = e.length;
          new Canvas(paramContext).drawColor(e[(j % paramInt2)]);
          ((RemoteViews)localObject2).setImageViewBitmap(2131361898, paramContext);
        }
      }
      for (;;)
      {
        paramAppWidgetManager.updateAppWidget(paramInt1, (RemoteViews)localObject5);
        return;
        if (paramInt2 == 0)
        {
          if (localObject7 == null)
          {
            localObject1 = new RemoteViews(paramContext.getPackageName(), 2130903071);
            localObject2 = null;
            break;
          }
          localObject1 = new RemoteViews(paramContext.getPackageName(), 2130903064);
          localObject2 = null;
          break;
        }
        if (localObject4 == null) {}
        for (localObject1 = new RemoteViews(paramContext.getPackageName(), 2130903073);; localObject1 = new RemoteViews(paramContext.getPackageName(), 2130903066))
        {
          if (localObject7 != null) {
            break label1365;
          }
          localObject5 = new RemoteViews(paramContext.getPackageName(), 2130903072);
          localObject2 = localObject1;
          localObject1 = localObject5;
          break;
        }
        label1365:
        localObject5 = new RemoteViews(paramContext.getPackageName(), 2130903065);
        localObject2 = localObject1;
        localObject1 = localObject5;
        break;
        if (paramInt2 == 0)
        {
          if (localObject7 == null)
          {
            localObject1 = new RemoteViews(paramContext.getPackageName(), 2130903070);
            localObject2 = null;
            break;
          }
          localObject1 = new RemoteViews(paramContext.getPackageName(), 2130903063);
          localObject2 = null;
          break;
        }
        if (localObject4 == null) {}
        for (localObject1 = new RemoteViews(paramContext.getPackageName(), 2130903078);; localObject1 = new RemoteViews(paramContext.getPackageName(), 2130903068))
        {
          if (localObject7 != null) {
            break label1517;
          }
          localObject5 = new RemoteViews(paramContext.getPackageName(), 2130903077);
          localObject2 = localObject1;
          localObject1 = localObject5;
          break;
        }
        label1517:
        localObject5 = new RemoteViews(paramContext.getPackageName(), 2130903067);
        localObject2 = localObject1;
        localObject1 = localObject5;
        break;
        if (paramInt2 == 0)
        {
          if (localObject7 == null)
          {
            localObject1 = new RemoteViews(paramContext.getPackageName(), 2130903074);
            localObject2 = null;
            break;
          }
          localObject1 = new RemoteViews(paramContext.getPackageName(), 2130903063);
          localObject2 = null;
          break;
        }
        if (localObject4 == null) {}
        for (localObject1 = new RemoteViews(paramContext.getPackageName(), 2130903076);; localObject1 = new RemoteViews(paramContext.getPackageName(), 2130903068))
        {
          if (localObject7 != null) {
            break label1669;
          }
          localObject5 = new RemoteViews(paramContext.getPackageName(), 2130903075);
          localObject2 = localObject1;
          localObject1 = localObject5;
          break;
        }
        label1669:
        localObject5 = new RemoteViews(paramContext.getPackageName(), 2130903067);
        localObject2 = localObject1;
        localObject1 = localObject5;
        break;
        ((RemoteViews)localObject1).setTextViewText(2131361896, i + 1 + "/" + ((List)localObject3).size());
        break label858;
        label1739:
        ((RemoteViews)localObject1).setImageViewUri(2131361891, (Uri)localObject7);
        break label968;
        label1752:
        ((RemoteViews)localObject1).setOnClickPendingIntent(2131361891, paramContext);
        break label1034;
        label1764:
        ((RemoteViews)localObject2).setTextViewText(2131361896, j + 1 + "/" + ((List)localObject3).size());
        break label1127;
        label1807:
        ((RemoteViews)localObject2).setImageViewUri(2131361891, (Uri)localObject4);
        continue;
        label1820:
        ((RemoteViews)localObject2).setTextViewText(2131361893, "");
        ((RemoteViews)localObject2).setImageViewResource(2131361891, 2130837758);
      }
      break label545;
      break label523;
      localObject3 = null;
      break;
      for (;;)
      {
        label1856:
        localObject3 = localObject1;
        break;
        localObject1 = localObject4;
        break label136;
        localObject1 = null;
      }
      localObject1 = null;
      localObject2 = null;
    }
  }
  
  public void onAppWidgetOptionsChanged(Context paramContext, AppWidgetManager paramAppWidgetManager, int paramInt, Bundle paramBundle)
  {
    a(paramContext, paramAppWidgetManager, paramInt, 0);
    super.onAppWidgetOptionsChanged(paramContext, paramAppWidgetManager, paramInt, paramBundle);
  }
  
  public void onDeleted(Context paramContext, int[] paramArrayOfInt)
  {
    try
    {
      paramContext = (ApplicationContext)paramContext.getApplicationContext();
      ArrayList localArrayList = new ArrayList();
      int j = paramArrayOfInt.length;
      int i = 0;
      while (i < j)
      {
        localArrayList.add(Long.valueOf(paramArrayOfInt[i]));
        i += 1;
      }
      h.e(localArrayList);
      return;
    }
    catch (Exception paramContext)
    {
      com.appyet.d.d.a(paramContext);
    }
  }
  
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    int i;
    try
    {
      a = "MFRD://" + paramContext.getPackageName() + ".widget/id/";
      bool = paramIntent.getAction().equals(c);
      if (bool) {
        try
        {
          i = Integer.parseInt(paramIntent.getData().toString().replace(a, ""));
          a(paramContext, AppWidgetManager.getInstance(paramContext), i, -1);
          return;
        }
        catch (Exception paramContext)
        {
          com.appyet.d.d.a(paramContext);
          return;
        }
      }
      bool = paramIntent.getAction().equals(b);
    }
    catch (Exception paramContext)
    {
      com.appyet.d.d.a(paramContext);
      return;
    }
    if (bool) {
      try
      {
        i = Integer.parseInt(paramIntent.getData().toString().replace(a, ""));
        a(paramContext, AppWidgetManager.getInstance(paramContext), i, 1);
        return;
      }
      catch (Exception paramContext)
      {
        com.appyet.d.d.a(paramContext);
        return;
      }
    }
    boolean bool = paramIntent.getAction().equals(d);
    if (bool) {
      try
      {
        long l = Long.parseLong(paramIntent.getData().toString().replace(a, ""));
        paramIntent = new Intent(paramContext, MainActivity.class);
        paramIntent.putExtra("ACTION_WIDGET_OPEN_FEEDITEM_ID", l);
        paramContext.startActivity(paramIntent);
        return;
      }
      catch (Exception paramContext)
      {
        com.appyet.d.d.a(paramContext);
        return;
      }
    }
    super.onReceive(paramContext, paramIntent);
  }
  
  public void onUpdate(Context paramContext, AppWidgetManager paramAppWidgetManager, int[] paramArrayOfInt)
  {
    int i = 0;
    try
    {
      int j = paramArrayOfInt.length;
      while (i < j)
      {
        a(paramContext, paramAppWidgetManager, paramArrayOfInt[i], 0);
        i += 1;
      }
      return;
    }
    catch (Exception paramContext)
    {
      com.appyet.d.d.a(paramContext);
    }
  }
}

/* Location:
 * Qualified Name:     com.appyet.provider.WidgetProvider
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */