package com.millennialmedia.android;

import android.content.BroadcastReceiver;
import android.content.ContentResolver;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.res.Configuration;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.Window;
import java.io.File;

class MMBaseActivity {
    MMActivity c;

    MMBaseActivity() {
    }

    protected void a() {
        this.c.b();
    }

    protected void a(int i, int i2, Intent intent) {
        this.c.a(i, i2, intent);
    }

    protected void a(Bundle bundle) {
        this.c.b(bundle);
    }

    protected void b(Bundle bundle) {
        this.c.c(bundle);
    }

    protected void d() {
        this.c.e();
    }

    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        return this.c.a(motionEvent);
    }

    protected void e() {
        this.c.f();
    }

    protected void f() {
        this.c.c();
    }

    public void finish() {
        this.c.finishSuper();
    }

    public File getCacheDir() {
        return this.c.getCacheDir();
    }

    public ContentResolver getContentResolver() {
        return this.c.getContentResolver();
    }

    public Intent getIntent() {
        return this.c.getIntent();
    }

    public Object getLastNonConfigurationInstance() {
        return this.c.getLastNonConfigurationInstance();
    }

    public Object getSystemService(String str) {
        return this.c.getSystemService(str);
    }

    public Window getWindow() {
        return this.c.getWindow();
    }

    protected void k() {
        this.c.d();
    }

    public void onConfigurationChanged(Configuration configuration) {
        this.c.a(configuration);
    }

    protected void onCreate(Bundle bundle) {
        this.c.a(bundle);
    }

    protected void onDestroy() {
        this.c.a();
    }

    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        return this.c.a(i, keyEvent);
    }

    public Object onRetainNonConfigurationInstance() {
        return this.c.g();
    }

    public void onWindowFocusChanged(boolean z) {
        this.c.a(z);
    }

    public Intent registerReceiver(BroadcastReceiver broadcastReceiver, IntentFilter intentFilter) {
        return this.c.registerReceiver(broadcastReceiver, intentFilter);
    }

    public final boolean requestWindowFeature(int i) {
        return this.c.requestWindowFeature(i);
    }

    public final void runOnUiThread(Runnable runnable) {
        this.c.runOnUiThread(runnable);
    }

    public void setContentView(View view) {
        this.c.setContentView(view);
    }

    public void setRequestedOrientation(int i) {
        this.c.setRequestedOrientation(i);
    }

    public final void setResult(int i) {
        this.c.setResult(i);
    }

    public void setTheme(int i) {
        this.c.setTheme(i);
    }

    public void startActivity(Intent intent) {
        this.c.startActivity(intent);
    }

    public void startActivityForResult(Intent intent, int i) {
        this.c.startActivityForResult(intent, i);
    }

    public void unregisterReceiver(BroadcastReceiver broadcastReceiver) {
        this.c.unregisterReceiver(broadcastReceiver);
    }
}