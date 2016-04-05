package kagegames.apps.DWBeta;

import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;

public class DWScoreboardEntry
{
  private String categoryText;
  private int categoryTypeID;
  private Bitmap mCategoryIcon;
  DWOwnerDogPair pair;
  private Integer rank;
  private Integer value;
  
  public DWScoreboardEntry()
  {
    DWOwner localDWOwner = new kagegames/apps/DWBeta/DWOwner;
    localDWOwner.<init>();
    DWDog localDWDog = new kagegames/apps/DWBeta/DWDog;
    localDWDog.<init>();
    DWOwnerDogPair localDWOwnerDogPair = new kagegames/apps/DWBeta/DWOwnerDogPair;
    localDWOwnerDogPair.<init>(localDWOwner, localDWDog);
    pair = localDWOwnerDogPair;
  }
  
  public Bitmap getCategoryIcon()
  {
    int j = 2130837525;
    Bitmap localBitmap = mCategoryIcon;
    Object localObject;
    if (localBitmap == null)
    {
      int i = categoryTypeID;
      switch (i)
      {
      default: 
        localObject = DWApplication.getAppResources();
        localObject = BitmapFactory.decodeResource((Resources)localObject, j);
      }
    }
    for (mCategoryIcon = ((Bitmap)localObject);; mCategoryIcon = ((Bitmap)localObject))
    {
      localObject = mCategoryIcon;
      return (Bitmap)localObject;
      localObject = DWApplication.getAppResources();
      localObject = BitmapFactory.decodeResource((Resources)localObject, j);
    }
  }
  
  public String getCategoryText()
  {
    String str = categoryText;
    if (str != null) {}
    for (str = categoryText;; str = "Cash") {
      return str;
    }
  }
  
  public DWOwnerDogPair getPair()
  {
    DWOwnerDogPair localDWOwnerDogPair = pair;
    return localDWOwnerDogPair;
  }
  
  public String getRankStr()
  {
    Object localObject = rank;
    if (localObject != null) {
      localObject = rank;
    }
    for (localObject = ((Integer)localObject).toString();; localObject = "10") {
      return (String)localObject;
    }
  }
  
  public String getValueStr()
  {
    Object localObject = value;
    if (localObject != null) {
      localObject = value;
    }
    for (localObject = ((Integer)localObject).toString();; localObject = "456,750") {
      return (String)localObject;
    }
  }
}

/* Location:
 * Qualified Name:     kagegames.apps.DWBeta.DWScoreboardEntry
 * Java Class Version: 1.2 (46.0)
 * JD-Core Version:    0.7.1
 */