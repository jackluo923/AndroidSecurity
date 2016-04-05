package com.google.zxing.client.android.result;

import android.app.Activity;
import android.app.AlertDialog.Builder;
import android.content.ActivityNotFoundException;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.pm.PackageManager;
import android.net.Uri;
import android.preference.PreferenceManager;
import android.provider.ContactsContract.Contacts;
import android.util.Log;
import android.view.View;
import android.view.View.OnClickListener;
import com.google.zxing.BarcodeFormat;
import com.google.zxing.FakeR;
import com.google.zxing.Result;
import com.google.zxing.client.android.Contents;
import com.google.zxing.client.android.LocaleManager;
import com.google.zxing.client.android.book.SearchBookContentsActivity;
import com.google.zxing.client.result.ParsedResult;
import com.google.zxing.client.result.ParsedResultType;
import com.google.zxing.client.result.ResultParser;
import java.util.Collection;
import java.util.Locale;

public abstract class ResultHandler
{
  private static final String[] ADDRESS_TYPE_STRINGS;
  private static final int[] ADDRESS_TYPE_VALUES = { 1, 2 };
  private static final String[] EMAIL_TYPE_STRINGS;
  private static final int[] EMAIL_TYPE_VALUES;
  private static final String GOOGLE_SHOPPER_ACTIVITY = "com.google.android.apps.shopper.results.SearchResultsActivity";
  private static final String GOOGLE_SHOPPER_PACKAGE = "com.google.android.apps.shopper";
  private static final String MARKET_REFERRER_SUFFIX = "&referrer=utm_source%3Dbarcodescanner%26utm_medium%3Dapps%26utm_campaign%3Dscan";
  private static final String MARKET_URI_PREFIX = "market://details?id=";
  public static final int MAX_BUTTON_COUNT = 4;
  private static final int NO_TYPE = -1;
  private static final String[] PHONE_TYPE_STRINGS;
  private static final int[] PHONE_TYPE_VALUES;
  private static final String TAG = ResultHandler.class.getSimpleName();
  protected static FakeR fakeR;
  private final Activity activity;
  private final String customProductSearch;
  private final Result rawResult;
  private final ParsedResult result;
  private final DialogInterface.OnClickListener shopperMarketListener = new DialogInterface.OnClickListener()
  {
    public void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
    {
      launchIntent(new Intent("android.intent.action.VIEW", Uri.parse("market://details?id=com.google.android.apps.shopper&referrer=utm_source%3Dbarcodescanner%26utm_medium%3Dapps%26utm_campaign%3Dscan")));
    }
  };
  
  static
  {
    EMAIL_TYPE_STRINGS = new String[] { "home", "work", "mobile" };
    PHONE_TYPE_STRINGS = new String[] { "home", "work", "mobile", "fax", "pager", "main" };
    ADDRESS_TYPE_STRINGS = new String[] { "home", "work" };
    EMAIL_TYPE_VALUES = new int[] { 1, 2, 4 };
    PHONE_TYPE_VALUES = new int[] { 1, 3, 2, 4, 6, 12 };
  }
  
  ResultHandler(Activity paramActivity, ParsedResult paramParsedResult)
  {
    this(paramActivity, paramParsedResult, null);
  }
  
  ResultHandler(Activity paramActivity, ParsedResult paramParsedResult, Result paramResult)
  {
    result = paramParsedResult;
    activity = paramActivity;
    rawResult = paramResult;
    customProductSearch = parseCustomSearchURL();
    fakeR = new FakeR(paramActivity);
    paramActivity.findViewById(fakeR.getId("id", "shopper_button")).setVisibility(8);
  }
  
  private static int doToContractType(String paramString, String[] paramArrayOfString, int[] paramArrayOfInt)
  {
    if (paramString == null) {}
    for (;;)
    {
      return -1;
      int i = 0;
      while (i < paramArrayOfString.length)
      {
        String str = paramArrayOfString[i];
        if ((paramString.startsWith(str)) || (paramString.startsWith(str.toUpperCase(Locale.ENGLISH)))) {
          return paramArrayOfInt[i];
        }
        i += 1;
      }
    }
  }
  
  private String parseCustomSearchURL()
  {
    String str2 = PreferenceManager.getDefaultSharedPreferences(activity).getString("preferences_custom_product_search", null);
    String str1 = str2;
    if (str2 != null)
    {
      str1 = str2;
      if (str2.trim().length() == 0) {
        str1 = null;
      }
    }
    return str1;
  }
  
