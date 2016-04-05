package com.millennialmedia.android;

import android.content.Context;
import android.media.MediaPlayer;
import android.media.SoundPool;
import android.net.Uri;
import java.lang.ref.WeakReference;

class BridgeMMMedia$Audio
{
  private static final int MAX_SOUNDS = 4;
  private static Audio sharedInstance;
  private BridgeMMMedia.Audio.OnLoadCompleteListener completionListener;
  private WeakReference<Context> contextRef;
  private MediaPlayer mediaPlayer;
  private SoundPool soundPool;
  
  private BridgeMMMedia$Audio() {}
  
  private BridgeMMMedia$Audio(Context paramContext)
  {
    contextRef = new WeakReference(paramContext.getApplicationContext());
  }
  
  static Audio sharedAudio(Context paramContext)
  {
    try
    {
      if (sharedInstance == null) {
        sharedInstance = new Audio(paramContext);
      }
      paramContext = sharedInstance;
      return paramContext;
    }
    finally {}
  }
  
  /* Error */
  boolean isPlaying()
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 41	com/millennialmedia/android/BridgeMMMedia$Audio:mediaPlayer	Landroid/media/MediaPlayer;
    //   6: ifnull +21 -> 27
    //   9: aload_0
    //   10: getfield 41	com/millennialmedia/android/BridgeMMMedia$Audio:mediaPlayer	Landroid/media/MediaPlayer;
    //   13: invokevirtual 57	android/media/MediaPlayer:isPlaying	()Z
    //   16: istore_2
    //   17: iload_2
    //   18: ifeq +9 -> 27
    //   21: iconst_1
    //   22: istore_2
    //   23: aload_0
    //   24: monitorexit
    //   25: iload_2
    //   26: ireturn
    //   27: iconst_0
    //   28: istore_2
    //   29: goto -6 -> 23
    //   32: astore_1
    //   33: aload_0
    //   34: monitorexit
    //   35: aload_1
    //   36: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	37	0	this	Audio
    //   32	4	1	localObject	Object
    //   16	13	2	bool	boolean
    // Exception table:
    //   from	to	target	type
    //   2	17	32	finally
  }
  
  MMJSResponse playAudio(Uri paramUri, boolean paramBoolean)
  {
    try
    {
      if (mediaPlayer != null)
      {
        mediaPlayer.release();
        mediaPlayer = null;
      }
      mediaPlayer = MediaPlayer.create((Context)contextRef.get(), paramUri);
      mediaPlayer.setLooping(paramBoolean);
      mediaPlayer.start();
      mediaPlayer.setOnCompletionListener(new BridgeMMMedia.Audio.1(this));
    }
    catch (Exception paramUri)
    {
      for (;;)
      {
        MMSDK.Log.e(paramUri.getCause());
      }
    }
    finally {}
    paramUri = MMJSResponse.responseWithSuccess("Audio playback started");
    return paramUri;
  }
  
  /* Error */
  MMJSResponse playSound(java.io.File paramFile)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 110	com/millennialmedia/android/BridgeMMMedia$Audio:soundPool	Landroid/media/SoundPool;
    //   6: ifnonnull +33 -> 39
    //   9: aload_0
    //   10: new 112	android/media/SoundPool
    //   13: dup
    //   14: iconst_4
    //   15: iconst_3
    //   16: iconst_0
    //   17: invokespecial 115	android/media/SoundPool:<init>	(III)V
    //   20: putfield 110	com/millennialmedia/android/BridgeMMMedia$Audio:soundPool	Landroid/media/SoundPool;
    //   23: aload_0
    //   24: new 117	com/millennialmedia/android/BridgeMMMedia$Audio$2
    //   27: dup
    //   28: aload_0
    //   29: aload_0
    //   30: getfield 110	com/millennialmedia/android/BridgeMMMedia$Audio:soundPool	Landroid/media/SoundPool;
    //   33: invokespecial 120	com/millennialmedia/android/BridgeMMMedia$Audio$2:<init>	(Lcom/millennialmedia/android/BridgeMMMedia$Audio;Landroid/media/SoundPool;)V
    //   36: putfield 122	com/millennialmedia/android/BridgeMMMedia$Audio:completionListener	Lcom/millennialmedia/android/BridgeMMMedia$Audio$OnLoadCompleteListener;
    //   39: aload_0
    //   40: getfield 122	com/millennialmedia/android/BridgeMMMedia$Audio:completionListener	Lcom/millennialmedia/android/BridgeMMMedia$Audio$OnLoadCompleteListener;
    //   43: aload_0
    //   44: getfield 110	com/millennialmedia/android/BridgeMMMedia$Audio:soundPool	Landroid/media/SoundPool;
    //   47: aload_1
    //   48: invokevirtual 128	java/io/File:getAbsolutePath	()Ljava/lang/String;
    //   51: iconst_1
    //   52: invokevirtual 132	android/media/SoundPool:load	(Ljava/lang/String;I)I
    //   55: invokevirtual 138	com/millennialmedia/android/BridgeMMMedia$Audio$OnLoadCompleteListener:testSample	(I)V
    //   58: ldc -116
    //   60: invokestatic 96	com/millennialmedia/android/MMJSResponse:responseWithSuccess	(Ljava/lang/String;)Lcom/millennialmedia/android/MMJSResponse;
    //   63: astore_1
    //   64: aload_0
    //   65: monitorexit
    //   66: aload_1
    //   67: areturn
    //   68: astore_1
    //   69: aload_0
    //   70: monitorexit
    //   71: aload_1
    //   72: athrow
    //   73: astore_1
    //   74: goto -16 -> 58
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	77	0	this	Audio
    //   0	77	1	paramFile	java.io.File
    // Exception table:
    //   from	to	target	type
    //   2	39	68	finally
    //   39	58	68	finally
    //   58	64	68	finally
    //   2	39	73	java/lang/Exception
    //   39	58	73	java/lang/Exception
  }
  
  MMJSResponse stop()
  {
    try
    {
      if (mediaPlayer != null)
      {
        mediaPlayer.release();
        mediaPlayer = null;
      }
      if (soundPool != null)
      {
        soundPool.release();
        soundPool = null;
      }
      if (completionListener != null)
      {
        completionListener.release();
        completionListener = null;
      }
      MMJSResponse localMMJSResponse = MMJSResponse.responseWithSuccess("Audio stopped");
      return localMMJSResponse;
    }
    finally {}
  }
}

/* Location:
 * Qualified Name:     com.millennialmedia.android.BridgeMMMedia.Audio
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */