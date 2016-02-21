package com.andymstone.customviews;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.andymstone.accuratecompass.o;
import com.andymstone.accuratecompass.p;

public class FlipViewSimple extends RelativeLayout {
    private TextView a;

    public FlipViewSimple(Context context) {
        super(context);
        a(context);
    }

    public FlipViewSimple(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        a(context);
    }

    private void a(Context context) {
        View inflate = ((LayoutInflater) context.getSystemService("layout_inflater")).inflate(p.flipviewsimple, this);
        inflate.setBackgroundColor(-16777216);
        this.a = (TextView) inflate.findViewById(o.textarea);
    }

    public void setMessage(CharSequence charSequence) {
        this.a.setText(charSequence);
    }
}