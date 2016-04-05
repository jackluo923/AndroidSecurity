package mobi.monaca.framework;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import java.util.List;
import mobi.monaca.utils.gcm.GCMPushDataset;

public class MonacaNotifActivity
  extends Activity
{
  public static final String ACTION_RECEIVED_PUSH = UserIdentifier.identifier[0];
  public static final String KEY_PUSHED_PROJECT_ID = UserIdentifier.identifier[1];
  public static final String KEY_RUNS_PROJECT_AT_ONCE = UserIdentifier.identifier[2];
  
  private void process(Intent paramIntent)
  {
    paramIntent = (GCMPushDataset)paramIntent.getExtras().getSerializable("get_pushdata_key");
    if (paramIntent == null)
    {
      finish();
      return;
    }
    Object localObject = (MonacaApplication)getApplication();
    if (MonacaApplication.getPages().size() == 0)
    {
      localObject = new Intent(this, MonacaSScreenActivity.class);
      ((Intent)localObject).putExtra("get_pushdata_key", paramIntent);
      startActivity((Intent)localObject);
    }
    for (;;)
    {
      finish();
      return;
      localObject = new Intent(ACTION_RECEIVED_PUSH);
      ((Intent)localObject).putExtra("get_pushdata_key", paramIntent);
      sendBroadcast((Intent)localObject);
    }
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    process(getIntent());
  }
  
  protected void onNewIntent(Intent paramIntent)
  {
    process(paramIntent);
  }
}

/* Location:
 * Qualified Name:     mobi.monaca.framework.MonacaNotifActivity
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */