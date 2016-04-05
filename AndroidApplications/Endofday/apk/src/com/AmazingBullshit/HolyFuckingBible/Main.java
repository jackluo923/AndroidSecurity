package com.AmazingBullshit.HolyFuckingBible;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.net.Uri;
import android.os.Bundle;
import android.view.ContextMenu;
import android.view.ContextMenu.ContextMenuInfo;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.View.OnLongClickListener;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.SoundboardEngine.Sound;
import com.SoundboardEngine.SoundManager;
import com.SoundboardEngine.SoundSaver;

public class Main
  extends Activity
{
  private static final int BUY_TSHIRT = 3;
  private static final int FACEBOOK = 2;
  private static final int MORE_SOUNDBOARDS = 0;
  private static final int WATCH_VIDEOS = 1;
  private Context context;
  private LayoutInflater inflater;
  private LinearLayout layout;
  private int saveSoundId;
  private String saveSoundName;
  private SoundManager soundManager;
  private SoundSaver soundSaver;
  
  public void addSoundButtons(View paramView, Sound[] paramArrayOfSound, String paramString, int paramInt)
  {
    int i1 = 10;
    int n = 5;
    int i = 0;
    int k = paramArrayOfSound.length;
    if (i >= k) {
      return;
    }
    Object localObject4 = paramArrayOfSound[i];
    int j = SoundId;
    localObject4 = paramArrayOfSound[i];
    localObject4 = SoundName;
    String str1 = "";
    if (localObject4 != str1)
    {
      localObject4 = paramArrayOfSound[i];
      localObject4 = SoundName;
    }
    for (Object localObject3 = localObject4;; localObject3 = localObject4)
    {
      localObject4 = inflater;
      int m = 2130903041;
      ViewGroup localViewGroup = null;
      Object localObject2 = ((LayoutInflater)localObject4).inflate(m, localViewGroup);
      localObject2 = (TextView)localObject2;
      ((TextView)localObject2).setPadding(i1, n, n, i1);
      ((TextView)localObject2).setText((CharSequence)localObject3);
      ((TextView)localObject2).setBackgroundResource(paramInt);
      localObject4 = new com/AmazingBullshit/HolyFuckingBible/Main$2;
      ((Main.2)localObject4).<init>(this, j);
      ((TextView)localObject2).setOnClickListener((View.OnClickListener)localObject4);
      localObject4 = new com/AmazingBullshit/HolyFuckingBible/Main$3;
      ((Main.3)localObject4).<init>(this, j, (String)localObject3);
      ((TextView)localObject2).setOnLongClickListener((View.OnLongClickListener)localObject4);
      registerForContextMenu((View)localObject2);
      Object localObject1 = paramView;
      localObject1 = (LinearLayout)localObject1;
      localObject4 = localObject1;
      ((LinearLayout)localObject4).addView((View)localObject2);
      i += 1;
      break;
      localObject4 = new java/lang/StringBuilder;
      String str2 = "Sound ";
      ((StringBuilder)localObject4).<init>(str2);
      str2 = String.valueOf(i);
      localObject4 = ((StringBuilder)localObject4).append(str2);
      localObject4 = ((StringBuilder)localObject4).toString();
    }
  }
  
  private void navigateToUrl(String paramString)
  {
    Intent localIntent = new android/content/Intent;
    Object localObject = "android.intent.action.VIEW";
    localIntent.<init>((String)localObject);
    localObject = Uri.parse(paramString);
    localIntent.setData((Uri)localObject);
    startActivity(localIntent);
  }
  
  public boolean onContextItemSelected(MenuItem paramMenuItem)
  {
    int i4 = 1;
    Resources localResources = getResources();
    Object localObject = paramMenuItem.getTitle();
    int j = 2131099651;
    String str1 = localResources.getString(j);
    int k;
    String str5;
    SoundSaver localSoundSaver1;
    if (localObject == str1)
    {
      localObject = soundSaver;
      k = saveSoundId;
      str5 = saveSoundName;
      localSoundSaver1 = soundSaver;
      localSoundSaver1.getClass();
      ((SoundSaver)localObject).SaveSound(k, str5, i4);
    }
    int i;
    for (localObject = i4;; i = 0)
    {
      return (boolean)localObject;
      localObject = paramMenuItem.getTitle();
      k = 2131099652;
      String str2 = localResources.getString(k);
      if (localObject == str2)
      {
        localObject = soundSaver;
        m = saveSoundId;
        str5 = saveSoundName;
        localSoundSaver1 = soundSaver;
        localSoundSaver1.getClass();
        int i2 = 2;
        ((SoundSaver)localObject).SaveSound(m, str5, i2);
        break;
      }
      localObject = paramMenuItem.getTitle();
      int m = 2131099653;
      String str3 = localResources.getString(m);
      if (localObject == str3)
      {
        localObject = soundSaver;
        n = saveSoundId;
        str5 = saveSoundName;
        SoundSaver localSoundSaver2 = soundSaver;
        localSoundSaver2.getClass();
        int i3 = 4;
        ((SoundSaver)localObject).SaveSound(n, str5, i3);
        break;
      }
      localObject = paramMenuItem.getTitle();
      int n = 2131099654;
      String str4 = localResources.getString(n);
      if (localObject == str4)
      {
        localObject = soundSaver;
        int i1 = saveSoundId;
        str5 = saveSoundName;
        ((SoundSaver)localObject).RemoveSound(i1, str5);
        break;
      }
    }
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    Object localObject2 = getApplicationContext();
    context = ((Context)localObject2);
    localObject2 = new com/SoundboardEngine/SoundSaver;
    Object localObject5 = context;
    int m = 2131099648;
    ((SoundSaver)localObject2).<init>((Context)localObject5, m);
    soundSaver = ((SoundSaver)localObject2);
    int i = 3;
    setVolumeControlStream(i);
    i = 2130903042;
    setContentView(i);
    SoundManager localSoundManager = new com/SoundboardEngine/SoundManager;
    localSoundManager.<init>(this);
    soundManager = localSoundManager;
    int j = 2131165186;
    Object localObject3 = findViewById(j);
    localObject3 = (LinearLayout)localObject3;
    layout = ((LinearLayout)localObject3);
    localObject3 = "layout_inflater";
    localObject3 = getSystemService((String)localObject3);
    localObject3 = (LayoutInflater)localObject3;
    inflater = ((LayoutInflater)localObject3);
    int k = 2131165187;
    Object localObject1 = findViewById(k);
    localObject1 = (LinearLayout)localObject1;
    Object localObject4 = new com/AmazingBullshit/HolyFuckingBible/Main$1;
    ((Main.1)localObject4).<init>(this);
    ((LinearLayout)localObject1).setOnClickListener((View.OnClickListener)localObject4);
    localObject4 = layout;
    localObject5 = SoundLists.bibleSounds;
    String str = "Privacy Pooper Sounds";
    int n = 2130837507;
    addSoundButtons((View)localObject4, (Sound[])localObject5, str, n);
  }
  
  public void onCreateContextMenu(ContextMenu paramContextMenu, View paramView, ContextMenu.ContextMenuInfo paramContextMenuInfo)
  {
    int k = 0;
    super.onCreateContextMenu(paramContextMenu, paramView, paramContextMenuInfo);
    String str = saveSoundName;
    paramContextMenu.setHeaderTitle(str);
    int i = paramView.getId();
    int j = 2131099651;
    paramContextMenu.add(k, i, k, j);
    i = paramView.getId();
    j = 2131099652;
    paramContextMenu.add(k, i, k, j);
    i = paramView.getId();
    j = 2131099653;
    paramContextMenu.add(k, i, k, j);
    i = paramView.getId();
    j = 2131099654;
    paramContextMenu.add(k, i, k, j);
  }
  
  public boolean onCreateOptionsMenu(Menu paramMenu)
  {
    boolean bool = true;
    return bool;
  }
  
  public boolean onOptionsItemSelected(MenuItem paramMenuItem)
  {
    int i = paramMenuItem.getItemId();
    switch (i)
    {
    }
    for (;;)
    {
      i = 1;
      return i;
      String str = "http://aftshirts.com";
      navigateToUrl(str);
      continue;
      str = "market://search?q=Soundboard";
      navigateToUrl(str);
      continue;
      str = "http://www.youtube.com/actionfiguretherapy";
      navigateToUrl(str);
      continue;
      str = "http://www.facebook.com/actionfiguretherapy";
      navigateToUrl(str);
    }
  }
}

/* Location:
 * Qualified Name:     com.AmazingBullshit.HolyFuckingBible.Main
 * Java Class Version: 1.2 (46.0)
 * JD-Core Version:    0.7.1
 */