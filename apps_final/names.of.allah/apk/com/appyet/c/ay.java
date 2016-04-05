package com.appyet.c;

import android.graphics.Color;
import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.ListView;
import com.actionbarsherlock.app.SherlockListFragment;
import com.appyet.activity.MainActivity;
import com.appyet.context.ApplicationContext;
import com.appyet.data.Feed;
import com.appyet.data.Module;
import com.appyet.manager.bw;
import com.appyet.metadata.MetadataTheme;
import java.util.List;

public final class ay
  extends SherlockListFragment
{
  ApplicationContext a;
  MainActivity b;
  List<Feed> c;
  ba d;
  List<Module> e = null;
  private boolean f = false;
  private AdapterView.OnItemClickListener g = new az(this);
  
  public final void a()
  {
    new bc(this).a(new Void[0]);
  }
  
  public final void onActivityCreated(Bundle paramBundle)
  {
    super.onActivityCreated(paramBundle);
    getListView().setBackgroundColor(Color.parseColor(a.m.a.LeftMenuBgColor));
    getListView().setCacheColorHint(0);
    d = new ba(this, getActivity());
    getListView().setDividerHeight(0);
    getListView().setOnItemClickListener(g);
    a();
  }
  
  public final void onCreate(Bundle paramBundle)
  {
    a = ((ApplicationContext)getActivity().getApplication());
    b = ((MainActivity)getActivity());
    super.onCreate(paramBundle);
  }
  
  public final View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    return paramLayoutInflater.inflate(2130903123, null);
  }
  
  public final void onPause()
  {
    super.onPause();
  }
  
  public final void onResume()
  {
    super.onResume();
  }
}

/* Location:
 * Qualified Name:     com.appyet.c.ay
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */