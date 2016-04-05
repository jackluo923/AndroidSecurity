package kagegames.apps.DWBeta;

import android.os.Handler;

class PollManager$1
  implements Runnable
{
  final PollManager this$0;
  
  PollManager$1(PollManager paramPollManager) {}
  
  public void run()
  {
    Object localObject1 = this$0;
    localObject1 = PollManager.access$0((PollManager)localObject1);
    Object localObject2 = this$0;
    localObject2 = PollManager.access$1((PollManager)localObject2);
    PollManager localPollManager = this$0;
    long l = PollManager.access$2(localPollManager);
    ((Handler)localObject1).postDelayed((Runnable)localObject2, l);
  }
}

/* Location:
 * Qualified Name:     kagegames.apps.DWBeta.PollManager.1
 * Java Class Version: 1.2 (46.0)
 * JD-Core Version:    0.7.1
 */