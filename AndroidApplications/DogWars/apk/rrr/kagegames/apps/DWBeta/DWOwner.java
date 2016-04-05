package kagegames.apps.DWBeta;

import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.List;

public class DWOwner
{
  static final String EXT = ".png";
  public static Long INDEX_ADRENALINE;
  public static Long INDEX_COLLAR_1;
  public static Long INDEX_COLLAR_2;
  public static Long INDEX_HARNESS;
  public static Long INDEX_PRM_FOOD;
  public static Long INDEX_RAW_MEAT;
  public static Long INDEX_REG_FOOD;
  public static Long INDEX_ROPE;
  public static Long INDEX_TAGS_1;
  public static Long INDEX_TAGS_2;
  public static Long INDEX_TAGS_3;
  public static Long INDEX_TIRE_1;
  public static Long INDEX_TIRE_2;
  public static Long INDEX_TIRE_3;
  public static Long INDEX_WHISTLE;
  private static final String NUMBER_PATTERN = "###,###";
  static final String PATH_SUB = "/dw/images/players/";
  private Float cred;
  private Integer cred_val;
  private Float currency;
  private Float expr;
  private Integer expr_val;
  private Long fight_pick;
  private String fight_ready;
  private Float heat;
  private Integer heat_val;
  private Long id;
  private List items;
  private String ownerName;
  private String path;
  private Integer playerTypeID;
  private String tag;
  
  static
  {
    long l1 = 9L;
    Long localLong1 = Long.valueOf(l1);
    INDEX_WHISTLE = localLong1;
    long l2 = 10L;
    Long localLong2 = Long.valueOf(l2);
    INDEX_ROPE = localLong2;
    long l3 = 11L;
    Long localLong3 = Long.valueOf(l3);
    INDEX_HARNESS = localLong3;
    long l4 = 13L;
    Long localLong4 = Long.valueOf(l4);
    INDEX_TIRE_1 = localLong4;
    long l5 = 14L;
    Long localLong5 = Long.valueOf(l5);
    INDEX_TIRE_2 = localLong5;
    long l6 = 15L;
    Long localLong6 = Long.valueOf(l6);
    INDEX_TIRE_3 = localLong6;
    long l7 = 20L;
    Long localLong7 = Long.valueOf(l7);
    INDEX_COLLAR_1 = localLong7;
    long l8 = 26L;
    Long localLong8 = Long.valueOf(l8);
    INDEX_COLLAR_2 = localLong8;
    long l9 = 21L;
    Long localLong9 = Long.valueOf(l9);
    INDEX_TAGS_1 = localLong9;
    long l10 = 22L;
    Long localLong10 = Long.valueOf(l10);
    INDEX_TAGS_2 = localLong10;
    long l11 = 23L;
    Long localLong11 = Long.valueOf(l11);
    INDEX_TAGS_3 = localLong11;
    long l12 = 1L;
    Long localLong12 = Long.valueOf(l12);
    INDEX_REG_FOOD = localLong12;
    long l13 = 2L;
    Long localLong13 = Long.valueOf(l13);
    INDEX_PRM_FOOD = localLong13;
    long l14 = 3L;
    Long localLong14 = Long.valueOf(l14);
    INDEX_RAW_MEAT = localLong14;
    long l15 = 25L;
    Long localLong15 = Long.valueOf(l15);
    INDEX_ADRENALINE = localLong15;
  }
  
  public DWOwner()
  {
    ArrayList localArrayList = new java/util/ArrayList;
    localArrayList.<init>();
    items = localArrayList;
  }
  
  public boolean CanBiteTrain()
  {
    int i = 0;
    for (;;)
    {
      List localList = items;
      int j = localList.size();
      if (i >= j) {}
      int m;
      for (j = 0;; m = 1)
      {
        return j;
        Object localObject1 = items;
        localObject1 = ((List)localObject1).get(i);
        localObject1 = (DWStoreItem)localObject1;
        localObject1 = ((DWStoreItem)localObject1).getID();
        Long localLong = INDEX_ROPE;
        int k = ((Long)localObject1).compareTo(localLong);
        if (k != 0) {
          break;
        }
        Object localObject2 = items;
        localObject2 = ((List)localObject2).get(i);
        localObject2 = (DWStoreItem)localObject2;
        m = ((DWStoreItem)localObject2).getQuantity();
        if (m <= 0) {
          break;
        }
      }
      i += 1;
    }
  }
  
