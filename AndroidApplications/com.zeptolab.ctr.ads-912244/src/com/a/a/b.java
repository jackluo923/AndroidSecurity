package com.a.a;

import android.content.Context;
import android.content.res.Resources.NotFoundException;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.util.Xml;
import android.view.animation.AnimationUtils;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

public class b {
    private static final int[] a;
    private static final int b = 0;
    private static final int[] c;
    private static final int d = 0;
    private static final int[] e;
    private static final int f = 0;
    private static final int g = 1;
    private static final int h = 2;
    private static final int i = 3;
    private static final int j = 4;
    private static final int k = 5;
    private static final int l = 6;
    private static final int m = 7;
    private static final int n = 0;
    private static final int o = 0;

    static {
        a = new int[]{16843490};
        c = new int[]{16843489};
        e = new int[]{16843073, 16843160, 16843198, 16843199, 16843200, 16843486, 16843487, 16843488};
    }

    public static a a(Context context, int i) {
        XmlResourceParser xmlResourceParser = null;
        try {
            XmlPullParser animation = context.getResources().getAnimation(i);
            a a = a(context, animation);
            if (animation != null) {
                animation.close();
            }
            return a;
        } catch (XmlPullParserException e) {
            Throwable th = e;
            NotFoundException notFoundException = new NotFoundException("Can't load animation resource ID #0x" + Integer.toHexString(i));
            notFoundException.initCause(th);
            throw notFoundException;
        } catch (IOException e2) {
            th = e2;
            notFoundException = new NotFoundException("Can't load animation resource ID #0x" + Integer.toHexString(i));
            notFoundException.initCause(th);
            throw notFoundException;
        } catch (Throwable th2) {
            if (xmlResourceParser != null) {
                xmlResourceParser.close();
            }
        }
    }

    private static a a(Context context, XmlPullParser xmlPullParser) {
        return a(context, xmlPullParser, Xml.asAttributeSet(xmlPullParser), null, f);
    }

    private static a a(Context context, XmlPullParser xmlPullParser, AttributeSet attributeSet, d dVar, int i) {
        int i2 = f;
        int depth = xmlPullParser.getDepth();
        ArrayList arrayList = null;
        a aVar = null;
        while (true) {
            int next = xmlPullParser.next();
            if ((next == 3 && xmlPullParser.getDepth() <= depth) || next == 1) {
                if (!(dVar == null || arrayList == null)) {
                    a[] aVarArr = new a[arrayList.size()];
                    Iterator it = arrayList.iterator();
                    while (it.hasNext()) {
                        int i3 = i2 + 1;
                        aVarArr[i2] = (a) it.next();
                        i2 = i3;
                    }
                    if (i == 0) {
                        dVar.a(aVarArr);
                    } else {
                        dVar.b(aVarArr);
                    }
                }
                return aVar;
            } else if (next == 2) {
                ArrayList arrayList2;
                String name = xmlPullParser.getName();
                if (name.equals("objectAnimator")) {
                    aVar = a(context, attributeSet);
                } else if (name.equals("animator")) {
                    aVar = a(context, attributeSet, null);
                } else if (name.equals("set")) {
                    aVar = new d();
                    TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, a);
                    TypedValue typedValue = new TypedValue();
                    obtainStyledAttributes.getValue(f, typedValue);
                    a(context, xmlPullParser, attributeSet, (d) aVar, typedValue.type == 16 ? typedValue.data : 0);
                    obtainStyledAttributes.recycle();
                } else {
                    throw new RuntimeException("Unknown animator name: " + xmlPullParser.getName());
                }
                if (dVar != null) {
                    arrayList2 = arrayList == null ? new ArrayList() : arrayList;
                    arrayList2.add(aVar);
                } else {
                    arrayList2 = arrayList;
                }
                arrayList = arrayList2;
            }
        }
    }

    private static af a(Context context, AttributeSet attributeSet, af afVar) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, e);
        long j = (long) obtainStyledAttributes.getInt(g, f);
        long j2 = (long) obtainStyledAttributes.getInt(h, f);
        int i = obtainStyledAttributes.getInt(m, f);
        if (afVar == null) {
            afVar = new af();
        }
        boolean z = i == 0 ? g : f;
        TypedValue peekValue = obtainStyledAttributes.peekValue(k);
        int i2 = peekValue != null ? 1 : 0;
        int i3 = i2 != 0 ? peekValue.type : f;
        TypedValue peekValue2 = obtainStyledAttributes.peekValue(l);
        int i4 = peekValue2 != null ? 1 : 0;
        int i5 = i4 != 0 ? peekValue2.type : f;
        if ((i2 != 0 && i3 >= 28 && i3 <= 31) || (i4 != 0 && i5 >= 28 && i5 <= 31)) {
            z = f;
            afVar.a(new f());
        }
        if (i != 0) {
            float dimension;
            if (i2 != 0) {
                float dimension2;
                dimension2 = i3 == 5 ? obtainStyledAttributes.getDimension(k, BitmapDescriptorFactory.HUE_RED) : obtainStyledAttributes.getFloat(k, BitmapDescriptorFactory.HUE_RED);
                if (i4 != 0) {
                    dimension = i5 == 5 ? obtainStyledAttributes.getDimension(l, BitmapDescriptorFactory.HUE_RED) : obtainStyledAttributes.getFloat(l, BitmapDescriptorFactory.HUE_RED);
                    afVar.a(new float[]{dimension2, dimension});
                } else {
                    afVar.a(new float[]{dimension2});
                }
            } else {
                dimension = i5 == 5 ? obtainStyledAttributes.getDimension(l, BitmapDescriptorFactory.HUE_RED) : obtainStyledAttributes.getFloat(l, BitmapDescriptorFactory.HUE_RED);
                afVar.a(new float[]{dimension});
            }
        } else if (i2 != 0) {
            if (i3 == 5) {
                i3 = (int) obtainStyledAttributes.getDimension(k, BitmapDescriptorFactory.HUE_RED);
            } else if (i3 < 28 || i3 > 31) {
                i3 = obtainStyledAttributes.getInt(k, f);
            } else {
                i3 = obtainStyledAttributes.getColor(k, f);
            }
            if (i4 != 0) {
                if (i5 == 5) {
                    i = (int) obtainStyledAttributes.getDimension(l, BitmapDescriptorFactory.HUE_RED);
                } else if (i5 < 28 || i5 > 31) {
                    i = obtainStyledAttributes.getInt(l, f);
                } else {
                    i = obtainStyledAttributes.getColor(l, f);
                }
                afVar.a(new int[]{i3, i});
            } else {
                afVar.a(new int[]{i3});
            }
        } else if (i4 != 0) {
            if (i5 == 5) {
                i = (int) obtainStyledAttributes.getDimension(l, BitmapDescriptorFactory.HUE_RED);
            } else if (i5 < 28 || i5 > 31) {
                i = obtainStyledAttributes.getInt(l, f);
            } else {
                i = obtainStyledAttributes.getColor(l, f);
            }
            afVar.a(new int[]{i});
        }
        afVar.d(j);
        afVar.a(j2);
        if (obtainStyledAttributes.hasValue(i)) {
            afVar.a(obtainStyledAttributes.getInt(i, f));
        }
        if (obtainStyledAttributes.hasValue(j)) {
            afVar.b(obtainStyledAttributes.getInt(j, g));
        }
        i = obtainStyledAttributes.getResourceId(f, f);
        if (i > 0) {
            afVar.a(AnimationUtils.loadInterpolator(context, i));
        }
        obtainStyledAttributes.recycle();
        return afVar;
    }

    private static m a(Context context, AttributeSet attributeSet) {
        af mVar = new m();
        a(context, attributeSet, mVar);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, c);
        mVar.a(obtainStyledAttributes.getString(f));
        obtainStyledAttributes.recycle();
        return mVar;
    }
}