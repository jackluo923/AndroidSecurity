package com.yanex.emoticons;

import android.app.Activity;
import android.content.Intent;
import android.graphics.drawable.ColorDrawable;
import android.os.Bundle;
import android.util.SparseBooleanArray;
import com.actionbarsherlock.app.SherlockActivity;
import com.actionbarsherlock.internal.widget.IcsLinearLayout;
import com.actionbarsherlock.view.Menu;
import com.actionbarsherlock.view.MenuItem;
import com.yanex.emoticons.dragndroplist.DragNDropListView;
import com.yanex.emoticons.dragndroplist.b;
import com.yanex.emoticons.dragndroplist.d;
import java.util.ArrayList;
import java.util.List;

public class EditorActivity extends SherlockActivity {
    private List a;
    private DragNDropListView b;
    private String c;
    private boolean d;
    private final Activity e;
    private int f;
    private d g;

    public EditorActivity() {
        this.d = false;
        this.e = this;
        this.g = new c(this);
    }

    public static int a() {
        return 1;
    }

    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(2130903062);
        getSupportActionBar().setDisplayHomeAsUpEnabled(true);
        this.b = (DragNDropListView) findViewById(2131099698);
        this.b.a(this.g);
        this.d = false;
        Intent intent = getIntent();
        this.c = new StringBuilder("useremotes").append(intent.getStringExtra("page")).toString();
        this.f = intent.getIntExtra("theme", 0);
        switch (this.f) {
            case IcsLinearLayout.SHOW_DIVIDER_MIDDLE:
                getSupportActionBar().setBackgroundDrawable(new ColorDrawable(-3503852));
                break;
            case FragmentManagerImpl.ANIM_STYLE_CLOSE_ENTER:
                getSupportActionBar().setBackgroundDrawable(new ColorDrawable(-1229176));
                break;
        }
        b bVar = new b(this);
        List a = j.a(bVar.a(this.c));
        bVar.a();
        this.a = new ArrayList();
        int i = 0;
        while (i < a.size()) {
            this.a.add(a.get(i));
            i++;
        }
        this.b.setAdapter(new b(this, new int[]{2130903061}, new int[]{16908308}, this.a));
        this.b.setOnItemLongClickListener(new d(this));
    }

    public boolean onCreateOptionsMenu(Menu menu) {
        menu.add(0, 1000, 0, (CharSequence)"Add").setIcon(2130837652).setShowAsAction(IcsLinearLayout.SHOW_DIVIDER_MIDDLE);
        menu.add(0, 1001, 0, (CharSequence)"Delete selected").setIcon(2130837653).setShowAsAction(IcsLinearLayout.SHOW_DIVIDER_MIDDLE);
        return true;
    }

    public void onDestroy() {
        List arrayList = new ArrayList();
        int i = 0;
        while (i < this.a.size()) {
            arrayList.add(this.a.get(i));
            i++;
        }
        b bVar = new b(this);
        bVar.a(this.c, j.a(arrayList));
        bVar.a();
        MainActivity.a().c();
        super.onDestroy();
    }

    public boolean onMenuItemSelected(int i, MenuItem menuItem) {
        if (menuItem.getItemId() == 1000) {
            new f(this, this.e).a(getString(2131427355), "");
            return true;
        } else if (menuItem.getItemId() != 1001) {
            return super.onMenuItemSelected(i, menuItem);
        } else {
            SparseBooleanArray checkedItemPositions = this.b.getCheckedItemPositions();
            boolean z;
            if (checkedItemPositions != null) {
                int i2 = this.a.size() - 1;
                z = false;
                while (i2 >= 0) {
                    if (checkedItemPositions.get(i2)) {
                        this.a.remove(i2);
                        this.b.setItemChecked(i2, false);
                        z = true;
                    }
                    i2--;
                }
            } else {
                z = false;
            }
            if (i == 0) {
                return true;
            }
            ((b) this.b.getAdapter()).notifyDataSetChanged();
            this.d = true;
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