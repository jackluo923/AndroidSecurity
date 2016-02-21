package com.amazon.device.ads;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.inmobi.re.controller.JSController;
import java.lang.reflect.Field;

class Controller {
    private static String a;

    public static class ReflectedParcelable implements Parcelable {
        public static final Creator CREATOR;

        static {
            CREATOR = new Creator() {
                public com.amazon.device.ads.Controller.ReflectedParcelable createFromParcel(Parcel parcel) {
                    return new com.amazon.device.ads.Controller.ReflectedParcelable(parcel);
                }

                public com.amazon.device.ads.Controller.ReflectedParcelable[] newArray(int i) {
                    return new com.amazon.device.ads.Controller.ReflectedParcelable[i];
                }
            };
        }

        protected ReflectedParcelable(Parcel parcel) {
            Field[] declaredFields = getClass().getDeclaredFields();
            int length = declaredFields.length;
            int i = 0;
            while (i < length) {
                Field field = declaredFields[i];
                try {
                    if (!field.get(this) instanceof Creator) {
                        field.set(this, parcel.readValue(null));
                    }
                } catch (IllegalAccessException e) {
                    IllegalAccessException illegalAccessException = e;
                    Log.e(a, "Error: Could not create object from parcel: %s", new Object[]{illegalAccessException.getMessage()});
                } catch (IllegalArgumentException e2) {
                    IllegalArgumentException illegalArgumentException = e2;
                    Log.e(a, "Error: Could not create object from parcel: %s", new Object[]{illegalArgumentException.getMessage()});
                }
                i++;
            }
        }

        public int describeContents() {
            return 0;
        }

        public void writeToParcel(Parcel parcel, int i) {
            Field[] declaredFields = getClass().getDeclaredFields();
            int length = declaredFields.length;
            int i2 = 0;
            while (i2 < length) {
                try {
                    Object obj = declaredFields[i2].get(this);
                    if (!obj instanceof Creator) {
                        parcel.writeValue(obj);
                    }
                } catch (IllegalAccessException e) {
                    IllegalAccessException illegalAccessException = e;
                    Log.e(a, "Error: Could not write to parcel: %s", new Object[]{illegalAccessException.getMessage()});
                } catch (IllegalArgumentException e2) {
                    IllegalArgumentException illegalArgumentException = e2;
                    Log.e(a, "Error: Could not write to parcel: %s", new Object[]{illegalArgumentException.getMessage()});
                }
                i2++;
            }
        }
    }

    public static class Dimensions extends com.amazon.device.ads.Controller.ReflectedParcelable {
        public static final Creator CREATOR;
        public int height;
        public int width;
        public int x;
        public int y;

        static {
            CREATOR = new Creator() {
                public com.amazon.device.ads.Controller.Dimensions createFromParcel(Parcel parcel) {
                    return new com.amazon.device.ads.Controller.Dimensions(parcel);
                }

                public com.amazon.device.ads.Controller.Dimensions[] newArray(int i) {
                    return new com.amazon.device.ads.Controller.Dimensions[i];
                }
            };
        }

        public Dimensions() {
            this.x = -1;
            this.y = -1;
            this.width = -1;
            this.height = -1;
        }

        public Dimensions(Parcel parcel) {
            super(parcel);
        }
    }

    public static class PlayerProperties extends com.amazon.device.ads.Controller.ReflectedParcelable {
        public static final Creator CREATOR;
        public boolean audioMuted;
        public boolean autoPlay;
        public boolean doLoop;
        public boolean inline;
        public boolean showControl;
        public String startStyle;
        public String stopStyle;

        static {
            CREATOR = new Creator() {
                public com.amazon.device.ads.Controller.PlayerProperties createFromParcel(Parcel parcel) {
                    return new com.amazon.device.ads.Controller.PlayerProperties(parcel);
                }

                public com.amazon.device.ads.Controller.PlayerProperties[] newArray(int i) {
                    return new com.amazon.device.ads.Controller.PlayerProperties[i];
                }
            };
        }

        public PlayerProperties() {
            this.autoPlay = true;
            this.showControl = true;
            this.doLoop = false;
            this.audioMuted = false;
            this.startStyle = JSController.STYLE_NORMAL;
            this.stopStyle = JSController.STYLE_NORMAL;
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
            return this.stopStyle.equalsIgnoreCase(JSController.EXIT);
        }

        public boolean isAutoPlay() {
            return this.autoPlay;
        }

        public boolean isFullScreen() {
            return this.startStyle.equalsIgnoreCase(JSController.FULL_SCREEN);
        }

        public void muteAudio() {
            this.audioMuted = true;
        }

        public void setProperties(boolean z, boolean z2, boolean z3, boolean z4, boolean z5, String str, String str2) {
            this.audioMuted = z;
            this.autoPlay = z2;
            this.showControl = z3;
            this.inline = z4;
            this.doLoop = z5;
            this.startStyle = str;
            this.stopStyle = str2;
        }

        public boolean showControl() {
            return this.showControl;
        }
    }

    static {
        a = "Controller";
    }

    Controller() {
    }
}