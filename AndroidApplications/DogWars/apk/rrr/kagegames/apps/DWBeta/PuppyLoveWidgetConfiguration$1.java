package kagegames.apps.DWBeta;

import android.app.AlarmManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.net.Uri;
import android.os.SystemClock;
import android.text.Editable;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.EditText;

class PuppyLoveWidgetConfiguration$1
  implements View.OnClickListener
{
  final PuppyLoveWidgetConfiguration this$0;
  
  PuppyLoveWidgetConfiguration$1(PuppyLoveWidgetConfiguration paramPuppyLoveWidgetConfiguration, EditText paramEditText, SharedPreferences paramSharedPreferences) {}
  
  public void onClick(View paramView)
  {
    int i4 = 1;
    int i3 = 0;
    Object localObject2 = val$updateRateEntry;
    localObject2 = ((EditText)localObject2).getText();
    localObject2 = ((Editable)localObject2).toString();
    int i5 = Integer.parseInt((String)localObject2);
    localObject2 = val$config;
    SharedPreferences.Editor localEditor = ((SharedPreferences)localObject2).edit();
    localObject2 = "UpdateRate-%d";
    Object localObject4 = new Object[i4];
    PuppyLoveWidgetConfiguration localPuppyLoveWidgetConfiguration2 = this$0;
    int i1 = PuppyLoveWidgetConfiguration.access$0(localPuppyLoveWidgetConfiguration2);
    Object localObject6 = Integer.valueOf(i1);
    localObject4[i3] = localObject6;
    localObject2 = String.format((String)localObject2, (Object[])localObject4);
    localEditor.putInt((String)localObject2, i5);
    localEditor.commit();
    localObject2 = this$0;
    int i = PuppyLoveWidgetConfiguration.access$0((PuppyLoveWidgetConfiguration)localObject2);
    if (i != 0)
    {
      Intent localIntent1 = new android/content/Intent;
      localIntent1.<init>();
      Object localObject3 = "appWidgetId";
      localObject4 = this$0;
      int k = PuppyLoveWidgetConfiguration.access$0((PuppyLoveWidgetConfiguration)localObject4);
      localIntent1.putExtra((String)localObject3, k);
      localObject3 = this$0;
      k = -1;
      ((PuppyLoveWidgetConfiguration)localObject3).setResult(k, localIntent1);
      Intent localIntent2 = new android/content/Intent;
      localIntent2.<init>();
      localObject3 = "android.appwidget.action.APPWIDGET_UPDATE";
      localIntent2.setAction((String)localObject3);
      localObject3 = "appWidgetIds";
      Object localObject5 = new int[i4];
      localObject6 = this$0;
      int i2 = PuppyLoveWidgetConfiguration.access$0((PuppyLoveWidgetConfiguration)localObject6);
      localObject5[i3] = i2;
      localIntent2.putExtra((String)localObject3, (int[])localObject5);
      localObject3 = "pupplove_widget://widget/id/";
      localObject3 = Uri.parse((String)localObject3);
      localObject5 = this$0;
      int m = PuppyLoveWidgetConfiguration.access$0((PuppyLoveWidgetConfiguration)localObject5);
      String str1 = String.valueOf(m);
      localObject3 = Uri.withAppendedPath((Uri)localObject3, str1);
      localIntent2.setData((Uri)localObject3);
      localObject3 = this$0;
      localObject3 = ((PuppyLoveWidgetConfiguration)localObject3).getApplicationContext();
      int n = 134217728;
      PendingIntent localPendingIntent = PendingIntent.getBroadcast((Context)localObject3, i3, localIntent2, n);
      localObject3 = this$0;
      localObject3 = ((PuppyLoveWidgetConfiguration)localObject3).getApplicationContext();
      String str2 = "alarm";
      Object localObject1 = ((Context)localObject3).getSystemService(str2);
      localObject1 = (AlarmManager)localObject1;
      int j = 3;
      long l1 = SystemClock.elapsedRealtime();
      i3 = i5 * 1000;
      long l2 = i3;
      ((AlarmManager)localObject1).setRepeating(j, l1, l2, localPendingIntent);
    }
    PuppyLoveWidgetConfiguration localPuppyLoveWidgetConfiguration1 = this$0;
    localPuppyLoveWidgetConfiguration1.finish();
  }
}

/* Location:
 * Qualified Name:     kagegames.apps.DWBeta.PuppyLoveWidgetConfiguration.1
 * Java Class Version: 1.2 (46.0)
 * JD-Core Version:    0.7.1
 */