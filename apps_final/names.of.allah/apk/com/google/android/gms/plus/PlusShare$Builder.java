package com.google.android.gms.plus;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.os.Parcelable;
import android.text.TextUtils;
import com.google.android.gms.internal.hn;
import com.google.android.gms.plus.internal.e;
import com.google.android.gms.plus.model.people.Person;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class PlusShare$Builder
{
  private boolean abE;
  private ArrayList<Uri> abF;
  private final Context mContext;
  private final Intent mIntent;
  
  public PlusShare$Builder(Activity paramActivity)
  {
    mContext = paramActivity;
    mIntent = new Intent().setAction("android.intent.action.SEND");
    mIntent.addFlags(524288);
    if ((paramActivity != null) && (paramActivity.getComponentName() != null)) {
      abE = true;
    }
  }
  
  @Deprecated
  public PlusShare$Builder(Activity paramActivity, PlusClient paramPlusClient)
  {
    this(paramActivity);
    boolean bool;
    if (paramPlusClient != null)
    {
      bool = true;
      hn.a(bool, "PlusClient must not be null.");
      hn.a(paramPlusClient.isConnected(), "PlusClient must be connected to create an interactive post.");
      hn.a(paramPlusClient.jN().by("https://www.googleapis.com/auth/plus.login"), "Must request PLUS_LOGIN scope in PlusClient to create an interactive post.");
      paramActivity = paramPlusClient.getCurrentPerson();
      if (paramActivity == null) {
        break label73;
      }
    }
    label73:
    for (paramActivity = paramActivity.getId();; paramActivity = "0")
    {
      mIntent.putExtra("com.google.android.apps.plus.SENDER_ID", paramActivity);
      return;
      bool = false;
      break;
    }
  }
  
  public PlusShare$Builder(Context paramContext)
  {
    mContext = paramContext;
    mIntent = new Intent().setAction("android.intent.action.SEND");
  }
  
  public Builder addCallToAction(String paramString1, Uri paramUri, String paramString2)
  {
    hn.a(abE, "Must include the launching activity with PlusShare.Builder constructor before setting call-to-action");
    if ((paramUri != null) && (!TextUtils.isEmpty(paramUri.toString()))) {}
    for (boolean bool = true;; bool = false)
    {
      hn.b(bool, "Must provide a call to action URL");
      Bundle localBundle = new Bundle();
      if (!TextUtils.isEmpty(paramString1)) {
        localBundle.putString("label", paramString1);
      }
      localBundle.putString("url", paramUri.toString());
      if (!TextUtils.isEmpty(paramString2))
      {
        hn.a(PlusShare.bv(paramString2), "The specified deep-link ID was malformed.");
        localBundle.putString("deepLinkId", paramString2);
      }
      mIntent.putExtra("com.google.android.apps.plus.CALL_TO_ACTION", localBundle);
      mIntent.putExtra("com.google.android.apps.plus.GOOGLE_INTERACTIVE_POST", true);
      mIntent.setType("text/plain");
      return this;
    }
  }
  
  public Builder addStream(Uri paramUri)
  {
    Uri localUri = (Uri)mIntent.getParcelableExtra("android.intent.extra.STREAM");
    if (localUri == null) {
      return setStream(paramUri);
    }
    if (abF == null) {
      abF = new ArrayList();
    }
    abF.add(localUri);
    abF.add(paramUri);
    return this;
  }
  
  public Intent getIntent()
  {
    boolean bool2 = true;
    int i;
    boolean bool1;
    if ((abF != null) && (abF.size() > 1))
    {
      i = 1;
      boolean bool3 = "android.intent.action.SEND_MULTIPLE".equals(mIntent.getAction());
      boolean bool4 = mIntent.getBooleanExtra("com.google.android.apps.plus.GOOGLE_INTERACTIVE_POST", false);
      if ((i != 0) && (bool4)) {
        break label307;
      }
      bool1 = true;
      label59:
      hn.a(bool1, "Call-to-action buttons are only available for URLs.");
      if ((bool4) && (!mIntent.hasExtra("com.google.android.apps.plus.CONTENT_URL"))) {
        break label312;
      }
      bool1 = true;
      label84:
      hn.a(bool1, "The content URL is required for interactive posts.");
      bool1 = bool2;
      if (bool4)
      {
        bool1 = bool2;
        if (!mIntent.hasExtra("com.google.android.apps.plus.CONTENT_URL"))
        {
          if (!mIntent.hasExtra("com.google.android.apps.plus.CONTENT_DEEP_LINK_ID")) {
            break label317;
          }
          bool1 = bool2;
        }
      }
      label125:
      hn.a(bool1, "Must set content URL or content deep-link ID to use a call-to-action button.");
      if (mIntent.hasExtra("com.google.android.apps.plus.CONTENT_DEEP_LINK_ID")) {
        hn.a(PlusShare.bv(mIntent.getStringExtra("com.google.android.apps.plus.CONTENT_DEEP_LINK_ID")), "The specified deep-link ID was malformed.");
      }
      if ((i == 0) && (bool3))
      {
        mIntent.setAction("android.intent.action.SEND");
        if ((abF == null) || (abF.isEmpty())) {
          break label322;
        }
        mIntent.putExtra("android.intent.extra.STREAM", (Parcelable)abF.get(0));
        label217:
        abF = null;
      }
      if ((i != 0) && (!bool3))
      {
        mIntent.setAction("android.intent.action.SEND_MULTIPLE");
        if ((abF == null) || (abF.isEmpty())) {
          break label334;
        }
        mIntent.putParcelableArrayListExtra("android.intent.extra.STREAM", abF);
      }
    }
    for (;;)
    {
      if (!"com.google.android.gms.plus.action.SHARE_INTERNAL_GOOGLE".equals(mIntent.getAction())) {
        break label346;
      }
      mIntent.setPackage("com.google.android.gms");
      return mIntent;
      i = 0;
      break;
      label307:
      bool1 = false;
      break label59;
      label312:
      bool1 = false;
      break label84;
      label317:
      bool1 = false;
      break label125;
      label322:
      mIntent.removeExtra("android.intent.extra.STREAM");
      break label217;
      label334:
      mIntent.removeExtra("android.intent.extra.STREAM");
    }
    label346:
    if (!mIntent.hasExtra("android.intent.extra.STREAM"))
    {
      mIntent.setAction("com.google.android.gms.plus.action.SHARE_GOOGLE");
      mIntent.setPackage("com.google.android.gms");
      return mIntent;
    }
    mIntent.setPackage("com.google.android.apps.plus");
    return mIntent;
  }
  
  public Builder setContentDeepLinkId(String paramString)
  {
    return setContentDeepLinkId(paramString, null, null, null);
  }
  
  public Builder setContentDeepLinkId(String paramString1, String paramString2, String paramString3, Uri paramUri)
  {
    hn.b(abE, "Must include the launching activity with PlusShare.Builder constructor before setting deep links");
    if (!TextUtils.isEmpty(paramString1)) {}
    for (boolean bool = true;; bool = false)
    {
      hn.b(bool, "The deepLinkId parameter is required.");
      paramString2 = PlusShare.a(paramString2, paramString3, paramUri);
      mIntent.putExtra("com.google.android.apps.plus.CONTENT_DEEP_LINK_ID", paramString1);
      mIntent.putExtra("com.google.android.apps.plus.CONTENT_DEEP_LINK_METADATA", paramString2);
      mIntent.setType("text/plain");
      return this;
    }
  }
  
  public Builder setContentUrl(Uri paramUri)
  {
    String str = null;
    if (paramUri != null) {
      str = paramUri.toString();
    }
    if (TextUtils.isEmpty(str))
    {
      mIntent.removeExtra("com.google.android.apps.plus.CONTENT_URL");
      return this;
    }
    mIntent.putExtra("com.google.android.apps.plus.CONTENT_URL", str);
    return this;
  }
  
  public Builder setRecipients(Person paramPerson, List<Person> paramList)
  {
    Intent localIntent = mIntent;
    if (paramPerson != null) {}
    for (paramPerson = paramPerson.getId();; paramPerson = "0")
    {
      localIntent.putExtra("com.google.android.apps.plus.SENDER_ID", paramPerson);
      return setRecipients(paramList);
    }
  }
  
  @Deprecated
  public Builder setRecipients(List<Person> paramList)
  {
    if (paramList != null) {}
    for (int i = paramList.size(); i == 0; i = 0)
    {
      mIntent.removeExtra("com.google.android.apps.plus.RECIPIENT_IDS");
      mIntent.removeExtra("com.google.android.apps.plus.RECIPIENT_DISPLAY_NAMES");
      return this;
    }
    ArrayList localArrayList1 = new ArrayList(i);
    ArrayList localArrayList2 = new ArrayList(i);
    paramList = paramList.iterator();
    while (paramList.hasNext())
    {
      Person localPerson = (Person)paramList.next();
      localArrayList1.add(localPerson.getId());
      localArrayList2.add(localPerson.getDisplayName());
    }
    mIntent.putStringArrayListExtra("com.google.android.apps.plus.RECIPIENT_IDS", localArrayList1);
    mIntent.putStringArrayListExtra("com.google.android.apps.plus.RECIPIENT_DISPLAY_NAMES", localArrayList2);
    return this;
  }
  
  public Builder setStream(Uri paramUri)
  {
    abF = null;
    mIntent.putExtra("android.intent.extra.STREAM", paramUri);
    return this;
  }
  
  public Builder setText(CharSequence paramCharSequence)
  {
    mIntent.putExtra("android.intent.extra.TEXT", paramCharSequence);
    return this;
  }
  
  public Builder setType(String paramString)
  {
    mIntent.setType(paramString);
    return this;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.plus.PlusShare.Builder
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */