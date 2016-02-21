package com.zeptolab.ctr.mappicker;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.Context;
import android.os.AsyncTask;
import android.os.Build.VERSION;
import android.os.StrictMode;
import android.os.StrictMode.ThreadPolicy.Builder;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.ArrayAdapter;
import android.widget.Button;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.inmobi.commons.analytics.iat.impl.AdTrackerConstants;
import com.inmobi.commons.internal.ApiStatCollector.ApiEventType;
import com.zeptolab.ctr.CtrResourceLoader;
import com.zeptolab.ctr.ads.R;
import com.zeptolab.ctr.ads.R.id;
import com.zeptolab.ctr.ads.R.layout;
import com.zeptolab.zbuild.ZR;
import java.io.ByteArrayInputStream;
import java.io.InputStream;
import javax.xml.parsers.SAXParser;
import javax.xml.parsers.SAXParserFactory;
import org.xml.sax.helpers.DefaultHandler;

public class MapPicker {
    protected final String MAPS_LIST_SORTED_URL;
    protected final String MAPS_LIST_URL;
    protected final String MAPS_URL;
    protected Context context;
    private final String mappicker_password;
    private final String mappicker_user;
    protected String[] maps;
    protected RelativeLayout parent;
    protected int selected;
    protected boolean show;
    protected View view;

    private class LoadListTask extends AsyncTask {
        private final boolean m_all;
        private final MapPicker m_instance;

        public LoadListTask(MapPicker mapPicker, boolean z) {
            this.m_instance = mapPicker;
            this.m_all = z;
        }

        protected Void doInBackground(Void... voidArr) {
            if (this.m_instance != null) {
                String str;
                if (this.m_all) {
                    this.m_instance.getClass();
                    str = "https://zeptodev.com/editor/filelist.php?dir=ctr_android/maps";
                } else {
                    this.m_instance.getClass();
                    str = "https://zeptodev.com/editor/ctr_android/images/sorted.xml";
                }
                this.m_instance.maps = null;
                this.m_instance.selected = -1;
                this.m_instance.setMapName();
                try {
                    SAXParser newSAXParser = SAXParserFactory.newInstance().newSAXParser();
                    DefaultHandler mapPickerSaxHandler = new MapPickerSaxHandler();
                    InputStream byteArrayInputStream = new ByteArrayInputStream(CtrResourceLoader.loadAuthURL(str, MapPicker.this.mappicker_user, MapPicker.this.mappicker_password));
                    newSAXParser.parse(byteArrayInputStream, mapPickerSaxHandler);
                    byteArrayInputStream.close();
                    this.m_instance.maps = mapPickerSaxHandler.getMaps();
                    String[] strArr = new String[this.m_instance.maps.length];
                    int i = 0;
                    while (i < this.m_instance.maps.length) {
                        int lastIndexOf = this.m_instance.maps[i].lastIndexOf(ApiEventType.API_MRAID_PAUSE_VIDEO);
                        if (lastIndexOf == -1) {
                            strArr[i] = this.m_instance.maps[i];
                        } else {
                            strArr[i] = this.m_instance.maps[i].substring(lastIndexOf + 1);
                        }
                        i++;
                    }
                    Context context = this.m_instance.context;
                    layout com_zeptolab_ctr_ads_R_layout = ZR.layout;
                    ListAdapter arrayAdapter = new ArrayAdapter(context, 2130903049, strArr);
                    View view = this.m_instance.view;
                    id idVar = ZR.id;
                    ListView listView = (ListView) view.findViewById(R.id.maps_list);
                    listView.setOnItemClickListener(new OnItemClickListener() {
                        public void onItemClick(AdapterView adapterView, View view, int i, long j) {
                            LoadListTask.this.m_instance.selected = i;
                            LoadListTask.this.m_instance.setMapName();
                        }
                    });
                    listView.setAdapter(arrayAdapter);
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
            return null;
        }
    }

    @SuppressLint({"NewApi"})
    public MapPicker(Context context) {
        this.selected = -1;
        this.show = false;
        this.MAPS_LIST_URL = "https://zeptodev.com/editor/filelist.php?dir=ctr_android/maps";
        this.MAPS_LIST_SORTED_URL = "https://zeptodev.com/editor/ctr_android/images/sorted.xml";
        this.MAPS_URL = "https://zeptodev.com/editor/";
        this.mappicker_user = getUser();
        this.mappicker_password = getPassword();
        if (VERSION.SDK_INT >= 9) {
            StrictMode.setThreadPolicy(new Builder().permitNetwork().build());
        }
        this.context = context;
        Context context2 = this.context;
        layout com_zeptolab_ctr_ads_R_layout = ZR.layout;
        this.view = View.inflate(context2, R.layout.mappicker, null);
        loadList(true);
        View view = this.view;
        id idVar = ZR.id;
        ((Button) view.findViewById(R.id.all)).setOnClickListener(new OnClickListener() {
            public void onClick(View view) {
                MapPicker.this.loadList(true);
            }
        });
        view = this.view;
        idVar = ZR.id;
        ((Button) view.findViewById(R.id.sorted)).setOnClickListener(new OnClickListener() {
            public void onClick(View view) {
                MapPicker.this.loadList(false);
            }
        });
    }

    private String getPassword() {
        return AdTrackerConstants.BLANK;
    }

    private String getUser() {
        return AdTrackerConstants.BLANK;
    }

    public void hide() {
        ((Activity) this.context).runOnUiThread(new Runnable() {
            public void run() {
                if (MapPicker.this.show && MapPicker.this.parent != null) {
                    MapPicker.this.parent.removeView(MapPicker.this.view);
                    MapPicker.this.show = false;
                }
            }
        });
    }

    public boolean isShow() {
        return this.show;
    }

    public byte[] load(boolean z) {
        if (this.selected == -1) {
            return null;
        }
        if (z && this.selected + 1 < this.maps.length) {
            this.selected++;
        }
        byte[] loadAuthURL = CtrResourceLoader.loadAuthURL("https://zeptodev.com/editor/" + this.maps[this.selected], this.mappicker_user, this.mappicker_password);
        if (loadAuthURL == null) {
            return null;
        }
        hide();
        return loadAuthURL;
    }

    public void loadList(boolean z) {
        new LoadListTask(this, z).execute(new Void[0]);
    }

    public void setLayout(RelativeLayout relativeLayout) {
        this.parent = relativeLayout;
    }

    public void setMapName() {
        CharSequence charSequence;
        charSequence = this.selected == -1 ? "none" : this.maps[this.selected];
        View view = this.view;
        id idVar = ZR.id;
        ((TextView) view.findViewById(R.id.choosen)).setText(charSequence);
    }

    public void show() {
        ((Activity) this.context).runOnUiThread(new Runnable() {
            public void run() {
                if (!MapPicker.this.show && MapPicker.this.parent != null) {
                    MapPicker.this.parent.addView(MapPicker.this.view);
                    MapPicker.this.show = true;
                    MapPicker.this.setMapName();
                }
            }
        });
    }
}