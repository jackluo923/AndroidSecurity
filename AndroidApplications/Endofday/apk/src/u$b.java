import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

final class u$b
  extends BroadcastReceiver
{
  u$b()
  {
    this(b);
  }
  
  private u$b(byte paramByte) {}
  
  public final void onReceive(Context paramContext, Intent paramIntent)
  {
    String str1 = paramIntent.getAction();
    String str3 = "android.intent.action.USER_PRESENT";
    boolean bool1 = str1.equals(str3);
    if (bool1)
    {
      bool1 = true;
      u.a(bool1);
    }
    for (;;)
    {
      return;
      String str2 = paramIntent.getAction();
      str3 = "android.intent.action.SCREEN_OFF";
      boolean bool2 = str2.equals(str3);
      if (bool2)
      {
        bool2 = false;
        u.a(bool2);
      }
    }
  }
}

/* Location:
 * Qualified Name:     u.b
 * Java Class Version: 1.2 (46.0)
 * JD-Core Version:    0.7.1
 */