  public boolean CanDragTrain()
  {
    int i = 0;
    for (;;)
    {
      List localList = items;
      int j = localList.size();
      if (i >= j) {}
      int m;
      for (j = 0;; m = 1)
      {
        return j;
        Object localObject1 = items;
        localObject1 = ((List)localObject1).get(i);
        localObject1 = (DWStoreItem)localObject1;
        localObject1 = ((DWStoreItem)localObject1).getID();
        Long localLong = INDEX_HARNESS;
        int k = ((Long)localObject1).compareTo(localLong);
        if (k != 0) {
          break;
        }
        Object localObject2 = items;
        localObject2 = ((List)localObject2).get(i);
        localObject2 = (DWStoreItem)localObject2;
        m = ((DWStoreItem)localObject2).getQuantity();
        if (m <= 0) {
          break;
        }
        m = getDragTireResourceID();
        if (m == 0) {
          break;
        }
      }
      i += 1;
    }
  }
  
  public boolean CanRunTrain()
  {
    boolean bool = false;
    return bool;
  }
  
  public boolean HasAdrenaline()
  {
    int n = 1;
    List localList = items;
    int j = localList.size();
    int i = j - n;
    for (;;)
    {
      if (i < 0) {}
      int m;
      for (j = 0;; m = n)
      {
        return j;
        Object localObject1 = items;
        localObject1 = ((List)localObject1).get(i);
        localObject1 = (DWStoreItem)localObject1;
        localObject1 = ((DWStoreItem)localObject1).getID();
        Long localLong = INDEX_ADRENALINE;
        int k = ((Long)localObject1).compareTo(localLong);
        if (k != 0) {
          break;
        }
        Object localObject2 = items;
        localObject2 = ((List)localObject2).get(i);
        localObject2 = (DWStoreItem)localObject2;
        m = ((DWStoreItem)localObject2).getQuantity();
        if (m <= 0) {
          break;
        }
      }
      i += -1;
    }
  }
  
  public boolean IsReadyToFight()
  {
    String str3 = 0;
    String str1 = fight_ready;
    if (str1 == null) {
      str1 = str3;
    }
    for (;;)
    {
      return str1;
      str1 = fight_ready;
      String str2 = "Y";
      int i = str1.compareTo(str2);
      if (i == 0) {
        i = 1;
      } else {
        i = str3;
      }
    }
  }
  
  public boolean IsWaitingForResponse()
  {
    Long localLong3 = 0;
    Long localLong1 = fight_pick;
    if (localLong1 == null) {
      localLong1 = localLong3;
    }
    for (;;)
    {
      return localLong1;
      localLong1 = fight_pick;
      long l = 0L;
      Long localLong2 = Long.valueOf(l);
      int i = localLong1.compareTo(localLong2);
      if (i == 0) {
        i = localLong3;
      } else {
        i = 1;
      }
    }
  }
  
  public String getCashStr()
  {
    Object localObject = currency;
    if (localObject == null) {}
    DecimalFormat localDecimalFormat;
    for (localObject = "";; localObject = localDecimalFormat.format(localObject))
    {
      return (String)localObject;
      localDecimalFormat = new java/text/DecimalFormat;
      localObject = "###,###";
      localDecimalFormat.<init>((String)localObject);
      localObject = currency;
    }
  }
  