  private static void putExtra(Intent paramIntent, String paramString1, String paramString2)
  {
    if ((paramString2 != null) && (paramString2.length() > 0)) {
      paramIntent.putExtra(paramString1, paramString2);
    }
  }
  
  private static int toAddressContractType(String paramString)
  {
    return doToContractType(paramString, ADDRESS_TYPE_STRINGS, ADDRESS_TYPE_VALUES);
  }
  
  private static int toEmailContractType(String paramString)
  {
    return doToContractType(paramString, EMAIL_TYPE_STRINGS, EMAIL_TYPE_VALUES);
  }
  
  private static int toPhoneContractType(String paramString)
  {
    return doToContractType(paramString, PHONE_TYPE_STRINGS, PHONE_TYPE_VALUES);
  }
  
  final void addContact(String[] paramArrayOfString1, String paramString1, String[] paramArrayOfString2, String[] paramArrayOfString3, String[] paramArrayOfString4, String[] paramArrayOfString5, String paramString2, String paramString3, String paramString4, String paramString5, String paramString6, String paramString7, String paramString8, String paramString9)
  {
    Intent localIntent = new Intent("android.intent.action.INSERT_OR_EDIT", ContactsContract.Contacts.CONTENT_URI);
    localIntent.setType("vnd.android.cursor.item/contact");
    if (paramArrayOfString1 != null)
    {
      paramArrayOfString1 = paramArrayOfString1[0];
      putExtra(localIntent, "name", paramArrayOfString1);
      putExtra(localIntent, "phonetic_name", paramString1);
      if (paramArrayOfString2 == null) {
        break label146;
      }
    }
    int k;
    label146:
    for (int i = paramArrayOfString2.length;; i = 0)
    {
      j = Math.min(i, Contents.PHONE_KEYS.length);
      i = 0;
      while (i < j)
      {
        putExtra(localIntent, Contents.PHONE_KEYS[i], paramArrayOfString2[i]);
        if ((paramArrayOfString3 != null) && (i < paramArrayOfString3.length))
        {
          k = toPhoneContractType(paramArrayOfString3[i]);
          if (k >= 0) {
            localIntent.putExtra(Contents.PHONE_TYPE_KEYS[i], k);
          }
        }
        i += 1;
      }
      paramArrayOfString1 = null;
      break;
    }
    if (paramArrayOfString4 != null) {}
    for (i = paramArrayOfString4.length;; i = 0)
    {
      j = Math.min(i, Contents.EMAIL_KEYS.length);
      i = 0;
      while (i < j)
      {
        putExtra(localIntent, Contents.EMAIL_KEYS[i], paramArrayOfString4[i]);
        if ((paramArrayOfString5 != null) && (i < paramArrayOfString5.length))
        {
          k = toEmailContractType(paramArrayOfString5[i]);
          if (k >= 0) {
            localIntent.putExtra(Contents.EMAIL_TYPE_KEYS[i], k);
          }
        }
        i += 1;
      }
    }
    paramArrayOfString1 = new StringBuilder();
    paramString1 = new String[3];
    paramString1[0] = paramString8;
    paramString1[1] = paramString9;
    paramString1[2] = paramString2;
    int j = paramString1.length;
    i = 0;
    while (i < j)
    {
      paramArrayOfString2 = paramString1[i];
      if (paramArrayOfString2 != null)
      {
        if (paramArrayOfString1.length() > 0) {
          paramArrayOfString1.append('\n');
        }
        paramArrayOfString1.append(paramArrayOfString2);
      }
      i += 1;
    }
    if (paramArrayOfString1.length() > 0) {
      putExtra(localIntent, "notes", paramArrayOfString1.toString());
    }
    putExtra(localIntent, "im_handle", paramString3);
    putExtra(localIntent, "postal", paramString4);
    if (paramString5 != null)
    {
      i = toAddressContractType(paramString5);
      if (i >= 0) {
        localIntent.putExtra("postal_type", i);
      }
    }
    putExtra(localIntent, "company", paramString6);
    putExtra(localIntent, "job_title", paramString7);
    launchIntent(localIntent);
  }
  
  final void addEmailOnlyContact(String[] paramArrayOfString1, String[] paramArrayOfString2)
  {
    addContact(null, null, null, null, paramArrayOfString1, paramArrayOfString2, null, null, null, null, null, null, null, null);
  }
  
  final void addPhoneOnlyContact(String[] paramArrayOfString1, String[] paramArrayOfString2)
  {
    addContact(null, null, paramArrayOfString1, paramArrayOfString2, null, null, null, null, null, null, null, null, null, null);
  }
  
  public boolean areContentsSecure()
  {
    return false;
  }
  
  final void dialPhone(String paramString)
  {
    launchIntent(new Intent("android.intent.action.DIAL", Uri.parse("tel:" + paramString)));
  }
  
  final void dialPhoneFromUri(String paramString)
  {
    launchIntent(new Intent("android.intent.action.DIAL", Uri.parse(paramString)));
  }
  
  String fillInCustomSearchURL(String paramString)
  {
    if (customProductSearch == null) {
      return paramString;
    }
    String str = customProductSearch.replace("%s", paramString);
    paramString = str;
    if (rawResult != null)
    {
      str = str.replace("%f", rawResult.getBarcodeFormat().toString());
      paramString = str;
      if (str.contains("%t")) {
        paramString = str.replace("%t", ResultParser.parseResult(rawResult).getType().toString());
      }
    }
    return paramString;
  }
  
  Activity getActivity()
  {
    return activity;
  }
  
  public abstract int getButtonCount();
  
  public abstract int getButtonText(int paramInt);
  
  final void getDirections(double paramDouble1, double paramDouble2)
  {
    launchIntent(new Intent("android.intent.action.VIEW", Uri.parse("http://maps.google." + LocaleManager.getCountryTLD(activity) + "/maps?f=d&daddr=" + paramDouble1 + ',' + paramDouble2)));
  }
  
  public CharSequence getDisplayContents()
  {
    return result.getDisplayResult().replace("\r", "");
  }
  
  public abstract int getDisplayTitle();
  
  public ParsedResult getResult()
  {
    return result;
  }
  
  public final ParsedResultType getType()
  {
    return result.getType();
  }
  
  public abstract void handleButtonPress(int paramInt);
  
  boolean hasCustomProductSearch()
  {
    return customProductSearch != null;
  }
  
  void launchIntent(Intent paramIntent)
  {
    try
    {
      rawLaunchIntent(paramIntent);
      return;
    }
    catch (ActivityNotFoundException paramIntent)
    {
      paramIntent = new AlertDialog.Builder(activity);
      paramIntent.setTitle(fakeR.getId("string", "app_name"));
      paramIntent.setMessage(fakeR.getId("string", "msg_intent_failed"));
      paramIntent.setPositiveButton(fakeR.getId("string", "button_ok"), null);
      paramIntent.show();
    }
  }
  
  final void openBookSearch(String paramString)
  {
    launchIntent(new Intent("android.intent.action.VIEW", Uri.parse("http://books.google." + LocaleManager.getBookSearchCountryTLD(activity) + "/books?vid=isbn" + paramString)));
  }
  
  final void openGoogleShopper(String paramString)
  {
    Intent localIntent = new Intent("android.intent.action.SEARCH");
    localIntent.setClassName("com.google.android.apps.shopper", "com.google.android.apps.shopper.results.SearchResultsActivity");
    localIntent.putExtra("query", paramString);
    paramString = activity.getPackageManager().queryIntentActivities(localIntent, 65536);
    if ((paramString != null) && (!paramString.isEmpty()))
    {
      activity.startActivity(localIntent);
      return;
    }
    paramString = new AlertDialog.Builder(activity);
    paramString.setTitle(fakeR.getId("string", "msg_google_shopper_missing"));
    paramString.setMessage(fakeR.getId("string", "msg_install_google_shopper"));
    paramString.setIcon(fakeR.getId("drawable", "shopper_icon"));
    paramString.setPositiveButton(fakeR.getId("string", "button_ok"), shopperMarketListener);
    paramString.setNegativeButton(fakeR.getId("string", "button_cancel"), null);
    paramString.show();
  }
  
  final void openMap(String paramString)
  {
    launchIntent(new Intent("android.intent.action.VIEW", Uri.parse(paramString)));
  }
  
  final void openProductSearch(String paramString)
  {
    launchIntent(new Intent("android.intent.action.VIEW", Uri.parse("http://www.google." + LocaleManager.getProductSearchCountryTLD(activity) + "/m/products?q=" + paramString + "&source=zxing")));
  }
  
  final void openURL(String paramString)
  {
    String str;
    if (paramString.startsWith("HTTP://")) {
      str = "http" + paramString.substring(4);
    }
    for (;;)
    {
      paramString = new Intent("android.intent.action.VIEW", Uri.parse(str));
      try
      {
        launchIntent(paramString);
        return;
      }
      catch (ActivityNotFoundException localActivityNotFoundException)
      {
        Log.w(TAG, "Nothing available to handle " + paramString);
      }
      str = paramString;
      if (paramString.startsWith("HTTPS://")) {
        str = "https" + paramString.substring(5);
      }
    }
  }
  
  void rawLaunchIntent(Intent paramIntent)
  {
    if (paramIntent != null)
    {
      paramIntent.addFlags(524288);
      Log.d(TAG, "Launching intent: " + paramIntent + " with extras: " + paramIntent.getExtras());
      activity.startActivity(paramIntent);
    }
  }
  
  final void searchBookContents(String paramString)
  {
    Intent localIntent = new Intent("com.google.zxing.client.android.SEARCH_BOOK_CONTENTS");
    localIntent.setClassName(activity, SearchBookContentsActivity.class.getName());
    putExtra(localIntent, "ISBN", paramString);
    launchIntent(localIntent);
  }
  
  final void searchMap(String paramString, CharSequence paramCharSequence)
  {
    String str = paramString;
    if (paramCharSequence != null)
    {
      str = paramString;
      if (paramCharSequence.length() > 0) {
        str = paramString + " (" + paramCharSequence + ')';
      }
    }
    launchIntent(new Intent("android.intent.action.VIEW", Uri.parse("geo:0,0?q=" + Uri.encode(str))));
  }
  
  final void sendEmail(String paramString1, String paramString2, String paramString3)
  {
    sendEmailFromUri("mailto:" + paramString1, paramString1, paramString2, paramString3);
  }
  
  final void sendEmailFromUri(String paramString1, String paramString2, String paramString3, String paramString4)
  {
    paramString1 = new Intent("android.intent.action.SEND", Uri.parse(paramString1));
    if (paramString2 != null) {
      paramString1.putExtra("android.intent.extra.EMAIL", new String[] { paramString2 });
    }
    putExtra(paramString1, "android.intent.extra.SUBJECT", paramString3);
    putExtra(paramString1, "android.intent.extra.TEXT", paramString4);
    paramString1.setType("text/plain");
    launchIntent(paramString1);
  }
  
  final void sendMMS(String paramString1, String paramString2, String paramString3)
  {
    sendMMSFromUri("mmsto:" + paramString1, paramString2, paramString3);
  }
  
  final void sendMMSFromUri(String paramString1, String paramString2, String paramString3)
  {
    paramString1 = new Intent("android.intent.action.SENDTO", Uri.parse(paramString1));
    if ((paramString2 == null) || (paramString2.length() == 0)) {
      putExtra(paramString1, "subject", activity.getString(fakeR.getId("string", "msg_default_mms_subject")));
    }
    for (;;)
    {
      putExtra(paramString1, "sms_body", paramString3);
      paramString1.putExtra("compose_mode", true);
      launchIntent(paramString1);
      return;
      putExtra(paramString1, "subject", paramString2);
    }
  }
  
  final void sendSMS(String paramString1, String paramString2)
  {
    sendSMSFromUri("smsto:" + paramString1, paramString2);
  }
  
  final void sendSMSFromUri(String paramString1, String paramString2)
  {
    paramString1 = new Intent("android.intent.action.SENDTO", Uri.parse(paramString1));
    putExtra(paramString1, "sms_body", paramString2);
    paramString1.putExtra("compose_mode", true);
    launchIntent(paramString1);
  }
  
  final void shareByEmail(String paramString)
  {
    sendEmailFromUri("mailto:", null, activity.getString(fakeR.getId("string", "msg_share_subject_line")), paramString);
  }
  
  final void shareBySMS(String paramString)
  {
    sendSMSFromUri("smsto:", activity.getString(fakeR.getId("string", "msg_share_subject_line")) + ":\n" + paramString);
  }
  
  void showGoogleShopperButton(View.OnClickListener paramOnClickListener)
  {
    View localView = activity.findViewById(fakeR.getId("id", "shopper_button"));
    localView.setVisibility(0);
    localView.setOnClickListener(paramOnClickListener);
  }
  
  final void webSearch(String paramString)
  {
    Intent localIntent = new Intent("android.intent.action.WEB_SEARCH");
    localIntent.putExtra("query", paramString);
    launchIntent(localIntent);
  }
}

/* Location:
 * Qualified Name:     com.google.zxing.client.android.result.ResultHandler
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */