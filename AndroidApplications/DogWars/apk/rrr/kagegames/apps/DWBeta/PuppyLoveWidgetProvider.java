package kagegames.apps.DWBeta;

import android.app.AlarmManager;
import android.app.PendingIntent;
import android.appwidget.AppWidgetManager;
import android.appwidget.AppWidgetProvider;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.net.Uri;
import android.os.Bundle;
import android.os.SystemClock;
import android.util.Log;
import android.widget.RemoteViews;
import java.util.Random;

public class PuppyLoveWidgetProvider
  extends AppWidgetProvider
{
  private static final int[] IMAGES;
  private static final String LOG_TAG = "PuppyLoveWidgetProvider";
  public static final String URI_SCHEME = "pupplove_widget";
  
  static
  {
    int i = 2;
    int[] arrayOfInt = new int[i];
    arrayOfInt[0] = 2130837545;
    arrayOfInt[1] = 2130837527;
    IMAGES = arrayOfInt;
  }
  
  public void onDeleted(Context paramContext, int[] paramArrayOfInt)
  {
    String str5 = 0;
    String str1 = "PuppyLoveWidgetProvider";
    String str3 = "onDelete()";
    Log.d(str1, str3);
    String str2 = paramArrayOfInt.length;
    str3 = str5;
    for (;;)
    {
      if (str3 >= str2)
      {
        super.onDeleted(paramContext, paramArrayOfInt);
        return;
      }
      int i = paramArrayOfInt[str3];
      Intent localIntent = new android/content/Intent;
      localIntent.<init>();
      Object localObject2 = "android.appwidget.action.APPWIDGET_UPDATE";
      localIntent.setAction((String)localObject2);
      localObject2 = "appWidgetId";
      localIntent.putExtra((String)localObject2, i);
      localObject2 = "pupplove_widget://widget/id/";
      localObject2 = Uri.parse((String)localObject2);
      Object localObject3 = String.valueOf(i);
      localObject2 = Uri.withAppendedPath((Uri)localObject2, (String)localObject3);
      localIntent.setData((Uri)localObject2);
      int k = 134217728;
      PendingIntent localPendingIntent = PendingIntent.getBroadcast(paramContext, str5, localIntent, k);
      String str4 = "alarm";
      Object localObject1 = paramContext.getSystemService(str4);
      localObject1 = (AlarmManager)localObject1;
      ((AlarmManager)localObject1).cancel(localPendingIntent);
      str4 = "PuppyLoveWidgetProvider";
      localObject3 = new java/lang/StringBuilder;
      Object localObject4 = "Removing preference for id ";
      ((StringBuilder)localObject3).<init>((String)localObject4);
      localObject3 = ((StringBuilder)localObject3).append(i);
      localObject3 = ((StringBuilder)localObject3).toString();
      Log.d(str4, (String)localObject3);
      str4 = "PuppyLoveWidgetPrefs";
      SharedPreferences localSharedPreferences = paramContext.getSharedPreferences(str4, str5);
      SharedPreferences.Editor localEditor = localSharedPreferences.edit();
      str4 = "UpdateRate-%d";
      int m = 1;
      Object[] arrayOfObject = new Object[m];
      localObject4 = Integer.valueOf(i);
      arrayOfObject[str5] = localObject4;
      str4 = String.format(str4, arrayOfObject);
      localEditor.remove(str4);
      localEditor.commit();
      int j;
      str3 += 1;
    }
  }
  
  public void onEnabled(Context paramContext)
  {
    String str1 = "PuppyLoveWidgetProvider";
    String str2 = "onEnabled()";
    Log.i(str1, str2);
    super.onEnabled(paramContext);
  }
  
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    String str8 = paramIntent.getAction();
    String str1 = "PuppyLoveWidgetProvider";
    Object localObject4 = new java/lang/StringBuilder;
    String str6 = "OnReceive:Action: ";
    ((StringBuilder)localObject4).<init>(str6);
    localObject4 = ((StringBuilder)localObject4).append(str8);
    localObject4 = ((StringBuilder)localObject4).toString();
    Log.d(str1, (String)localObject4);
    str1 = "android.appwidget.action.APPWIDGET_DELETED";
    boolean bool1 = str1.equals(str8);
    int i6;
    int i10;
    Object localObject2;
    if (bool1)
    {
      Bundle localBundle1 = paramIntent.getExtras();
      localObject4 = "appWidgetId";
      i6 = 0;
      i10 = localBundle1.getInt((String)localObject4, i6);
      if (i10 != 0)
      {
        int i = 1;
        localObject2 = new int[i];
        int i1 = 0;
        localObject2[i1] = i10;
        onDeleted(paramContext, (int[])localObject2);
      }
    }
    for (;;)
    {
      return;
      localObject2 = "android.appwidget.action.APPWIDGET_UPDATE";
      boolean bool2 = ((String)localObject2).equals(str8);
      if (bool2)
      {
        String str2 = "pupplove_widget";
        String str5 = paramIntent.getScheme();
        boolean bool3 = str2.equals(str5);
        int[] arrayOfInt;
        int i9;
        int j;
        if (!bool3)
        {
          Bundle localBundle2 = paramIntent.getExtras();
          str5 = "appWidgetIds";
          arrayOfInt = localBundle2.getIntArray(str5);
          i9 = arrayOfInt.length;
          j = 0;
        }
        int n;
        for (int i12 = j;; i12 = n)
        {
          if (i12 >= i9)
          {
            super.onReceive(paramContext, paramIntent);
            break;
          }
          i10 = arrayOfInt[i12];
          String str3 = "PuppyLoveWidgetPrefs";
          int i2 = 0;
          SharedPreferences localSharedPreferences = paramContext.getSharedPreferences(str3, i2);
          str3 = "UpdateRate-%d";
          i2 = 1;
          Object[] arrayOfObject = new Object[i2];
          i6 = 0;
          Integer localInteger = Integer.valueOf(i10);
          arrayOfObject[i6] = localInteger;
          str3 = String.format(str3, arrayOfObject);
          int i3 = -1;
          int i11 = localSharedPreferences.getInt(str3, i3);
          int k = -1;
          if (i11 != k)
          {
            Object localObject3 = "PuppyLoveWidgetProvider";
            Object localObject5 = new java/lang/StringBuilder;
            String str7 = "Starting recurring alarm for id ";
            ((StringBuilder)localObject5).<init>(str7);
            localObject5 = ((StringBuilder)localObject5).append(i10);
            localObject5 = ((StringBuilder)localObject5).toString();
            Log.i((String)localObject3, (String)localObject5);
            Intent localIntent = new android/content/Intent;
            localIntent.<init>();
            localObject3 = "android.appwidget.action.APPWIDGET_UPDATE";
            localIntent.setAction((String)localObject3);
            localObject3 = "appWidgetIds";
            int i4 = 1;
            Object localObject6 = new int[i4];
            int i7 = 0;
            localObject6[i7] = i10;
            localIntent.putExtra((String)localObject3, (int[])localObject6);
            localObject3 = "pupplove_widget://widget/id/";
            localObject3 = Uri.parse((String)localObject3);
            localObject6 = String.valueOf(i10);
            localObject3 = Uri.withAppendedPath((Uri)localObject3, (String)localObject6);
            localIntent.setData((Uri)localObject3);
            int m = 0;
            int i5 = 134217728;
            PendingIntent localPendingIntent = PendingIntent.getBroadcast(paramContext, m, localIntent, i5);
            String str4 = "alarm";
            Object localObject1 = paramContext.getSystemService(str4);
            localObject1 = (AlarmManager)localObject1;
            n = 3;
            long l1 = SystemClock.elapsedRealtime();
            int i8 = i11 * 1000;
            long l2 = i8;
            ((AlarmManager)localObject1).setRepeating(n, l1, l2, localPendingIntent);
          }
          n = i12 + 1;
        }
      }
      super.onReceive(paramContext, paramIntent);
    }
  }
  
  public void onUpdate(Context paramContext, AppWidgetManager paramAppWidgetManager, int[] paramArrayOfInt)
  {
    String str1 = "PuppyLoveWidgetProvider";
    String str2 = "onUpdate(): ";
    Log.d(str1, str2);
    int k = paramArrayOfInt.length;
    int m = 0;
    for (;;)
    {
      if (m >= k) {
        return;
      }
      int i = paramArrayOfInt[m];
      Object localObject = new java/util/Random;
      ((Random)localObject).<init>();
      int[] arrayOfInt1 = IMAGES;
      int i1 = arrayOfInt1.length;
      int j = ((Random)localObject).nextInt(i1);
      RemoteViews localRemoteViews = new android/widget/RemoteViews;
      localObject = paramContext.getPackageName();
      i1 = 2130903059;
      localRemoteViews.<init>((String)localObject, i1);
      int n = 2131099747;
      int[] arrayOfInt2 = IMAGES;
      int i2 = arrayOfInt2[j];
      localRemoteViews.setImageViewResource(n, i2);
      paramAppWidgetManager.updateAppWidget(i, localRemoteViews);
      m += 1;
    }
  }
}

/* Location:
 * Qualified Name:     kagegames.apps.DWBeta.PuppyLoveWidgetProvider
 * Java Class Version: 1.2 (46.0)
 * JD-Core Version:    0.7.1
 */