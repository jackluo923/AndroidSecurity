package com.andymstone.accuratecompass;

import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.support.v4.app.e;
import android.support.v4.widget.DrawerLayout;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.andymstone.accuratecompass.a.d;
import com.andymstone.accuratecompass.a.f;
import com.andymstone.compasslib.CalibrationActivity;
import com.andymstone.compasslib.b;
import com.andymstone.compasslib.g;
import com.andymstone.core.o;
import com.andymstone.core.t;
import com.andymstone.core.x;

public class a extends t implements x {
    private b n;
    private g o;
    private CompassView p;

    private void a_(DrawerLayout drawerLayout) {
        r rVar = new r(this);
        onCreatePanelMenu(0, rVar);
        onPrepareOptionsMenu(rVar);
        LayoutInflater from = LayoutInflater.from(this);
        ViewGroup viewGroup = (ViewGroup) findViewById(o.menu_container);
        int i = 0;
        while (i < rVar.size()) {
            MenuItem item = rVar.getItem(i);
            TextView textView = (TextView) from.inflate(p.side_menu_item, viewGroup, false);
            textView.setText(item.getTitle());
            textView.setOnClickListener(new c(this, item, drawerLayout));
            viewGroup.addView(textView);
            i++;
        }
    }

    private boolean f() {
        Display defaultDisplay = getWindowManager().getDefaultDisplay();
        DisplayMetrics displayMetrics = new DisplayMetrics();
        defaultDisplay.getMetrics(displayMetrics);
        if ((displayMetrics.heightPixels > displayMetrics.widthPixels) != 0) {
            return false;
        }
        return ((float) displayMetrics.heightPixels) / getResources().getDisplayMetrics().density <= 350.0f;
    }

    private void g() {
        View findViewById = findViewById(o.no_sensor_warning);
        if (findViewById != null) {
            findViewById.setVisibility(0);
        }
    }

    private void r() {
        findViewById(o.no_sensor_warning).setVisibility(o.MyAlertDialog_MAD_messagePadding);
    }

    public final boolean a_(long j) {
        return false;
    }

    public final boolean a_(long j, long j2) {
        return true;
    }

    public e h() {
        return null;
    }

    protected void i() {
        startActivity(new Intent(this, CalibrationActivity.class));
    }

    protected void j() {
        if (q()) {
            new com.andymstone.accuratecompass.a.a().a(e(), "FILTERING_DIALOG");
        }
    }

    public void k() {
        this.n.d();
    }

    public void l() {
        this.n.c();
    }

    public void m() {
        new d().a(e(), "INSTRUCTIONS_DIALOG");
    }

    public final e n() {
        e dVar = new d();
        dVar.G();
        return dVar;
    }

    public final e o() {
        e fVar = new f();
        fVar.G();
        return fVar;
    }

    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (f()) {
            requestWindowFeature(1);
            getWindow().setFlags(1024, 1024);
        }
        setContentView(p.compass_layout);
        DrawerLayout drawerLayout = (DrawerLayout) findViewById(o.drawer_layout);
        findViewById(o.show_drawer).setOnClickListener(new b(this, drawerLayout));
        a(drawerLayout);
        this.p = (CompassView) findViewById(o.main_compass);
        this.p.a(this);
    }

    protected void onDestroy() {
        super.onDestroy();
        ((CompassView) findViewById(o.main_compass)).c();
    }

    protected void onPause() {
        super.onPause();
        if (this.n != null) {
            this.n.b();
            this.n.a();
        }
        this.n = null;
        this.p.b();
    }

    protected void onResume() {
        super.onResume();
        r();
        this.n = new b(this, 20);
        this.n.a((OrientationDisplayView) findViewById(o.orientation_display));
        this.n.a(this.p.getCompassListener());
        this.n.a(new d(this, new Handler()));
        WarningsView warningsView = (WarningsView) findViewById(o.warnings);
        this.o = new g(warningsView);
        warningsView.setListener(new f(this));
        warningsView.e();
        this.o.a();
        this.n.a(this.o);
        this.p.a();
    }

    public final e p() {
        return null;
    }
}