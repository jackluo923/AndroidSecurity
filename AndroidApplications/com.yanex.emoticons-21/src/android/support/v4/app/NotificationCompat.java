package android.support.v4.app;

import android.app.Notification;
import android.app.PendingIntent;
import android.content.Context;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Build.VERSION;
import android.widget.RemoteViews;
import com.actionbarsherlock.view.Menu;
import com.actionbarsherlock.view.MenuItem;
import java.util.ArrayList;
import java.util.Iterator;

public class NotificationCompat {
    public static final int FLAG_HIGH_PRIORITY = 128;
    private static final NotificationCompatImpl IMPL;
    public static final int PRIORITY_DEFAULT = 0;
    public static final int PRIORITY_HIGH = 1;
    public static final int PRIORITY_LOW = -1;
    public static final int PRIORITY_MAX = 2;
    public static final int PRIORITY_MIN = -2;

    public class Action {
        public PendingIntent actionIntent;
        public int icon;
        public CharSequence title;

        public Action(int i, CharSequence charSequence, PendingIntent pendingIntent) {
            this.icon = i;
            this.title = charSequence;
            this.actionIntent = pendingIntent;
        }
    }

    public abstract class Style {
        CharSequence mBigContentTitle;
        android.support.v4.app.NotificationCompat.Builder mBuilder;
        CharSequence mSummaryText;
        boolean mSummaryTextSet;

        public Style() {
            this.mSummaryTextSet = false;
        }

        public Notification build() {
            return this.mBuilder != null ? this.mBuilder.build() : null;
        }

        public void setBuilder(android.support.v4.app.NotificationCompat.Builder builder) {
            if (this.mBuilder != builder) {
                this.mBuilder = builder;
                if (this.mBuilder != null) {
                    this.mBuilder.setStyle(this);
                }
            }
        }
    }

    public class BigPictureStyle extends android.support.v4.app.NotificationCompat.Style {
        Bitmap mBigLargeIcon;
        boolean mBigLargeIconSet;
        Bitmap mPicture;

        public BigPictureStyle(android.support.v4.app.NotificationCompat.Builder builder) {
            setBuilder(builder);
        }

        public android.support.v4.app.NotificationCompat.BigPictureStyle bigLargeIcon(Bitmap bitmap) {
            this.mBigLargeIcon = bitmap;
            this.mBigLargeIconSet = true;
            return this;
        }

        public android.support.v4.app.NotificationCompat.BigPictureStyle bigPicture(Bitmap bitmap) {
            this.mPicture = bitmap;
            return this;
        }

        public android.support.v4.app.NotificationCompat.BigPictureStyle setBigContentTitle(CharSequence charSequence) {
            this.mBigContentTitle = charSequence;
            return this;
        }

        public android.support.v4.app.NotificationCompat.BigPictureStyle setSummaryText(CharSequence charSequence) {
            this.mSummaryText = charSequence;
            this.mSummaryTextSet = true;
            return this;
        }
    }

    public class BigTextStyle extends android.support.v4.app.NotificationCompat.Style {
        CharSequence mBigText;

        public BigTextStyle(android.support.v4.app.NotificationCompat.Builder builder) {
            setBuilder(builder);
        }

        public android.support.v4.app.NotificationCompat.BigTextStyle bigText(CharSequence charSequence) {
            this.mBigText = charSequence;
            return this;
        }

        public android.support.v4.app.NotificationCompat.BigTextStyle setBigContentTitle(CharSequence charSequence) {
            this.mBigContentTitle = charSequence;
            return this;
        }

        public android.support.v4.app.NotificationCompat.BigTextStyle setSummaryText(CharSequence charSequence) {
            this.mSummaryText = charSequence;
            this.mSummaryTextSet = true;
            return this;
        }
    }

    public class Builder {
        ArrayList mActions;
        CharSequence mContentInfo;
        PendingIntent mContentIntent;
        CharSequence mContentText;
        CharSequence mContentTitle;
        Context mContext;
        PendingIntent mFullScreenIntent;
        Bitmap mLargeIcon;
        Notification mNotification;
        int mNumber;
        int mPriority;
        int mProgress;
        boolean mProgressIndeterminate;
        int mProgressMax;
        android.support.v4.app.NotificationCompat.Style mStyle;
        CharSequence mSubText;
        RemoteViews mTickerView;
        boolean mUseChronometer;

        public Builder(Context context) {
            this.mActions = new ArrayList();
            this.mNotification = new Notification();
            this.mContext = context;
            this.mNotification.when = System.currentTimeMillis();
            this.mNotification.audioStreamType = -1;
            this.mPriority = 0;
        }

        private void setFlag(int i, boolean z) {
            Notification notification;
            if (z) {
                notification = this.mNotification;
                notification.flags |= i;
            } else {
                notification = this.mNotification;
                notification.flags &= i ^ -1;
            }
        }

        public android.support.v4.app.NotificationCompat.Builder addAction(int i, CharSequence charSequence, PendingIntent pendingIntent) {
            this.mActions.add(new android.support.v4.app.NotificationCompat.Action(i, charSequence, pendingIntent));
            return this;
        }

        public Notification build() {
            return IMPL.build(this);
        }

        @Deprecated
        public Notification getNotification() {
            return IMPL.build(this);
        }

        public android.support.v4.app.NotificationCompat.Builder setAutoCancel(boolean z) {
            setFlag(Menu.CATEGORY_SHIFT, z);
            return this;
        }

        public android.support.v4.app.NotificationCompat.Builder setContent(RemoteViews remoteViews) {
            this.mNotification.contentView = remoteViews;
            return this;
        }

        public android.support.v4.app.NotificationCompat.Builder setContentInfo(CharSequence charSequence) {
            this.mContentInfo = charSequence;
            return this;
        }

        public android.support.v4.app.NotificationCompat.Builder setContentIntent(PendingIntent pendingIntent) {
            this.mContentIntent = pendingIntent;
            return this;
        }

        public android.support.v4.app.NotificationCompat.Builder setContentText(CharSequence charSequence) {
            this.mContentText = charSequence;
            return this;
        }

        public android.support.v4.app.NotificationCompat.Builder setContentTitle(CharSequence charSequence) {
            this.mContentTitle = charSequence;
            return this;
        }

        public android.support.v4.app.NotificationCompat.Builder setDefaults(int i) {
            this.mNotification.defaults = i;
            if ((i & 4) != 0) {
                Notification notification = this.mNotification;
                notification.flags |= 1;
            }
            return this;
        }

        public android.support.v4.app.NotificationCompat.Builder setDeleteIntent(PendingIntent pendingIntent) {
            this.mNotification.deleteIntent = pendingIntent;
            return this;
        }

        public android.support.v4.app.NotificationCompat.Builder setFullScreenIntent(PendingIntent pendingIntent, boolean z) {
            this.mFullScreenIntent = pendingIntent;
            setFlag(FLAG_HIGH_PRIORITY, z);
            return this;
        }

        public android.support.v4.app.NotificationCompat.Builder setLargeIcon(Bitmap bitmap) {
            this.mLargeIcon = bitmap;
            return this;
        }

        public android.support.v4.app.NotificationCompat.Builder setLights(int i, int i2, int i3) {
            int i4 = PRIORITY_HIGH;
            this.mNotification.ledARGB = i;
            this.mNotification.ledOnMS = i2;
            this.mNotification.ledOffMS = i3;
            int i5 = this.mNotification.ledOnMS != 0 && this.mNotification.ledOffMS != 0;
            Notification notification = this.mNotification;
            int i6 = this.mNotification.flags & -2;
            if (i5 == 0) {
                i4 = 0;
            }
            notification.flags = i6 | i4;
            return this;
        }

        public android.support.v4.app.NotificationCompat.Builder setNumber(int i) {
            this.mNumber = i;
            return this;
        }

        public android.support.v4.app.NotificationCompat.Builder setOngoing(boolean z) {
            setFlag(PRIORITY_MAX, z);
            return this;
        }

        public android.support.v4.app.NotificationCompat.Builder setOnlyAlertOnce(boolean z) {
            setFlag(MenuItem.SHOW_AS_ACTION_COLLAPSE_ACTION_VIEW, z);
            return this;
        }

        public android.support.v4.app.NotificationCompat.Builder setPriority(int i) {
            this.mPriority = i;
            return this;
        }

        public android.support.v4.app.NotificationCompat.Builder setProgress(int i, int i2, boolean z) {
            this.mProgressMax = i;
            this.mProgress = i2;
            this.mProgressIndeterminate = z;
            return this;
        }

        public android.support.v4.app.NotificationCompat.Builder setSmallIcon(int i) {
            this.mNotification.icon = i;
            return this;
        }

        public android.support.v4.app.NotificationCompat.Builder setSmallIcon(int i, int i2) {
            this.mNotification.icon = i;
            this.mNotification.iconLevel = i2;
            return this;
        }

        public android.support.v4.app.NotificationCompat.Builder setSound(Uri uri) {
            this.mNotification.sound = uri;
            this.mNotification.audioStreamType = -1;
            return this;
        }

        public android.support.v4.app.NotificationCompat.Builder setSound(Uri uri, int i) {
            this.mNotification.sound = uri;
            this.mNotification.audioStreamType = i;
            return this;
        }

        public android.support.v4.app.NotificationCompat.Builder setStyle(android.support.v4.app.NotificationCompat.Style style) {
            if (this.mStyle != style) {
                this.mStyle = style;
                if (this.mStyle != null) {
                    this.mStyle.setBuilder(this);
                }
            }
            return this;
        }

        public android.support.v4.app.NotificationCompat.Builder setSubText(CharSequence charSequence) {
            this.mSubText = charSequence;
            return this;
        }

        public android.support.v4.app.NotificationCompat.Builder setTicker(CharSequence charSequence) {
            this.mNotification.tickerText = charSequence;
            return this;
        }

        public android.support.v4.app.NotificationCompat.Builder setTicker(CharSequence charSequence, RemoteViews remoteViews) {
            this.mNotification.tickerText = charSequence;
            this.mTickerView = remoteViews;
            return this;
        }

        public android.support.v4.app.NotificationCompat.Builder setUsesChronometer(boolean z) {
            this.mUseChronometer = z;
            return this;
        }

        public android.support.v4.app.NotificationCompat.Builder setVibrate(long[] jArr) {
            this.mNotification.vibrate = jArr;
            return this;
        }

        public android.support.v4.app.NotificationCompat.Builder setWhen(long j) {
            this.mNotification.when = j;
            return this;
        }
    }

    public class InboxStyle extends android.support.v4.app.NotificationCompat.Style {
        ArrayList mTexts;

        public InboxStyle() {
            this.mTexts = new ArrayList();
        }

        public InboxStyle(android.support.v4.app.NotificationCompat.Builder builder) {
            this.mTexts = new ArrayList();
            setBuilder(builder);
        }

        public android.support.v4.app.NotificationCompat.InboxStyle addLine(CharSequence charSequence) {
            this.mTexts.add(charSequence);
            return this;
        }

        public android.support.v4.app.NotificationCompat.InboxStyle setBigContentTitle(CharSequence charSequence) {
            this.mBigContentTitle = charSequence;
            return this;
        }

        public android.support.v4.app.NotificationCompat.InboxStyle setSummaryText(CharSequence charSequence) {
            this.mSummaryText = charSequence;
            this.mSummaryTextSet = true;
            return this;
        }
    }

    interface NotificationCompatImpl {
        Notification build(android.support.v4.app.NotificationCompat.Builder builder);
    }

    class NotificationCompatImplBase implements NotificationCompatImpl {
        NotificationCompatImplBase() {
        }

        public Notification build(android.support.v4.app.NotificationCompat.Builder builder) {
            Notification notification = builder.mNotification;
            notification.setLatestEventInfo(builder.mContext, builder.mContentTitle, builder.mContentText, builder.mContentIntent);
            if (builder.mPriority > 0) {
                notification.flags |= 128;
            }
            return notification;
        }
    }

    class NotificationCompatImplHoneycomb implements NotificationCompatImpl {
        NotificationCompatImplHoneycomb() {
        }

        public Notification build(android.support.v4.app.NotificationCompat.Builder builder) {
            return NotificationCompatHoneycomb.add(builder.mContext, builder.mNotification, builder.mContentTitle, builder.mContentText, builder.mContentInfo, builder.mTickerView, builder.mNumber, builder.mContentIntent, builder.mFullScreenIntent, builder.mLargeIcon);
        }
    }

    class NotificationCompatImplIceCreamSandwich implements NotificationCompatImpl {
        NotificationCompatImplIceCreamSandwich() {
        }

        public Notification build(android.support.v4.app.NotificationCompat.Builder builder) {
            return NotificationCompatIceCreamSandwich.add(builder.mContext, builder.mNotification, builder.mContentTitle, builder.mContentText, builder.mContentInfo, builder.mTickerView, builder.mNumber, builder.mContentIntent, builder.mFullScreenIntent, builder.mLargeIcon, builder.mProgressMax, builder.mProgress, builder.mProgressIndeterminate);
        }
    }

    class NotificationCompatImplJellybean implements NotificationCompatImpl {
        NotificationCompatImplJellybean() {
        }

        public Notification build(android.support.v4.app.NotificationCompat.Builder builder) {
            NotificationCompatJellybean notificationCompatJellybean = new NotificationCompatJellybean(builder.mContext, builder.mNotification, builder.mContentTitle, builder.mContentText, builder.mContentInfo, builder.mTickerView, builder.mNumber, builder.mContentIntent, builder.mFullScreenIntent, builder.mLargeIcon, builder.mProgressMax, builder.mProgress, builder.mProgressIndeterminate, builder.mUseChronometer, builder.mPriority, builder.mSubText);
            Iterator it = builder.mActions.iterator();
            while (it.hasNext()) {
                android.support.v4.app.NotificationCompat.Action action = (android.support.v4.app.NotificationCompat.Action) it.next();
                notificationCompatJellybean.addAction(action.icon, action.title, action.actionIntent);
            }
            if (builder.mStyle != null) {
                if (builder.mStyle instanceof android.support.v4.app.NotificationCompat.BigTextStyle) {
                    android.support.v4.app.NotificationCompat.BigTextStyle bigTextStyle = (android.support.v4.app.NotificationCompat.BigTextStyle) builder.mStyle;
                    notificationCompatJellybean.addBigTextStyle(bigTextStyle.mBigContentTitle, bigTextStyle.mSummaryTextSet, bigTextStyle.mSummaryText, bigTextStyle.mBigText);
                } else if (builder.mStyle instanceof android.support.v4.app.NotificationCompat.InboxStyle) {
                    android.support.v4.app.NotificationCompat.InboxStyle inboxStyle = (android.support.v4.app.NotificationCompat.InboxStyle) builder.mStyle;
                    notificationCompatJellybean.addInboxStyle(inboxStyle.mBigContentTitle, inboxStyle.mSummaryTextSet, inboxStyle.mSummaryText, inboxStyle.mTexts);
                } else if (builder.mStyle instanceof android.support.v4.app.NotificationCompat.BigPictureStyle) {
                    android.support.v4.app.NotificationCompat.BigPictureStyle bigPictureStyle = (android.support.v4.app.NotificationCompat.BigPictureStyle) builder.mStyle;
                    notificationCompatJellybean.addBigPictureStyle(bigPictureStyle.mBigContentTitle, bigPictureStyle.mSummaryTextSet, bigPictureStyle.mSummaryText, bigPictureStyle.mPicture, bigPictureStyle.mBigLargeIcon, bigPictureStyle.mBigLargeIconSet);
                }
            }
            return notificationCompatJellybean.build();
        }
    }

    static {
        if (VERSION.SDK_INT >= 16) {
            IMPL = new NotificationCompatImplJellybean();
        } else if (VERSION.SDK_INT >= 14) {
            IMPL = new NotificationCompatImplIceCreamSandwich();
        } else if (VERSION.SDK_INT >= 11) {
            IMPL = new NotificationCompatImplHoneycomb();
        } else {
            IMPL = new NotificationCompatImplBase();
        }
    }
}