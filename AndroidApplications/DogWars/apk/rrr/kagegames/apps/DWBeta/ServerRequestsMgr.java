package kagegames.apps.DWBeta;

import android.app.Activity;
import android.util.Log;
import com.google.kagegamesgson.Gson;
import com.google.kagegamesgson.GsonBuilder;
import java.io.BufferedReader;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.Reader;
import java.io.UnsupportedEncodingException;
import java.net.URI;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.NameValuePair;
import org.apache.http.client.HttpClient;
import org.apache.http.client.entity.UrlEncodedFormEntity;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.impl.client.BasicResponseHandler;
import org.apache.http.message.BasicNameValuePair;

class ServerRequestsMgr
{
  public static final String ADD_SHOUT_FIGHT = "ADD_SHOUT_FIGHT";
  public static final String ADD_SHOUT_MAIN = "ADD_SHOUT_MAIN";
  public static final String ARG_CRED = "CRED_TAG";
  public static final String ARG_DOG_NAME = "dogName";
  public static final String ARG_DOG_SEX = "dogSex";
  public static final String ARG_DOG_TYPE = "dogID";
  public static final String ARG_FIGHT_READY = "FIGHT_READY";
  public static final String ARG_FIGHT_RESPONSE = "ATTACK";
  public static final String ARG_FOOD = "FOOD";
  public static final String ARG_GAME_TYPE = "GAME_TYPE";
  public static final String ARG_OWNER_EMAIL = "ownerEmail";
  public static final String ARG_OWNER_NAME = "ownerName";
  public static final String ARG_OWNER_SEX = "playerSex";
  public static final String ARG_OWNER_TYPE = "playerID";
  public static final String ARG_RESPONSE = "RESPONSE";
  public static final String ARG_WATER = "WATER";
  public static final String BUILD_CRED_TAGS = "BUILD_CRED_TAGS";
  public static final String BUY_ITEM = "BUY_ITEM";
  public static final String CHALLENGE_RESPONSE = "CHALLENGE_RESPONSE";
  private static final String DW_COMMAND_URL = "/dw/process_cmds3.php";
  static final String DW_SERVER_PATH_ROOT = "http://kagegames.com";
  public static final String EMPTY_COMMAND = "EMPTY_COMMAND";
  public static final String FEED_WATER = "FEED_WATER";
  public static final String FIGHT_ATTACK = "FIGHT_ATTACK";
  public static final String FIGHT_CONFIRM_OVER = "FIGHT_CONFIRM_OVER";
  public static final String FIGHT_GIVE_UP = "FIGHT_GIVE_UP";
  public static final String GET_FIGHT_LIST = "GET_FIGHT_LIST";
  public static final String GET_SCOREBOARD_DATA = "GET_SCOREBOARD_DATA";
  public static final String GET_SHOUT_MAIN = "GET_SHOUT_MAIN";
  public static final String GET_STORE_ITEMS = "GET_STORE_ITEMS";
  public static final String PICK_FIGHT = "PICK_FIGHT";
  public static final String POLL_FIGHT = "POLL_FIGHT";
  public static final String POLL_NORMAL = "POLL_NORMAL";
  public static final String POLL_SHOUTBOX = "POLL_SHOUTBOX";
  public static final String REQUEST_DOG_LIST = "REQUEST_DOG_LIST";
  public static final String REQUEST_NEW_OWNER_AND_DOG = "REQUEST_NEW_OWNER_AND_DOG";
  public static final String REQUEST_PLAYER_LIST = "REQUEST_PLAYER_LIST";
  public static final String SCORE_TRAINING = "SCORE_TRAINING";
  private static final String TAG = "ServerRequestsMgr";
  public static final String TAKE_FIGHT = "TAKE_FIGHT";
  public static final String VAR_BITE = "BITE";
  public static final String VAR_DRAG = "DRAG";
  public static final String VAR_PRM_FOOD = "PRM_FOOD";
  public static final String VAR_RAW_MEAT = "RAW_MEAT";
  public static final String VAR_REG_FOOD = "REG_FOOD";
  public static final String VAR_RESPONSE_EPI = "EPI_PEN";
  public static final String VAR_RESPONSE_NO = "N";
  public static final String VAR_RESPONSE_YES = "Y";
  public static final String VAR_RUN = "RUN";
  public static final String VAR_WATER_NO = "false";
  public static final String VAR_WATER_YES = "true";
  private String mArg0;
  private String mArg1;
  private Activity mCallingActivity;
  private String mCurCommand;
  private List mNameValuePairs;
  private boolean mbSuccess;
  
  ServerRequestsMgr()
  {
    Object localObject = new java/util/ArrayList;
    ((ArrayList)localObject).<init>();
    mNameValuePairs = ((List)localObject);
    localObject = "EMPTY_COMMAND";
    mCurCommand = ((String)localObject);
  }
  
  private boolean ParseJsonCommand(String paramString)
  {
    k = 0;
    j = -100;
    Object localObject3 = new com/google/kagegamesgson/GsonBuilder;
    ((GsonBuilder)localObject3).<init>();
    localObject3 = ((GsonBuilder)localObject3).serializeNulls();
    Gson localGson = ((GsonBuilder)localObject3).create();
    int i = 0;
    try
    {
      localObject3 = JsonCommandObject.class;
      localObject3 = localGson.fromJson(paramString, (Class)localObject3);
      Object localObject1 = localObject3;
      localObject1 = (JsonCommandObject)localObject1;
      Object localObject2 = localObject1;
      if (localObject2 == null) {
        break label271;
      }
      bool = ((JsonCommandObject)localObject2).processJson();
    }
    catch (Exception localException2)
    {
      for (;;)
      {
        boolean bool;
        Exception localException1 = localException2;
        Object localObject4 = "ServerRequestsMgr";
        Log.d((String)localObject4, paramString);
        localObject4 = "ServerRequestsMgr";
        Object localObject5 = new java/lang/StringBuilder;
        String str = "invalid response body or JSON.";
        ((StringBuilder)localObject5).<init>(str);
        str = localException1.toString();
        localObject5 = ((StringBuilder)localObject5).append(str);
        localObject5 = ((StringBuilder)localObject5).toString();
        Log.d((String)localObject4, (String)localObject5);
        localObject4 = DWApplication.getInstance();
        localObject4 = ((DWApplication)localObject4).getDWGameState();
        ((DWGameState)localObject4).setErrorCode(j);
        localObject4 = DWApplication.getInstance();
        localObject4 = ((DWApplication)localObject4).getDWGameState();
        localObject5 = new java/lang/StringBuilder;
        str = "Internal Error: ";
        ((StringBuilder)localObject5).<init>(str);
        str = localException1.toString();
        localObject5 = ((StringBuilder)localObject5).append(str);
        localObject5 = ((StringBuilder)localObject5).toString();
        ((DWGameState)localObject4).setErrorMessage((String)localObject5);
        localObject4 = new java/lang/StringBuilder;
        localObject5 = String.valueOf(paramString);
        ((StringBuilder)localObject4).<init>((String)localObject5);
        localObject5 = localException1.toString();
        localObject4 = ((StringBuilder)localObject4).append((String)localObject5);
        localObject4 = ((StringBuilder)localObject4).toString();
        SendBackBadResponse((String)localObject4);
        localObject4 = k;
        continue;
        localObject4 = DWApplication.getInstance();
        localObject4 = ((DWApplication)localObject4).getDWGameState();
        ((DWGameState)localObject4).setErrorCode(j);
        localObject4 = DWApplication.getInstance();
        localObject4 = ((DWApplication)localObject4).getDWGameState();
        localObject5 = "Sorry, could not complete your request.  Please try again. (gson error)";
        ((DWGameState)localObject4).setErrorMessage((String)localObject5);
        localObject4 = k;
      }
    }
    return bool;
  }
  
