package kagegames.apps.DWBeta;

import java.util.List;

public class JsonCommandObject
{
  private DWBust bust;
  private DWDog dog;
  private List dogs;
  private int error_code;
  private String error_message;
  private DWFight fight;
  private List fight_list;
  private List fight_request;
  private DWFightResult fight_result;
  private boolean force_update;
  private List items;
  private DWKill kill;
  private DWDog new_dog;
  private DWOwner new_owner;
  private DWOwner owner;
  private List players;
  private List sb_cash_list;
  private List sb_wins_list;
  private List shout_rows;
  private DWSystemMsg system_message;
  
  public JsonCommandObject()
  {
    boolean bool = true;
    force_update = bool;
  }
  
  public boolean processJson()
  {
    int i = error_code;
    Object localObject4;
    if (i < 0)
    {
      Object localObject1 = DWApplication.getInstance();
      localObject1 = ((DWApplication)localObject1).getDWGameState();
      int m = error_code;
      ((DWGameState)localObject1).setErrorCode(m);
      localObject1 = error_message;
      int j = ((String)localObject1).length();
      if (j > 0)
      {
        Object localObject2 = DWApplication.getInstance();
        localObject2 = ((DWApplication)localObject2).getDWGameState();
        localObject4 = error_message;
        ((DWGameState)localObject2).setErrorMessage((String)localObject4);
      }
    }
    int k;
    for (boolean bool = false;; k = 1)
    {
      return bool;
      Object localObject3 = DWApplication.getInstance();
      localObject3 = ((DWApplication)localObject3).getDWGameState();
      localObject4 = "unknown error on server";
      ((DWGameState)localObject3).setErrorMessage((String)localObject4);
      break;
      localObject3 = DWApplication.getInstance();
      localObject3 = ((DWApplication)localObject3).getDWGameState();
      localObject4 = system_message;
      ((DWGameState)localObject3).setSystemMsg((DWSystemMsg)localObject4);
      localObject3 = DWApplication.getInstance();
      localObject3 = ((DWApplication)localObject3).getDWGameState();
      localObject4 = bust;
      ((DWGameState)localObject3).SetBust((DWBust)localObject4);
      localObject3 = DWApplication.getInstance();
      localObject3 = ((DWApplication)localObject3).getDWGameState();
      localObject4 = kill;
      ((DWGameState)localObject3).SetKill((DWKill)localObject4);
      localObject3 = DWApplication.getInstance();
      localObject3 = ((DWApplication)localObject3).getDWGameState();
      localObject4 = fight_request;
      ((DWGameState)localObject3).setFightRequest((List)localObject4);
      localObject3 = DWApplication.getInstance();
      localObject3 = ((DWApplication)localObject3).getDWGameState();
      localObject4 = fight_result;
      ((DWGameState)localObject3).setCurFightResult((DWFightResult)localObject4);
      localObject3 = DWApplication.getInstance();
      localObject3 = ((DWApplication)localObject3).getDWGameState();
      localObject4 = fight;
      ((DWGameState)localObject3).setCurFight((DWFight)localObject4);
      localObject3 = owner;
      if (localObject3 != null)
      {
        localObject3 = DWApplication.getInstance();
        localObject3 = ((DWApplication)localObject3).getDWGameState();
        localObject4 = owner;
        ((DWGameState)localObject3).setCurOwner((DWOwner)localObject4);
      }
      localObject3 = dog;
      if (localObject3 != null)
      {
        localObject3 = DWApplication.getInstance();
        localObject3 = ((DWApplication)localObject3).getDWGameState();
        localObject4 = dog;
        ((DWGameState)localObject3).setCurDog((DWDog)localObject4);
      }
      localObject3 = items;
      if (localObject3 != null)
      {
        localObject3 = DWApplication.getInstance();
        localObject3 = ((DWApplication)localObject3).getDWGameState();
        localObject4 = items;
        ((DWGameState)localObject3).setStoreItemObjectList((List)localObject4);
      }
      localObject3 = fight_list;
      if (localObject3 != null)
      {
        localObject3 = DWApplication.getInstance();
        localObject3 = ((DWApplication)localObject3).getDWGameState();
        localObject4 = fight_list;
        ((DWGameState)localObject3).setFightList((List)localObject4);
      }
      localObject3 = shout_rows;
      if (localObject3 != null)
      {
        localObject3 = DWApplication.getInstance();
        localObject3 = ((DWApplication)localObject3).getDWGameState();
        localObject4 = shout_rows;
        ((DWGameState)localObject3).setShoutboxList((List)localObject4);
      }
      localObject3 = sb_wins_list;
      if (localObject3 != null)
      {
        localObject3 = DWApplication.getInstance();
        localObject3 = ((DWApplication)localObject3).getDWGameState();
        localObject4 = sb_wins_list;
        ((DWGameState)localObject3).setWinsList((List)localObject4);
      }
      localObject3 = sb_cash_list;
      if (localObject3 != null)
      {
        localObject3 = DWApplication.getInstance();
        localObject3 = ((DWApplication)localObject3).getDWGameState();
        localObject4 = sb_wins_list;
        ((DWGameState)localObject3).setCashList((List)localObject4);
      }
      localObject3 = players;
      if (localObject3 != null)
      {
        localObject3 = DWApplication.getInstance();
        localObject3 = ((DWApplication)localObject3).getDWGameState();
        localObject4 = players;
        ((DWGameState)localObject3).setNewOwnerObjectList((List)localObject4);
      }
      localObject3 = dogs;
      if (localObject3 != null)
      {
        localObject3 = DWApplication.getInstance();
        localObject3 = ((DWApplication)localObject3).getDWGameState();
        localObject4 = dogs;
        ((DWGameState)localObject3).setNewDogObjectList((List)localObject4);
      }
      localObject3 = new_owner;
      if (localObject3 != null)
      {
        localObject3 = DWApplication.getInstance();
        localObject3 = ((DWApplication)localObject3).getDWGameState();
        localObject4 = new_owner;
        ((DWGameState)localObject3).setCurOwner((DWOwner)localObject4);
      }
      localObject3 = new_dog;
      if (localObject3 != null)
      {
        localObject3 = DWApplication.getInstance();
        localObject3 = ((DWApplication)localObject3).getDWGameState();
        localObject4 = new_dog;
        ((DWGameState)localObject3).setCurDog((DWDog)localObject4);
      }
    }
  }
}

/* Location:
 * Qualified Name:     kagegames.apps.DWBeta.JsonCommandObject
 * Java Class Version: 1.2 (46.0)
 * JD-Core Version:    0.7.1
 */