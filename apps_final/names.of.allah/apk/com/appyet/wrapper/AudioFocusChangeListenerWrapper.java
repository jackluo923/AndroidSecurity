package com.appyet.wrapper;

import android.media.AudioManager;
import com.appyet.context.ApplicationContext;

public class AudioFocusChangeListenerWrapper
{
  private ApplicationContext mApplicationContext;
  private AudioFocusChangeListener mAudioFocusChangeListener;
  
  static
  {
    try
    {
      Class.forName("com.appyet.wrapper.AudioFocusChangeListener");
      return;
    }
    catch (Exception localException)
    {
      throw new RuntimeException(localException);
    }
  }
  
  public AudioFocusChangeListenerWrapper(ApplicationContext paramApplicationContext)
  {
    mApplicationContext = paramApplicationContext;
    mAudioFocusChangeListener = new AudioFocusChangeListener(mApplicationContext);
  }
  
  public static void checkAvailable() {}
  
  public boolean abandonFocus(AudioManager paramAudioManager)
  {
    try
    {
      int i = paramAudioManager.abandonAudioFocus(mAudioFocusChangeListener);
      return 1 == i;
    }
    catch (Exception paramAudioManager)
    {
      return false;
    }
    catch (Error paramAudioManager) {}
    return false;
  }
  
  public boolean requestFocus(AudioManager paramAudioManager)
  {
    try
    {
      int i = paramAudioManager.requestAudioFocus(mAudioFocusChangeListener, 3, 1);
      return 1 == i;
    }
    catch (Exception paramAudioManager)
    {
      return false;
    }
    catch (Error paramAudioManager) {}
    return false;
  }
}

/* Location:
 * Qualified Name:     com.appyet.wrapper.AudioFocusChangeListenerWrapper
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */