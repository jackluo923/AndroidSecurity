package org.apache.cordova;

import android.app.Activity;
import android.media.AudioManager;
import java.io.PrintStream;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import org.apache.cordova.api.CallbackContext;
import org.apache.cordova.api.CordovaInterface;
import org.apache.cordova.api.CordovaPlugin;
import org.apache.cordova.api.PluginResult;
import org.apache.cordova.api.PluginResult.Status;
import org.json.JSONArray;
import org.json.JSONException;

public class AudioHandler
  extends CordovaPlugin
{
  public static String TAG = "AudioHandler";
  ArrayList<AudioPlayer> pausedForPhone = new ArrayList();
  HashMap<String, AudioPlayer> players = new HashMap();
  
  private boolean release(String paramString)
  {
    if (!players.containsKey(paramString)) {
      return false;
    }
    AudioPlayer localAudioPlayer = (AudioPlayer)players.get(paramString);
    players.remove(paramString);
    localAudioPlayer.destroy();
    return true;
  }
  
  public boolean execute(String paramString, JSONArray paramJSONArray, CallbackContext paramCallbackContext)
    throws JSONException
  {
    PluginResult.Status localStatus = PluginResult.Status.OK;
    if (paramString.equals("startRecordingAudio")) {
      startRecordingAudio(paramJSONArray.getString(0), FileHelper.stripFileProtocol(paramJSONArray.getString(1)));
    }
    for (;;)
    {
      paramCallbackContext.sendPluginResult(new PluginResult(localStatus, ""));
      return true;
      if (paramString.equals("stopRecordingAudio"))
      {
        stopRecordingAudio(paramJSONArray.getString(0));
      }
      else if (paramString.equals("startPlayingAudio"))
      {
        startPlayingAudio(paramJSONArray.getString(0), FileHelper.stripFileProtocol(paramJSONArray.getString(1)));
      }
      else if (paramString.equals("seekToAudio"))
      {
        seekToAudio(paramJSONArray.getString(0), paramJSONArray.getInt(1));
      }
      else if (paramString.equals("pausePlayingAudio"))
      {
        pausePlayingAudio(paramJSONArray.getString(0));
      }
      else if (paramString.equals("stopPlayingAudio"))
      {
        stopPlayingAudio(paramJSONArray.getString(0));
      }
      else if (paramString.equals("setVolume"))
      {
        try
        {
          setVolume(paramJSONArray.getString(0), Float.parseFloat(paramJSONArray.getString(1)));
        }
        catch (NumberFormatException paramString) {}
      }
      else
      {
        if (paramString.equals("getCurrentPositionAudio"))
        {
          paramCallbackContext.sendPluginResult(new PluginResult(localStatus, getCurrentPositionAudio(paramJSONArray.getString(0))));
          return true;
        }
        if (paramString.equals("getDurationAudio"))
        {
          paramCallbackContext.sendPluginResult(new PluginResult(localStatus, getDurationAudio(paramJSONArray.getString(0), paramJSONArray.getString(1))));
          return true;
        }
        if (!paramString.equals("create")) {
          break;
        }
        paramString = paramJSONArray.getString(0);
        paramJSONArray = new AudioPlayer(this, paramString, FileHelper.stripFileProtocol(paramJSONArray.getString(1)));
        players.put(paramString, paramJSONArray);
      }
    }
    if (paramString.equals("release"))
    {
      paramCallbackContext.sendPluginResult(new PluginResult(localStatus, release(paramJSONArray.getString(0))));
      return true;
    }
    return false;
  }
  
  public int getAudioOutputDevice()
  {
    AudioManager localAudioManager = (AudioManager)cordova.getActivity().getSystemService("audio");
    if (localAudioManager.getRouting(0) == 1) {
      return 1;
    }
    if (localAudioManager.getRouting(0) == 2) {
      return 2;
    }
    return -1;
  }
  
  public float getCurrentPositionAudio(String paramString)
  {
    paramString = (AudioPlayer)players.get(paramString);
    if (paramString != null) {
      return (float)paramString.getCurrentPosition() / 1000.0F;
    }
    return -1.0F;
  }
  
  public float getDurationAudio(String paramString1, String paramString2)
  {
    AudioPlayer localAudioPlayer = (AudioPlayer)players.get(paramString1);
    if (localAudioPlayer != null) {
      return localAudioPlayer.getDuration(paramString2);
    }
    localAudioPlayer = new AudioPlayer(this, paramString1, paramString2);
    players.put(paramString1, localAudioPlayer);
    return localAudioPlayer.getDuration(paramString2);
  }
  
  public void onDestroy()
  {
    Iterator localIterator = players.values().iterator();
    while (localIterator.hasNext()) {
      ((AudioPlayer)localIterator.next()).destroy();
    }
    players.clear();
  }
  
  public Object onMessage(String paramString, Object paramObject)
  {
    if (paramString.equals("telephone"))
    {
      if (("ringing".equals(paramObject)) || ("offhook".equals(paramObject))) {
        paramString = players.values().iterator();
      }
      while (paramString.hasNext())
      {
        paramObject = (AudioPlayer)paramString.next();
        if (((AudioPlayer)paramObject).getState() == AudioPlayer.STATE.MEDIA_RUNNING.ordinal())
        {
          pausedForPhone.add(paramObject);
          ((AudioPlayer)paramObject).pausePlaying();
          continue;
          if ("idle".equals(paramObject))
          {
            paramString = pausedForPhone.iterator();
            while (paramString.hasNext()) {
              ((AudioPlayer)paramString.next()).startPlaying(null);
            }
            pausedForPhone.clear();
          }
        }
      }
    }
    return null;
  }
  
  public void onReset()
  {
    onDestroy();
  }
  
  public void pausePlayingAudio(String paramString)
  {
    paramString = (AudioPlayer)players.get(paramString);
    if (paramString != null) {
      paramString.pausePlaying();
    }
  }
  
  public void seekToAudio(String paramString, int paramInt)
  {
    paramString = (AudioPlayer)players.get(paramString);
    if (paramString != null) {
      paramString.seekToPlaying(paramInt);
    }
  }
  
  public void setAudioOutputDevice(int paramInt)
  {
    AudioManager localAudioManager = (AudioManager)cordova.getActivity().getSystemService("audio");
    if (paramInt == 2)
    {
      localAudioManager.setRouting(0, 2, -1);
      return;
    }
    if (paramInt == 1)
    {
      localAudioManager.setRouting(0, 1, -1);
      return;
    }
    System.out.println("AudioHandler.setAudioOutputDevice() Error: Unknown output device.");
  }
  
  public void setVolume(String paramString, float paramFloat)
  {
    AudioPlayer localAudioPlayer = (AudioPlayer)players.get(paramString);
    if (localAudioPlayer != null)
    {
      localAudioPlayer.setVolume(paramFloat);
      return;
    }
    System.out.println("AudioHandler.setVolume() Error: Unknown Audio Player " + paramString);
  }
  
  public void startPlayingAudio(String paramString1, String paramString2)
  {
    AudioPlayer localAudioPlayer2 = (AudioPlayer)players.get(paramString1);
    AudioPlayer localAudioPlayer1 = localAudioPlayer2;
    if (localAudioPlayer2 == null)
    {
      localAudioPlayer1 = new AudioPlayer(this, paramString1, paramString2);
      players.put(paramString1, localAudioPlayer1);
    }
    localAudioPlayer1.startPlaying(paramString2);
  }
  
  public void startRecordingAudio(String paramString1, String paramString2)
  {
    AudioPlayer localAudioPlayer2 = (AudioPlayer)players.get(paramString1);
    AudioPlayer localAudioPlayer1 = localAudioPlayer2;
    if (localAudioPlayer2 == null)
    {
      localAudioPlayer1 = new AudioPlayer(this, paramString1, paramString2);
      players.put(paramString1, localAudioPlayer1);
    }
    localAudioPlayer1.startRecording(paramString2);
  }
  
  public void stopPlayingAudio(String paramString)
  {
    paramString = (AudioPlayer)players.get(paramString);
    if (paramString != null) {
      paramString.stopPlaying();
    }
  }
  
  public void stopRecordingAudio(String paramString)
  {
    paramString = (AudioPlayer)players.get(paramString);
    if (paramString != null) {
      paramString.stopRecording();
    }
  }
}

/* Location:
 * Qualified Name:     org.apache.cordova.AudioHandler
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */