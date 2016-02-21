package com.inmobi.re.controller;

import android.content.Context;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.inmobi.commons.analytics.iat.impl.AdTrackerConstants;
import com.inmobi.re.container.IMWebView;
import com.inmobi.re.controller.util.NavigationStringEnum;
import com.inmobi.re.controller.util.TransitionStringEnum;
import com.millennialmedia.android.MMException;
import java.lang.reflect.Field;
import java.util.Locale;
import org.json.JSONException;
import org.json.JSONObject;

public abstract class JSController {
    public static final String EXIT = "exit";
    public static final String FULL_SCREEN = "fullscreen";
    public static final String STYLE_NORMAL = "normal";
    protected ExpandProperties expProps;
    protected IMWebView imWebView;
    protected Context mContext;
    protected ExpandProperties temporaryexpProps;

    public static class ReflectedParcelable implements Parcelable {
        protected ReflectedParcelable(Parcel parcel) {
            Field[] declaredFields = getClass().getDeclaredFields();
            int i = 0;
            while (i < declaredFields.length) {
                try {
                    Field field = declaredFields[i];
                    Class type = field.getType();
                    if (type.isEnum()) {
                        String toString = type.toString();
                        if (toString.equals("class com.mraid.NavigationStringEnum")) {
                            field.set(this, NavigationStringEnum.fromString(parcel.readString()));
                        } else if (toString.equals("class com.mraid.TransitionStringEnum")) {
                            field.set(this, TransitionStringEnum.fromString(parcel.readString()));
                        }
                    } else if (!field.get(this) instanceof Creator) {
                        field.set(this, parcel.readValue(null));
                    }
                    i++;
                } catch (IllegalArgumentException e) {
                    e.printStackTrace();
                } catch (IllegalAccessException e2) {
                    e2.printStackTrace();
                }
            }
        }

        public int describeContents() {
            return 0;
        }

        public void writeToParcel(Parcel parcel, int i) {
            Field[] declaredFields = getClass().getDeclaredFields();
            int i2 = 0;
            while (i2 < declaredFields.length) {
                try {
                    Field field = declaredFields[i2];
                    Class type = field.getType();
                    if (type.isEnum()) {
                        String toString = type.toString();
                        if (toString.equals("class com.mraid.NavigationStringEnum")) {
                            parcel.writeString(((NavigationStringEnum) field.get(this)).getText());
                        } else if (toString.equals("class com.mraid.TransitionStringEnum")) {
                            parcel.writeString(((TransitionStringEnum) field.get(this)).getText());
                        }
                    } else {
                        Object obj = field.get(this);
                        if (!obj instanceof Creator) {
                            parcel.writeValue(obj);
                        }
                    }
                    i2++;
                } catch (IllegalArgumentException e) {
                    e.printStackTrace();
                } catch (IllegalAccessException e2) {
                    e2.printStackTrace();
                }
            }
        }
    }

    public static class Dimensions extends com.inmobi.re.controller.JSController.ReflectedParcelable {
        public static final Creator CREATOR;
        public int height;
        public int width;
        public int x;
        public int y;

        static {
            CREATOR = new c();
        }

        public Dimensions() {
            this.x = -1;
            this.y = -1;
            this.width = -1;
            this.height = -1;
        }

        protected Dimensions(Parcel parcel) {
            super(parcel);
        }

        public String toString() {
            return "x: " + this.x + ", y: " + this.y + ", width: " + this.width + ", height: " + this.height;
        }
    }

    public static class ExpandProperties extends com.inmobi.re.controller.JSController.ReflectedParcelable {
        public static final Creator CREATOR;
        public int actualHeightRequested;
        public int actualWidthRequested;
        public int bottomStuff;
        public int currentX;
        public int currentY;
        public int height;
        public boolean isModal;
        public boolean lockOrientation;
        public String orientation;
        public int portraitHeightRequested;
        public int portraitWidthRequested;
        public String rotationAtExpand;
        public int topStuff;
        public boolean useCustomClose;
        public int width;
        public int x;
        public int y;
        public boolean zeroWidthHeight;

        static {
            CREATOR = new f();
        }

        public ExpandProperties() {
            reinitializeExpandProperties();
        }

        protected ExpandProperties(Parcel parcel) {
            super(parcel);
        }

        public void reinitializeExpandProperties() {
            this.width = 0;
            this.height = 0;
            this.x = -1;
            this.y = -1;
            this.useCustomClose = false;
            this.isModal = true;
            this.lockOrientation = false;
            this.orientation = AdTrackerConstants.BLANK;
            this.actualWidthRequested = 0;
            this.actualHeightRequested = 0;
            this.topStuff = 0;
            this.bottomStuff = 0;
            this.portraitWidthRequested = 0;
            this.portraitHeightRequested = 0;
            this.zeroWidthHeight = false;
            this.rotationAtExpand = AdTrackerConstants.BLANK;
            this.currentX = 0;
            this.currentY = 0;
        }
    }

    public static class OrientationProperties extends com.inmobi.re.controller.JSController.ReflectedParcelable {
        public static final Creator CREATOR;
        public boolean allowOrientationChange;
        public String forceOrientation;

        static {
            CREATOR = new g();
        }

        public OrientationProperties() {
            initializeOrientationProperties();
        }

        protected OrientationProperties(Parcel parcel) {
            super(parcel);
        }

        public void initializeOrientationProperties() {
            this.allowOrientationChange = true;
            this.forceOrientation = AdTrackerConstants.BLANK;
        }
    }

    public static class PlayerProperties extends com.inmobi.re.controller.JSController.ReflectedParcelable {
        public static final Creator CREATOR;
        public boolean audioMuted;
        public boolean autoPlay;
        public boolean doLoop;
        public String id;
        public boolean showControl;
        public String startStyle;
        public String stopStyle;

        static {
            CREATOR = new b();
        }

        public PlayerProperties() {
            this.showControl = true;
            this.autoPlay = true;
            this.audioMuted = false;
            this.doLoop = false;
            String str = STYLE_NORMAL;
            this.stopStyle = str;
            this.startStyle = str;
            this.id = AdTrackerConstants.BLANK;
        }

        public PlayerProperties(Parcel parcel) {
            super(parcel);
        }

        public boolean doLoop() {
            return this.doLoop;
        }

        public boolean doMute() {
            return this.audioMuted;
        }

        public boolean exitOnComplete() {
            return this.stopStyle.equalsIgnoreCase(EXIT);
        }

        public boolean isAutoPlay() {
            return this.autoPlay;
        }

        public boolean isFullScreen() {
            return this.startStyle.equalsIgnoreCase(FULL_SCREEN);
        }

        public void setFullScreen() {
            this.startStyle = FULL_SCREEN;
        }

        public void setProperties(boolean z, boolean z2, boolean z3, boolean z4, String str, String str2, String str3) {
            this.autoPlay = z2;
            this.showControl = z3;
            this.doLoop = z4;
            this.audioMuted = z;
            this.startStyle = str;
            this.stopStyle = str2;
            this.id = str3;
        }

        public void setStopStyle(String str) {
            this.stopStyle = str;
        }

        public boolean showControl() {
            return this.showControl;
        }
    }

    public static class Properties extends com.inmobi.re.controller.JSController.ReflectedParcelable {
        public static final Creator CREATOR;
        public int backgroundColor;
        public float backgroundOpacity;
        public boolean useBackground;

        static {
            CREATOR = new e();
        }

        public Properties() {
            this.useBackground = false;
            this.backgroundColor = 0;
            this.backgroundOpacity = 0.0f;
        }

        protected Properties(Parcel parcel) {
            super(parcel);
        }
    }

    public static class ResizeProperties extends com.inmobi.re.controller.JSController.ReflectedParcelable {
        public static final Creator CREATOR;
        public boolean allowOffscreen;
        public String customClosePosition;
        public int height;
        public int offsetX;
        public int offsetY;
        public int width;

        static {
            CREATOR = new a();
        }

        public ResizeProperties() {
            initializeResizeProperties();
        }

        protected ResizeProperties(Parcel parcel) {
            super(parcel);
        }

        public void initializeResizeProperties() {
            this.offsetY = 0;
            this.offsetX = 0;
            this.height = 0;
            this.width = 0;
            this.allowOffscreen = false;
            this.customClosePosition = "top-right";
        }
    }

    public JSController(IMWebView iMWebView, Context context) {
        this.imWebView = iMWebView;
        this.mContext = context;
        this.expProps = new ExpandProperties();
        this.temporaryexpProps = new ExpandProperties();
    }

    protected static Object getFromJSON(JSONObject jSONObject, Class cls) {
        Field[] declaredFields = cls.getDeclaredFields();
        Object newInstance = cls.newInstance();
        int i = 0;
        while (i < declaredFields.length) {
            Field field = declaredFields[i];
            String replace = field.getName().replace('_', '-');
            String toString = field.getType().toString();
            try {
                if (toString.equals("int")) {
                    int i2;
                    toString = jSONObject.getString(replace).toLowerCase(Locale.ENGLISH);
                    try {
                        if (toString.startsWith("#")) {
                            i2 = -1;
                            try {
                                i2 = toString.startsWith("#0x") ? Integer.decode(toString.substring(1)).intValue() : Integer.parseInt(toString.substring(1), MMException.REQUEST_NOT_PERMITTED);
                            } catch (NumberFormatException e) {
                            }
                        } else {
                            i2 = Integer.parseInt(toString);
                        }
                    } catch (NumberFormatException e2) {
                        i2 = 0;
                    }
                    field.set(newInstance, Integer.valueOf(i2));
                    i++;
                } else {
                    if (toString.equals("class java.lang.String")) {
                        field.set(newInstance, jSONObject.getString(replace));
                    } else if (toString.equals("boolean")) {
                        field.set(newInstance, Boolean.valueOf(jSONObject.getBoolean(replace)));
                    } else if (toString.equals("float")) {
                        field.set(newInstance, Float.valueOf(Float.parseFloat(jSONObject.getString(replace))));
                    } else if (toString.equals("class com.mraid.NavigationStringEnum")) {
                        field.set(newInstance, NavigationStringEnum.fromString(jSONObject.getString(replace)));
                    } else if (toString.equals("class com.mraid.TransitionStringEnum")) {
                        field.set(newInstance, TransitionStringEnum.fromString(jSONObject.getString(replace)));
                    }
                    i++;
                }
            } catch (JSONException e3) {
            }
        }
        return newInstance;
    }

    public abstract void stopAllListeners();
}