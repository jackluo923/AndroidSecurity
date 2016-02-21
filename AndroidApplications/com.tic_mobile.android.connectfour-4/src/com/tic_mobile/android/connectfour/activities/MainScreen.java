package com.tic_mobile.android.connectfour.activities;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.ListView;
import android.widget.TextView;
import com.tic_mobile.android.connectfour.Config;
import com.tic_mobile.android.connectfour.GameParameters;
import com.tic_mobile.android.connectfour.R;

public class MainScreen extends Activity implements OnItemClickListener {
    private GameParameters gameParams;
    private ListView mainMenu;
    private SharedPreferences preferences;

    private class MainMenuAdapter extends BaseAdapter {
        private Context context;
        private int iconResourceId;
        private int[] icons;
        private int itemResourceId;
        private int labelResourceId;
        private String[] labels;

        public MainMenuAdapter(Context context, int[] icons, String[] labels, int itemResourceId, int iconResourceId, int labelResourceId) {
            this.context = context;
            this.itemResourceId = itemResourceId;
            this.iconResourceId = iconResourceId;
            this.labelResourceId = labelResourceId;
            this.icons = icons;
            this.labels = labels;
        }

        public int getCount() {
            return Math.max(this.icons.length, this.labels.length);
        }

        public Object getItem(int position) {
            return new Integer(position);
        }

        public long getItemId(int position) {
            return (long) position;
        }

        public int getItemViewType(int position) {
            return -1;
        }

        public View getView(int position, View convertView, ViewGroup parent) {
            if (convertView != null) {
                return convertView;
            }
            View view = ((LayoutInflater) this.context.getSystemService("layout_inflater")).inflate(this.itemResourceId, parent, false);
            ImageView icon = (ImageView) view.findViewById(this.iconResourceId);
            TextView label = (TextView) view.findViewById(this.labelResourceId);
            if (position < this.icons.length) {
                icon.setBackgroundResource(this.icons[position]);
            }
            if (position < this.labels.length) {
                label.setText(this.labels[position]);
            }
            return view;
        }
    }

    private void loadPreferences() {
        this.preferences = getSharedPreferences("options", 0);
        this.gameParams = GameParameters.fromPreferences(this.preferences);
    }

    private void savePreferences() {
        this.gameParams.toPreferences(this.preferences);
    }

    protected void onActivityResult(int requestCode, int resultCode, Intent data) {
        if (resultCode != 0) {
            Bundle result = data.getExtras();
            switch (requestCode) {
                case R.styleable.com_admob_android_ads_AdView_refreshInterval:
                    this.gameParams = GameParameters.fromBundle(result);
                default:
                    break;
            }
        }
    }

    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setTitle(getString(R.string.mainActivityName));
        loadPreferences();
        setContentView(R.layout.main_screen);
        this.mainMenu = (ListView) findViewById(R.id.mainScreenMainMenu);
        this.mainMenu.setAdapter(new MainMenuAdapter(this, new int[]{2130837516, 2130837515, 2130837517, 2130837513}, getResources().getStringArray(R.array.mainMenuLabels), 2130903042, 2131099661, 2131099662));
        this.mainMenu.setOnItemClickListener(this);
    }

    public void onDestroy() {
        super.onDestroy();
        if (isFinishing()) {
            savePreferences();
            Config.setSplashShown(false);
        }
    }

    public void onItemClick(AdapterView<?> parent, View view, int position, long id) {
        String str = Config.PACKAGE_NAME;
        String str2;
        switch ((int) id) {
            case R.styleable.com_admob_android_ads_AdView_backgroundColor:
                Intent gameScreenIntent = new Intent();
                str2 = Config.PACKAGE_NAME;
                gameScreenIntent.setClassName(str, Config.ACTIVITY_NAME_GAME);
                gameScreenIntent.putExtras(this.gameParams.toBundle());
                startActivity(gameScreenIntent);
            case R.styleable.com_admob_android_ads_AdView_primaryTextColor:
                Intent optionsScreenIntent = new Intent();
                str2 = Config.PACKAGE_NAME;
                optionsScreenIntent.setClassName(str, Config.ACTIVITY_NAME_OPTIONS);
                optionsScreenIntent.putExtras(this.gameParams.toBundle());
                startActivityForResult(optionsScreenIntent, R.styleable.com_admob_android_ads_AdView_refreshInterval);
            case R.styleable.com_admob_android_ads_AdView_secondaryTextColor:
                Intent statsScreenIntent = new Intent();
                str2 = Config.PACKAGE_NAME;
                statsScreenIntent.setClassName(str, Config.ACTIVITY_NAME_STATS);
                startActivity(statsScreenIntent);
            case R.styleable.com_admob_android_ads_AdView_keywords:
                Intent aboutScreenIntent = new Intent();
                str2 = Config.PACKAGE_NAME;
                aboutScreenIntent.setClassName(str, Config.ACTIVITY_NAME_ABOUT);
                startActivity(aboutScreenIntent);
            default:
                break;
        }
    }

    public boolean onKeyDown(int keyCode, KeyEvent event) {
        if (keyCode == 4) {
            finish();
            return true;
        } else {
            super.onKeyDown(keyCode, event);
            return false;
        }
    }

    public void onStart() {
        super.onStart();
        if (!Config.getSplashShown()) {
            Config.setSplashShown(true);
            startActivity(new Intent().setClassName(Config.PACKAGE_NAME, Config.ACTIVITY_NAME_SPLASH));
        }
    }
}