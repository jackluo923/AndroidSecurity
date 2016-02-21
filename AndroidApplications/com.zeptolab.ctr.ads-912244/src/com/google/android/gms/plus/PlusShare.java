package com.google.android.gms.plus;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.os.Parcelable;
import android.support.v4.view.accessibility.AccessibilityEventCompat;
import android.text.TextUtils;
import android.util.Log;
import com.google.android.gms.common.GooglePlayServicesUtil;
import com.google.android.gms.common.Scopes;
import com.google.android.gms.internal.er;
import com.google.android.gms.internal.ir;
import com.google.android.gms.plus.model.people.Person;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public final class PlusShare {
    public static final String EXTRA_CALL_TO_ACTION = "com.google.android.apps.plus.CALL_TO_ACTION";
    public static final String EXTRA_CONTENT_DEEP_LINK_ID = "com.google.android.apps.plus.CONTENT_DEEP_LINK_ID";
    public static final String EXTRA_CONTENT_DEEP_LINK_METADATA = "com.google.android.apps.plus.CONTENT_DEEP_LINK_METADATA";
    public static final String EXTRA_CONTENT_URL = "com.google.android.apps.plus.CONTENT_URL";
    public static final String EXTRA_IS_INTERACTIVE_POST = "com.google.android.apps.plus.GOOGLE_INTERACTIVE_POST";
    public static final String EXTRA_SENDER_ID = "com.google.android.apps.plus.SENDER_ID";
    public static final String KEY_CALL_TO_ACTION_DEEP_LINK_ID = "deepLinkId";
    public static final String KEY_CALL_TO_ACTION_LABEL = "label";
    public static final String KEY_CALL_TO_ACTION_URL = "url";
    public static final String KEY_CONTENT_DEEP_LINK_METADATA_DESCRIPTION = "description";
    public static final String KEY_CONTENT_DEEP_LINK_METADATA_THUMBNAIL_URL = "thumbnailUrl";
    public static final String KEY_CONTENT_DEEP_LINK_METADATA_TITLE = "title";
    public static final String PARAM_CONTENT_DEEP_LINK_ID = "deep_link_id";

    public static class Builder {
        private boolean Rb;
        private ArrayList Rc;
        private final Context mContext;
        private final Intent mIntent;

        public Builder(Activity activity) {
            this.mContext = activity;
            this.mIntent = new Intent().setAction("android.intent.action.SEND");
            this.mIntent.addFlags(AccessibilityEventCompat.TYPE_GESTURE_DETECTION_END);
            if (activity != null && activity.getComponentName() != null) {
                this.Rb = true;
            }
        }

        @Deprecated
        public Builder(Activity activity, PlusClient plusClient) {
            this(activity);
            er.a(plusClient != null, "PlusClient must not be null.");
            er.a(plusClient.isConnected(), "PlusClient must be connected to create an interactive post.");
            er.a(plusClient.hj().aR(Scopes.PLUS_LOGIN), "Must request PLUS_LOGIN scope in PlusClient to create an interactive post.");
            Person currentPerson = plusClient.getCurrentPerson();
            this.mIntent.putExtra(EXTRA_SENDER_ID, currentPerson != null ? currentPerson.getId() : "0");
        }

        public Builder(Context context) {
            this.mContext = context;
            this.mIntent = new Intent().setAction("android.intent.action.SEND");
        }

        public com.google.android.gms.plus.PlusShare.Builder addCallToAction(String str, Uri uri, String str2) {
            boolean z;
            er.a(this.Rb, "Must include the launching activity with PlusShare.Builder constructor before setting call-to-action");
            z = uri != null && !TextUtils.isEmpty(uri.toString());
            er.b(z, (Object)"Must provide a call to action URL");
            Bundle bundle = new Bundle();
            if (!TextUtils.isEmpty(str)) {
                bundle.putString(KEY_CALL_TO_ACTION_LABEL, str);
            }
            bundle.putString(KEY_CALL_TO_ACTION_URL, uri.toString());
            if (!TextUtils.isEmpty(str2)) {
                er.a(PlusShare.aO(str2), "The specified deep-link ID was malformed.");
                bundle.putString(KEY_CALL_TO_ACTION_DEEP_LINK_ID, str2);
            }
            this.mIntent.putExtra(EXTRA_CALL_TO_ACTION, bundle);
            this.mIntent.putExtra(EXTRA_IS_INTERACTIVE_POST, true);
            this.mIntent.setType(WebRequest.CONTENT_TYPE_PLAIN_TEXT);
            return this;
        }

        public com.google.android.gms.plus.PlusShare.Builder addStream(Uri uri) {
            Uri uri2 = (Uri) this.mIntent.getParcelableExtra("android.intent.extra.STREAM");
            if (uri2 == null) {
                return setStream(uri);
            }
            if (this.Rc == null) {
                this.Rc = new ArrayList();
            }
            this.Rc.add(uri2);
            this.Rc.add(uri);
            return this;
        }

        public Intent getIntent() {
            boolean z;
            boolean z2 = true;
            int i = this.Rc != null && this.Rc.size() > 1;
            boolean equals = "android.intent.action.SEND_MULTIPLE".equals(this.mIntent.getAction());
            boolean booleanExtra = this.mIntent.getBooleanExtra(EXTRA_IS_INTERACTIVE_POST, false);
            z = i == 0 || !booleanExtra;
            er.a(z, "Call-to-action buttons are only available for URLs.");
            z = !booleanExtra || this.mIntent.hasExtra(EXTRA_CONTENT_URL);
            er.a(z, "The content URL is required for interactive posts.");
            if (!(!booleanExtra || this.mIntent.hasExtra(EXTRA_CONTENT_URL) || this.mIntent.hasExtra(EXTRA_CONTENT_DEEP_LINK_ID))) {
                z2 = false;
            }
            er.a(z2, "Must set content URL or content deep-link ID to use a call-to-action button.");
            if (this.mIntent.hasExtra(EXTRA_CONTENT_DEEP_LINK_ID)) {
                er.a(PlusShare.aO(this.mIntent.getStringExtra(EXTRA_CONTENT_DEEP_LINK_ID)), "The specified deep-link ID was malformed.");
            }
            if (i == 0 && equals) {
                this.mIntent.setAction("android.intent.action.SEND");
                if (this.Rc == null || this.Rc.isEmpty()) {
                    this.mIntent.removeExtra("android.intent.extra.STREAM");
                } else {
                    this.mIntent.putExtra("android.intent.extra.STREAM", (Parcelable) this.Rc.get(0));
                }
                this.Rc = null;
            }
            if (!(i == 0 || equals)) {
                this.mIntent.setAction("android.intent.action.SEND_MULTIPLE");
                if (this.Rc == null || this.Rc.isEmpty()) {
                    this.mIntent.removeExtra("android.intent.extra.STREAM");
                } else {
                    this.mIntent.putParcelableArrayListExtra("android.intent.extra.STREAM", this.Rc);
                }
            }
            if ("com.google.android.gms.plus.action.SHARE_INTERNAL_GOOGLE".equals(this.mIntent.getAction())) {
                this.mIntent.setPackage(GooglePlayServicesUtil.GOOGLE_PLAY_SERVICES_PACKAGE);
                return this.mIntent;
            } else if (this.mIntent.hasExtra("android.intent.extra.STREAM")) {
                this.mIntent.setPackage("com.google.android.apps.plus");
                return this.mIntent;
            } else {
                this.mIntent.setAction("com.google.android.gms.plus.action.SHARE_GOOGLE");
                this.mIntent.setPackage(GooglePlayServicesUtil.GOOGLE_PLAY_SERVICES_PACKAGE);
                return this.mIntent;
            }
        }

        public com.google.android.gms.plus.PlusShare.Builder setContentDeepLinkId(String str) {
            return setContentDeepLinkId(str, null, null, null);
        }

        public com.google.android.gms.plus.PlusShare.Builder setContentDeepLinkId(String str, String str2, String str3, Uri uri) {
            er.b(this.Rb, (Object)"Must include the launching activity with PlusShare.Builder constructor before setting deep links");
            er.b(!TextUtils.isEmpty(str), (Object)"The deepLinkId parameter is required.");
            Bundle a = PlusShare.a(str2, str3, uri);
            this.mIntent.putExtra(EXTRA_CONTENT_DEEP_LINK_ID, str);
            this.mIntent.putExtra(EXTRA_CONTENT_DEEP_LINK_METADATA, a);
            this.mIntent.setType(WebRequest.CONTENT_TYPE_PLAIN_TEXT);
            return this;
        }

        public com.google.android.gms.plus.PlusShare.Builder setContentUrl(Uri uri) {
            Object obj = null;
            if (uri != null) {
                obj = uri.toString();
            }
            if (TextUtils.isEmpty(obj)) {
                this.mIntent.removeExtra(EXTRA_CONTENT_URL);
            } else {
                this.mIntent.putExtra(EXTRA_CONTENT_URL, obj);
            }
            return this;
        }

        public com.google.android.gms.plus.PlusShare.Builder setRecipients(Person person, List list) {
            this.mIntent.putExtra(EXTRA_SENDER_ID, person != null ? person.getId() : "0");
            return setRecipients(list);
        }

        @Deprecated
        public com.google.android.gms.plus.PlusShare.Builder setRecipients(List list) {
            int size = list != null ? list.size() : 0;
            if (size == 0) {
                this.mIntent.removeExtra("com.google.android.apps.plus.RECIPIENT_IDS");
                this.mIntent.removeExtra("com.google.android.apps.plus.RECIPIENT_DISPLAY_NAMES");
            } else {
                ArrayList arrayList = new ArrayList(size);
                ArrayList arrayList2 = new ArrayList(size);
                Iterator it = list.iterator();
                while (it.hasNext()) {
                    Person person = (Person) it.next();
                    arrayList.add(person.getId());
                    arrayList2.add(person.getDisplayName());
                }
                this.mIntent.putStringArrayListExtra("com.google.android.apps.plus.RECIPIENT_IDS", arrayList);
                this.mIntent.putStringArrayListExtra("com.google.android.apps.plus.RECIPIENT_DISPLAY_NAMES", arrayList2);
            }
            return this;
        }

        public com.google.android.gms.plus.PlusShare.Builder setStream(Uri uri) {
            this.Rc = null;
            this.mIntent.putExtra("android.intent.extra.STREAM", uri);
            return this;
        }

        public com.google.android.gms.plus.PlusShare.Builder setText(CharSequence charSequence) {
            this.mIntent.putExtra("android.intent.extra.TEXT", charSequence);
            return this;
        }

        public com.google.android.gms.plus.PlusShare.Builder setType(String str) {
            this.mIntent.setType(str);
            return this;
        }
    }

    @Deprecated
    protected PlusShare() {
        throw new AssertionError();
    }

    public static Bundle a(String str, String str2, Uri uri) {
        Bundle bundle = new Bundle();
        bundle.putString(KEY_CONTENT_DEEP_LINK_METADATA_TITLE, str);
        bundle.putString(KEY_CONTENT_DEEP_LINK_METADATA_DESCRIPTION, str2);
        if (uri != null) {
            bundle.putString(KEY_CONTENT_DEEP_LINK_METADATA_THUMBNAIL_URL, uri.toString());
        }
        return bundle;
    }

    protected static boolean aO(String str) {
        if (TextUtils.isEmpty(str)) {
            Log.e("GooglePlusPlatform", "The provided deep-link ID is empty.");
            return false;
        } else if (!str.contains(" ")) {
            return true;
        } else {
            Log.e("GooglePlusPlatform", "Spaces are not allowed in deep-link IDs.");
            return false;
        }
    }

    public static Person createPerson(String str, String str2) {
        if (TextUtils.isEmpty(str)) {
            throw new IllegalArgumentException("MinimalPerson ID must not be empty.");
        } else if (!TextUtils.isEmpty(str2)) {
            return new ir(str2, str, null, 0, null);
        } else {
            throw new IllegalArgumentException("Display name must not be empty.");
        }
    }

    public static String getDeepLinkId(Intent intent) {
        return (intent == null || intent.getData() == null) ? null : intent.getData().getQueryParameter(PARAM_CONTENT_DEEP_LINK_ID);
    }
}