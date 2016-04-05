package kagegames.apps.DWBeta;

import android.os.Handler;

class PollManager$2
  implements Runnable
{
  final PollManager this$0;
  
  PollManager$2(PollManager paramPollManager) {}
  
  public void run()
  {
    Object localObject = this$0;
    PollManager.access$3((PollManager)localObject);
    localObject = this$0;
    localObject = PollManager.access$0((PollManager)localObject);
    PollManager localPollManager = this$0;
    long l = PollManager.access$2(localPollManager);
    ((Handler)localObject).postDelayed(this, l);
  }
}

/* Location:
 * Qualified Name:     kagegames.apps.DWBeta.PollManager.2
 * Java Class Version: 1.2 (46.0)
 * JD-Core Version:    0.7.1
 */