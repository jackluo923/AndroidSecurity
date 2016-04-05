package com.google.zxing.client.android;

import android.content.SharedPreferences;
import android.content.SharedPreferences.OnSharedPreferenceChangeListener;
import android.os.Bundle;
import android.preference.CheckBoxPreference;
import android.preference.PreferenceActivity;
import android.preference.PreferenceScreen;
import com.google.zxing.FakeR;
import java.util.ArrayList;
import java.util.Collection;

public final class PreferencesActivity
  extends PreferenceActivity
  implements SharedPreferences.OnSharedPreferenceChangeListener
{
  public static final String KEY_AUTO_FOCUS = "preferences_auto_focus";
  public static final String KEY_BULK_MODE = "preferences_bulk_mode";
  public static final String KEY_COPY_TO_CLIPBOARD = "preferences_copy_to_clipboard";
  public static final String KEY_CUSTOM_PRODUCT_SEARCH = "preferences_custom_product_search";
  public static final String KEY_DECODE_1D = "preferences_decode_1D";
  public static final String KEY_DECODE_DATA_MATRIX = "preferences_decode_Data_Matrix";
  public static final String KEY_DECODE_QR = "preferences_decode_QR";
  public static final String KEY_DISABLE_CONTINUOUS_FOCUS = "preferences_disable_continuous_focus";
  public static final String KEY_FRONT_LIGHT = "preferences_front_light";
  public static final String KEY_HELP_VERSION_SHOWN = "preferences_help_version_shown";
  public static final String KEY_PLAY_BEEP = "preferences_play_beep";
  public static final String KEY_REMEMBER_DUPLICATES = "preferences_remember_duplicates";
  public static final String KEY_SEARCH_COUNTRY = "preferences_search_country";
  public static final String KEY_SUPPLEMENTAL = "preferences_supplemental";
  public static final String KEY_VIBRATE = "preferences_vibrate";
  private static FakeR fakeR;
  private CheckBoxPreference decode1D;
  private CheckBoxPreference decodeDataMatrix;
  private CheckBoxPreference decodeQR;
  
  private void disableLastCheckedPref()
  {
    ArrayList localArrayList = new ArrayList(3);
    if (decode1D.isChecked()) {
      localArrayList.add(decode1D);
    }
    if (decodeQR.isChecked()) {
      localArrayList.add(decodeQR);
    }
    if (decodeDataMatrix.isChecked()) {
      localArrayList.add(decodeDataMatrix);
    }
    int i;
    int j;
    label118:
    CheckBoxPreference localCheckBoxPreference;
    if (localArrayList.size() < 2)
    {
      i = 1;
      CheckBoxPreference[] arrayOfCheckBoxPreference = new CheckBoxPreference[3];
      arrayOfCheckBoxPreference[0] = decode1D;
      arrayOfCheckBoxPreference[1] = decodeQR;
      arrayOfCheckBoxPreference[2] = decodeDataMatrix;
      int k = arrayOfCheckBoxPreference.length;
      j = 0;
      if (j >= k) {
        return;
      }
      localCheckBoxPreference = arrayOfCheckBoxPreference[j];
      if ((i != 0) && (localArrayList.contains(localCheckBoxPreference))) {
        break label169;
      }
    }
    label169:
    for (boolean bool = true;; bool = false)
    {
      localCheckBoxPreference.setEnabled(bool);
      j += 1;
      break label118;
      i = 0;
      break;
    }
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    fakeR = new FakeR(this);
    addPreferencesFromResource(fakeR.getId("xml", "preferences"));
    paramBundle = getPreferenceScreen();
    paramBundle.getSharedPreferences().registerOnSharedPreferenceChangeListener(this);
    decode1D = ((CheckBoxPreference)paramBundle.findPreference("preferences_decode_1D"));
    decodeQR = ((CheckBoxPreference)paramBundle.findPreference("preferences_decode_QR"));
    decodeDataMatrix = ((CheckBoxPreference)paramBundle.findPreference("preferences_decode_Data_Matrix"));
    disableLastCheckedPref();
  }
  
  public void onSharedPreferenceChanged(SharedPreferences paramSharedPreferences, String paramString)
  {
    disableLastCheckedPref();
  }
}

/* Location:
 * Qualified Name:     com.google.zxing.client.android.PreferencesActivity
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */