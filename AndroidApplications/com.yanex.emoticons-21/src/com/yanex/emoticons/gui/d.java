package com.yanex.emoticons.gui;

import android.content.Context;
import android.graphics.Rect;
import android.text.TextUtils;
import android.view.View;
import android.view.View.OnLongClickListener;
import android.widget.Toast;

final class d implements OnLongClickListener {
    final /* synthetic */ a a;
    final /* synthetic */ ActionView b;
    final /* synthetic */ b c;

    d(b bVar, a aVar, ActionView actionView) {
        this.c = bVar;
        this.a = aVar;
        this.b = actionView;
    }

    public final boolean onLongClick(View view) {
        int i = 0;
        if (this.a.b.length() > 0) {
            View view2 = this.b;
            CharSequence charSequence = this.a.b;
            if (!TextUtils.isEmpty(charSequence)) {
                int[] iArr = new int[2];
                Rect rect = new Rect();
                view2.getLocationOnScreen(iArr);
                view2.getWindowVisibleDisplayFrame(rect);
                Context context = view2.getContext();
                int width = view2.getWidth();
                int height = view2.getHeight();
                width = width / 2 + iArr[0];
                int i2 = context.getResources().getDisplayMetrics().widthPixels;
                int i3 = (int) (48.0f * context.getResources().getDisplayMetrics().density);
                Toast makeText = Toast.makeText(context, charSequence, 0);
                if (iArr[1] < i3) {
                    i = 1;
                }
                if (i != 0) {
                    makeText.setGravity(49, width - i2 / 2, height + iArr[1] - rect.top);
                } else {
                    makeText.setGravity(81, width - i2 / 2, rect.bottom - iArr[1]);
                }
                makeText.show();
            }
        }
        return true;
    }
}