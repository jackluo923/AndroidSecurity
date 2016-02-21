package com.flurry.sdk;

import android.os.Build;
import android.os.Build.VERSION;
import com.flurry.android.FlurryAgent;
import com.inmobi.commons.analytics.iat.impl.AdTrackerConstants;
import com.inmobi.commons.internal.ApiStatCollector.ApiEventType;
import com.zeptolab.ctr.billing.google.utils.IabHelper;
import java.io.ByteArrayOutputStream;
import java.io.Closeable;
import java.io.DataOutputStream;
import java.io.OutputStream;
import java.nio.ByteBuffer;
import java.security.DigestOutputStream;
import java.security.MessageDigest;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;

public class cz {
    private static final String a;
    private byte[] b;

    static {
        a = cz.class.getSimpleName();
    }

    public cz(String str, String str2, boolean z, boolean z2, long j, long j2, List list, Map map, Map map2, Map map3, Map map4, long j3) {
        byte[] array;
        Throwable th;
        this.b = null;
        byte[] bArr = null;
        Closeable closeable = null;
        try {
            MessageDigest eaVar = new ea();
            OutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            OutputStream digestOutputStream = new DigestOutputStream(byteArrayOutputStream, eaVar);
            Closeable dataOutputStream = new DataOutputStream(digestOutputStream);
            try {
                Iterator it;
                int size;
                Iterator it2;
                int size2;
                dataOutputStream.writeShort(ApiEventType.API_MRAID_MAKE_CALL);
                dataOutputStream.writeShort(0);
                dataOutputStream.writeLong(0);
                dataOutputStream.writeShort(0);
                dataOutputStream.writeShort(IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE);
                dataOutputStream.writeShort(FlurryAgent.getAgentVersion());
                dataOutputStream.writeLong(j3);
                dataOutputStream.writeUTF(str);
                dataOutputStream.writeUTF(str2);
                dataOutputStream.writeShort(map.size());
                Iterator it3 = map.entrySet().iterator();
                while (it3.hasNext()) {
                    Entry entry = (Entry) it3.next();
                    dataOutputStream.writeShort(((do_) entry.getKey()).d);
                    array = ((ByteBuffer) entry.getValue()).array();
                    dataOutputStream.writeShort(array.length);
                    dataOutputStream.write(array);
                }
                dataOutputStream.writeByte(0);
                dataOutputStream.writeBoolean(z);
                dataOutputStream.writeBoolean(z2);
                dataOutputStream.writeLong(j);
                dataOutputStream.writeLong(j2);
                dataOutputStream.writeShort(IabHelper.BILLING_RESPONSE_RESULT_ERROR);
                dataOutputStream.writeUTF("device.model");
                dataOutputStream.writeUTF(Build.MODEL);
                dataOutputStream.writeByte(0);
                dataOutputStream.writeUTF("build.brand");
                dataOutputStream.writeUTF(Build.BRAND);
                dataOutputStream.writeByte(0);
                dataOutputStream.writeUTF("build.id");
                dataOutputStream.writeUTF(Build.ID);
                dataOutputStream.writeByte(0);
                dataOutputStream.writeUTF("version.release");
                dataOutputStream.writeUTF(VERSION.RELEASE);
                dataOutputStream.writeByte(0);
                dataOutputStream.writeUTF("build.device");
                dataOutputStream.writeUTF(Build.DEVICE);
                dataOutputStream.writeByte(0);
                dataOutputStream.writeUTF("build.product");
                dataOutputStream.writeUTF(Build.PRODUCT);
                dataOutputStream.writeByte(0);
                dataOutputStream.writeShort(map2 != null ? map2.keySet().size() : 0);
                if (map2 != null) {
                    el.a((int)IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE, a, "sending referrer values because it exists");
                    it3 = map2.entrySet().iterator();
                    while (it3.hasNext()) {
                        entry = (Entry) it3.next();
                        el.a((int)IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE, a, "Referrer Entry:  " + ((String) entry.getKey()) + "=" + entry.getValue());
                        dataOutputStream.writeUTF((String) entry.getKey());
                        el.a((int)IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE, a, "referrer key is :" + ((String) entry.getKey()));
                        dataOutputStream.writeShort(((List) entry.getValue()).size());
                        it = ((List) entry.getValue()).iterator();
                        while (it.hasNext()) {
                            String str3 = (String) it.next();
                            dataOutputStream.writeUTF(str3);
                            el.a((int)IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE, a, "referrer value is :" + str3);
                        }
                    }
                }
                dataOutputStream.writeBoolean(false);
                size = map3 != null ? map3.keySet().size() : 0;
                el.a((int)IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE, a, "optionsMapSize is:  " + size);
                dataOutputStream.writeShort(size);
                if (map3 != null) {
                    el.a((int)IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE, a, "sending launch options");
                    it2 = map3.entrySet().iterator();
                    while (it2.hasNext()) {
                        entry = (Entry) it2.next();
                        el.a((int)IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE, a, "Launch Options Key:  " + ((String) entry.getKey()));
                        dataOutputStream.writeUTF((String) entry.getKey());
                        dataOutputStream.writeShort(((List) entry.getValue()).size());
                        it = ((List) entry.getValue()).iterator();
                        while (it.hasNext()) {
                            str3 = (String) it.next();
                            dataOutputStream.writeUTF(str3);
                            el.a((int)IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE, a, "Launch Options value is :" + str3);
                        }
                    }
                }
                size2 = map4 != null ? map4.keySet().size() : 0;
                el.a((int)IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE, a, "numOriginAttributions is:  " + size);
                dataOutputStream.writeShort(size2);
                if (map4 != null) {
                    it2 = map4.entrySet().iterator();
                    while (it2.hasNext()) {
                        entry = (Entry) it2.next();
                        el.a((int)IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE, a, "Origin Atttribute Key:  " + ((String) entry.getKey()));
                        dataOutputStream.writeUTF((String) entry.getKey());
                        dataOutputStream.writeShort(((Map) entry.getValue()).size());
                        el.a((int)IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE, a, "Origin Attribute Map Size for " + ((String) entry.getKey()) + ":  " + ((Map) entry.getValue()).size());
                        Iterator it4 = ((Map) entry.getValue()).entrySet().iterator();
                        while (it4.hasNext()) {
                            Entry entry2 = (Entry) it4.next();
                            el.a((int)IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE, a, "Origin Atttribute for " + ((String) entry.getKey()) + ":  " + ((String) entry2.getKey()) + ":" + ((String) entry2.getValue()));
                            dataOutputStream.writeUTF(entry2.getKey() != null ? (String) entry2.getKey() : AdTrackerConstants.BLANK);
                            dataOutputStream.writeUTF(entry2.getValue() != null ? (String) entry2.getValue() : AdTrackerConstants.BLANK);
                        }
                    }
                }
                size = list.size();
                dataOutputStream.writeShort(size);
                int i = 0;
                while (i < size) {
                    dataOutputStream.write(((de) list.get(i)).a());
                    i++;
                }
                dataOutputStream.writeShort(0);
                digestOutputStream.on(false);
                dataOutputStream.write(eaVar.a());
                dataOutputStream.close();
                array = byteArrayOutputStream.toByteArray();
                fb.a(dataOutputStream);
            } catch (Throwable th2) {
                th = th2;
                fb.a(dataOutputStream);
                throw th;
            }
        } catch (Throwable th3) {
            th = th3;
            dataOutputStream = closeable;
            fb.a(dataOutputStream);
            throw th;
        }
        this.b = array;
    }

    public byte[] a() {
        return this.b;
    }
}