package kagegames.apps.DWBeta;

public class DWOwnerDogPair
{
  private DWDog dog;
  private DWOwner owner;
  
  public DWOwnerDogPair() {}
  
  public DWOwnerDogPair(DWOwner paramDWOwner, DWDog paramDWDog)
  {
    owner = paramDWOwner;
    dog = paramDWDog;
  }
  
  public DWDog getDog()
  {
    DWDog localDWDog = dog;
    return localDWDog;
  }
  
  public DWOwner getOwner()
  {
    DWOwner localDWOwner = owner;
    return localDWOwner;
  }
}

/* Location:
 * Qualified Name:     kagegames.apps.DWBeta.DWOwnerDogPair
 * Java Class Version: 1.2 (46.0)
 * JD-Core Version:    0.7.1
 */