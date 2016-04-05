package kagegames.apps.DWBeta;

import android.content.Context;
import android.media.AudioManager;
import android.media.MediaPlayer;
import android.media.SoundPool;
import android.util.Log;
import android.widget.Toast;

class SoundsManager
{
  private static String TAG;
  private int mBuiltInPosition;
  private int mGrowlLoudID;
  private int mIntroID;
  private MediaPlayer mMediaPlayer;
  private String mSongName;
  private String mSongPath;
  private SoundPool soundPool;
  
  static
  {
    String str = "SoundsManager";
    TAG = str;
  }
  
  SoundsManager()
  {
    Object localObject = "";
    mSongPath = ((String)localObject);
    localObject = "";
    mSongName = ((String)localObject);
    localObject = new android/media/SoundPool;
    int i = 2;
    int j = 3;
    int k = 0;
    ((SoundPool)localObject).<init>(i, j, k);
    soundPool = ((SoundPool)localObject);
    localObject = new android/media/MediaPlayer;
    ((MediaPlayer)localObject).<init>();
    mMediaPlayer = ((MediaPlayer)localObject);
    LoadSoundEffects();
  }
  
  /* Error */
  private void LoadMediaPlayer(int paramInt)
  {
    // Byte code:
    //   0: nop
    //   1: aload_0
    //   2: getfield 73	kagegames/apps/DWBeta/SoundsManager:mMediaPlayer	Landroid/media/MediaPlayer;
    //   5: astore_2
    //   6: aload_2
    //   7: invokevirtual 33	android/media/MediaPlayer:reset	()V
    //   10: invokestatic 60	kagegames/apps/DWBeta/DWApplication:getAppResources	()Landroid/content/res/Resources;
    //   13: astore_2
    //   14: aload_2
    //   15: iload_1
    //   16: invokevirtual 204	android/content/res/Resources:openRawResourceFd	(I)Landroid/content/res/AssetFileDescriptor;
    //   19: astore 8
    //   21: aload 8
    //   23: ifnonnull +54 -> 77
    //   26: return
    //   27: astore_2
    //   28: aload_2
    //   29: astore 9
    //   31: getstatic 163	kagegames/apps/DWBeta/SoundsManager:TAG	Ljava/lang/String;
    //   34: astore_2
    //   35: new 122	java/lang/StringBuilder
    //   38: astore_3
    //   39: ldc 75
    //   41: astore 4
    //   43: aload_3
    //   44: aload 4
    //   46: invokespecial 186	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   49: aload 9
    //   51: invokevirtual 41	java/lang/Exception:getMessage	()Ljava/lang/String;
    //   54: astore 4
    //   56: aload_3
    //   57: aload 4
    //   59: invokevirtual 154	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   62: astore_3
    //   63: aload_3
    //   64: invokevirtual 8	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   67: astore_3
    //   68: aload_2
    //   69: aload_3
    //   70: invokestatic 45	android/util/Log:d	(Ljava/lang/String;Ljava/lang/String;)I
    //   73: pop
    //   74: goto -64 -> 10
    //   77: aload_0
    //   78: getfield 73	kagegames/apps/DWBeta/SoundsManager:mMediaPlayer	Landroid/media/MediaPlayer;
    //   81: astore_2
    //   82: aload 8
    //   84: invokevirtual 71	android/content/res/AssetFileDescriptor:getFileDescriptor	()Ljava/io/FileDescriptor;
    //   87: astore_3
    //   88: aload 8
    //   90: invokevirtual 213	android/content/res/AssetFileDescriptor:getStartOffset	()J
    //   93: lstore 4
    //   95: aload 8
    //   97: invokevirtual 87	android/content/res/AssetFileDescriptor:getLength	()J
    //   100: lstore 6
    //   102: aload_2
    //   103: aload_3
    //   104: lload 4
    //   106: lload 6
    //   108: invokevirtual 143	android/media/MediaPlayer:setDataSource	(Ljava/io/FileDescriptor;JJ)V
    //   111: aload 8
    //   113: invokevirtual 108	android/content/res/AssetFileDescriptor:close	()V
    //   116: aload_0
    //   117: getfield 73	kagegames/apps/DWBeta/SoundsManager:mMediaPlayer	Landroid/media/MediaPlayer;
    //   120: astore_2
    //   121: aload_2
    //   122: invokevirtual 78	android/media/MediaPlayer:prepare	()V
    //   125: goto -99 -> 26
    //   128: astore_2
    //   129: aload_2
    //   130: astore 9
    //   132: aload 9
    //   134: invokevirtual 184	java/lang/Exception:printStackTrace	()V
    //   137: goto -111 -> 26
    //   140: nop
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	141	0	this	SoundsManager
    //   0	141	1	paramInt	int
    //   5	10	2	localObject1	Object
    //   27	2	2	localException1	Exception
    //   34	88	2	localObject2	Object
    //   128	2	2	localException2	Exception
    //   38	66	3	localObject3	Object
    //   41	17	4	str	String
    //   93	12	4	l1	long
    //   100	7	6	l2	long
    //   19	93	8	localAssetFileDescriptor	android.content.res.AssetFileDescriptor
    //   29	104	9	localException3	Exception
    // Exception table:
    //   from	to	target	type
    //   1	6	27	java/lang/Exception
    //   10	13	128	java/lang/Exception
    //   14	19	128	java/lang/Exception
    //   77	82	128	java/lang/Exception
    //   88	93	128	java/lang/Exception
    //   95	100	128	java/lang/Exception
    //   102	111	128	java/lang/Exception
    //   116	121	128	java/lang/Exception
  }
  
  private void LoadSoundEffects()
  {
    int m = 3;
    int i = 0;
    SoundPool localSoundPool = soundPool;
    if (localSoundPool != null)
    {
      localSoundPool = soundPool;
      localSoundPool.release();
      localSoundPool = null;
      soundPool = localSoundPool;
    }
    localSoundPool = new android/media/SoundPool;
    int k = 0;
    localSoundPool.<init>(m, m, k);
    soundPool = localSoundPool;
    localSoundPool = soundPool;
    DWApplication localDWApplication = DWApplication.getInstance();
    m = 2131034112;
    int n = 1;
    int j = localSoundPool.load(localDWApplication, m, n);
    mGrowlLoudID = j;
  }
  
  public void cleanup()
  {
    MediaPlayer localMediaPlayer = null;
    Object localObject = mMediaPlayer;
    ((MediaPlayer)localObject).release();
    mMediaPlayer = localMediaPlayer;
    localObject = soundPool;
    int i = mGrowlLoudID;
    ((SoundPool)localObject).unload(i);
    soundPool = localMediaPlayer;
  }
  
  public void pauseSound()
  {
    try
    {
      MediaPlayer localMediaPlayer = mMediaPlayer;
      localMediaPlayer.pause();
      return;
    }
    catch (Exception localException2)
    {
      for (;;)
      {
        Exception localException1 = localException2;
        String str1 = TAG;
        Object localObject = new java/lang/StringBuilder;
        String str2 = "Sound Pause Failed";
        ((StringBuilder)localObject).<init>(str2);
        str2 = localException1.getMessage();
        localObject = ((StringBuilder)localObject).append(str2);
        localObject = ((StringBuilder)localObject).toString();
        Log.d(str1, (String)localObject);
      }
    }
  }
  
  public void playChallengeSoundEffect()
  {
    Object localObject = DWApplication.getInstance();
    localObject = ((DWApplication)localObject).getPrefsManager();
    boolean bool = ((PrefsManager)localObject).isSoundOn();
    if (!bool) {}
    for (;;)
    {
      return;
      int i = mGrowlLoudID;
      playSoundEffect(i);
    }
  }
  
  public void playFightMusic()
  {
    int n = 0;
    Object localObject1 = DWApplication.getInstance();
    localObject1 = ((DWApplication)localObject1).getPrefsManager();
    boolean bool = ((PrefsManager)localObject1).isSoundOn();
    if (!bool) {}
    for (;;)
    {
      return;
      int i = 2131034115;
      LoadMediaPlayer(i);
      try
      {
        MediaPlayer localMediaPlayer = mMediaPlayer;
        int k = 0;
        localMediaPlayer.seekTo(k);
        localMediaPlayer = mMediaPlayer;
        localMediaPlayer.start();
      }
      catch (Exception localException2)
      {
        Exception localException1 = localException2;
        Object localObject2 = TAG;
        Object localObject3 = new java/lang/StringBuilder;
        String str = "MediaPlayer failed to play in PlayIntroMusic";
        ((StringBuilder)localObject3).<init>(str);
        str = localException1.getMessage();
        localObject3 = ((StringBuilder)localObject3).append(str);
        localObject3 = ((StringBuilder)localObject3).toString();
        Log.d((String)localObject2, (String)localObject3);
        localObject2 = DWApplication.getInstance();
        localObject3 = "could not play sound";
        int m = 1;
        Toast localToast = Toast.makeText((Context)localObject2, (CharSequence)localObject3, m);
        int j = 17;
        localToast.setGravity(j, n, n);
        localToast.show();
      }
    }
  }
  
  public void playIntroMusic()
  {
    int n = 0;
    Object localObject1 = DWApplication.getInstance();
    localObject1 = ((DWApplication)localObject1).getPrefsManager();
    boolean bool = ((PrefsManager)localObject1).isSoundOn();
    if (!bool) {}
    for (;;)
    {
      return;
      int i = 2131034115;
      LoadMediaPlayer(i);
      try
      {
        MediaPlayer localMediaPlayer = mMediaPlayer;
        int k = 0;
        localMediaPlayer.seekTo(k);
        localMediaPlayer = mMediaPlayer;
        localMediaPlayer.start();
      }
      catch (Exception localException2)
      {
        Exception localException1 = localException2;
        Object localObject2 = TAG;
        Object localObject3 = new java/lang/StringBuilder;
        String str = "MediaPlayer failed to play in PlayIntroMusic";
        ((StringBuilder)localObject3).<init>(str);
        str = localException1.getMessage();
        localObject3 = ((StringBuilder)localObject3).append(str);
        localObject3 = ((StringBuilder)localObject3).toString();
        Log.d((String)localObject2, (String)localObject3);
        localObject2 = DWApplication.getInstance();
        localObject3 = "could not play sound";
        int m = 1;
        Toast localToast = Toast.makeText((Context)localObject2, (CharSequence)localObject3, m);
        int j = 17;
        localToast.setGravity(j, n, n);
        localToast.show();
      }
    }
  }
  
  public void playSoundEffect(int paramInt)
  {
    int n = 1;
    int i1 = 0;
    Object localObject1 = DWApplication.getInstance();
    localObject1 = ((DWApplication)localObject1).getPrefsManager();
    boolean bool = ((PrefsManager)localObject1).isSoundOn();
    if (!bool) {}
    for (;;)
    {
      return;
      DWApplication localDWApplication = DWApplication.getInstance();
      String str1 = "audio";
      Object localObject3 = localDWApplication.getSystemService(str1);
      localObject3 = (AudioManager)localObject3;
      int i = 3;
      int i2 = ((AudioManager)localObject3).getStreamVolume(i);
      SoundPool localSoundPool = soundPool;
      float f1 = i2;
      float f2 = i2;
      float f3 = 1.0F;
      int m = paramInt;
      int j = localSoundPool.play(m, f1, f2, n, i1, f3);
      if (j == 0)
      {
        Object localObject2 = TAG;
        String str2 = "SoundPool.play() failed to play in PlaySound()";
        Log.d((String)localObject2, str2);
        localObject2 = DWApplication.getInstance();
        str2 = "could not play sound effect";
        Toast localToast = Toast.makeText((Context)localObject2, str2, n);
        int k = 17;
        localToast.setGravity(k, i1, i1);
        localToast.show();
      }
    }
  }
  
  public void restoreSound()
  {
    String str1 = mSongPath;
    int i = str1.length();
    if (i > 0) {}
    try
    {
      MediaPlayer localMediaPlayer = mMediaPlayer;
      int j = 4000;
      localMediaPlayer.seekTo(j);
      localMediaPlayer = mMediaPlayer;
      localMediaPlayer.start();
      return;
    }
    catch (Exception localException2)
    {
      for (;;)
      {
        Exception localException1 = localException2;
        String str2 = TAG;
        Object localObject = new java/lang/StringBuilder;
        String str3 = "Sound Play Failed";
        ((StringBuilder)localObject).<init>(str3);
        str3 = localException1.getMessage();
        localObject = ((StringBuilder)localObject).append(str3);
        localObject = ((StringBuilder)localObject).toString();
        Log.d(str2, (String)localObject);
      }
    }
  }
  
  void stopFightMusic()
  {
    try
    {
      MediaPlayer localMediaPlayer = mMediaPlayer;
      localMediaPlayer.pause();
      localMediaPlayer = mMediaPlayer;
      localMediaPlayer.release();
      return;
    }
    catch (Exception localException2)
    {
      for (;;)
      {
        Exception localException1 = localException2;
        String str1 = TAG;
        Object localObject = new java/lang/StringBuilder;
        String str2 = "Sound pause/release failed";
        ((StringBuilder)localObject).<init>(str2);
        str2 = localException1.getMessage();
        localObject = ((StringBuilder)localObject).append(str2);
        localObject = ((StringBuilder)localObject).toString();
        Log.d(str1, (String)localObject);
      }
    }
  }
  
  public void turnOnSounds()
  {
    MediaPlayer localMediaPlayer = mMediaPlayer;
    if (localMediaPlayer == null)
    {
      localMediaPlayer = new android/media/MediaPlayer;
      localMediaPlayer.<init>();
      mMediaPlayer = localMediaPlayer;
    }
  }
  
  private void unpauseSound()
  {
    MediaPlayer localMediaPlayer = mMediaPlayer;
    localMediaPlayer.start();
  }
}

/* Location:
 * Qualified Name:     kagegames.apps.DWBeta.SoundsManager
 * Java Class Version: 1.2 (46.0)
 * JD-Core Version:    0.7.1
 */