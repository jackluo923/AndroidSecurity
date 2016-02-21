package com.zeptolab.ctr.remotedata.banners;

import android.content.Context;
import com.google.android.gms.plus.PlusShare;
import com.inmobi.commons.analytics.db.AnalyticsEvent;
import com.inmobi.commons.analytics.iat.impl.AdTrackerConstants;
import com.zeptolab.utils.Base64;
import com.zeptolab.utils.Language;
import java.io.OutputStream;
import java.io.Serializable;
import java.util.Map;
import java.util.TreeMap;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;

public class Banner implements Serializable {
    public static String prefix = null;
    private static final long serialVersionUID = 1;
    protected int id;
    protected Map langs;
    protected String name;
    protected boolean saved;
    protected String url;

    static {
        prefix = "banner";
    }

    public Banner(Context context, Element element) {
        int i = 0;
        this.saved = false;
        this.id = Integer.parseInt(element.getAttributes().getNamedItem(AnalyticsEvent.EVENT_ID).getNodeValue());
        this.name = String.format(prefix + "_%d", new Object[]{Integer.valueOf(this.id)});
        this.saved = saveImage(element.getElementsByTagName(i.a).item(0).getFirstChild().getNodeValue(), context);
        try {
            this.url = element.getElementsByTagName(PlusShare.KEY_CALL_TO_ACTION_URL).item(0).getFirstChild().getNodeValue();
        } catch (Exception e) {
            this.url = AdTrackerConstants.BLANK;
        }
        this.langs = new TreeMap();
        NodeList childNodes = element.getElementsByTagName("text").item(0).getChildNodes();
        int length = childNodes.getLength();
        while (i < length) {
            Node item = childNodes.item(i);
            this.langs.put(item.getNodeName(), item.getFirstChild().getNodeValue());
            i++;
        }
    }

    public int getId() {
        return this.id;
    }

    public String getName() {
        return this.name;
    }

    public String getText() {
        String str = (String) this.langs.get(Language.getAsString());
        return str == null ? AdTrackerConstants.BLANK : str;
    }

    public String getUrl() {
        return this.url;
    }

    protected boolean saveImage(String str, Context context) {
        boolean z = false;
        try {
            OutputStream openFileOutput = context.openFileOutput(this.name, 0);
            openFileOutput.write(Base64.decode(str));
            openFileOutput.close();
            return true;
        } catch (Exception e) {
            e.printStackTrace();
            return z;
        }
    }
}