  private void SendBackBadResponse(String paramString)
  {
    ArrayList localArrayList = new java/util/ArrayList;
    localArrayList.<init>();
    Object localObject4 = new org/apache/http/message/BasicNameValuePair;
    str2 = "CMD_ERR";
    Object localObject6 = "BAD_SERVER_RESPONSE";
    ((BasicNameValuePair)localObject4).<init>(str2, (String)localObject6);
    localArrayList.add(localObject4);
    localObject4 = new org/apache/http/message/BasicNameValuePair;
    str2 = "androidId";
    localObject6 = DWApplication.getInstance();
    localObject6 = ((DWApplication)localObject6).getTheAndroidId();
    ((BasicNameValuePair)localObject4).<init>(str2, (String)localObject6);
    localArrayList.add(localObject4);
    localObject4 = new org/apache/http/message/BasicNameValuePair;
    str2 = "applicationName";
    localObject6 = DWApplication.getInstance();
    localObject6 = ((DWApplication)localObject6).getPackageName();
    ((BasicNameValuePair)localObject4).<init>(str2, (String)localObject6);
    localArrayList.add(localObject4);
    localObject4 = new org/apache/http/message/BasicNameValuePair;
    str2 = "versionCode";
    localObject6 = DWApplication.getInstance();
    localObject6 = ((DWApplication)localObject6).getTheVersionCode();
    ((BasicNameValuePair)localObject4).<init>(str2, (String)localObject6);
    localArrayList.add(localObject4);
    localObject4 = new org/apache/http/message/BasicNameValuePair;
    str2 = "TIME_STAMP";
    localObject6 = DWApplication.getInstance();
    localObject6 = ((DWApplication)localObject6).getDWGameState();
    localObject6 = ((DWGameState)localObject6).getTimeStampStr();
    ((BasicNameValuePair)localObject4).<init>(str2, (String)localObject6);
    localArrayList.add(localObject4);
    localObject4 = new org/apache/http/message/BasicNameValuePair;
    str2 = "BAD_RESPONSE_BODY";
    ((BasicNameValuePair)localObject4).<init>(str2, paramString);
    localArrayList.add(localObject4);
    localObject4 = mNameValuePairs;
    localArrayList.addAll((Collection)localObject4);
    int i = 0;
    for (;;)
    {
      int j = localArrayList.size();
      HttpPost localHttpPost;
      if (i >= j)
      {
        localHttpPost = new org/apache/http/client/methods/HttpPost;
        localObject5 = "http://kagegames.com/dw/process_cmds3.php";
        localHttpPost.<init>((String)localObject5);
      }
      try
      {
        localObject5 = new org/apache/http/client/entity/UrlEncodedFormEntity;
        str2 = "UTF-8";
        ((UrlEncodedFormEntity)localObject5).<init>(localArrayList, str2);
        localHttpPost.setEntity((HttpEntity)localObject5);
      }
      catch (UnsupportedEncodingException localUnsupportedEncodingException)
      {
        for (;;)
        {
          BasicResponseHandler localBasicResponseHandler;
          Object localObject3;
          localObject2 = localUnsupportedEncodingException;
          ((UnsupportedEncodingException)localObject2).printStackTrace();
        }
      }
      localBasicResponseHandler = new org/apache/http/impl/client/BasicResponseHandler;
      localBasicResponseHandler.<init>();
      localObject3 = "";
      try
      {
        localObject5 = DWApplication.getInstance();
        localObject5 = ((DWApplication)localObject5).getHttpClient();
        localObject5 = ((HttpClient)localObject5).execute(localHttpPost, localBasicResponseHandler);
        Object localObject1 = localObject5;
        localObject1 = (String)localObject1;
        localObject3 = localObject1;
        localObject5 = "ServerRequestsMgr";
        Log.d((String)localObject5, (String)localObject3);
        return;
      }
      catch (Exception localException)
      {
        for (;;)
        {
          Object localObject2 = localException;
          String str1 = "ServerRequestsMgr";
          str2 = ((Exception)localObject2).getMessage();
          Log.d(str1, str2);
        }
      }
      Object localObject5 = "ServerRequestsMgr";
      this = localArrayList.get(i);
      this = (NameValuePair)this;
      str2 = toString();
      Log.d((String)localObject5, str2);
      i += 1;
    }
  }
  
  private boolean SendCommandHttpPost()
  {
    HttpPost localHttpPost = new org/apache/http/client/methods/HttpPost;
    Object localObject4 = "http://kagegames.com/dw/process_cmds3.php";
    localHttpPost.<init>((String)localObject4);
    try
    {
      localObject4 = new org/apache/http/client/entity/UrlEncodedFormEntity;
      localObject6 = mNameValuePairs;
      String str2 = "UTF-8";
      ((UrlEncodedFormEntity)localObject4).<init>((List)localObject6, str2);
      localHttpPost.setEntity((HttpEntity)localObject4);
    }
    catch (UnsupportedEncodingException localUnsupportedEncodingException)
    {
      for (;;)
      {
        BasicResponseHandler localBasicResponseHandler;
        Object localObject3;
        localObject2 = localUnsupportedEncodingException;
        ((UnsupportedEncodingException)localObject2).printStackTrace();
      }
    }
    localBasicResponseHandler = new org/apache/http/impl/client/BasicResponseHandler;
    localBasicResponseHandler.<init>();
    localObject3 = "";
    try
    {
      localObject4 = DWApplication.getInstance();
      localObject4 = ((DWApplication)localObject4).getHttpClient();
      localObject4 = ((HttpClient)localObject4).execute(localHttpPost, localBasicResponseHandler);
      Object localObject1 = localObject4;
      localObject1 = (String)localObject1;
      localObject3 = localObject1;
      localObject4 = "ServerRequestsMgr";
      Log.d((String)localObject4, (String)localObject3);
      bool = ParseJsonCommand((String)localObject3);
    }
    catch (Exception localException)
    {
      for (;;)
      {
        boolean bool;
        Object localObject2 = localException;
        Object localObject5 = "ServerRequestsMgr";
        localObject6 = ((Exception)localObject2).getMessage();
        Log.d((String)localObject5, (String)localObject6);
        localObject5 = DWApplication.getInstance();
        localObject5 = ((DWApplication)localObject5).getDWGameState();
        int j = -101;
        ((DWGameState)localObject5).setErrorCode(j);
        localObject5 = DWApplication.getInstance();
        localObject5 = ((DWApplication)localObject5).getDWGameState();
        String str1 = ((Exception)localObject2).getMessage();
        ((DWGameState)localObject5).setErrorMessage(str1);
        int i = 0;
      }
    }
    return bool;
  }
  
  public boolean SendDWCommand(Activity paramActivity, String paramString1, String paramString2, String paramString3)
  {
    int k = 0;
    mCallingActivity = paramActivity;
    Object localObject1 = mCurCommand;
    Object localObject3 = "EMPTY_COMMAND";
    if (localObject1 != localObject3)
    {
      localObject1 = DWApplication.getInstance();
      localObject1 = ((DWApplication)localObject1).getDWGameState();
      localObject3 = "Sorry, command to server already in progress...please try again...";
      ((DWGameState)localObject1).setErrorMessage((String)localObject3);
      localObject1 = k;
      return (boolean)localObject1;
    }
    localObject1 = DWApplication.getInstance();
    localObject1 = ((DWApplication)localObject1).getDWGameState();
    ((DWGameState)localObject1).setErrorCode(k);
    localObject1 = DWApplication.getInstance();
    localObject1 = ((DWApplication)localObject1).getDWGameState();
    localObject3 = "no errors";
    ((DWGameState)localObject1).setErrorMessage((String)localObject3);
    mArg0 = paramString2;
    mArg1 = paramString3;
    mCurCommand = paramString1;
    localObject1 = mNameValuePairs;
    localObject3 = mNameValuePairs;
    ((List)localObject1).removeAll((Collection)localObject3);
    localObject1 = mNameValuePairs;
    localObject3 = new org/apache/http/message/BasicNameValuePair;
    String str = "CMD";
    Object localObject4 = mCurCommand;
    ((BasicNameValuePair)localObject3).<init>(str, (String)localObject4);
    ((List)localObject1).add(localObject3);
    localObject1 = mNameValuePairs;
    localObject3 = new org/apache/http/message/BasicNameValuePair;
    str = "androidId";
    localObject4 = DWApplication.getInstance();
    localObject4 = ((DWApplication)localObject4).getTheAndroidId();
    ((BasicNameValuePair)localObject3).<init>(str, (String)localObject4);
    ((List)localObject1).add(localObject3);
    localObject1 = mNameValuePairs;
    localObject3 = new org/apache/http/message/BasicNameValuePair;
    str = "applicationName";
    localObject4 = DWApplication.getInstance();
    localObject4 = ((DWApplication)localObject4).getPackageName();
    ((BasicNameValuePair)localObject3).<init>(str, (String)localObject4);
    ((List)localObject1).add(localObject3);
    localObject1 = mNameValuePairs;
    localObject3 = new org/apache/http/message/BasicNameValuePair;
    str = "versionCode";
    localObject4 = DWApplication.getInstance();
    localObject4 = ((DWApplication)localObject4).getTheVersionCode();
    ((BasicNameValuePair)localObject3).<init>(str, (String)localObject4);
    ((List)localObject1).add(localObject3);
    localObject1 = mNameValuePairs;
    localObject3 = new org/apache/http/message/BasicNameValuePair;
    str = "TIME_STAMP";
    localObject4 = DWApplication.getInstance();
    localObject4 = ((DWApplication)localObject4).getDWGameState();
    localObject4 = ((DWGameState)localObject4).getTimeStampStr();
    ((BasicNameValuePair)localObject3).<init>(str, (String)localObject4);
    ((List)localObject1).add(localObject3);
    localObject1 = mCurCommand;
    localObject3 = "POLL_FIGHT";
    label572:
    int i;
    if (localObject1 == localObject3)
    {
      localObject1 = mNameValuePairs;
      localObject3 = new org/apache/http/message/BasicNameValuePair;
      str = "ownerID";
      localObject4 = DWApplication.getInstance();
      localObject4 = ((DWApplication)localObject4).getDWGameState();
      localObject4 = ((DWGameState)localObject4).getCurOwner();
      localObject4 = ((DWOwner)localObject4).getIDStr();
      ((BasicNameValuePair)localObject3).<init>(str, (String)localObject4);
      ((List)localObject1).add(localObject3);
      localObject1 = mNameValuePairs;
      localObject3 = new org/apache/http/message/BasicNameValuePair;
      str = "dogID";
      localObject4 = DWApplication.getInstance();
      localObject4 = ((DWApplication)localObject4).getDWGameState();
      localObject4 = ((DWGameState)localObject4).getCurDog();
      localObject4 = ((DWDog)localObject4).getIDStr();
      ((BasicNameValuePair)localObject3).<init>(str, (String)localObject4);
      ((List)localObject1).add(localObject3);
      localObject1 = mNameValuePairs;
      localObject3 = new org/apache/http/message/BasicNameValuePair;
      str = "fightID";
      localObject4 = DWApplication.getInstance();
      localObject4 = ((DWApplication)localObject4).getDWGameState();
      localObject4 = ((DWGameState)localObject4).getCurOwner();
      localObject4 = ((DWOwner)localObject4).getFightIDStr();
      ((BasicNameValuePair)localObject3).<init>(str, (String)localObject4);
      ((List)localObject1).add(localObject3);
      i = 0;
    }
    for (;;)
    {
      localObject1 = mNameValuePairs;
      int j = ((List)localObject1).size();
      if (i >= j)
      {
        boolean bool = SendCommandHttpPost();
        localObject2 = "EMPTY_COMMAND";
        mCurCommand = ((String)localObject2);
        localObject2 = bool;
        break;
        localObject2 = mCurCommand;
        localObject3 = "POLL_NORMAL";
        if (localObject2 == localObject3)
        {
          localObject2 = DWApplication.getInstance();
          localObject2 = ((DWApplication)localObject2).getDWGameState();
          localObject2 = ((DWGameState)localObject2).getCurOwner();
          if (localObject2 == null)
          {
            localObject2 = k;
            break;
          }
          localObject2 = mNameValuePairs;
          localObject3 = new org/apache/http/message/BasicNameValuePair;
          str = "ownerID";
          localObject4 = DWApplication.getInstance();
          localObject4 = ((DWApplication)localObject4).getDWGameState();
          localObject4 = ((DWGameState)localObject4).getCurOwner();
          localObject4 = ((DWOwner)localObject4).getIDStr();
          ((BasicNameValuePair)localObject3).<init>(str, (String)localObject4);
          ((List)localObject2).add(localObject3);
          localObject2 = mNameValuePairs;
          localObject3 = new org/apache/http/message/BasicNameValuePair;
          str = "dogID";
          localObject4 = DWApplication.getInstance();
          localObject4 = ((DWApplication)localObject4).getDWGameState();
          localObject4 = ((DWGameState)localObject4).getCurDog();
          localObject4 = ((DWDog)localObject4).getIDStr();
          ((BasicNameValuePair)localObject3).<init>(str, (String)localObject4);
          ((List)localObject2).add(localObject3);
          break label572;
        }
        localObject2 = mCurCommand;
        localObject3 = "POLL_SHOUTBOX";
        if (localObject2 == localObject3)
        {
          localObject2 = mNameValuePairs;
          localObject3 = new org/apache/http/message/BasicNameValuePair;
          str = "ownerID";
          localObject4 = DWApplication.getInstance();
          localObject4 = ((DWApplication)localObject4).getDWGameState();
          localObject4 = ((DWGameState)localObject4).getCurOwner();
          localObject4 = ((DWOwner)localObject4).getIDStr();
          ((BasicNameValuePair)localObject3).<init>(str, (String)localObject4);
          ((List)localObject2).add(localObject3);
          break label572;
        }
        localObject2 = mCurCommand;
        localObject3 = "ADD_SHOUT_MAIN";
        if (localObject2 == localObject3)
        {
          localObject2 = mNameValuePairs;
          localObject3 = new org/apache/http/message/BasicNameValuePair;
          str = "ownerID";
          localObject4 = DWApplication.getInstance();
          localObject4 = ((DWApplication)localObject4).getDWGameState();
          localObject4 = ((DWGameState)localObject4).getCurOwner();
          localObject4 = ((DWOwner)localObject4).getIDStr();
          ((BasicNameValuePair)localObject3).<init>(str, (String)localObject4);
          ((List)localObject2).add(localObject3);
          localObject2 = mNameValuePairs;
          localObject3 = new org/apache/http/message/BasicNameValuePair;
          str = "shout";
          localObject4 = mArg0;
          ((BasicNameValuePair)localObject3).<init>(str, (String)localObject4);
          ((List)localObject2).add(localObject3);
          break label572;
        }
        localObject2 = mCurCommand;
        localObject3 = "ADD_SHOUT_FIGHT";
        if (localObject2 == localObject3)
        {
          localObject2 = mNameValuePairs;
          localObject3 = new org/apache/http/message/BasicNameValuePair;
          str = "ownerID";
          localObject4 = DWApplication.getInstance();
          localObject4 = ((DWApplication)localObject4).getDWGameState();
          localObject4 = ((DWGameState)localObject4).getCurOwner();
          localObject4 = ((DWOwner)localObject4).getIDStr();
          ((BasicNameValuePair)localObject3).<init>(str, (String)localObject4);
          ((List)localObject2).add(localObject3);
          localObject2 = mNameValuePairs;
          localObject3 = new org/apache/http/message/BasicNameValuePair;
          str = "dogID";
          localObject4 = DWApplication.getInstance();
          localObject4 = ((DWApplication)localObject4).getDWGameState();
          localObject4 = ((DWGameState)localObject4).getCurDog();
          localObject4 = ((DWDog)localObject4).getIDStr();
          ((BasicNameValuePair)localObject3).<init>(str, (String)localObject4);
          ((List)localObject2).add(localObject3);
          localObject2 = mNameValuePairs;
          localObject3 = new org/apache/http/message/BasicNameValuePair;
          str = "fightID";
          localObject4 = DWApplication.getInstance();
          localObject4 = ((DWApplication)localObject4).getDWGameState();
          localObject4 = ((DWGameState)localObject4).getCurOwner();
          localObject4 = ((DWOwner)localObject4).getFightIDStr();
          ((BasicNameValuePair)localObject3).<init>(str, (String)localObject4);
          ((List)localObject2).add(localObject3);
          localObject2 = mNameValuePairs;
          localObject3 = new org/apache/http/message/BasicNameValuePair;
          str = "shout";
          localObject4 = mArg0;
          ((BasicNameValuePair)localObject3).<init>(str, (String)localObject4);
          ((List)localObject2).add(localObject3);
          break label572;
        }
        localObject2 = mCurCommand;
        localObject3 = "GET_SHOUT_MAIN";
        if (localObject2 == localObject3)
        {
          localObject2 = mNameValuePairs;
          localObject3 = new org/apache/http/message/BasicNameValuePair;
          str = "ownerID";
          localObject4 = DWApplication.getInstance();
          localObject4 = ((DWApplication)localObject4).getDWGameState();
          localObject4 = ((DWGameState)localObject4).getCurOwner();
          localObject4 = ((DWOwner)localObject4).getIDStr();
          ((BasicNameValuePair)localObject3).<init>(str, (String)localObject4);
          ((List)localObject2).add(localObject3);
          break label572;
        }
        localObject2 = mCurCommand;
        localObject3 = "REQUEST_NEW_OWNER_AND_DOG";
        if (localObject2 == localObject3)
        {
          localObject2 = mNameValuePairs;
          localObject3 = new org/apache/http/message/BasicNameValuePair;
          str = "ownerName";
          localObject4 = DWApplication.getInstance();
          localObject4 = ((DWApplication)localObject4).getDWGameState();
          localObject4 = mSelectedNewOwner;
          localObject4 = name;
          ((BasicNameValuePair)localObject3).<init>(str, (String)localObject4);
          ((List)localObject2).add(localObject3);
          localObject2 = mNameValuePairs;
          localObject3 = new org/apache/http/message/BasicNameValuePair;
          str = "playerID";
          localObject4 = DWApplication.getInstance();
          localObject4 = ((DWApplication)localObject4).getDWGameState();
          localObject4 = mSelectedNewOwner;
          localObject4 = ((NewOwnerObject)localObject4).getID();
          localObject4 = ((Integer)localObject4).toString();
          ((BasicNameValuePair)localObject3).<init>(str, (String)localObject4);
          ((List)localObject2).add(localObject3);
          localObject2 = mNameValuePairs;
          localObject3 = new org/apache/http/message/BasicNameValuePair;
          str = "playerSex";
          localObject4 = "M";
          ((BasicNameValuePair)localObject3).<init>(str, (String)localObject4);
          ((List)localObject2).add(localObject3);
          localObject2 = mNameValuePairs;
          localObject3 = new org/apache/http/message/BasicNameValuePair;
          str = "dogName";
          localObject4 = DWApplication.getInstance();
          localObject4 = ((DWApplication)localObject4).getDWGameState();
          localObject4 = mSelectedNewDog;
          localObject4 = name;
          ((BasicNameValuePair)localObject3).<init>(str, (String)localObject4);
          ((List)localObject2).add(localObject3);
          localObject2 = mNameValuePairs;
          localObject3 = new org/apache/http/message/BasicNameValuePair;
          str = "dogID";
          localObject4 = DWApplication.getInstance();
          localObject4 = ((DWApplication)localObject4).getDWGameState();
          localObject4 = mSelectedNewDog;
          localObject4 = ((NewDogObject)localObject4).getID();
          localObject4 = ((Integer)localObject4).toString();
          ((BasicNameValuePair)localObject3).<init>(str, (String)localObject4);
          ((List)localObject2).add(localObject3);
          localObject2 = mNameValuePairs;
          localObject3 = new org/apache/http/message/BasicNameValuePair;
          str = "dogSex";
          localObject4 = DWApplication.getInstance();
          localObject4 = ((DWApplication)localObject4).getDWGameState();
          localObject4 = mSelectedNewDog;
          localObject4 = sex;
          ((BasicNameValuePair)localObject3).<init>(str, (String)localObject4);
          ((List)localObject2).add(localObject3);
          localObject2 = mNameValuePairs;
          localObject3 = new org/apache/http/message/BasicNameValuePair;
          str = "ownerEmail";
          localObject4 = DWApplication.getInstance();
          localObject4 = ((DWApplication)localObject4).getDWGameState();
          localObject4 = mSelectedNewOwner;
          localObject4 = email;
          ((BasicNameValuePair)localObject3).<init>(str, (String)localObject4);
          ((List)localObject2).add(localObject3);
          break label572;
        }
        localObject2 = "TAKE_FIGHT";
        if (paramString1 == localObject2)
        {
          localObject2 = mNameValuePairs;
          localObject3 = new org/apache/http/message/BasicNameValuePair;
          str = "ownerID";
          localObject4 = DWApplication.getInstance();
          localObject4 = ((DWApplication)localObject4).getDWGameState();
          localObject4 = ((DWGameState)localObject4).getCurOwner();
          localObject4 = ((DWOwner)localObject4).getIDStr();
          ((BasicNameValuePair)localObject3).<init>(str, (String)localObject4);
          ((List)localObject2).add(localObject3);
          localObject2 = mNameValuePairs;
          localObject3 = new org/apache/http/message/BasicNameValuePair;
          str = "dogID";
          localObject4 = DWApplication.getInstance();
          localObject4 = ((DWApplication)localObject4).getDWGameState();
          localObject4 = ((DWGameState)localObject4).getCurDog();
          localObject4 = ((DWDog)localObject4).getIDStr();
          ((BasicNameValuePair)localObject3).<init>(str, (String)localObject4);
          ((List)localObject2).add(localObject3);
          localObject2 = mNameValuePairs;
          localObject3 = new org/apache/http/message/BasicNameValuePair;
          str = "FIGHT_READY";
          localObject4 = mArg0;
          ((BasicNameValuePair)localObject3).<init>(str, (String)localObject4);
          ((List)localObject2).add(localObject3);
          break label572;
        }
        localObject2 = "PICK_FIGHT";
        if (paramString1 == localObject2)
        {
          localObject2 = mNameValuePairs;
          localObject3 = new org/apache/http/message/BasicNameValuePair;
          str = "ownerID";
          localObject4 = DWApplication.getInstance();
          localObject4 = ((DWApplication)localObject4).getDWGameState();
          localObject4 = ((DWGameState)localObject4).getCurOwner();
          localObject4 = ((DWOwner)localObject4).getIDStr();
          ((BasicNameValuePair)localObject3).<init>(str, (String)localObject4);
          ((List)localObject2).add(localObject3);
          localObject2 = mNameValuePairs;
          localObject3 = new org/apache/http/message/BasicNameValuePair;
          str = "dogID";
          localObject4 = DWApplication.getInstance();
          localObject4 = ((DWApplication)localObject4).getDWGameState();
          localObject4 = ((DWGameState)localObject4).getCurDog();
          localObject4 = ((DWDog)localObject4).getIDStr();
          ((BasicNameValuePair)localObject3).<init>(str, (String)localObject4);
          ((List)localObject2).add(localObject3);
          localObject2 = mNameValuePairs;
          localObject3 = new org/apache/http/message/BasicNameValuePair;
          str = "OPPONENT_ID";
          localObject4 = DWApplication.getInstance();
          localObject4 = ((DWApplication)localObject4).getDWGameState();
          localObject4 = ((DWGameState)localObject4).getOpponentOwner();
          localObject4 = ((DWOwner)localObject4).getIDStr();
          ((BasicNameValuePair)localObject3).<init>(str, (String)localObject4);
          ((List)localObject2).add(localObject3);
          localObject2 = mNameValuePairs;
          localObject3 = new org/apache/http/message/BasicNameValuePair;
          str = "OPPONENT_DOG_ID";
          localObject4 = DWApplication.getInstance();
          localObject4 = ((DWApplication)localObject4).getDWGameState();
          localObject4 = ((DWGameState)localObject4).getOpponentDog();
          localObject4 = ((DWDog)localObject4).getIDStr();
          ((BasicNameValuePair)localObject3).<init>(str, (String)localObject4);
          ((List)localObject2).add(localObject3);
          break label572;
        }
        localObject2 = mCurCommand;
        localObject3 = "CHALLENGE_RESPONSE";
        if (localObject2 == localObject3)
        {
          localObject2 = mNameValuePairs;
          localObject3 = new org/apache/http/message/BasicNameValuePair;
          str = "ownerID";
          localObject4 = DWApplication.getInstance();
          localObject4 = ((DWApplication)localObject4).getDWGameState();
          localObject4 = ((DWGameState)localObject4).getCurOwner();
          localObject4 = ((DWOwner)localObject4).getIDStr();
          ((BasicNameValuePair)localObject3).<init>(str, (String)localObject4);
          ((List)localObject2).add(localObject3);
          localObject2 = mNameValuePairs;
          localObject3 = new org/apache/http/message/BasicNameValuePair;
          str = "dogID";
          localObject4 = DWApplication.getInstance();
          localObject4 = ((DWApplication)localObject4).getDWGameState();
          localObject4 = ((DWGameState)localObject4).getCurDog();
          localObject4 = ((DWDog)localObject4).getIDStr();
          ((BasicNameValuePair)localObject3).<init>(str, (String)localObject4);
          ((List)localObject2).add(localObject3);
          localObject2 = mNameValuePairs;
          localObject3 = new org/apache/http/message/BasicNameValuePair;
          str = "fightID";
          localObject4 = DWApplication.getInstance();
          localObject4 = ((DWApplication)localObject4).getDWGameState();
          localObject4 = ((DWGameState)localObject4).getCurOwner();
          localObject4 = ((DWOwner)localObject4).getFightIDStr();
          ((BasicNameValuePair)localObject3).<init>(str, (String)localObject4);
          ((List)localObject2).add(localObject3);
          localObject2 = mNameValuePairs;
          localObject3 = new org/apache/http/message/BasicNameValuePair;
          str = "RESPONSE";
          localObject4 = mArg0;
          ((BasicNameValuePair)localObject3).<init>(str, (String)localObject4);
          ((List)localObject2).add(localObject3);
          break label572;
        }
        localObject2 = mCurCommand;
        localObject3 = "FIGHT_ATTACK";
        if (localObject2 == localObject3)
        {
          localObject2 = mNameValuePairs;
          localObject3 = new org/apache/http/message/BasicNameValuePair;
          str = "ownerID";
          localObject4 = DWApplication.getInstance();
          localObject4 = ((DWApplication)localObject4).getDWGameState();
          localObject4 = ((DWGameState)localObject4).getCurOwner();
          localObject4 = ((DWOwner)localObject4).getIDStr();
          ((BasicNameValuePair)localObject3).<init>(str, (String)localObject4);
          ((List)localObject2).add(localObject3);
          localObject2 = mNameValuePairs;
          localObject3 = new org/apache/http/message/BasicNameValuePair;
          str = "dogID";
          localObject4 = DWApplication.getInstance();
          localObject4 = ((DWApplication)localObject4).getDWGameState();
          localObject4 = ((DWGameState)localObject4).getCurDog();
          localObject4 = ((DWDog)localObject4).getIDStr();
          ((BasicNameValuePair)localObject3).<init>(str, (String)localObject4);
          ((List)localObject2).add(localObject3);
          localObject2 = mNameValuePairs;
          localObject3 = new org/apache/http/message/BasicNameValuePair;
          str = "fightID";
          localObject4 = DWApplication.getInstance();
          localObject4 = ((DWApplication)localObject4).getDWGameState();
          localObject4 = ((DWGameState)localObject4).getCurOwner();
          localObject4 = ((DWOwner)localObject4).getFightIDStr();
          ((BasicNameValuePair)localObject3).<init>(str, (String)localObject4);
          ((List)localObject2).add(localObject3);
          localObject2 = mNameValuePairs;
          localObject3 = new org/apache/http/message/BasicNameValuePair;
          str = "ATTACK";
          localObject4 = mArg0;
          ((BasicNameValuePair)localObject3).<init>(str, (String)localObject4);
          ((List)localObject2).add(localObject3);
          break label572;
        }
        localObject2 = mCurCommand;
        localObject3 = "BUILD_CRED_TAGS";
        if (localObject2 == localObject3)
        {
          localObject2 = mNameValuePairs;
          localObject3 = new org/apache/http/message/BasicNameValuePair;
          str = "ownerID";
          localObject4 = DWApplication.getInstance();
          localObject4 = ((DWApplication)localObject4).getDWGameState();
          localObject4 = ((DWGameState)localObject4).getCurOwner();
          localObject4 = ((DWOwner)localObject4).getIDStr();
          ((BasicNameValuePair)localObject3).<init>(str, (String)localObject4);
          ((List)localObject2).add(localObject3);
          localObject2 = mNameValuePairs;
          localObject3 = new org/apache/http/message/BasicNameValuePair;
          str = "CRED_TAG";
          localObject4 = mArg0;
          ((BasicNameValuePair)localObject3).<init>(str, (String)localObject4);
          ((List)localObject2).add(localObject3);
          break label572;
        }
        localObject2 = mCurCommand;
        localObject3 = "FEED_WATER";
        if (localObject2 == localObject3)
        {
          localObject2 = mNameValuePairs;
          localObject3 = new org/apache/http/message/BasicNameValuePair;
          str = "ownerID";
          localObject4 = DWApplication.getInstance();
          localObject4 = ((DWApplication)localObject4).getDWGameState();
          localObject4 = ((DWGameState)localObject4).getCurOwner();
          localObject4 = ((DWOwner)localObject4).getIDStr();
          ((BasicNameValuePair)localObject3).<init>(str, (String)localObject4);
          ((List)localObject2).add(localObject3);
          localObject2 = mNameValuePairs;
          localObject3 = new org/apache/http/message/BasicNameValuePair;
          str = "dogID";
          localObject4 = DWApplication.getInstance();
          localObject4 = ((DWApplication)localObject4).getDWGameState();
          localObject4 = ((DWGameState)localObject4).getCurDog();
          localObject4 = ((DWDog)localObject4).getIDStr();
          ((BasicNameValuePair)localObject3).<init>(str, (String)localObject4);
          ((List)localObject2).add(localObject3);
          localObject2 = mNameValuePairs;
          localObject3 = new org/apache/http/message/BasicNameValuePair;
          str = "WATER";
          localObject4 = mArg0;
          ((BasicNameValuePair)localObject3).<init>(str, (String)localObject4);
          ((List)localObject2).add(localObject3);
          localObject2 = mNameValuePairs;
          localObject3 = new org/apache/http/message/BasicNameValuePair;
          str = "FOOD";
          localObject4 = mArg1;
          ((BasicNameValuePair)localObject3).<init>(str, (String)localObject4);
          ((List)localObject2).add(localObject3);
          break label572;
        }
        localObject2 = mCurCommand;
        localObject3 = "SCORE_TRAINING";
        if (localObject2 == localObject3)
        {
          localObject2 = mNameValuePairs;
          localObject3 = new org/apache/http/message/BasicNameValuePair;
          str = "ownerID";
          localObject4 = DWApplication.getInstance();
          localObject4 = ((DWApplication)localObject4).getDWGameState();
          localObject4 = ((DWGameState)localObject4).getCurOwner();
          localObject4 = ((DWOwner)localObject4).getIDStr();
          ((BasicNameValuePair)localObject3).<init>(str, (String)localObject4);
          ((List)localObject2).add(localObject3);
          localObject2 = mNameValuePairs;
          localObject3 = new org/apache/http/message/BasicNameValuePair;
          str = "ownerID";
          localObject4 = DWApplication.getInstance();
          localObject4 = ((DWApplication)localObject4).getDWGameState();
          localObject4 = ((DWGameState)localObject4).getCurOwner();
          localObject4 = ((DWOwner)localObject4).getIDStr();
          ((BasicNameValuePair)localObject3).<init>(str, (String)localObject4);
          ((List)localObject2).add(localObject3);
          localObject2 = mNameValuePairs;
          localObject3 = new org/apache/http/message/BasicNameValuePair;
          str = "dogID";
          localObject4 = DWApplication.getInstance();
          localObject4 = ((DWApplication)localObject4).getDWGameState();
          localObject4 = ((DWGameState)localObject4).getCurDog();
          localObject4 = ((DWDog)localObject4).getIDStr();
          ((BasicNameValuePair)localObject3).<init>(str, (String)localObject4);
          ((List)localObject2).add(localObject3);
          localObject2 = mNameValuePairs;
          localObject3 = new org/apache/http/message/BasicNameValuePair;
          str = "GAME_TYPE";
          localObject4 = mArg0;
          ((BasicNameValuePair)localObject3).<init>(str, (String)localObject4);
          ((List)localObject2).add(localObject3);
          localObject2 = mNameValuePairs;
          localObject3 = new org/apache/http/message/BasicNameValuePair;
          str = "score";
          localObject4 = mArg1;
          ((BasicNameValuePair)localObject3).<init>(str, (String)localObject4);
          ((List)localObject2).add(localObject3);
          break label572;
        }
        localObject2 = mCurCommand;
        localObject3 = "GET_SCOREBOARD_DATA";
        if (localObject2 == localObject3)
        {
          localObject2 = mNameValuePairs;
          localObject3 = new org/apache/http/message/BasicNameValuePair;
          str = "ownerID";
          localObject4 = DWApplication.getInstance();
          localObject4 = ((DWApplication)localObject4).getDWGameState();
          localObject4 = ((DWGameState)localObject4).getCurOwner();
          localObject4 = ((DWOwner)localObject4).getIDStr();
          ((BasicNameValuePair)localObject3).<init>(str, (String)localObject4);
          ((List)localObject2).add(localObject3);
          localObject2 = mNameValuePairs;
          localObject3 = new org/apache/http/message/BasicNameValuePair;
          str = "dogID";
          localObject4 = DWApplication.getInstance();
          localObject4 = ((DWApplication)localObject4).getDWGameState();
          localObject4 = ((DWGameState)localObject4).getCurDog();
          localObject4 = ((DWDog)localObject4).getIDStr();
          ((BasicNameValuePair)localObject3).<init>(str, (String)localObject4);
          ((List)localObject2).add(localObject3);
          break label572;
        }
        localObject2 = mCurCommand;
        localObject3 = "GET_FIGHT_LIST";
        if (localObject2 == localObject3)
        {
          localObject2 = mNameValuePairs;
          localObject3 = new org/apache/http/message/BasicNameValuePair;
          str = "ownerID";
          localObject4 = DWApplication.getInstance();
          localObject4 = ((DWApplication)localObject4).getDWGameState();
          localObject4 = ((DWGameState)localObject4).getCurOwner();
          localObject4 = ((DWOwner)localObject4).getIDStr();
          ((BasicNameValuePair)localObject3).<init>(str, (String)localObject4);
          ((List)localObject2).add(localObject3);
          localObject2 = mNameValuePairs;
          localObject3 = new org/apache/http/message/BasicNameValuePair;
          str = "dogID";
          localObject4 = DWApplication.getInstance();
          localObject4 = ((DWApplication)localObject4).getDWGameState();
          localObject4 = ((DWGameState)localObject4).getCurDog();
          localObject4 = ((DWDog)localObject4).getIDStr();
          ((BasicNameValuePair)localObject3).<init>(str, (String)localObject4);
          ((List)localObject2).add(localObject3);
          localObject2 = mNameValuePairs;
          localObject3 = new org/apache/http/message/BasicNameValuePair;
          str = "searchStr";
          localObject4 = mArg0;
          ((BasicNameValuePair)localObject3).<init>(str, (String)localObject4);
          ((List)localObject2).add(localObject3);
          break label572;
        }
        localObject2 = mCurCommand;
        localObject3 = "BUY_ITEM";
        if (localObject2 == localObject3)
        {
          localObject2 = mNameValuePairs;
          localObject3 = new org/apache/http/message/BasicNameValuePair;
          str = "ownerID";
          localObject4 = DWApplication.getInstance();
          localObject4 = ((DWApplication)localObject4).getDWGameState();
          localObject4 = ((DWGameState)localObject4).getCurOwner();
          localObject4 = ((DWOwner)localObject4).getIDStr();
          ((BasicNameValuePair)localObject3).<init>(str, (String)localObject4);
          ((List)localObject2).add(localObject3);
          localObject2 = mNameValuePairs;
          localObject3 = new org/apache/http/message/BasicNameValuePair;
          str = "dogID";
          localObject4 = DWApplication.getInstance();
          localObject4 = ((DWApplication)localObject4).getDWGameState();
          localObject4 = ((DWGameState)localObject4).getCurDog();
          localObject4 = ((DWDog)localObject4).getIDStr();
          ((BasicNameValuePair)localObject3).<init>(str, (String)localObject4);
          ((List)localObject2).add(localObject3);
          localObject2 = mNameValuePairs;
          localObject3 = new org/apache/http/message/BasicNameValuePair;
          str = "itemID";
          localObject4 = DWApplication.getInstance();
          localObject4 = ((DWApplication)localObject4).getDWGameState();
          localObject4 = ((DWGameState)localObject4).getCurItemIDStr();
          ((BasicNameValuePair)localObject3).<init>(str, (String)localObject4);
          ((List)localObject2).add(localObject3);
          break label572;
        }
        localObject2 = mCurCommand;
        localObject3 = "FIGHT_CONFIRM_OVER";
        if (localObject2 != localObject3) {
          break label572;
        }
        localObject2 = mNameValuePairs;
        localObject3 = new org/apache/http/message/BasicNameValuePair;
        str = "ownerID";
        localObject4 = DWApplication.getInstance();
        localObject4 = ((DWApplication)localObject4).getDWGameState();
        localObject4 = ((DWGameState)localObject4).getCurOwner();
        localObject4 = ((DWOwner)localObject4).getIDStr();
        ((BasicNameValuePair)localObject3).<init>(str, (String)localObject4);
        ((List)localObject2).add(localObject3);
        localObject2 = mNameValuePairs;
        localObject3 = new org/apache/http/message/BasicNameValuePair;
        str = "dogID";
        localObject4 = DWApplication.getInstance();
        localObject4 = ((DWApplication)localObject4).getDWGameState();
        localObject4 = ((DWGameState)localObject4).getCurDog();
        localObject4 = ((DWDog)localObject4).getIDStr();
        ((BasicNameValuePair)localObject3).<init>(str, (String)localObject4);
        ((List)localObject2).add(localObject3);
        localObject2 = mNameValuePairs;
        localObject3 = new org/apache/http/message/BasicNameValuePair;
        str = "fightID";
        localObject4 = DWApplication.getInstance();
        localObject4 = ((DWApplication)localObject4).getDWGameState();
        localObject4 = ((DWGameState)localObject4).getCurOwner();
        localObject4 = ((DWOwner)localObject4).getFightIDStr();
        ((BasicNameValuePair)localObject3).<init>(str, (String)localObject4);
        ((List)localObject2).add(localObject3);
        break label572;
      }
      localObject3 = "ServerRequestsMgr";
      Object localObject2 = mNameValuePairs;
      localObject2 = ((List)localObject2).get(i);
      localObject2 = (NameValuePair)localObject2;
      localObject2 = localObject2.toString();
      Log.d((String)localObject3, (String)localObject2);
      i += 1;
    }
  }
  
  public String TestHttpGet(URI paramURI)
  {
    int i = 0;
    HttpGet localHttpGet = new org/apache/http/client/methods/HttpGet;
    localHttpGet.<init>();
    localHttpGet.setURI(paramURI);
    String str4 = "success";
    for (;;)
    {
      try
      {
        Object localObject2 = DWApplication.getInstance();
        localObject2 = ((DWApplication)localObject2).getHttpClient();
        HttpResponse localHttpResponse = ((HttpClient)localObject2).execute(localHttpGet);
        BufferedReader localBufferedReader = new java/io/BufferedReader;
        localObject2 = new java/io/InputStreamReader;
        localObject3 = localHttpResponse.getEntity();
        localObject3 = ((HttpEntity)localObject3).getContent();
        ((InputStreamReader)localObject2).<init>((InputStream)localObject3);
        localBufferedReader.<init>((Reader)localObject2);
        try
        {
          StringBuffer localStringBuffer = new java/lang/StringBuffer;
          localObject2 = "";
          localStringBuffer.<init>((String)localObject2);
          String str2 = "";
          localObject2 = "line.separator";
          String str1 = System.getProperty((String)localObject2);
          str2 = localBufferedReader.readLine();
          Object localObject1;
          if (str2 == null)
          {
            localBufferedReader.close();
            String str3 = localStringBuffer.toString();
            localObject2 = "ServerRequestsMgr";
            Log.d((String)localObject2, str3);
            localObject1 = localBufferedReader;
            localObject2 = str4;
            return (String)localObject2;
          }
          localObject2 = new java/lang/StringBuilder;
          localObject3 = String.valueOf(str2);
          ((StringBuilder)localObject2).<init>((String)localObject3);
          localObject2 = ((StringBuilder)localObject2).append(str1);
          localObject2 = ((StringBuilder)localObject2).toString();
          localStringBuffer.append((String)localObject2);
          continue;
          str5 = "ServerRequestsMgr";
        }
        catch (Exception localException2)
        {
          localException1 = localException2;
          localObject1 = localBufferedReader;
        }
      }
      catch (Exception localException3)
      {
        Object localObject3;
        String str5;
        Exception localException1 = localException3;
        continue;
      }
      localObject3 = localException1.getMessage();
      Log.d(str5, (String)localObject3);
      str5 = localException1.getMessage();
    }
  }
  
  public String TestHttpPost(String paramString)
  {
    HttpPost localHttpPost = new org/apache/http/client/methods/HttpPost;
    localHttpPost.<init>(paramString);
    String str1 = "success";
    try
    {
      localObject4 = new org/apache/http/client/entity/UrlEncodedFormEntity;
      localObject5 = mNameValuePairs;
      String str3 = "UTF-8";
      ((UrlEncodedFormEntity)localObject4).<init>((List)localObject5, str3);
      localHttpPost.setEntity((HttpEntity)localObject4);
    }
    catch (UnsupportedEncodingException localUnsupportedEncodingException)
    {
      for (;;)
      {
        Object localObject4;
        BasicResponseHandler localBasicResponseHandler;
        Object localObject3;
        localObject2 = localUnsupportedEncodingException;
        ((UnsupportedEncodingException)localObject2).printStackTrace();
      }
    }
    localBasicResponseHandler = new org/apache/http/impl/client/BasicResponseHandler;
    localBasicResponseHandler.<init>();
    localObject3 = "";
    try
    {
      localObject4 = DWApplication.getInstance();
      localObject4 = ((DWApplication)localObject4).getHttpClient();
      localObject4 = ((HttpClient)localObject4).execute(localHttpPost, localBasicResponseHandler);
      Object localObject1 = localObject4;
      localObject1 = (String)localObject1;
      localObject3 = localObject1;
      localObject4 = "ServerRequestsMgr";
      Log.d((String)localObject4, (String)localObject3);
      localObject4 = str1;
    }
    catch (Exception localException)
    {
      for (;;)
      {
        Object localObject2 = localException;
        String str2 = "ServerRequestsMgr";
        localObject5 = ((Exception)localObject2).getMessage();
        Log.d(str2, (String)localObject5);
        str2 = ((Exception)localObject2).getMessage();
      }
    }
    return (String)localObject4;
  }
  
  /* Error */
  public static android.graphics.Bitmap getImage(String paramString)
  {
    // Byte code:
    //   0: nop
    //   1: iconst_0
    //   2: istore 8
    //   4: new 383	java/net/URL
    //   7: astore 9
    //   9: new 452	java/lang/StringBuilder
    //   12: astore 10
    //   14: ldc 20
    //   16: astore 11
    //   18: aload 10
    //   20: aload 11
    //   22: invokespecial 280	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   25: aload 10
    //   27: aload_0
    //   28: invokevirtual 281	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   31: astore 10
    //   33: aload 10
    //   35: invokevirtual 314	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   38: astore 10
    //   40: aload 9
    //   42: aload 10
    //   44: invokespecial 40	java/net/URL:<init>	(Ljava/lang/String;)V
    //   47: aconst_null
    //   48: astore 7
    //   50: aconst_null
    //   51: astore_1
    //   52: aconst_null
    //   53: astore_3
    //   54: aload 9
    //   56: invokevirtual 151	java/net/URL:openConnection	()Ljava/net/URLConnection;
    //   59: astore 4
    //   61: aload 4
    //   63: invokevirtual 217	java/net/URLConnection:connect	()V
    //   66: aload 4
    //   68: invokevirtual 487	java/net/URLConnection:getInputStream	()Ljava/io/InputStream;
    //   71: astore 7
    //   73: new 117	java/io/BufferedInputStream
    //   76: astore_2
    //   77: aload_2
    //   78: aload 7
    //   80: invokespecial 384	java/io/BufferedInputStream:<init>	(Ljava/io/InputStream;)V
    //   83: aload_2
    //   84: invokestatic 214	android/graphics/BitmapFactory:decodeStream	(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    //   87: astore_3
    //   88: aload 7
    //   90: ifnull +8 -> 98
    //   93: aload 7
    //   95: invokevirtual 181	java/io/InputStream:close	()V
    //   98: aload_2
    //   99: ifnull +291 -> 390
    //   102: aload_2
    //   103: invokevirtual 278	java/io/BufferedInputStream:close	()V
    //   106: aload_2
    //   107: astore_1
    //   108: ldc 54
    //   110: astore 10
    //   112: new 452	java/lang/StringBuilder
    //   115: astore 11
    //   117: ldc 5
    //   119: astore 12
    //   121: aload 11
    //   123: aload 12
    //   125: invokespecial 280	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   128: aload 11
    //   130: aload 9
    //   132: invokevirtual 237	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   135: astore 11
    //   137: aload 11
    //   139: invokevirtual 314	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   142: astore 11
    //   144: aload 10
    //   146: aload 11
    //   148: invokestatic 105	android/util/Log:d	(Ljava/lang/String;Ljava/lang/String;)I
    //   151: pop
    //   152: aload 9
    //   154: astore 8
    //   156: aload_3
    //   157: astore 10
    //   159: aload 10
    //   161: areturn
    //   162: astore 10
    //   164: aload 10
    //   166: astore 6
    //   168: aload 6
    //   170: invokevirtual 17	java/net/MalformedURLException:printStackTrace	()V
    //   173: aconst_null
    //   174: astore 10
    //   176: goto -17 -> 159
    //   179: astore 10
    //   181: aload 10
    //   183: astore 5
    //   185: ldc 54
    //   187: astore 10
    //   189: ldc_w 466
    //   192: astore 11
    //   194: aload 10
    //   196: aload 11
    //   198: aload 5
    //   200: invokestatic 203	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   203: pop
    //   204: aload 7
    //   206: ifnull +8 -> 214
    //   209: aload 7
    //   211: invokevirtual 181	java/io/InputStream:close	()V
    //   214: aload_1
    //   215: ifnull -107 -> 108
    //   218: aload_1
    //   219: invokevirtual 278	java/io/BufferedInputStream:close	()V
    //   222: goto -114 -> 108
    //   225: astore 10
    //   227: aload 10
    //   229: astore 5
    //   231: ldc 54
    //   233: astore 10
    //   235: ldc 16
    //   237: astore 11
    //   239: aload 10
    //   241: aload 11
    //   243: invokestatic 49	android/util/Log:w	(Ljava/lang/String;Ljava/lang/String;)I
    //   246: pop
    //   247: goto -139 -> 108
    //   250: astore 10
    //   252: aload 10
    //   254: astore 5
    //   256: ldc 54
    //   258: astore 10
    //   260: ldc -76
    //   262: astore 11
    //   264: aload 10
    //   266: aload 11
    //   268: aload 5
    //   270: invokestatic 203	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   273: pop
    //   274: aload 7
    //   276: ifnull +8 -> 284
    //   279: aload 7
    //   281: invokevirtual 181	java/io/InputStream:close	()V
    //   284: aload_1
    //   285: ifnull -177 -> 108
    //   288: aload_1
    //   289: invokevirtual 278	java/io/BufferedInputStream:close	()V
    //   292: goto -184 -> 108
    //   295: astore 10
    //   297: aload 10
    //   299: astore 5
    //   301: ldc 54
    //   303: astore 10
    //   305: ldc 16
    //   307: astore 11
    //   309: aload 10
    //   311: aload 11
    //   313: invokestatic 49	android/util/Log:w	(Ljava/lang/String;Ljava/lang/String;)I
    //   316: pop
    //   317: goto -209 -> 108
    //   320: astore 10
    //   322: aload 7
    //   324: ifnull +8 -> 332
    //   327: aload 7
    //   329: invokevirtual 181	java/io/InputStream:close	()V
    //   332: aload_1
    //   333: ifnull +7 -> 340
    //   336: aload_1
    //   337: invokevirtual 278	java/io/BufferedInputStream:close	()V
    //   340: aload 10
    //   342: athrow
    //   343: astore 11
    //   345: aload 11
    //   347: astore 5
    //   349: ldc 54
    //   351: astore 11
    //   353: ldc 16
    //   355: astore 12
    //   357: aload 11
    //   359: aload 12
    //   361: invokestatic 49	android/util/Log:w	(Ljava/lang/String;Ljava/lang/String;)I
    //   364: pop
    //   365: goto -25 -> 340
    //   368: astore 10
    //   370: aload 10
    //   372: astore 5
    //   374: ldc 54
    //   376: astore 10
    //   378: ldc 16
    //   380: astore 11
    //   382: aload 10
    //   384: aload 11
    //   386: invokestatic 49	android/util/Log:w	(Ljava/lang/String;Ljava/lang/String;)I
    //   389: pop
    //   390: aload_2
    //   391: astore_1
    //   392: goto -284 -> 108
    //   395: astore 10
    //   397: aload_2
    //   398: astore_1
    //   399: goto -77 -> 322
    //   402: astore 10
    //   404: aload 10
    //   406: astore 5
    //   408: aload_2
    //   409: astore_1
    //   410: goto -154 -> 256
    //   413: astore 10
    //   415: aload 10
    //   417: astore 5
    //   419: aload_2
    //   420: astore_1
    //   421: goto -236 -> 185
    //   424: nop
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	425	0	paramString	String
    //   51	370	1	localObject1	Object
    //   76	344	2	localBufferedInputStream	java.io.BufferedInputStream
    //   53	104	3	localBitmap	android.graphics.Bitmap
    //   59	8	4	localURLConnection	java.net.URLConnection
    //   183	235	5	localObject2	Object
    //   166	3	6	localMalformedURLException1	java.net.MalformedURLException
    //   48	280	7	localInputStream	InputStream
    //   2	1	8	i	int
    //   154	1	8	localObject3	Object
    //   7	146	9	localURL	java.net.URL
    //   12	148	10	localObject4	Object
    //   162	3	10	localMalformedURLException2	java.net.MalformedURLException
    //   174	1	10	localObject5	Object
    //   179	3	10	localMalformedURLException3	java.net.MalformedURLException
    //   187	8	10	str1	String
    //   225	3	10	localIOException1	java.io.IOException
    //   233	7	10	str2	String
    //   250	3	10	localIOException2	java.io.IOException
    //   258	7	10	str3	String
    //   295	3	10	localIOException3	java.io.IOException
    //   303	7	10	str4	String
    //   320	21	10	localObject6	Object
    //   368	3	10	localIOException4	java.io.IOException
    //   376	7	10	str5	String
    //   395	1	10	localObject7	Object
    //   402	3	10	localIOException5	java.io.IOException
    //   413	3	10	localMalformedURLException4	java.net.MalformedURLException
    //   16	296	11	localObject8	Object
    //   343	3	11	localIOException6	java.io.IOException
    //   351	34	11	str6	String
    //   119	241	12	str7	String
    // Exception table:
    //   from	to	target	type
    //   4	9	162	java/net/MalformedURLException
    //   14	18	162	java/net/MalformedURLException
    //   25	31	162	java/net/MalformedURLException
    //   33	38	162	java/net/MalformedURLException
    //   40	47	162	java/net/MalformedURLException
    //   54	59	179	java/net/MalformedURLException
    //   61	66	179	java/net/MalformedURLException
    //   73	77	179	java/net/MalformedURLException
    //   209	214	225	java/io/IOException
    //   218	222	225	java/io/IOException
    //   54	59	250	java/io/IOException
    //   61	66	250	java/io/IOException
    //   73	77	250	java/io/IOException
    //   279	284	295	java/io/IOException
    //   288	292	295	java/io/IOException
    //   54	59	320	finally
    //   61	66	320	finally
    //   73	77	320	finally
    //   185	189	320	finally
    //   194	204	320	finally
    //   256	260	320	finally
    //   264	274	320	finally
    //   327	332	343	java/io/IOException
    //   336	340	343	java/io/IOException
    //   93	98	368	java/io/IOException
    //   102	106	368	java/io/IOException
    //   83	87	395	finally
    //   83	87	402	java/io/IOException
    //   83	87	413	java/net/MalformedURLException
  }
}

/* Location:
 * Qualified Name:     kagegames.apps.DWBeta.ServerRequestsMgr
 * Java Class Version: 5 (49.0)
 * JD-Core Version:    0.7.1
 */