package com.andymstone.accuratecompass;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.widget.LinearLayout;
import com.andymstone.compasslib.aa;
import com.andymstone.compasslib.f;
import com.andymstone.customviews.FlipViewSimple;
import java.text.DecimalFormat;

public class OrientationDisplayView extends LinearLayout implements f {
    static final int[] f;
    static final DecimalFormat g;
    int a;
    FlipViewSimple b;
    FlipViewSimple c;
    int d;
    int e;
    private final String[] h;

    static {
        f = new int[]{q.direction_short_n, q.direction_short_ne, q.direction_short_e, q.direction_short_se, q.direction_short_s, q.direction_short_sw, q.direction_short_w, q.direction_short_nw, q.direction_short_n};
        g = new DecimalFormat("###\u00b0");
    }

    public OrientationDisplayView(Context context) {
        super(context);
        this.a = -1;
        this.h = new String[f.length];
        a(context);
    }

    public OrientationDisplayView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.a = -1;
        this.h = new String[f.length];
        a(context);
    }

    public OrientationDisplayView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.a = -1;
        this.h = new String[f.length];
        a(context);
    }

    void a(Context context) {
        int i = 0;
        while (i < f.length) {
            this.h[i] = context.getString(f[i]);
            i++;
        }
        setOrientation(0);
        ((LayoutInflater) context.getSystemService("layout_inflater")).inflate(p.orientation_display_view, this, true);
        this.b = (FlipViewSimple) findViewById(o.orientation);
        this.c = (FlipViewSimple) findViewById(o.nsew);
        this.d = getResources().getColor(m.compass_ok);
        this.e = getResources().getColor(m.compass_warning_active);
    }

    public void a(aa aaVar) {
    }

    public void a(float[] fArr, float f, float f2, float f3, int i) {
        int i2 = ((int) (((double) f) + 0.5d)) % 360;
        if (i2 != this.a) {
            this.b.setMessage(g.format((long) i2));
            this.a = i2;
        }
        this.c.setMessage(this.h[(int) (((((double) i2) + 22.5d) * 8.0d) / 360.0d)]);
    }
}