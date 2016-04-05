package com.appyet.c;

import android.content.res.Configuration;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.os.Handler;
import android.support.v4.app.FragmentActivity;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.ProgressBar;
import com.a.a.b.c.b;
import com.a.a.b.f;
import com.actionbarsherlock.app.ActionBar;
import com.actionbarsherlock.app.SherlockFragment;
import com.actionbarsherlock.app.SherlockFragmentActivity;
import com.appyet.context.ApplicationContext;
import com.appyet.manager.ar;
import uk.co.senab.photoview.PhotoView;
import uk.co.senab.photoview.i;

public final class at
  extends SherlockFragment
  implements i
{
  private int a;
  private ApplicationContext b;
  private PhotoView c;
  private ProgressBar d;
  private Handler e;
  private Runnable f;
  private String g;
  private boolean h;
  private f i = f.a();
  private com.a.a.b.d j;
  
  public final void a()
  {
    if (getSherlockActivity().getSupportActionBar().isShowing())
    {
      getSherlockActivity().getSupportActionBar().hide();
      if (Build.VERSION.SDK_INT >= 14) {
        getActivity().getWindow().getDecorView().setSystemUiVisibility(1);
      }
      if ((e != null) && (f != null)) {
        e.removeCallbacks(f);
      }
    }
    do
    {
      return;
      getSherlockActivity().getSupportActionBar().show();
    } while (Build.VERSION.SDK_INT < 14);
    getActivity().getWindow().getDecorView().setSystemUiVisibility(0);
  }
  
  public final void onActivityCreated(Bundle paramBundle)
  {
    super.onActivityCreated(paramBundle);
  }
  
  public final void onConfigurationChanged(Configuration paramConfiguration)
  {
    super.onConfigurationChanged(paramConfiguration);
  }
  
  public final void onCreate(Bundle paramBundle)
  {
    if (paramBundle != null)
    {
      if (paramBundle.containsKey("POSITION")) {
        a = paramBundle.getInt("POSITION", 0);
      }
      if (paramBundle.containsKey("IMAGE_LINK")) {
        g = paramBundle.getString("IMAGE_LINK");
      }
    }
    b = ((ApplicationContext)getActivity().getApplicationContext());
    if ((getArguments() != null) && (getArguments().containsKey("IMAGE_LINK"))) {
      g = getArguments().getString("IMAGE_LINK");
    }
    getSherlockActivity().getSupportActionBar().addOnMenuVisibilityListener(new au(this));
    j = new com.a.a.b.e().a(2130837733).b(2130837735).b().d().a(com.a.a.b.a.e.c).a(new b()).f();
    super.onCreate(paramBundle);
  }
  
  public final View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    return paramLayoutInflater.inflate(2130903120, null);
  }
  
  public final void onDestroy()
  {
    super.onDestroy();
  }
  
  public final void onDestroyView()
  {
    super.onDestroyView();
  }
  
  public final void onDetach()
  {
    c.setImageBitmap(null);
    super.onDetach();
  }
  
  public final void onPause()
  {
    super.onPause();
    if ((e != null) && (f != null)) {
      e.removeCallbacks(f);
    }
  }
  
  public final void onResume()
  {
    ar.a(getActivity());
    super.onResume();
  }
  
  public final void onSaveInstanceState(Bundle paramBundle)
  {
    super.onSaveInstanceState(paramBundle);
    paramBundle.putInt("POSITION", a);
    paramBundle.putString("IMAGE_LINK", g);
  }
  
  public final void onViewCreated(View paramView, Bundle paramBundle)
  {
    try
    {
      View localView = getView();
      c = ((PhotoView)localView.findViewById(2131361983));
      c.setImageBitmap(null);
      c.setOnViewTapListener(this);
      d = ((ProgressBar)localView.findViewById(2131361907));
      i.a(g, c, j, new av(this));
      super.onViewCreated(paramView, paramBundle);
      return;
    }
    catch (Exception localException)
    {
      for (;;)
      {
        com.appyet.d.d.a(localException);
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.appyet.c.at
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */