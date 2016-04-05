package kagegames.apps.DWBeta;

import android.content.res.Resources;
import java.text.DecimalFormat;

public class StoreItemObject
{
  private static final String PRICE_PATTERN = "$###,###";
  private Long ID;
  private String allow_multiple;
  private boolean bIsJoseItem;
  private String category;
  private String description;
  private String path;
  private int price;
  private int resourceID;
  private String title;
  
  public String getDescription()
  {
    String str = description;
    return str;
  }
  
  public Long getID()
  {
    Long localLong = ID;
    return localLong;
  }
  
  public String getIDStr()
  {
    Object localObject = ID;
    localObject = ((Long)localObject).toString();
    return (String)localObject;
  }
  
  public int getPetalResourceID()
  {
    String str3 = "/dw/images/items/";
    String str1 = ".png";
    Object localObject1 = path;
    String str4 = "/dw/images/items/";
    int j = str4.length();
    String str5 = path;
    int k = str5.length();
    String str7 = ".png";
    int m = str7.length();
    k -= m;
    String str2 = ((String)localObject1).substring(j, k);
    localObject1 = DWApplication.getAppResources();
    Object localObject2 = new java/lang/StringBuilder;
    String str6 = "drawable/";
    ((StringBuilder)localObject2).<init>(str6);
    localObject2 = ((StringBuilder)localObject2).append(str2);
    localObject2 = ((StringBuilder)localObject2).toString();
    str6 = null;
    Object localObject3 = DWApplication.getInstance();
    localObject3 = ((DWApplication)localObject3).getPackageName();
    int i = ((Resources)localObject1).getIdentifier((String)localObject2, str6, (String)localObject3);
    return i;
  }
  
  public String getPrice()
  {
    DecimalFormat localDecimalFormat = new java/text/DecimalFormat;
    String str1 = "$###,###";
    localDecimalFormat.<init>(str1);
    int i = price;
    long l = i;
    String str2 = localDecimalFormat.format(l);
    return str2;
  }
  
  public String getTitle()
  {
    String str = title;
    return str;
  }
  
  public boolean isAllowedMultiple()
  {
    String str1 = allow_multiple;
    String str2 = "Y";
    int i = str1.compareTo(str2);
    if (i == 0) {}
    int j;
    for (i = 1;; j = 0) {
      return i;
    }
  }
}

/* Location:
 * Qualified Name:     kagegames.apps.DWBeta.StoreItemObject
 * Java Class Version: 1.2 (46.0)
 * JD-Core Version:    0.7.1
 */