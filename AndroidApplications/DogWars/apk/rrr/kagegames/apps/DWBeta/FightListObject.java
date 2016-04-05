package kagegames.apps.DWBeta;

import java.util.List;

public class FightListObject
{
  private List dog;
  private List owner;
  
  public List<DWDog> getDogList()
  {
    List localList = dog;
    return localList;
  }
  
  public List<DWOwner> getOwnerList()
  {
    List localList = owner;
    return localList;
  }
}

/* Location:
 * Qualified Name:     kagegames.apps.DWBeta.FightListObject
 * Java Class Version: 1.2 (46.0)
 * JD-Core Version:    0.7.1
 */