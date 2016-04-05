package kagegames.apps.DWBeta;

public class DWDog
{
  private Float aggression;
  private Integer aggression_val;
  private Float brains;
  private Integer brains_val;
  private String dogName;
  private String dogSex;
  private Integer dogTypeID;
  private Float happiness;
  private Float health;
  private Integer health_val;
  private Float hunger;
  private Integer hunger_val;
  private Long id;
  private Integer losses;
  private String path;
  private Float strength;
  private Integer strength_val;
  private Float water;
  private Integer water_val;
  private Integer wins;
  
  public boolean CanFight()
  {
    Float localFloat2 = 0;
    Float localFloat1 = happiness;
    if (localFloat1 == null) {
      localFloat1 = localFloat2;
    }
    for (;;)
    {
      return localFloat1;
      localFloat1 = happiness;
      float f1 = localFloat1.floatValue();
      float f2 = 10.0F;
      boolean bool1 = f1 < f2;
      if (!bool1)
      {
        Integer localInteger = health_val;
        int i = localInteger.intValue();
        long l1 = i;
        long l2 = 15L;
        bool2 = l1 < l2;
        if (bool2)
        {
          bool2 = true;
          continue;
        }
      }
      boolean bool2 = localFloat2;
    }
  }
  
  public int getAggression()
  {
    Integer localInteger = aggression_val;
    if (localInteger != null) {
      localInteger = aggression_val;
    }
    for (int i = localInteger.intValue();; i = 0) {
      return i;
    }
  }
  
  public String getFoodStr()
  {
    Object localObject = hunger_val;
    if (localObject != null) {
      localObject = hunger_val;
    }
    for (localObject = ((Integer)localObject).toString();; localObject = "-") {
      return (String)localObject;
    }
  }
  
  public int getHealth()
  {
    Integer localInteger = health_val;
    if (localInteger != null) {
      localInteger = health_val;
    }
    for (int i = localInteger.intValue();; i = 0) {
      return i;
    }
  }
  
  public Long getID()
  {
    Long localLong = id;
    return localLong;
  }
  
  public String getIDStr()
  {
    Object localObject = id;
    localObject = ((Long)localObject).toString();
    return (String)localObject;
  }
  
  public int getIconResourceID()
  {
    Integer localInteger2 = 2130837531;
    Integer localInteger1 = dogTypeID;
    if (localInteger1 == null) {
      localInteger1 = localInteger2;
    }
    for (;;)
    {
      return localInteger1;
      localInteger1 = dogTypeID;
      int i = localInteger1.intValue();
      switch (i)
      {
      default: 
        i = localInteger2;
        break;
      case 1: 
        i = 2130837507;
        break;
      case 2: 
        i = 2130837522;
        break;
      case 3: 
        i = 2130837584;
        break;
      case 4: 
        i = 2130837520;
        break;
      case 5: 
        i = 2130837518;
      }
    }
  }
  
  public String getName()
  {
    String str = dogName;
    if (str != null) {}
    for (str = dogName;; str = "") {
      return str;
    }
  }
  
  public String getPath()
  {
    String str = path;
    return str;
  }
  
  public int getStrength()
  {
    Integer localInteger = strength_val;
    if (localInteger != null) {
      localInteger = strength_val;
    }
    for (int i = localInteger.intValue();; i = 0) {
      return i;
    }
  }
  
  public String getWaterStr()
  {
    Object localObject = water_val;
    if (localObject != null) {
      localObject = water_val;
    }
    for (localObject = ((Integer)localObject).toString();; localObject = "-") {
      return (String)localObject;
    }
  }
  
  public String getWinLossStr()
  {
    Object localObject1 = wins;
    if (localObject1 != null)
    {
      localObject1 = losses;
      if (localObject1 != null)
      {
        localObject1 = new java/lang/StringBuilder;
        Object localObject2 = wins;
        localObject2 = ((Integer)localObject2).toString();
        localObject2 = String.valueOf(localObject2);
        ((StringBuilder)localObject1).<init>((String)localObject2);
        localObject2 = "/";
        localObject1 = ((StringBuilder)localObject1).append((String)localObject2);
        localObject2 = losses;
        localObject2 = ((Integer)localObject2).toString();
        localObject1 = ((StringBuilder)localObject1).append((String)localObject2);
      }
    }
    for (localObject1 = ((StringBuilder)localObject1).toString();; localObject1 = "-/-") {
      return (String)localObject1;
    }
  }
  
  public void setID(long paramLong)
  {
    Long localLong = Long.valueOf(paramLong);
    id = localLong;
  }
}

/* Location:
 * Qualified Name:     kagegames.apps.DWBeta.DWDog
 * Java Class Version: 1.2 (46.0)
 * JD-Core Version:    0.7.1
 */