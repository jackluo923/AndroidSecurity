package kagegames.apps.DWBeta;

import android.content.res.Resources;
import android.graphics.Bitmap;
import android.util.Log;

public class NewOwnerObject
{
  private Integer ID;
  private String description;
  public String email;
  private Bitmap mIcon;
  private Bitmap mPetal;
  private int money;
  public String name;
  private String path;
  private String storyboard1;
  private String storyboard2;
  private String storyboard3;
  private String storypic1;
  private String storypic2;
  private String storypic3;
  private String title;
  
  public NewOwnerObject()
  {
    String str = "";
    email = str;
    mIcon = localBitmap;
    mPetal = localBitmap;
  }
  
  public String getDescription()
  {
    String str1 = description;
    String str2 = "`";
    String str3 = "'";
    str1 = str1.replace(str2, str3);
    description = str1;
    str1 = description;
    str2 = "##";
    str3 = "\"";
    str1 = str1.replace(str2, str3);
    description = str1;
    str1 = description;
    return str1;
  }
  
  public Integer getID()
  {
    Integer localInteger = ID;
    return localInteger;
  }
  
  public int getPetalResourceID()
  {
    String str4 = path;
    if (str4 == null) {}
    Object localObject1;
    int i;
    for (int j = 0;; localObject1 = i)
    {
      return j;
      String str3 = "/dw/images/players/";
      String str1 = ".png";
      localObject1 = path;
      String str5 = "/dw/images/players/";
      int k = str5.length();
      String str6 = path;
      int m = str6.length();
      String str8 = ".png";
      int n = str8.length();
      m -= n;
      String str2 = ((String)localObject1).substring(k, m);
      localObject1 = DWApplication.getAppResources();
      Object localObject2 = new java/lang/StringBuilder;
      String str7 = "drawable/";
      ((StringBuilder)localObject2).<init>(str7);
      localObject2 = ((StringBuilder)localObject2).append(str2);
      localObject2 = ((StringBuilder)localObject2).toString();
      str7 = null;
      Object localObject3 = DWApplication.getInstance();
      localObject3 = ((DWApplication)localObject3).getPackageName();
      i = ((Resources)localObject1).getIdentifier((String)localObject2, str7, (String)localObject3);
    }
  }
  
  public String getStoryBoardText(int paramInt)
  {
    Object localObject;
    String str2;
    String str1;
    switch (paramInt)
    {
    default: 
      localObject = "NewOwnerObject";
      str2 = "storyboard index out of range";
      Log.d((String)localObject, str2);
      localObject = "";
      return (String)localObject;
    case 0: 
      str1 = storyboard1;
    }
    for (;;)
    {
      localObject = "`";
      str2 = "'";
      str1 = str1.replace((CharSequence)localObject, str2);
      localObject = "##";
      str2 = "\"";
      str1 = str1.replace((CharSequence)localObject, str2);
      localObject = str1;
      break;
      str1 = storyboard2;
      continue;
      str1 = storyboard3;
    }
  }
  
  public String getTitle()
  {
    String str1 = title;
    String str2 = "`";
    String str3 = "'";
    str1 = str1.replace(str2, str3);
    title = str1;
    str1 = title;
    str2 = "##";
    str3 = "\"";
    str1 = str1.replace(str2, str3);
    title = str1;
    str1 = title;
    return str1;
  }
  
  public void setName(String paramString)
  {
    name = paramString;
  }
}

/* Location:
 * Qualified Name:     kagegames.apps.DWBeta.NewOwnerObject
 * Java Class Version: 1.2 (46.0)
 * JD-Core Version:    0.7.1
 */