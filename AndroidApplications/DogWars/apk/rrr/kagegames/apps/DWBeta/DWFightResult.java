package kagegames.apps.DWBeta;

public class DWFightResult
{
  private DWFighterResult loser;
  private DWFighterResult winner;
  
  public boolean didWin()
  {
    Object localObject1 = DWApplication.getInstance();
    localObject1 = ((DWApplication)localObject1).getDWGameState();
    localObject1 = ((DWGameState)localObject1).getCurOwner();
    localObject1 = ((DWOwner)localObject1).getID();
    Object localObject2 = winner;
    localObject2 = ((DWFighterResult)localObject2).getID();
    boolean bool = ((Long)localObject1).equals(localObject2);
    if (bool) {}
    for (bool = true;; bool = false) {
      return bool;
    }
  }
  
  public DWFighterResult getMyResult()
  {
    Object localObject1 = DWApplication.getInstance();
    localObject1 = ((DWApplication)localObject1).getDWGameState();
    localObject1 = ((DWGameState)localObject1).getCurOwner();
    localObject1 = ((DWOwner)localObject1).getID();
    Object localObject2 = winner;
    localObject2 = ((DWFighterResult)localObject2).getID();
    boolean bool = ((Long)localObject1).equals(localObject2);
    if (bool) {}
    for (DWFighterResult localDWFighterResult = winner;; localDWFighterResult = loser) {
      return localDWFighterResult;
    }
  }
}

/* Location:
 * Qualified Name:     kagegames.apps.DWBeta.DWFightResult
 * Java Class Version: 1.2 (46.0)
 * JD-Core Version:    0.7.1
 */