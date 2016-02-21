package com.actionbarsherlock.internal;

import android.app.Activity;
import android.content.Context;
import android.content.res.XmlResourceParser;
import android.os.Build.VERSION;
import android.util.DisplayMetrics;
import com.actionbarsherlock.R;
import com.actionbarsherlock.internal.widget.IcsLinearLayout;

public final class ResourcesCompat {
    private static final String TAG = "ResourcesCompat";

    private ResourcesCompat() {
    }

    public static boolean getResources_getBoolean(Context context, int i) {
        if (VERSION.SDK_INT >= 13) {
            return context.getResources().getBoolean(i);
        }
        DisplayMetrics displayMetrics = context.getResources().getDisplayMetrics();
        float f = ((float) displayMetrics.widthPixels) / displayMetrics.density;
        float f2 = ((float) displayMetrics.heightPixels) / displayMetrics.density;
        if (f < f2) {
            f2 = f;
        }
        if (i == R.bool.abs__action_bar_embed_tabs) {
            return f >= 480.0f;
        } else if (i == R.bool.abs__split_action_bar_is_narrow) {
            return f < 480.0f;
        } else if (i == R.bool.abs__action_bar_expanded_action_views_exclusive) {
            return f < 600.0f;
        } else if (i != R.bool.abs__config_allowActionMenuItemTextWithIcon) {
            throw new IllegalArgumentException(new StringBuilder("Unknown boolean resource ID ").append(i).toString());
        } else if (f >= 480.0f) {
            return true;
        } else {
            return false;
        }
    }

    public static int getResources_getInteger(Context context, int i) {
        if (VERSION.SDK_INT >= 13) {
            return context.getResources().getInteger(i);
        }
        DisplayMetrics displayMetrics = context.getResources().getDisplayMetrics();
        float f = ((float) displayMetrics.widthPixels) / displayMetrics.density;
        if (i != R.integer.abs__max_action_buttons) {
            throw new IllegalArgumentException(new StringBuilder("Unknown integer resource ID ").append(i).toString());
        } else if (f >= 600.0f) {
            return FragmentManagerImpl.ANIM_STYLE_FADE_ENTER;
        } else {
            if (f >= 500.0f) {
                return ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_DEFAULT;
            }
            return f >= 360.0f ? FragmentManagerImpl.ANIM_STYLE_CLOSE_ENTER : IcsLinearLayout.SHOW_DIVIDER_MIDDLE;
        }
    }

    public static int loadLogoFromManifest(Activity activity) {
        int i;
        int i2 = 0;
        try {
            String name = activity.getClass().getName();
            String str = activity.getApplicationInfo().packageName;
            XmlResourceParser openXmlResourceParser = activity.createPackageContext(str, 0).getAssets().openXmlResourceParser("AndroidManifest.xml");
            int i3 = openXmlResourceParser.getEventType();
            i = i2;
            while (i3 != 1) {
                if (i3 == 2) {
                    String name2;
                    try {
                        name2 = openXmlResourceParser.getName();
                    } catch (Exception e) {
                        exception = e;
                    }
                    if ("application".equals(name2)) {
                        i3 = openXmlResourceParser.getAttributeCount() - 1;
                        while (i3 >= 0) {
                            if ("logo".equals(openXmlResourceParser.getAttributeName(i3))) {
                                i3 = openXmlResourceParser.getAttributeResourceValue(i3, 0);
                                break;
                            } else {
                                i3--;
                            }
                        }
                        i3 = i;
                        try {
                            i = i3;
                            i3 = openXmlResourceParser.nextToken();
                        } catch (Exception e2) {
                            i = i3;
                            exception = e2;
                        }
                    } else if ("activity".equals(name2)) {
                        i3 = openXmlResourceParser.getAttributeCount() - 1;
                        int i4 = i2;
                        String str2 = null;
                        Integer num = null;
                        while (i3 >= 0) {
                            String attributeName = openXmlResourceParser.getAttributeName(i3);
                            if (!"logo".equals(attributeName)) {
                                if ("name".equals(attributeName)) {
                                    str2 = ActionBarSherlockCompat.cleanActivityName(str, openXmlResourceParser.getAttributeValue(i3));
                                    if (!name.equals(str2)) {
                                        break;
                                    }
                                    boolean z = true;
                                }
                            } else {
                                num = Integer.valueOf(openXmlResourceParser.getAttributeResourceValue(i3, 0));
                            }
                            if (!(num == null || str == null)) {
                                i = num.intValue();
                            }
                            i3--;
                        }
                        if (i4 != 0) {
                            return i;
                        }
                    }
                }
                boolean z2 = z;
                i = i3;
                i3 = openXmlResourceParser.nextToken();
            }
        } catch (Exception e3) {
            Exception exception2 = e3;
            i = i2;
            exception2.printStackTrace();
            return i;
        }
        return i;
    }
}