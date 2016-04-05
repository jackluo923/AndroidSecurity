package com.appyet.wrapper;

import android.media.AudioManager.OnAudioFocusChangeListener;
import com.appyet.context.ApplicationContext;
import com.appyet.d.d;
import com.appyet.manager.as;

public class AudioFocusChangeListener
  implements AudioManager.OnAudioFocusChangeListener
{
  private ApplicationContext mApplicationContext;
  private boolean mWasPaused = false;
  
  public AudioFocusChangeListener(ApplicationContext paramApplicationContext)
  {
    mApplicationContext = paramApplicationContext;
  }
  
  public void AudioFocus(int paramInt)
  {
    switch (paramInt)
    {
    }
    for (;;)
    {
      return;
      try
      {
        if ((mWasPaused) && (!mApplicationContext.c.g()) && (mApplicationContext.c.m()) && (mApplicationContext.c.f() != null)) {
          mApplicationContext.c.j();
        }
        mWasPaused = false;
        return;
      }
      catch (Exception localException1)
      {
        d.a(localException1);
        return;
      }
      try
      {
        if (!mApplicationContext.c.g()) {
          continue;
        }
        mApplicationContext.c.h();
        mWasPaused = true;
        return;
      }
      catch (Exception localException2)
      {
        d.a(localException2);
        return;
      }
      try
      {
        if (!mApplicationContext.c.g()) {
          continue;
        }
        mApplicationContext.c.h();
        mWasPaused = true;
        return;
      }
      catch (Exception localException3)
      {
        d.a(localException3);
        return;
      }
      try
      {
        if (mApplicationContext.c.g())
        {
          mApplicationContext.c.h();
          mWasPaused = true;
          return;
        }
      }
      catch (Exception localException4)
      {
        d.a(localException4);
      }
    }
  }
  
  public void onAudioFocusChange(int paramInt)
  {
    AudioFocus(paramInt);
  }
}

/* Location:
 * Qualified Name:     com.appyet.wrapper.AudioFocusChangeListener
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */