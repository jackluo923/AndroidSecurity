package com.yanex.emoticons;

import android.os.Bundle;
import android.support.v4.view.ViewPager;
import android.util.TypedValue;
import android.view.View;
import android.view.ViewGroup.LayoutParams;
import android.widget.ImageView;
import android.widget.ImageView.ScaleType;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.actionbarsherlock.app.SherlockActivity;
import com.actionbarsherlock.internal.widget.IcsLinearLayout;
import com.actionbarsherlock.view.Menu;
import com.actionbarsherlock.view.MenuItem;
import com.yanex.emoticons.gui.f;
import java.util.ArrayList;
import java.util.List;

public class TutorialActivity extends SherlockActivity {
    int[] a;
    int[] b;
    private MenuItem c;
    private MenuItem d;
    private ViewPager e;

    public TutorialActivity() {
        this.a = new int[]{2130837668, 2130837669, 2130837670, 2130837671};
        this.b = new int[]{2131427393, 2131427394, 2131427395, 2131427396};
    }

    private int a(float f) {
        return (int) TypedValue.applyDimension(1, f, getResources().getDisplayMetrics());
    }

    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(2130903066);
        getSupportActionBar().setDisplayHomeAsUpEnabled(true);
        this.e = (ViewPager) findViewById(2131099700);
        this.e.a(new v(this));
        List arrayList = new ArrayList();
        int i = 0;
        while (i < 4) {
            RelativeLayout relativeLayout = new RelativeLayout(this);
            relativeLayout.setGravity(17);
            int a = a(12.0f);
            int a2 = a(16.0f);
            View imageView = new ImageView(this);
            imageView.setScaleType(ScaleType.CENTER_INSIDE);
            imageView.setBackgroundColor(-1);
            imageView.setImageResource(this.a[i]);
            imageView.setPadding(a2, a2, a2, a2);
            View textView = new TextView(this);
            textView.setId(16908308);
            textView.setTextColor(-13421773);
            textView.setTextSize(18.0f);
            textView.setGravity(1);
            textView.setText(getString(this.b[i]));
            textView.setPadding(a, a, a, a);
            LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -1);
            layoutParams.addRule(IcsLinearLayout.SHOW_DIVIDER_MIDDLE, 16908308);
            LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-1, -2);
            layoutParams2.addRule(12);
            relativeLayout.addView(imageView, layoutParams);
            relativeLayout.addView(textView, layoutParams2);
            arrayList.add(relativeLayout);
            i++;
        }
        this.e.a(new f(arrayList));
    }

    public boolean onCreateOptionsMenu(Menu menu) {
        this.c = menu.add(0, 1000, 0, (CharSequence)"Back").setIcon(2130837655);
        this.c.setShowAsAction(IcsLinearLayout.SHOW_DIVIDER_MIDDLE);
        this.c.setEnabled(this.e.a() > 0);
        this.d = menu.add(0, 1001, 0, (CharSequence)"Forward").setIcon(2130837656);
        this.d.setShowAsAction(IcsLinearLayout.SHOW_DIVIDER_MIDDLE);
        return true;
    }

    public boolean onMenuItemSelected(int i, MenuItem menuItem) {
        boolean z = false;
        if (menuItem.getItemId() == 1000) {
            this.e.a(this.e.a() == 0 ? 0 : this.e.a() - 1);
            MenuItem menuItem2 = this.c;
            if (this.e.a() > 0) {
                z = true;
            }
            menuItem2.setEnabled(z);
            return true;
        } else if (menuItem.getItemId() != 1001) {
            return super.onMenuItemSelected(i, menuItem);
        } else {
            if (this.e.a() == this.a.length - 1) {
                finish();
            } else {
                this.e.a(this.e.a() + 1);
            }
            this.c.setEnabled(true);
            return true;
        }
    }

    public boolean onOptionsItemSelected(MenuItem menuItem) {
        switch (menuItem.getItemId()) {
            case 16908332:
                finish();
                return false;
            default:
                return super.onOptionsItemSelected(menuItem);
        }
    }
}