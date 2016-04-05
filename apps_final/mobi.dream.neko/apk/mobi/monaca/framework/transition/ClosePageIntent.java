package mobi.monaca.framework.transition;

import android.content.Intent;
import android.content.IntentFilter;
import mobi.monaca.framework.MonacaApplication;
import mobi.monaca.framework.psedo.R.string;

public class ClosePageIntent
  extends Intent
{
  public static final String ACTION = "close";
  public static final String DATA_TYPE = "mobi.monaca/activity";
  
  public ClosePageIntent()
  {
    this(0);
  }
  
  public ClosePageIntent(int paramInt)
  {
    super("close");
    setType("mobi.monaca/activity");
    putExtra(MonacaApplication.getStringFromResource(R.string.level), paramInt);
  }
  
  public static IntentFilter createIntentFilter()
  {
    return IntentFilter.create("close", "mobi.monaca/activity");
  }
}

/* Location:
 * Qualified Name:     mobi.monaca.framework.transition.ClosePageIntent
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */