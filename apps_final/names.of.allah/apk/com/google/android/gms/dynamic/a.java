package com.google.android.gms.dynamic;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.FrameLayout.LayoutParams;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.google.android.gms.common.GooglePlayServicesUtil;
import java.util.LinkedList;

public abstract class a<T extends LifecycleDelegate>
{
  private T LU;
  private Bundle LV;
  private LinkedList<a.a> LW;
  private final f<T> LX = new a.1(this);
  
  private void a(Bundle paramBundle, a.a parama)
  {
    if (LU != null)
    {
      parama.b(LU);
      return;
    }
    if (LW == null) {
      LW = new LinkedList();
    }
    LW.add(parama);
    if (paramBundle != null)
    {
      if (LV != null) {
        break label76;
      }
      LV = ((Bundle)paramBundle.clone());
    }
    for (;;)
    {
      a(LX);
      return;
      label76:
      LV.putAll(paramBundle);
    }
  }
  
  public static void b(FrameLayout paramFrameLayout)
  {
    Context localContext = paramFrameLayout.getContext();
    int i = GooglePlayServicesUtil.isGooglePlayServicesAvailable(localContext);
    String str2 = GooglePlayServicesUtil.d(localContext, i);
    String str1 = GooglePlayServicesUtil.e(localContext, i);
    LinearLayout localLinearLayout = new LinearLayout(paramFrameLayout.getContext());
    localLinearLayout.setOrientation(1);
    localLinearLayout.setLayoutParams(new FrameLayout.LayoutParams(-2, -2));
    paramFrameLayout.addView(localLinearLayout);
    paramFrameLayout = new TextView(paramFrameLayout.getContext());
    paramFrameLayout.setLayoutParams(new FrameLayout.LayoutParams(-2, -2));
    paramFrameLayout.setText(str2);
    localLinearLayout.addView(paramFrameLayout);
    if (str1 != null)
    {
      paramFrameLayout = new Button(localContext);
      paramFrameLayout.setLayoutParams(new FrameLayout.LayoutParams(-2, -2));
      paramFrameLayout.setText(str1);
      localLinearLayout.addView(paramFrameLayout);
      paramFrameLayout.setOnClickListener(new a.5(localContext, i));
    }
  }
  
  private void ca(int paramInt)
  {
    while ((!LW.isEmpty()) && (((a.a)LW.getLast()).getState() >= paramInt)) {
      LW.removeLast();
    }
  }
  
  protected void a(FrameLayout paramFrameLayout)
  {
    b(paramFrameLayout);
  }
  
  protected abstract void a(f<T> paramf);
  
  public T gC()
  {
    return LU;
  }
  
  public void onCreate(Bundle paramBundle)
  {
    a(paramBundle, new a.3(this, paramBundle));
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    FrameLayout localFrameLayout = new FrameLayout(paramLayoutInflater.getContext());
    a(paramBundle, new a.4(this, localFrameLayout, paramLayoutInflater, paramViewGroup, paramBundle));
    if (LU == null) {
      a(localFrameLayout);
    }
    return localFrameLayout;
  }
  
  public void onDestroy()
  {
    if (LU != null)
    {
      LU.onDestroy();
      return;
    }
    ca(1);
  }
  
  public void onDestroyView()
  {
    if (LU != null)
    {
      LU.onDestroyView();
      return;
    }
    ca(2);
  }
  
  public void onInflate(Activity paramActivity, Bundle paramBundle1, Bundle paramBundle2)
  {
    a(paramBundle2, new a.2(this, paramActivity, paramBundle1, paramBundle2));
  }
  
  public void onLowMemory()
  {
    if (LU != null) {
      LU.onLowMemory();
    }
  }
  
  public void onPause()
  {
    if (LU != null)
    {
      LU.onPause();
      return;
    }
    ca(5);
  }
  
  public void onResume()
  {
    a(null, new a.7(this));
  }
  
  public void onSaveInstanceState(Bundle paramBundle)
  {
    if (LU != null) {
      LU.onSaveInstanceState(paramBundle);
    }
    while (LV == null) {
      return;
    }
    paramBundle.putAll(LV);
  }
  
  public void onStart()
  {
    a(null, new a.6(this));
  }
  
  public void onStop()
  {
    if (LU != null)
    {
      LU.onStop();
      return;
    }
    ca(4);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.dynamic.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */