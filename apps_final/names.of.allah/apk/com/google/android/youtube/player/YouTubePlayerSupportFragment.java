package com.google.android.youtube.player;

import android.app.Activity;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentActivity;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.google.android.youtube.player.internal.ac;

public class YouTubePlayerSupportFragment
  extends Fragment
  implements YouTubePlayer.Provider
{
  private final YouTubePlayerSupportFragment.a a = new YouTubePlayerSupportFragment.a(this, (byte)0);
  private Bundle b;
  private YouTubePlayerView c;
  private String d;
  private YouTubePlayer.OnInitializedListener e;
  
  private void a()
  {
    if ((c != null) && (e != null))
    {
      c.a(getActivity(), this, d, e, b);
      b = null;
      e = null;
    }
  }
  
  public static YouTubePlayerSupportFragment newInstance()
  {
    return new YouTubePlayerSupportFragment();
  }
  
  public void initialize(String paramString, YouTubePlayer.OnInitializedListener paramOnInitializedListener)
  {
    d = ac.a(paramString, "Developer key cannot be null or empty");
    e = paramOnInitializedListener;
    a();
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    if (paramBundle != null) {}
    for (paramBundle = paramBundle.getBundle("YouTubePlayerSupportFragment.KEY_PLAYER_VIEW_STATE");; paramBundle = null)
    {
      b = paramBundle;
      return;
    }
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    c = new YouTubePlayerView(getActivity(), null, 0, a);
    a();
    return c;
  }
  
  public void onDestroy()
  {
    YouTubePlayerView localYouTubePlayerView;
    if (c != null)
    {
      FragmentActivity localFragmentActivity = getActivity();
      localYouTubePlayerView = c;
      if ((localFragmentActivity != null) && (!localFragmentActivity.isFinishing())) {
        break label40;
      }
    }
    label40:
    for (boolean bool = true;; bool = false)
    {
      localYouTubePlayerView.a(bool);
      super.onDestroy();
      return;
    }
  }
  
  public void onDestroyView()
  {
    c.b(getActivity().isFinishing());
    c = null;
    super.onDestroyView();
  }
  
  public void onPause()
  {
    c.c();
    super.onPause();
  }
  
  public void onResume()
  {
    super.onResume();
    c.b();
  }
  
  public void onSaveInstanceState(Bundle paramBundle)
  {
    super.onSaveInstanceState(paramBundle);
    if (c != null) {}
    for (Bundle localBundle = c.e();; localBundle = b)
    {
      paramBundle.putBundle("YouTubePlayerSupportFragment.KEY_PLAYER_VIEW_STATE", localBundle);
      return;
    }
  }
  
  public void onStart()
  {
    super.onStart();
    c.a();
  }
  
  public void onStop()
  {
    c.d();
    super.onStop();
  }
}

/* Location:
 * Qualified Name:     com.google.android.youtube.player.YouTubePlayerSupportFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */