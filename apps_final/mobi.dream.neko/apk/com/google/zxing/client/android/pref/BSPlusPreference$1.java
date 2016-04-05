package com.google.zxing.client.android.pref;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.preference.Preference;
import android.preference.Preference.OnPreferenceClickListener;

class BSPlusPreference$1
  implements Preference.OnPreferenceClickListener
{
  BSPlusPreference$1(BSPlusPreference paramBSPlusPreference) {}
  
  public boolean onPreferenceClick(Preference paramPreference)
  {
    paramPreference = new Intent("android.intent.action.VIEW", Uri.parse("market://details?id=com.srowen.bs.android"));
    paramPreference.addFlags(524288);
    this$0.getContext().startActivity(paramPreference);
    return true;
  }
}

/* Location:
 * Qualified Name:     com.google.zxing.client.android.pref.BSPlusPreference.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */