package kagegames.apps.DWBeta;

import android.content.Context;
import android.content.Intent;
import android.content.res.AssetManager;
import android.graphics.Typeface;
import android.os.Bundle;
import android.os.SystemClock;
import android.util.Log;
import android.widget.ProgressBar;
import android.widget.Toast;

public abstract class _DWActivity
  extends _MemEffActivity
{
  Typeface mFace;
  PollManager mPollManager;
  protected ProgressBar mProgressAggr;
  protected ProgressBar mProgressHealth;
  protected ProgressBar mProgressStrength;
  protected StatusBarView mStatusBarView;
  
  protected void CheckForInterrupts()
  {
    boolean bool4 = true;
    DWApplication localDWApplication = DWApplication.getInstance();
    boolean bool1 = localDWApplication.IsInInterrupt();
    if (bool1) {}
    for (;;)
    {
      return;
      Object localObject1 = DWApplication.getInstance();
      localObject1 = ((DWApplication)localObject1).getDWGameState();
      localObject1 = ((DWGameState)localObject1).getSystemMsg();
      Intent localIntent1;
      String str;
      if (localObject1 != null)
      {
        localObject1 = DWApplication.getInstance();
        localObject1 = ((DWApplication)localObject1).getDWGameState();
        localObject1 = ((DWGameState)localObject1).getSystemMsg();
        boolean bool2 = ((DWSystemMsg)localObject1).isForceUpdate();
        if (bool2)
        {
          localIntent1 = new android/content/Intent;
          localIntent1.<init>();
          Object localObject2 = getApplicationContext();
          str = "kagegames.apps.DWBeta.SystemMsgModalActivity";
          localIntent1.setClassName((Context)localObject2, str);
          localObject2 = DWApplication.getInstance();
          ((DWApplication)localObject2).setInInterrupt(bool4);
          int i = 8;
          startActivityForResult(localIntent1, i);
        }
      }
      Object localObject3 = DWApplication.getInstance();
      localObject3 = ((DWApplication)localObject3).getDWGameState();
      localObject3 = ((DWGameState)localObject3).getCurFight();
      if (localObject3 == null)
      {
        localObject3 = DWApplication.getInstance();
        localObject3 = ((DWApplication)localObject3).getDWGameState();
        localObject3 = ((DWGameState)localObject3).getCurFightResult();
        if (localObject3 == null) {}
      }
      else
      {
        localIntent1 = new android/content/Intent;
        localIntent1.<init>();
        localObject3 = getApplicationContext();
        str = "kagegames.apps.DWBeta.FightActivity";
        localIntent1.setClassName((Context)localObject3, str);
        localObject3 = DWApplication.getInstance();
        ((DWApplication)localObject3).setInInterrupt(bool4);
        startActivity(localIntent1);
        continue;
      }
      localObject3 = DWApplication.getInstance();
      localObject3 = ((DWApplication)localObject3).getDWGameState();
      boolean bool3 = ((DWGameState)localObject3).HasChallenger();
      Intent localIntent2;
      Object localObject4;
      if (bool3)
      {
        localIntent2 = new android/content/Intent;
        localIntent2.<init>();
        localObject4 = getApplicationContext();
        str = "kagegames.apps.DWBeta.FightChallengeActivity";
        localIntent2.setClassName((Context)localObject4, str);
        localObject4 = DWApplication.getInstance();
        ((DWApplication)localObject4).setInInterrupt(bool4);
        startActivity(localIntent2);
      }
      else
      {
        localObject4 = DWApplication.getInstance();
        localObject4 = ((DWApplication)localObject4).getDWGameState();
        localObject4 = ((DWGameState)localObject4).GetBust();
        if (localObject4 != null)
        {
          localIntent2 = new android/content/Intent;
          localIntent2.<init>();
          localObject4 = getApplicationContext();
          str = "kagegames.apps.DWBeta.BustActivity";
          localIntent2.setClassName((Context)localObject4, str);
          localObject4 = DWApplication.getInstance();
          ((DWApplication)localObject4).setInInterrupt(bool4);
          startActivity(localIntent2);
        }
        else
        {
          localObject4 = DWApplication.getInstance();
          localObject4 = ((DWApplication)localObject4).getDWGameState();
          localObject4 = ((DWGameState)localObject4).GetKill();
          if (localObject4 != null)
          {
            localIntent2 = new android/content/Intent;
            localIntent2.<init>();
            localObject4 = getApplicationContext();
            str = "kagegames.apps.DWBeta.KillActivity";
            localIntent2.setClassName((Context)localObject4, str);
            localObject4 = DWApplication.getInstance();
            ((DWApplication)localObject4).setInInterrupt(bool4);
            startActivity(localIntent2);
          }
        }
      }
    }
  }
  
  public void UpdateUI()
  {
    int i1 = 0;
    Object localObject1 = DWApplication.getInstance();
    localObject1 = ((DWApplication)localObject1).getDWGameState();
    boolean bool = ((DWGameState)localObject1).WasSuccessful();
    if (!bool)
    {
      Object localObject2 = DWApplication.getInstance();
      localObject2 = ((DWApplication)localObject2).getDWGameState();
      localObject2 = ((DWGameState)localObject2).getErrorMessage();
      int j = 1;
      Toast localToast = Toast.makeText(this, (CharSequence)localObject2, j);
      int i = 17;
      localToast.setGravity(i, i1, i1);
      localToast.show();
      long l = 3000L;
      SystemClock.sleep(l);
      Intent localIntent = new android/content/Intent;
      localIntent.<init>();
      setResult(i1, localIntent);
      finish();
    }
    for (;;)
    {
      return;
      Object localObject3 = mStatusBarView;
      if (localObject3 != null)
      {
        localObject3 = mProgressHealth;
        ((ProgressBar)localObject3).setProgress(i1);
        localObject3 = mProgressStrength;
        ((ProgressBar)localObject3).setProgress(i1);
        localObject3 = mProgressAggr;
        ((ProgressBar)localObject3).setProgress(i1);
        localObject3 = mProgressHealth;
        Object localObject4 = DWApplication.getInstance();
        localObject4 = ((DWApplication)localObject4).getDWGameState();
        localObject4 = ((DWGameState)localObject4).getCurDog();
        int k = ((DWDog)localObject4).getHealth();
        ((ProgressBar)localObject3).setProgress(k);
        localObject3 = mProgressStrength;
        Object localObject5 = DWApplication.getInstance();
        localObject5 = ((DWApplication)localObject5).getDWGameState();
        localObject5 = ((DWGameState)localObject5).getCurDog();
        int m = ((DWDog)localObject5).getStrength();
        ((ProgressBar)localObject3).setProgress(m);
        localObject3 = mProgressAggr;
        Object localObject6 = DWApplication.getInstance();
        localObject6 = ((DWApplication)localObject6).getDWGameState();
        localObject6 = ((DWGameState)localObject6).getCurDog();
        int n = ((DWDog)localObject6).getAggression();
        ((ProgressBar)localObject3).setProgress(n);
        localObject3 = mStatusBarView;
        ((StatusBarView)localObject3).invalidate();
      }
    }
  }
  
  protected void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    switch (paramInt1)
    {
    }
    for (;;)
    {
      return;
      finish();
    }
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    int i = 3;
    setVolumeControlStream(i);
    i = 2131099670;
    Object localObject1 = findViewById(i);
    localObject1 = (StatusBarView)localObject1;
    mStatusBarView = ((StatusBarView)localObject1);
    int j = 2131099671;
    Object localObject2 = findViewById(j);
    localObject2 = (ProgressBar)localObject2;
    mProgressHealth = ((ProgressBar)localObject2);
    int k = 2131099672;
    Object localObject3 = findViewById(k);
    localObject3 = (ProgressBar)localObject3;
    mProgressStrength = ((ProgressBar)localObject3);
    int m = 2131099673;
    Object localObject4 = findViewById(m);
    localObject4 = (ProgressBar)localObject4;
    mProgressAggr = ((ProgressBar)localObject4);
    localObject4 = getAssets();
    String str = "bohemian_typewriter.ttf";
    localObject4 = Typeface.createFromAsset((AssetManager)localObject4, str);
    mFace = ((Typeface)localObject4);
  }
  
  public void onDestroy()
  {
    boolean bool = isFinishing();
    Object localObject;
    String str;
    if (bool)
    {
      localObject = "DogWars";
      str = "OnDestroy() (user finish) in _DWActivity";
      Log.d((String)localObject, str);
    }
    for (;;)
    {
      localObject = mPollManager;
      if (localObject != null)
      {
        localObject = mPollManager;
        ((PollManager)localObject).cleanup();
      }
      localObject = null;
      mPollManager = ((PollManager)localObject);
      super.onDestroy();
      return;
      localObject = "DogWars";
      str = "OnDestroy() (system finish) in _DWActivity";
      Log.d((String)localObject, str);
    }
  }
  
  protected void onPause()
  {
    super.onPause();
    Object localObject = mPollManager;
    if (localObject != null)
    {
      localObject = mPollManager;
      ((PollManager)localObject).pause();
    }
    localObject = "DogWars";
    String str = "OnPause() in _DWActivity";
    Log.d((String)localObject, str);
  }
  
  public void onRestart()
  {
    super.onRestart();
    String str1 = "DogWars";
    String str2 = "OnRestart() in _DWActivity";
    Log.d(str1, str2);
  }
  
  public void onResume()
  {
    Object localObject = mPollManager;
    if (localObject != null)
    {
      localObject = mPollManager;
      ((PollManager)localObject).unpause();
    }
    super.onResume();
    localObject = "DogWars";
    String str = "OnResume() in _DWActivity";
    Log.d((String)localObject, str);
  }
  
  protected void onSaveInstanceState(Bundle paramBundle)
  {
    super.onSaveInstanceState(paramBundle);
    String str1 = "DogWars";
    String str2 = "SIS() in Activity";
    Log.d(str1, str2);
  }
  
  public void onStart()
  {
    super.onStart();
    String str1 = "DogWars";
    String str2 = "OnStart() in _DWActivity";
    Log.d(str1, str2);
  }
  
  public void onStop()
  {
    super.onStop();
    String str1 = "DogWars";
    String str2 = "OnStop() in Activity";
    Log.d(str1, str2);
  }
}

/* Location:
 * Qualified Name:     kagegames.apps.DWBeta._DWActivity
 * Java Class Version: 1.2 (46.0)
 * JD-Core Version:    0.7.1
 */