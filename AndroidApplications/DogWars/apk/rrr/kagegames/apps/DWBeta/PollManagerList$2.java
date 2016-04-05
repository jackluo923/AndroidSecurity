package kagegames.apps.DWBeta;

import android.os.Handler;

class PollManagerList$2
  implements Runnable
{
  final PollManagerList this$0;
  
  PollManagerList$2(PollManagerList paramPollManagerList) {}
  
  public void run()
  {
    Object localObject = this$0;
    PollManagerList.access$3((PollManagerList)localObject);
    localObject = this$0;
    localObject = PollManagerList.access$0((PollManagerList)localObject);
    PollManagerList localPollManagerList = this$0;
    long l = PollManagerList.access$2(localPollManagerList);
    ((Handler)localObject).postDelayed(this, l);
  }
}

/* Location:
 * Qualified Name:     kagegames.apps.DWBeta.PollManagerList.2
 * Java Class Version: 1.2 (46.0)
 * JD-Core Version:    0.7.1
 */