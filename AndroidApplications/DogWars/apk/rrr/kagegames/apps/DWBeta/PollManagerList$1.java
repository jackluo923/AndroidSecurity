package kagegames.apps.DWBeta;

import android.os.Handler;

class PollManagerList$1
  implements Runnable
{
  final PollManagerList this$0;
  
  PollManagerList$1(PollManagerList paramPollManagerList) {}
  
  public void run()
  {
    Object localObject1 = this$0;
    localObject1 = PollManagerList.access$0((PollManagerList)localObject1);
    Object localObject2 = this$0;
    localObject2 = PollManagerList.access$1((PollManagerList)localObject2);
    PollManagerList localPollManagerList = this$0;
    long l = PollManagerList.access$2(localPollManagerList);
    ((Handler)localObject1).postDelayed((Runnable)localObject2, l);
  }
}

/* Location:
 * Qualified Name:     kagegames.apps.DWBeta.PollManagerList.1
 * Java Class Version: 1.2 (46.0)
 * JD-Core Version:    0.7.1
 */