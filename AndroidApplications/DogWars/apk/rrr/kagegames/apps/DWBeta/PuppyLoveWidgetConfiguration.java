package kagegames.apps.DWBeta;

import android.app.Activity;
import android.content.Intent;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.widget.Button;
import android.widget.EditText;

public class PuppyLoveWidgetConfiguration
  extends Activity
{
  public static final String PREFS_NAME = "PuppyLoveWidgetPrefs";
  private static final int PREFS_UPDATE_RATE_DEFAULT = 5;
  public static final String PREFS_UPDATE_RATE_FIELD_PATTERN = "UpdateRate-%d";
  private int appWidgetId;
  
  public PuppyLoveWidgetConfiguration()
  {
    int i = 0;
    appWidgetId = i;
  }
  
  public void onCreate(Bundle paramBundle)
  {
    int i4 = 0;
    super.onCreate(paramBundle);
    Intent localIntent2 = getIntent();
    Bundle localBundle = localIntent2.getExtras();
    int i1;
    if (localBundle != null)
    {
      String str1 = "appWidgetId";
      int i = localBundle.getInt(str1, i4);
      appWidgetId = i;
      Intent localIntent1 = new android/content/Intent;
      localIntent1.<init>();
      String str2 = "appWidgetId";
      i1 = appWidgetId;
      localIntent1.putExtra(str2, i1);
      setResult(i4, localIntent1);
    }
    for (;;)
    {
      int j = 2130903060;
      setContentView(j);
      String str3 = "PuppyLoveWidgetPrefs";
      SharedPreferences localSharedPreferences = getSharedPreferences(str3, i4);
      int k = 2131099750;
      Object localObject2 = findViewById(k);
      localObject2 = (EditText)localObject2;
      String str4 = "UpdateRate-%d";
      i1 = 1;
      Object[] arrayOfObject = new Object[i1];
      int i3 = appWidgetId;
      Integer localInteger = Integer.valueOf(i3);
      arrayOfObject[i4] = localInteger;
      str4 = String.format(str4, arrayOfObject);
      int i2 = 5;
      int m = localSharedPreferences.getInt(str4, i2);
      String str5 = String.valueOf(m);
      ((EditText)localObject2).setText(str5);
      int n = 2131099751;
      Object localObject1 = findViewById(n);
      localObject1 = (Button)localObject1;
      PuppyLoveWidgetConfiguration.1 local1 = new kagegames/apps/DWBeta/PuppyLoveWidgetConfiguration$1;
      local1.<init>(this, (EditText)localObject2, localSharedPreferences);
      ((Button)localObject1).setOnClickListener(local1);
      return;
      finish();
    }
  }
}

/* Location:
 * Qualified Name:     kagegames.apps.DWBeta.PuppyLoveWidgetConfiguration
 * Java Class Version: 1.2 (46.0)
 * JD-Core Version:    0.7.1
 */