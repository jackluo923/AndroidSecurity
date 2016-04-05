package kagegames.apps.DWBeta;

public class DWFight
{
  private DWDog dog;
  private Integer health_val;
  private String opp_DogName;
  private String opp_OwnerName;
  private DWOwner owner;
  private Integer turn;
  
  public boolean IsMyTurn()
  {
    int k = 1;
    Integer localInteger = turn;
    int i = localInteger.intValue();
    if (i == k) {}
    int j;
    for (i = k;; j = 0) {
      return i;
    }
  }
  
  public DWDog getOpponentDog()
  {
    DWDog localDWDog = dog;
    return localDWDog;
  }
  
  public String getOpponentDogName()
  {
    String str = opp_DogName;
    return str;
  }
  
  public int getOpponentHealth()
  {
    Integer localInteger = health_val;
    if (localInteger != null) {
      localInteger = health_val;
    }
    for (int i = localInteger.intValue();; i = 0) {
      return i;
    }
  }
  
  public DWOwner getOpponentOwner()
  {
    DWOwner localDWOwner = owner;
    return localDWOwner;
  }
}

/* Location:
 * Qualified Name:     kagegames.apps.DWBeta.DWFight
 * Java Class Version: 1.2 (46.0)
 * JD-Core Version:    0.7.1
 */