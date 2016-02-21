package com.vungle.publisher.db.model;

import android.content.ContentValues;
import android.database.Cursor;
import com.brightcove.player.util.ErrorUtil;
import com.google.android.gms.plus.PlusShare;
import com.google.android.gms.tagmanager.DataLayer;
import com.inmobi.commons.analytics.db.AnalyticsEvent;
import com.vungle.log.Logger;
import com.vungle.publisher.ai;
import com.vungle.publisher.ak;
import com.vungle.publisher.cd;
import com.vungle.publisher.protocol.message.RequestAdResponse.ThirdPartyAdTracking;
import com.vungle.publisher.protocol.message.RequestAdResponse.ThirdPartyAdTracking.PlayCheckpoint;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import javax.inject.Inject;
import javax.inject.Provider;
import javax.inject.Singleton;

public class EventTracking extends ak {
    String a;
    a b;
    String c;
    @Inject
    Factory d;

    @Singleton
    static class Factory extends com.vungle.publisher.ak.a {
        @Inject
        Provider a;

        Factory() {
        }

        private EventTracking a() {
            return (EventTracking) this.a.get();
        }

        private void a(String str, Map map, com.vungle.publisher.db.model.EventTracking.a aVar, String[] strArr) {
            if (strArr != null && strArr.length > 0) {
                List list;
                if (strArr == null || strArr.length <= 0) {
                    list = null;
                } else {
                    List arrayList = new ArrayList();
                    int length = strArr.length;
                    int i = 0;
                    while (i < length) {
                        Object obj;
                        String str2 = strArr[i];
                        if (aVar == null || str2 == null) {
                            obj = null;
                        } else {
                            EventTracking eventTracking = (EventTracking) this.a.get();
                            eventTracking.a = str;
                            eventTracking.b = aVar;
                            eventTracking.c = str2;
                        }
                        if (obj != null) {
                            arrayList.add(obj);
                        }
                        i++;
                    }
                    list = arrayList;
                }
                if (list == null || list.isEmpty()) {
                    list = null;
                }
                if (list != null && !list.isEmpty()) {
                    map.put(aVar, list);
                }
            }
        }

        static void a(Map map) {
            if (map != null) {
                Iterator it = map.values().iterator();
                while (it.hasNext()) {
                    List list = (List) it.next();
                    if (list != null) {
                        Iterator it2 = list.iterator();
                        while (it2.hasNext()) {
                            ((EventTracking) it2.next()).o();
                        }
                    }
                }
            }
        }

        protected final /* synthetic */ ak a(ak akVar, Cursor cursor, boolean z) {
            EventTracking eventTracking = (EventTracking) akVar;
            eventTracking.q = ai.d(cursor, AnalyticsEvent.EVENT_ID);
            eventTracking.a = ai.f(cursor, "ad_id");
            eventTracking.b = (com.vungle.publisher.db.model.EventTracking.a) ai.a(cursor, DataLayer.EVENT_KEY, com.vungle.publisher.db.model.EventTracking.a.class);
            eventTracking.c = ai.f(cursor, PlusShare.KEY_CALL_TO_ACTION_URL);
            return eventTracking;
        }

        final Map a(String str, ThirdPartyAdTracking thirdPartyAdTracking) {
            if (thirdPartyAdTracking == null) {
                return null;
            }
            Map hashMap = new HashMap();
            a(str, hashMap, com.vungle.publisher.db.model.EventTracking.a.a, thirdPartyAdTracking.f());
            a(str, hashMap, com.vungle.publisher.db.model.EventTracking.a.b, thirdPartyAdTracking.g());
            PlayCheckpoint[] i = thirdPartyAdTracking.i();
            if (i != null && i.length > 0) {
                int length = i.length;
                int i2 = 0;
                while (i2 < length) {
                    PlayCheckpoint playCheckpoint = i[i2];
                    Float f = playCheckpoint.a;
                    if (f != null) {
                        com.vungle.publisher.db.model.EventTracking.a aVar;
                        float floatValue = f.floatValue();
                        if (floatValue == 0.0f) {
                            aVar = com.vungle.publisher.db.model.EventTracking.a.c;
                        } else if (((double) floatValue) == 0.25d) {
                            aVar = com.vungle.publisher.db.model.EventTracking.a.d;
                        } else if (((double) floatValue) == 0.5d) {
                            aVar = com.vungle.publisher.db.model.EventTracking.a.e;
                        } else if (((double) floatValue) == 0.75d) {
                            aVar = com.vungle.publisher.db.model.EventTracking.a.f;
                        } else if (floatValue == 1.0f) {
                            aVar = com.vungle.publisher.db.model.EventTracking.a.h;
                        } else {
                            Logger.w(Logger.DATABASE_TAG, new StringBuilder("invalid play percent: ").append(floatValue).toString());
                            aVar = null;
                        }
                        if (aVar != null) {
                            a(str, hashMap, aVar, playCheckpoint.b);
                        }
                    }
                    i2++;
                }
            }
            a(str, hashMap, com.vungle.publisher.db.model.EventTracking.a.i, thirdPartyAdTracking.c());
            a(str, hashMap, com.vungle.publisher.db.model.EventTracking.a.j, thirdPartyAdTracking.j());
            a(str, hashMap, com.vungle.publisher.db.model.EventTracking.a.l, thirdPartyAdTracking.d());
            a(str, hashMap, com.vungle.publisher.db.model.EventTracking.a.m, thirdPartyAdTracking.e());
            a(str, hashMap, com.vungle.publisher.db.model.EventTracking.a.n, thirdPartyAdTracking.h());
            a(str, hashMap, com.vungle.publisher.db.model.EventTracking.a.o, thirdPartyAdTracking.k());
            a(str, hashMap, com.vungle.publisher.db.model.EventTracking.a.k, thirdPartyAdTracking.l());
            return hashMap;
        }

        final void a(String str) {
            Logger.v(Logger.DATABASE_TAG, new StringBuilder("deleted ").append(this.b.getWritableDatabase().delete("event_tracking", "ad_id = ?", new String[]{str})).append(" expired event_tracking records for adId: ").append(str).toString());
        }

        final Map b(String str) {
            Throwable th;
            Cursor cursor = null;
            if (str == null) {
                Logger.w(Logger.DATABASE_TAG, new StringBuilder("failed to fetch event_tracking records by ad_id: ").append(str).toString());
                return null;
            } else {
                try {
                    Logger.d(Logger.DATABASE_TAG, new StringBuilder("fetching event_tracking records by ad_id: ").append(str).toString());
                    Cursor query = this.b.getReadableDatabase().query("event_tracking", null, "ad_id = ?", new String[]{str}, null, null, null);
                    try {
                        Map map;
                        int count = query.getCount();
                        Logger.v(Logger.DATABASE_TAG, count + " event_tracking for ad_id: " + str);
                        if (count > 0) {
                            Map hashMap = new HashMap();
                            while (query.moveToNext()) {
                                ak a = a();
                                b(a, query, false);
                                if (a != null) {
                                    com.vungle.publisher.db.model.EventTracking.a aVar = a.b;
                                    List list = (List) hashMap.get(aVar);
                                    if (list == null) {
                                        list = new ArrayList();
                                        hashMap.put(aVar, list);
                                    }
                                    list.add(a);
                                }
                            }
                            map = hashMap;
                        } else {
                            map = null;
                        }
                        if (query == null) {
                            return map;
                        }
                        query.close();
                        return map;
                    } catch (Throwable th2) {
                        th = th2;
                        cursor = query;
                        if (cursor != null) {
                            cursor.close();
                        }
                        throw th;
                    }
                } catch (Throwable th3) {
                    th = th3;
                    if (cursor != null) {
                        cursor.close();
                    }
                    throw th;
                }
            }
        }

        protected final /* synthetic */ ak b_() {
            return a();
        }

        protected final /* bridge */ /* synthetic */ ak[] c(int i) {
            return new ak[i];
        }
    }

    public enum a {
        error,
        mute,
        play_percentage_0(0.0f),
        play_percentage_25(0.25f),
        play_percentage_50(0.5f),
        play_percentage_75(0.75f),
        play_percentage_80(0.8f),
        play_percentage_100(0.99f),
        postroll_click,
        postroll_view,
        unmute,
        video_click,
        video_close,
        video_pause,
        video_resume;
        public final float p;

        static {
            a = new com.vungle.publisher.db.model.EventTracking.a(ErrorUtil.ERROR, 0);
            b = new com.vungle.publisher.db.model.EventTracking.a("mute", 1);
            c = new com.vungle.publisher.db.model.EventTracking.a("play_percentage_0", 2, 0.0f);
            d = new com.vungle.publisher.db.model.EventTracking.a("play_percentage_25", 3, 0.25f);
            e = new com.vungle.publisher.db.model.EventTracking.a("play_percentage_50", 4, 0.5f);
            f = new com.vungle.publisher.db.model.EventTracking.a("play_percentage_75", 5, 0.75f);
            g = new com.vungle.publisher.db.model.EventTracking.a("play_percentage_80", 6, 0.8f);
            h = new com.vungle.publisher.db.model.EventTracking.a("play_percentage_100", 7, 0.99f);
            i = new com.vungle.publisher.db.model.EventTracking.a("postroll_click", 8);
            j = new com.vungle.publisher.db.model.EventTracking.a("postroll_view", 9);
            k = new com.vungle.publisher.db.model.EventTracking.a("unmute", 10);
            l = new com.vungle.publisher.db.model.EventTracking.a("video_click", 11);
            m = new com.vungle.publisher.db.model.EventTracking.a("video_close", 12);
            n = new com.vungle.publisher.db.model.EventTracking.a("video_pause", 13);
            o = new com.vungle.publisher.db.model.EventTracking.a("video_resume", 14);
            q = new com.vungle.publisher.db.model.EventTracking.a[]{a, b, c, d, e, f, g, h, i, j, k, l, m, n, o};
        }

        private a(float f) {
            this.p = f;
        }
    }

    EventTracking() {
    }

    protected final ContentValues a(boolean z) {
        ContentValues contentValues = new ContentValues();
        contentValues.put(AnalyticsEvent.EVENT_ID, (Integer) this.q);
        contentValues.put("ad_id", this.a);
        contentValues.put(DataLayer.EVENT_KEY, this.b.toString());
        contentValues.put(PlusShare.KEY_CALL_TO_ACTION_URL, this.c);
        return contentValues;
    }

    protected final /* bridge */ /* synthetic */ com.vungle.publisher.ak.a a_() {
        return this.d;
    }

    protected final String b() {
        return "event_tracking";
    }

    public final StringBuilder n() {
        StringBuilder n = super.n();
        cd.a(n, "ad_id", this.a);
        cd.a(n, DataLayer.EVENT_KEY, this.b);
        cd.a(n, PlusShare.KEY_CALL_TO_ACTION_URL, this.c);
        return n;
    }
}