  public int getCollarResourceID()
  {
    int j = 2130837534;
    List localList = items;
    int k = localList.size();
    int i3 = 1;
    int i = k - i3;
    for (;;)
    {
      if (i < 0) {
        return j;
      }
      Object localObject1 = items;
      localObject1 = ((List)localObject1).get(i);
      localObject1 = (DWStoreItem)localObject1;
      localObject1 = ((DWStoreItem)localObject1).getID();
      Long localLong = INDEX_COLLAR_2;
      int m = ((Long)localObject1).compareTo(localLong);
      if (m == 0)
      {
        Object localObject2 = items;
        localObject2 = ((List)localObject2).get(i);
        localObject2 = (DWStoreItem)localObject2;
        int n = ((DWStoreItem)localObject2).getQuantity();
        if (n > 0) {
          j = 2130837513;
        }
      }
      Object localObject3 = items;
      localObject3 = ((List)localObject3).get(i);
      localObject3 = (DWStoreItem)localObject3;
      localObject3 = ((DWStoreItem)localObject3).getID();
      localLong = INDEX_COLLAR_1;
      int i1 = ((Long)localObject3).compareTo(localLong);
      if (i1 == 0)
      {
        Object localObject4 = items;
        localObject4 = ((List)localObject4).get(i);
        localObject4 = (DWStoreItem)localObject4;
        int i2 = ((DWStoreItem)localObject4).getQuantity();
        if (i2 > 0)
        {
          i2 = 2130837513;
          if (j != i2) {
            j = 2130837514;
          }
        }
      }
      i += -1;
    }
  }
  
  public String getCredStr()
  {
    Object localObject = cred_val;
    if (localObject == null) {}
    for (localObject = "";; localObject = ((Integer)localObject).toString())
    {
      return (String)localObject;
      localObject = cred_val;
    }
  }
  
  public int getDragTireResourceID()
  {
    List localList = items;
    int j = localList.size();
    int i4 = 1;
    int i = j - i4;
    for (;;)
    {
      if (i < 0) {
        j = 0;
      }
      for (;;)
      {
        return j;
        Object localObject1 = items;
        localObject1 = ((List)localObject1).get(i);
        localObject1 = (DWStoreItem)localObject1;
        localObject1 = ((DWStoreItem)localObject1).getID();
        Long localLong = INDEX_TIRE_3;
        int k = ((Long)localObject1).compareTo(localLong);
        if (k == 0)
        {
          Object localObject2 = items;
          localObject2 = ((List)localObject2).get(i);
          localObject2 = (DWStoreItem)localObject2;
          int m = ((DWStoreItem)localObject2).getQuantity();
          if (m > 0)
          {
            m = 2130837602;
            continue;
          }
        }
        Object localObject3 = items;
        localObject3 = ((List)localObject3).get(i);
        localObject3 = (DWStoreItem)localObject3;
        localObject3 = ((DWStoreItem)localObject3).getID();
        localLong = INDEX_TIRE_2;
        int n = ((Long)localObject3).compareTo(localLong);
        if (n == 0)
        {
          Object localObject4 = items;
          localObject4 = ((List)localObject4).get(i);
          localObject4 = (DWStoreItem)localObject4;
          int i1 = ((DWStoreItem)localObject4).getQuantity();
          if (i1 > 0)
          {
            i1 = 2130837601;
            continue;
          }
        }
        Object localObject5 = items;
        localObject5 = ((List)localObject5).get(i);
        localObject5 = (DWStoreItem)localObject5;
        localObject5 = ((DWStoreItem)localObject5).getID();
        localLong = INDEX_TIRE_1;
        int i2 = ((Long)localObject5).compareTo(localLong);
        if (i2 != 0) {
          break;
        }
        Object localObject6 = items;
        localObject6 = ((List)localObject6).get(i);
        localObject6 = (DWStoreItem)localObject6;
        int i3 = ((DWStoreItem)localObject6).getQuantity();
        if (i3 <= 0) {
          break;
        }
        i3 = 2130837600;
      }
      i += -1;
    }
  }
  
  public String getExpStr()
  {
    Object localObject = expr_val;
    if (localObject == null) {}
    for (localObject = "";; localObject = ((Integer)localObject).toString())
    {
      return (String)localObject;
      localObject = expr_val;
    }
  }
  
  public String getFightIDStr()
  {
    Object localObject = fight_pick;
    if (localObject == null) {}
    for (localObject = "0";; localObject = ((Long)localObject).toString())
    {
      return (String)localObject;
      localObject = fight_pick;
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
    Integer localInteger2 = 2130837586;
    Integer localInteger1 = playerTypeID;
    if (localInteger1 == null) {
      localInteger1 = localInteger2;
    }
    for (;;)
    {
      return localInteger1;
      localInteger1 = playerTypeID;
      int i = localInteger1.intValue();
      switch (i)
      {
      default: 
        i = localInteger2;
        break;
      case 1: 
        i = 2130837546;
        break;
      case 2: 
        i = 2130837576;
        break;
      case 3: 
        i = 2130837543;
        break;
      case 4: 
        i = 2130837509;
        break;
      case 5: 
        i = 2130837539;
        break;
      case 6: 
        i = 2130837615;
        break;
      case 7: 
        i = 2130837589;
      }
    }
  }
  
  public String getName()
  {
    String str = ownerName;
    if (str != null) {}
    for (str = ownerName;; str = "") {
      return str;
    }
  }
  
  public int getQuantityOf(Long paramLong)
  {
    List localList1 = items;
    int j = localList1.size();
    int n = 1;
    int i = j - n;
    for (;;)
    {
      if (i < 0) {}
      int m;
      for (j = 0;; m = getQuantity())
      {
        return j;
        Object localObject = items;
        localObject = ((List)localObject).get(i);
        localObject = (DWStoreItem)localObject;
        localObject = ((DWStoreItem)localObject).getID();
        int k = ((Long)localObject).compareTo(paramLong);
        if (k != 0) {
          break;
        }
        List localList2 = items;
        this = localList2.get(i);
        this = (DWStoreItem)this;
      }
      i += -1;
    }
  }
  
  public String getTag()
  {
    String str = tag;
    if (str == null) {}
    for (str = "";; str = tag) {
      return str;
    }
  }
  
  public int getTagsResourceID()
  {
    int i6 = 2130837515;
    int j = 2130837534;
    List localList = items;
    int k = localList.size();
    int i5 = 1;
    int i = k - i5;
    for (;;)
    {
      if (i < 0) {
        return j;
      }
      Object localObject1 = items;
      localObject1 = ((List)localObject1).get(i);
      localObject1 = (DWStoreItem)localObject1;
      localObject1 = ((DWStoreItem)localObject1).getID();
      Long localLong = INDEX_TAGS_3;
      int m = ((Long)localObject1).compareTo(localLong);
      if (m == 0)
      {
        Object localObject2 = items;
        localObject2 = ((List)localObject2).get(i);
        localObject2 = (DWStoreItem)localObject2;
        int n = ((DWStoreItem)localObject2).getQuantity();
        if (n > 0) {
          j = 2130837515;
        }
      }
      Object localObject3 = items;
      localObject3 = ((List)localObject3).get(i);
      localObject3 = (DWStoreItem)localObject3;
      localObject3 = ((DWStoreItem)localObject3).getID();
      localLong = INDEX_TAGS_2;
      int i1 = ((Long)localObject3).compareTo(localLong);
      if (i1 == 0)
      {
        Object localObject4 = items;
        localObject4 = ((List)localObject4).get(i);
        localObject4 = (DWStoreItem)localObject4;
        int i2 = ((DWStoreItem)localObject4).getQuantity();
        if ((i2 > 0) && (j != i6)) {
          j = 2130837517;
        }
      }
      Object localObject5 = items;
      localObject5 = ((List)localObject5).get(i);
      localObject5 = (DWStoreItem)localObject5;
      localObject5 = ((DWStoreItem)localObject5).getID();
      localLong = INDEX_TAGS_1;
      int i3 = ((Long)localObject5).compareTo(localLong);
      if (i3 == 0)
      {
        Object localObject6 = items;
        localObject6 = ((List)localObject6).get(i);
        localObject6 = (DWStoreItem)localObject6;
        int i4 = ((DWStoreItem)localObject6).getQuantity();
        if ((i4 > 0) && (j != i6))
        {
          i4 = 2130837517;
          if (j != i4) {
            j = 2130837516;
          }
        }
      }
      i += -1;
    }
  }
  
  public void setID(long paramLong)
  {
    Long localLong = Long.valueOf(paramLong);
    id = localLong;
  }
}

/* Location:
 * Qualified Name:     kagegames.apps.DWBeta.DWOwner
 * Java Class Version: 1.2 (46.0)
 * JD-Core Version:    0.7.1
 */