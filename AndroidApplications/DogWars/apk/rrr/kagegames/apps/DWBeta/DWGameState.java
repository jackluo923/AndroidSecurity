package kagegames.apps.DWBeta;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

public class DWGameState
{
  private String _theShoutboxText;
  private List fight_list;
  private List fight_request;
  private DWBust mBust;
  private List mCashList;
  private DWDog mCurDog;
  private DWFight mCurFight;
  private int mCurFightListIndex;
  private DWFightResult mCurFightResult;
  private int mCurItemIndex;
  private DWOwner mCurOwner;
  private int mErrorCode;
  private String mErrorMsg;
  private DWKill mKill;
  private List mNewDogObjectList;
  private List mNewOwnerObjectList;
  public NewDogObject mSelectedNewDog;
  public NewOwnerObject mSelectedNewOwner;
  private List mStoreItemObjectList;
  private DWSystemMsg mSystemMsg;
  private List mWinsList;
  private List shout_rows;
  
  public DWGameState()
  {
    mCurDog = str;
    mCurOwner = str;
    mCurFight = str;
    mBust = str;
    mKill = str;
    mCurFightResult = str;
    str = "";
    _theShoutboxText = str;
    DWOwner localDWOwner = new kagegames/apps/DWBeta/DWOwner;
    localDWOwner.<init>();
    DWDog localDWDog = new kagegames/apps/DWBeta/DWDog;
    localDWDog.<init>();
  }
  
  public DWBust GetBust()
  {
    DWBust localDWBust = mBust;
    return localDWBust;
  }
  
  public DWKill GetKill()
  {
    DWKill localDWKill = mKill;
    return localDWKill;
  }
  
  public boolean HasChallenger()
  {
    List localList2 = 0;
    List localList1 = fight_request;
    if (localList1 == null) {
      localList1 = localList2;
    }
    for (;;)
    {
      return localList1;
      localList1 = fight_request;
      int i = localList1.size();
      if (i > 0) {
        i = 1;
      } else {
        i = localList2;
      }
    }
  }
  
  public void SetBust(DWBust paramDWBust)
  {
    mBust = paramDWBust;
  }
  
  public void SetKill(DWKill paramDWKill)
  {
    mKill = paramDWKill;
  }
  
  public boolean WasSuccessful()
  {
    int i = mErrorCode;
    if (i < 0) {}
    int j;
    for (i = 0;; j = 1) {
      return i;
    }
  }
  
  public List<DWOwnerDogPair> getCashList()
  {
    List localList = mCashList;
    return localList;
  }
  
  public DWDog getCurDog()
  {
    DWDog localDWDog = mCurDog;
    return localDWDog;
  }
  
  public DWFight getCurFight()
  {
    DWFight localDWFight = mCurFight;
    return localDWFight;
  }
  
  public DWFightResult getCurFightResult()
  {
    DWFightResult localDWFightResult = mCurFightResult;
    return localDWFightResult;
  }
  
  public String getCurItemIDStr()
  {
    Object localObject = mStoreItemObjectList;
    int i = mCurItemIndex;
    this = ((List)localObject).get(i);
    this = (StoreItemObject)this;
    localObject = getIDStr();
    return (String)localObject;
  }
  
  public DWOwner getCurOwner()
  {
    DWOwner localDWOwner = mCurOwner;
    return localDWOwner;
  }
  
  public String getErrorMessage()
  {
    String str = mErrorMsg;
    if (str != null) {}
    for (str = mErrorMsg;; str = "Unknown error.  Please try again.") {
      return str;
    }
  }
  
  public List<DWOwnerDogPair> getFightList()
  {
    List localList = fight_list;
    return localList;
  }
  
  public DWOwnerDogPair getFightRequest()
  {
    List localList = fight_request;
    int i = 0;
    this = localList.get(i);
    this = (DWOwnerDogPair)this;
    return this;
  }
  
  public String getFightStatus()
  {
    String str = "fight status string here...replace with response from Server, then with parsed OO Fight Object";
    return str;
  }
  
  public List<NewDogObject> getNewDogObjectList()
  {
    List localList = mNewDogObjectList;
    return localList;
  }
  
  public List<NewOwnerObject> getNewOwnerObjectList()
  {
    List localList = mNewOwnerObjectList;
    return localList;
  }
  
  public DWDog getOpponentDog()
  {
    Object localObject = fight_request;
    int i;
    if (localObject != null)
    {
      localObject = fight_request;
      i = 0;
      this = ((List)localObject).get(i);
      this = (DWOwnerDogPair)this;
      localObject = getDog();
    }
    for (;;)
    {
      return (DWDog)localObject;
      localObject = fight_list;
      if (localObject != null)
      {
        localObject = fight_list;
        i = mCurFightListIndex;
        this = ((List)localObject).get(i);
        this = (DWOwnerDogPair)this;
        localObject = getDog();
      }
      else
      {
        localObject = null;
      }
    }
  }
  
  public DWOwner getOpponentOwner()
  {
    Object localObject = fight_request;
    int i;
    if (localObject != null)
    {
      localObject = fight_request;
      i = 0;
      this = ((List)localObject).get(i);
      this = (DWOwnerDogPair)this;
      localObject = getOwner();
    }
    for (;;)
    {
      return (DWOwner)localObject;
      localObject = fight_list;
      if (localObject != null)
      {
        localObject = fight_list;
        i = mCurFightListIndex;
        this = ((List)localObject).get(i);
        this = (DWOwnerDogPair)this;
        localObject = getOwner();
      }
      else
      {
        localObject = null;
      }
    }
  }
  
  public String getSelectedNewOwner()
  {
    Object localObject = mStoreItemObjectList;
    int i = mCurItemIndex;
    this = ((List)localObject).get(i);
    this = (StoreItemObject)this;
    localObject = getIDStr();
    return (String)localObject;
  }
  
  public List<DWShoutRow> getShoutboxList()
  {
    List localList = shout_rows;
    return localList;
  }
  
  public String getShoutboxText()
  {
    String str = _theShoutboxText;
    return str;
  }
  
  public List<StoreItemObject> getStoreItemObjectList()
  {
    List localList = mStoreItemObjectList;
    return localList;
  }
  
  public DWSystemMsg getSystemMsg()
  {
    DWSystemMsg localDWSystemMsg = mSystemMsg;
    return localDWSystemMsg;
  }
  
  public String getTimeStampStr()
  {
    Date localDate = new java/util/Date;
    long l = System.currentTimeMillis();
    localDate.<init>(l);
    SimpleDateFormat localSimpleDateFormat = new java/text/SimpleDateFormat;
    String str2 = "yyyy-MM-dd HH:mm:ss";
    localSimpleDateFormat.<init>(str2);
    String str1 = localSimpleDateFormat.format(localDate);
    return str1;
  }
  
  public List<DWOwnerDogPair> getWinsList()
  {
    List localList = mWinsList;
    return localList;
  }
  
  public void setCashList(List<DWOwnerDogPair> paramList)
  {
    mCashList = paramList;
  }
  
  public void setCurDog(DWDog paramDWDog)
  {
    mCurDog = paramDWDog;
  }
  
  public void setCurFight(DWFight paramDWFight)
  {
    mCurFight = paramDWFight;
  }
  
  public void setCurFightListIndex(int paramInt)
  {
    mCurFightListIndex = paramInt;
  }
  
  public void setCurFightResult(DWFightResult paramDWFightResult)
  {
    mCurFightResult = paramDWFightResult;
  }
  
  public void setCurItemIndex(int paramInt)
  {
    mCurItemIndex = paramInt;
  }
  
  public void setCurOwner(DWOwner paramDWOwner)
  {
    mCurOwner = paramDWOwner;
  }
  
  void setErrorCode(int paramInt)
  {
    mErrorCode = paramInt;
  }
  
  void setErrorMessage(String paramString)
  {
    mErrorMsg = paramString;
  }
  
  public void setFightList(List<DWOwnerDogPair> paramList)
  {
    fight_list = paramList;
  }
  
  public void setFightRequest(List<DWOwnerDogPair> paramList)
  {
    fight_request = paramList;
  }
  
  public void setIDsFromPrefs(long paramLong1, long paramLong2)
  {
    Object localObject = new kagegames/apps/DWBeta/DWOwner;
    ((DWOwner)localObject).<init>();
    mCurOwner = ((DWOwner)localObject);
    localObject = mCurOwner;
    ((DWOwner)localObject).setID(paramLong1);
    localObject = new kagegames/apps/DWBeta/DWDog;
    ((DWDog)localObject).<init>();
    mCurDog = ((DWDog)localObject);
    localObject = mCurDog;
    ((DWDog)localObject).setID(paramLong2);
  }
  
  public void setNewDogObjectList(List<NewDogObject> paramList)
  {
    mNewDogObjectList = paramList;
  }
  
  public void setNewOwnerObjectList(List<NewOwnerObject> paramList)
  {
    mNewOwnerObjectList = paramList;
  }
  
  public void setShoutboxList(List<DWShoutRow> paramList)
  {
    shout_rows = paramList;
  }
  
  public void setShoutboxText(String paramString)
  {
    _theShoutboxText = paramString;
  }
  
  public void setStoreItemObjectList(List<StoreItemObject> paramList)
  {
    mStoreItemObjectList = paramList;
  }
  
  void setSystemMsg(DWSystemMsg paramDWSystemMsg)
  {
    mSystemMsg = paramDWSystemMsg;
  }
  
  public void setWinsList(List<DWOwnerDogPair> paramList)
  {
    mWinsList = paramList;
  }
}

/* Location:
 * Qualified Name:     kagegames.apps.DWBeta.DWGameState
 * Java Class Version: 1.2 (46.0)
 * JD-Core Version:    0.7.1
 */