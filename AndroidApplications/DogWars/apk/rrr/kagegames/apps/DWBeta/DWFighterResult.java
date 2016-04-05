package kagegames.apps.DWBeta;

public class DWFighterResult
{
  private Long id;
  private String message;
  private String ownerName;
  private Float value;
  
  public Long getID()
  {
    Long localLong = id;
    return localLong;
  }
  
  public String getMessage()
  {
    String str = message;
    return str;
  }
  
  public String getOwnerName()
  {
    String str = ownerName;
    return str;
  }
  
  public String getWinningsStr()
  {
    Object localObject = value;
    localObject = ((Float)localObject).toString();
    return (String)localObject;
  }
}

/* Location:
 * Qualified Name:     kagegames.apps.DWBeta.DWFighterResult
 * Java Class Version: 1.2 (46.0)
 * JD-Core Version:    0.7.1
 */