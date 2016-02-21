package com.google.android.gms.internal;

import android.os.Parcel;
import com.admarvel.android.ads.Constants;
import com.admarvel.android.nativeads.AdMarvelNativeAd;
import com.brightcove.player.model.Video.Fields;
import com.google.android.gms.common.Scopes;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.plus.PlusShare;
import com.google.android.gms.plus.model.people.Person;
import com.google.android.gms.plus.model.people.Person.AgeRange;
import com.google.android.gms.plus.model.people.Person.Cover;
import com.google.android.gms.plus.model.people.Person.Cover.CoverInfo;
import com.google.android.gms.plus.model.people.Person.Cover.CoverPhoto;
import com.google.android.gms.plus.model.people.Person.Image;
import com.google.android.gms.plus.model.people.Person.Name;
import com.google.android.gms.plus.model.people.Person.Organizations;
import com.google.android.gms.plus.model.people.Person.PlacesLived;
import com.google.android.gms.plus.model.people.Person.Urls;
import com.inmobi.commons.analytics.db.AnalyticsEvent;
import com.inmobi.commons.analytics.db.AnalyticsSQLiteHelper;
import com.inmobi.commons.internal.ApiStatCollector.ApiEventType;
import com.millennialmedia.android.MMException;
import com.millennialmedia.android.MMRequest;
import com.zeptolab.ctr.ads.R;
import com.zeptolab.ctr.billing.google.utils.IabHelper;
import com.zeptolab.ctr.scorer.GoogleScorer;
import com.zeptolab.zbuild.ZBuildConfig;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

public final class ir extends fb implements SafeParcelable, Person {
    public static final is CREATOR;
    private static final HashMap RL;
    private String FE;
    private final Set RM;
    private String SK;
    private a SL;
    private String SM;
    private String SN;
    private int SO;
    private b SP;
    private String SQ;
    private c SR;
    private boolean SS;
    private String ST;
    private d SU;
    private String SV;
    private int SW;
    private List SX;
    private List SY;
    private int SZ;
    private int Ta;
    private String Tb;
    private List Tc;
    private boolean Td;
    private int lu;
    private String pS;
    private String uS;
    private final int wj;

    public static final class a extends fb implements SafeParcelable, AgeRange {
        public static final it CREATOR;
        private static final HashMap RL;
        private final Set RM;
        private int Te;
        private int Tf;
        private final int wj;

        static {
            CREATOR = new it();
            RL = new HashMap();
            RL.put("max", com.google.android.gms.internal.fb.a.g("max", GoogleScorer.CLIENT_PLUS));
            RL.put("min", com.google.android.gms.internal.fb.a.g("min", IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE));
        }

        public a() {
            this.wj = 1;
            this.RM = new HashSet();
        }

        a(Set set, int i, int i2, int i3) {
            this.RM = set;
            this.wj = i;
            this.Te = i2;
            this.Tf = i3;
        }

        protected boolean a_(com.google.android.gms.internal.fb.a aVar) {
            return this.RM.contains(Integer.valueOf(aVar.eu()));
        }

        protected Object ak(String str) {
            return null;
        }

        protected boolean al(String str) {
            return false;
        }

        protected Object b(com.google.android.gms.internal.fb.a aVar) {
            switch (aVar.eu()) {
                case GoogleScorer.CLIENT_PLUS:
                    return Integer.valueOf(this.Te);
                case IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE:
                    return Integer.valueOf(this.Tf);
                default:
                    throw new IllegalStateException("Unknown safe parcelable id=" + aVar.eu());
            }
        }

        public int describeContents() {
            it itVar = CREATOR;
            return 0;
        }

        public HashMap en() {
            return RL;
        }

        public boolean equals(com.google.android.gms.internal.ir.a aVar) {
            if (!(aVar instanceof com.google.android.gms.internal.ir.a)) {
                return false;
            }
            if (this == aVar) {
                return true;
            }
            aVar = aVar;
            Iterator it = RL.values().iterator();
            while (it.hasNext()) {
                com.google.android.gms.internal.fb.a aVar2 = (com.google.android.gms.internal.fb.a) it.next();
                if (a(aVar2)) {
                    if (!aVar.a(aVar2)) {
                        return false;
                    }
                    if (!b(aVar2).equals(aVar.b(aVar2))) {
                        return false;
                    }
                } else if (aVar.a(aVar2)) {
                    return false;
                }
            }
            return true;
        }

        public /* synthetic */ Object freeze() {
            return ie();
        }

        public int getMax() {
            return this.Te;
        }

        public int getMin() {
            return this.Tf;
        }

        int getVersionCode() {
            return this.wj;
        }

        Set hB() {
            return this.RM;
        }

        public boolean hasMax() {
            return this.RM.contains(Integer.valueOf(GoogleScorer.CLIENT_PLUS));
        }

        public boolean hasMin() {
            return this.RM.contains(Integer.valueOf(IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE));
        }

        public int hashCode() {
            Iterator it = RL.values().iterator();
            int i = 0;
            while (it.hasNext()) {
                int hashCode;
                com.google.android.gms.internal.fb.a aVar = (com.google.android.gms.internal.fb.a) it.next();
                if (a(aVar)) {
                    hashCode = b(aVar).hashCode() + i + aVar.eu();
                } else {
                    hashCode = i;
                }
                i = hashCode;
            }
            return i;
        }

        public com.google.android.gms.internal.ir.a ie() {
            return this;
        }

        public boolean isDataValid() {
            return true;
        }

        public void writeToParcel(Parcel parcel, int i) {
            it itVar = CREATOR;
            it.a(this, parcel, i);
        }
    }

    public static final class b extends fb implements SafeParcelable, Cover {
        public static final iu CREATOR;
        private static final HashMap RL;
        private final Set RM;
        private a Tg;
        private b Th;
        private int Ti;
        private final int wj;

        public static final class a extends fb implements SafeParcelable, CoverInfo {
            public static final iv CREATOR;
            private static final HashMap RL;
            private final Set RM;
            private int Tj;
            private int Tk;
            private final int wj;

            static {
                CREATOR = new iv();
                RL = new HashMap();
                RL.put("leftImageOffset", com.google.android.gms.internal.fb.a.g("leftImageOffset", GoogleScorer.CLIENT_PLUS));
                RL.put("topImageOffset", com.google.android.gms.internal.fb.a.g("topImageOffset", IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE));
            }

            public a() {
                this.wj = 1;
                this.RM = new HashSet();
            }

            a(Set set, int i, int i2, int i3) {
                this.RM = set;
                this.wj = i;
                this.Tj = i2;
                this.Tk = i3;
            }

            protected boolean a_(com.google.android.gms.internal.fb.a aVar) {
                return this.RM.contains(Integer.valueOf(aVar.eu()));
            }

            protected Object ak(String str) {
                return null;
            }

            protected boolean al(String str) {
                return false;
            }

            protected Object b(com.google.android.gms.internal.fb.a aVar) {
                switch (aVar.eu()) {
                    case GoogleScorer.CLIENT_PLUS:
                        return Integer.valueOf(this.Tj);
                    case IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE:
                        return Integer.valueOf(this.Tk);
                    default:
                        throw new IllegalStateException("Unknown safe parcelable id=" + aVar.eu());
                }
            }

            public int describeContents() {
                iv ivVar = CREATOR;
                return 0;
            }

            public HashMap en() {
                return RL;
            }

            public boolean equals(com.google.android.gms.internal.ir.b.a aVar) {
                if (!(aVar instanceof com.google.android.gms.internal.ir.b.a)) {
                    return false;
                }
                if (this == aVar) {
                    return true;
                }
                aVar = aVar;
                Iterator it = RL.values().iterator();
                while (it.hasNext()) {
                    com.google.android.gms.internal.fb.a aVar2 = (com.google.android.gms.internal.fb.a) it.next();
                    if (a(aVar2)) {
                        if (!aVar.a(aVar2)) {
                            return false;
                        }
                        if (!b(aVar2).equals(aVar.b(aVar2))) {
                            return false;
                        }
                    } else if (aVar.a(aVar2)) {
                        return false;
                    }
                }
                return true;
            }

            public /* synthetic */ Object freeze() {
                return ii();
            }

            public int getLeftImageOffset() {
                return this.Tj;
            }

            public int getTopImageOffset() {
                return this.Tk;
            }

            int getVersionCode() {
                return this.wj;
            }

            Set hB() {
                return this.RM;
            }

            public boolean hasLeftImageOffset() {
                return this.RM.contains(Integer.valueOf(GoogleScorer.CLIENT_PLUS));
            }

            public boolean hasTopImageOffset() {
                return this.RM.contains(Integer.valueOf(IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE));
            }

            public int hashCode() {
                Iterator it = RL.values().iterator();
                int i = 0;
                while (it.hasNext()) {
                    int hashCode;
                    com.google.android.gms.internal.fb.a aVar = (com.google.android.gms.internal.fb.a) it.next();
                    if (a(aVar)) {
                        hashCode = b(aVar).hashCode() + i + aVar.eu();
                    } else {
                        hashCode = i;
                    }
                    i = hashCode;
                }
                return i;
            }

            public com.google.android.gms.internal.ir.b.a ii() {
                return this;
            }

            public boolean isDataValid() {
                return true;
            }

            public void writeToParcel(Parcel parcel, int i) {
                iv ivVar = CREATOR;
                iv.a(this, parcel, i);
            }
        }

        public static final class b extends fb implements SafeParcelable, CoverPhoto {
            public static final iw CREATOR;
            private static final HashMap RL;
            private final Set RM;
            private String pS;
            private int v;
            private int w;
            private final int wj;

            static {
                CREATOR = new iw();
                RL = new HashMap();
                RL.put(MMLayout.KEY_HEIGHT, com.google.android.gms.internal.fb.a.g(MMLayout.KEY_HEIGHT, GoogleScorer.CLIENT_PLUS));
                RL.put(PlusShare.KEY_CALL_TO_ACTION_URL, com.google.android.gms.internal.fb.a.j(PlusShare.KEY_CALL_TO_ACTION_URL, IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE));
                RL.put(MMLayout.KEY_WIDTH, com.google.android.gms.internal.fb.a.g(MMLayout.KEY_WIDTH, GoogleScorer.CLIENT_APPSTATE));
            }

            public b() {
                this.wj = 1;
                this.RM = new HashSet();
            }

            b(Set set, int i, int i2, String str, int i3) {
                this.RM = set;
                this.wj = i;
                this.v = i2;
                this.pS = str;
                this.w = i3;
            }

            protected boolean a(com.google.android.gms.internal.fb.a aVar) {
                return this.RM.contains(Integer.valueOf(aVar.eu()));
            }

            protected Object ak(String str) {
                return null;
            }

            protected boolean al(String str) {
                return false;
            }

            protected Object b_(com.google.android.gms.internal.fb.a aVar) {
                switch (aVar.eu()) {
                    case GoogleScorer.CLIENT_PLUS:
                        return Integer.valueOf(this.v);
                    case IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE:
                        return this.pS;
                    case GoogleScorer.CLIENT_APPSTATE:
                        return Integer.valueOf(this.w);
                    default:
                        throw new IllegalStateException("Unknown safe parcelable id=" + aVar.eu());
                }
            }

            public int describeContents() {
                iw iwVar = CREATOR;
                return 0;
            }

            public HashMap en() {
                return RL;
            }

            public boolean equals(com.google.android.gms.internal.ir.b.b bVar) {
                if (!(bVar instanceof com.google.android.gms.internal.ir.b.b)) {
                    return false;
                }
                if (this == bVar) {
                    return true;
                }
                bVar = bVar;
                Iterator it = RL.values().iterator();
                while (it.hasNext()) {
                    com.google.android.gms.internal.fb.a aVar = (com.google.android.gms.internal.fb.a) it.next();
                    if (a(aVar)) {
                        if (!bVar.a(aVar)) {
                            return false;
                        }
                        if (!b(aVar).equals(bVar.b(aVar))) {
                            return false;
                        }
                    } else if (bVar.a(aVar)) {
                        return false;
                    }
                }
                return true;
            }

            public /* synthetic */ Object freeze() {
                return ij();
            }

            public int getHeight() {
                return this.v;
            }

            public String getUrl() {
                return this.pS;
            }

            int getVersionCode() {
                return this.wj;
            }

            public int getWidth() {
                return this.w;
            }

            Set hB() {
                return this.RM;
            }

            public boolean hasHeight() {
                return this.RM.contains(Integer.valueOf(GoogleScorer.CLIENT_PLUS));
            }

            public boolean hasUrl() {
                return this.RM.contains(Integer.valueOf(IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE));
            }

            public boolean hasWidth() {
                return this.RM.contains(Integer.valueOf(GoogleScorer.CLIENT_APPSTATE));
            }

            public int hashCode() {
                Iterator it = RL.values().iterator();
                int i = 0;
                while (it.hasNext()) {
                    int hashCode;
                    com.google.android.gms.internal.fb.a aVar = (com.google.android.gms.internal.fb.a) it.next();
                    if (a(aVar)) {
                        hashCode = b(aVar).hashCode() + i + aVar.eu();
                    } else {
                        hashCode = i;
                    }
                    i = hashCode;
                }
                return i;
            }

            public com.google.android.gms.internal.ir.b.b ij() {
                return this;
            }

            public boolean isDataValid() {
                return true;
            }

            public void writeToParcel(Parcel parcel, int i) {
                iw iwVar = CREATOR;
                iw.a(this, parcel, i);
            }
        }

        static {
            CREATOR = new iu();
            RL = new HashMap();
            RL.put("coverInfo", com.google.android.gms.internal.fb.a.a("coverInfo", GoogleScorer.CLIENT_PLUS, a.class));
            RL.put("coverPhoto", com.google.android.gms.internal.fb.a.a("coverPhoto", IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE, b.class));
            RL.put("layout", com.google.android.gms.internal.fb.a.a("layout", GoogleScorer.CLIENT_APPSTATE, new ey().f("banner", 0), false));
        }

        public b() {
            this.wj = 1;
            this.RM = new HashSet();
        }

        b(Set set, int i, a aVar, b bVar, int i2) {
            this.RM = set;
            this.wj = i;
            this.Tg = aVar;
            this.Th = bVar;
            this.Ti = i2;
        }

        protected boolean a(com.google.android.gms.internal.fb.a aVar) {
            return this.RM.contains(Integer.valueOf(aVar.eu()));
        }

        protected Object ak(String str) {
            return null;
        }

        protected boolean al(String str) {
            return false;
        }

        protected Object b_(com.google.android.gms.internal.fb.a aVar) {
            switch (aVar.eu()) {
                case GoogleScorer.CLIENT_PLUS:
                    return this.Tg;
                case IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE:
                    return this.Th;
                case GoogleScorer.CLIENT_APPSTATE:
                    return Integer.valueOf(this.Ti);
                default:
                    throw new IllegalStateException("Unknown safe parcelable id=" + aVar.eu());
            }
        }

        public int describeContents() {
            iu iuVar = CREATOR;
            return 0;
        }

        public HashMap en() {
            return RL;
        }

        public boolean equals(com.google.android.gms.internal.ir.b bVar) {
            if (!(bVar instanceof com.google.android.gms.internal.ir.b)) {
                return false;
            }
            if (this == bVar) {
                return true;
            }
            bVar = bVar;
            Iterator it = RL.values().iterator();
            while (it.hasNext()) {
                com.google.android.gms.internal.fb.a aVar = (com.google.android.gms.internal.fb.a) it.next();
                if (a(aVar)) {
                    if (!bVar.a(aVar)) {
                        return false;
                    }
                    if (!b(aVar).equals(bVar.b(aVar))) {
                        return false;
                    }
                } else if (bVar.a(aVar)) {
                    return false;
                }
            }
            return true;
        }

        public /* synthetic */ Object freeze() {
            return ih();
        }

        public CoverInfo getCoverInfo() {
            return this.Tg;
        }

        public CoverPhoto getCoverPhoto() {
            return this.Th;
        }

        public int getLayout() {
            return this.Ti;
        }

        int getVersionCode() {
            return this.wj;
        }

        Set hB() {
            return this.RM;
        }

        public boolean hasCoverInfo() {
            return this.RM.contains(Integer.valueOf(GoogleScorer.CLIENT_PLUS));
        }

        public boolean hasCoverPhoto() {
            return this.RM.contains(Integer.valueOf(IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE));
        }

        public boolean hasLayout() {
            return this.RM.contains(Integer.valueOf(GoogleScorer.CLIENT_APPSTATE));
        }

        public int hashCode() {
            Iterator it = RL.values().iterator();
            int i = 0;
            while (it.hasNext()) {
                int hashCode;
                com.google.android.gms.internal.fb.a aVar = (com.google.android.gms.internal.fb.a) it.next();
                if (a(aVar)) {
                    hashCode = b(aVar).hashCode() + i + aVar.eu();
                } else {
                    hashCode = i;
                }
                i = hashCode;
            }
            return i;
        }

        a if() {
            return this.Tg;
        }

        b ig() {
            return this.Th;
        }

        public com.google.android.gms.internal.ir.b ih() {
            return this;
        }

        public boolean isDataValid() {
            return true;
        }

        public void writeToParcel(Parcel parcel, int i) {
            iu iuVar = CREATOR;
            iu.a(this, parcel, i);
        }
    }

    public static final class c extends fb implements SafeParcelable, Image {
        public static final ix CREATOR;
        private static final HashMap RL;
        private final Set RM;
        private String pS;
        private final int wj;

        static {
            CREATOR = new ix();
            RL = new HashMap();
            RL.put(PlusShare.KEY_CALL_TO_ACTION_URL, com.google.android.gms.internal.fb.a.j(PlusShare.KEY_CALL_TO_ACTION_URL, GoogleScorer.CLIENT_PLUS));
        }

        public c() {
            this.wj = 1;
            this.RM = new HashSet();
        }

        public c(String str) {
            this.RM = new HashSet();
            this.wj = 1;
            this.pS = str;
            this.RM.add(Integer.valueOf(GoogleScorer.CLIENT_PLUS));
        }

        c(Set set, int i, String str) {
            this.RM = set;
            this.wj = i;
            this.pS = str;
        }

        protected boolean a(com.google.android.gms.internal.fb.a aVar) {
            return this.RM.contains(Integer.valueOf(aVar.eu()));
        }

        protected Object ak(String str) {
            return null;
        }

        protected boolean al(String str) {
            return false;
        }

        protected Object b(com.google.android.gms.internal.fb.a aVar) {
            switch (aVar.eu()) {
                case GoogleScorer.CLIENT_PLUS:
                    return this.pS;
                default:
                    throw new IllegalStateException("Unknown safe parcelable id=" + aVar.eu());
            }
        }

        public int describeContents() {
            ix ixVar = CREATOR;
            return 0;
        }

        public HashMap en() {
            return RL;
        }

        public boolean equals(com.google.android.gms.internal.ir.c cVar) {
            if (!(cVar instanceof com.google.android.gms.internal.ir.c)) {
                return false;
            }
            if (this == cVar) {
                return true;
            }
            cVar = cVar;
            Iterator it = RL.values().iterator();
            while (it.hasNext()) {
                com.google.android.gms.internal.fb.a aVar = (com.google.android.gms.internal.fb.a) it.next();
                if (a(aVar)) {
                    if (!cVar.a(aVar)) {
                        return false;
                    }
                    if (!b(aVar).equals(cVar.b(aVar))) {
                        return false;
                    }
                } else if (cVar.a(aVar)) {
                    return false;
                }
            }
            return true;
        }

        public /* synthetic */ Object freeze() {
            return ik();
        }

        public String getUrl() {
            return this.pS;
        }

        int getVersionCode() {
            return this.wj;
        }

        Set hB() {
            return this.RM;
        }

        public boolean hasUrl() {
            return this.RM.contains(Integer.valueOf(GoogleScorer.CLIENT_PLUS));
        }

        public int hashCode() {
            Iterator it = RL.values().iterator();
            int i = 0;
            while (it.hasNext()) {
                int hashCode;
                com.google.android.gms.internal.fb.a aVar = (com.google.android.gms.internal.fb.a) it.next();
                if (a(aVar)) {
                    hashCode = b(aVar).hashCode() + i + aVar.eu();
                } else {
                    hashCode = i;
                }
                i = hashCode;
            }
            return i;
        }

        public com.google.android.gms.internal.ir.c ik() {
            return this;
        }

        public boolean isDataValid() {
            return true;
        }

        public void writeToParcel(Parcel parcel, int i) {
            ix ixVar = CREATOR;
            ix.a(this, parcel, i);
        }
    }

    public static final class d extends fb implements SafeParcelable, Name {
        public static final iy CREATOR;
        private static final HashMap RL;
        private final Set RM;
        private String Sk;
        private String Sn;
        private String Tl;
        private String Tm;
        private String Tn;
        private String To;
        private final int wj;

        static {
            CREATOR = new iy();
            RL = new HashMap();
            RL.put("familyName", com.google.android.gms.internal.fb.a.j("familyName", GoogleScorer.CLIENT_PLUS));
            RL.put("formatted", com.google.android.gms.internal.fb.a.j("formatted", IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE));
            RL.put("givenName", com.google.android.gms.internal.fb.a.j("givenName", GoogleScorer.CLIENT_APPSTATE));
            RL.put("honorificPrefix", com.google.android.gms.internal.fb.a.j("honorificPrefix", IabHelper.BILLING_RESPONSE_RESULT_DEVELOPER_ERROR));
            RL.put("honorificSuffix", com.google.android.gms.internal.fb.a.j("honorificSuffix", IabHelper.BILLING_RESPONSE_RESULT_ERROR));
            RL.put("middleName", com.google.android.gms.internal.fb.a.j("middleName", GoogleScorer.CLIENT_ALL));
        }

        public d() {
            this.wj = 1;
            this.RM = new HashSet();
        }

        d(Set set, int i, String str, String str2, String str3, String str4, String str5, String str6) {
            this.RM = set;
            this.wj = i;
            this.Sk = str;
            this.Tl = str2;
            this.Sn = str3;
            this.Tm = str4;
            this.Tn = str5;
            this.To = str6;
        }

        protected boolean a(com.google.android.gms.internal.fb.a aVar) {
            return this.RM.contains(Integer.valueOf(aVar.eu()));
        }

        protected Object ak(String str) {
            return null;
        }

        protected boolean al(String str) {
            return false;
        }

        protected Object b(com.google.android.gms.internal.fb.a aVar) {
            switch (aVar.eu()) {
                case GoogleScorer.CLIENT_PLUS:
                    return this.Sk;
                case IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE:
                    return this.Tl;
                case GoogleScorer.CLIENT_APPSTATE:
                    return this.Sn;
                case IabHelper.BILLING_RESPONSE_RESULT_DEVELOPER_ERROR:
                    return this.Tm;
                case IabHelper.BILLING_RESPONSE_RESULT_ERROR:
                    return this.Tn;
                case GoogleScorer.CLIENT_ALL:
                    return this.To;
                default:
                    throw new IllegalStateException("Unknown safe parcelable id=" + aVar.eu());
            }
        }

        public int describeContents() {
            iy iyVar = CREATOR;
            return 0;
        }

        public HashMap en() {
            return RL;
        }

        public boolean equals(com.google.android.gms.internal.ir.d dVar) {
            if (!(dVar instanceof com.google.android.gms.internal.ir.d)) {
                return false;
            }
            if (this == dVar) {
                return true;
            }
            dVar = dVar;
            Iterator it = RL.values().iterator();
            while (it.hasNext()) {
                com.google.android.gms.internal.fb.a aVar = (com.google.android.gms.internal.fb.a) it.next();
                if (a(aVar)) {
                    if (!dVar.a(aVar)) {
                        return false;
                    }
                    if (!b(aVar).equals(dVar.b(aVar))) {
                        return false;
                    }
                } else if (dVar.a(aVar)) {
                    return false;
                }
            }
            return true;
        }

        public /* synthetic */ Object freeze() {
            return il();
        }

        public String getFamilyName() {
            return this.Sk;
        }

        public String getFormatted() {
            return this.Tl;
        }

        public String getGivenName() {
            return this.Sn;
        }

        public String getHonorificPrefix() {
            return this.Tm;
        }

        public String getHonorificSuffix() {
            return this.Tn;
        }

        public String getMiddleName() {
            return this.To;
        }

        int getVersionCode() {
            return this.wj;
        }

        Set hB() {
            return this.RM;
        }

        public boolean hasFamilyName() {
            return this.RM.contains(Integer.valueOf(GoogleScorer.CLIENT_PLUS));
        }

        public boolean hasFormatted() {
            return this.RM.contains(Integer.valueOf(IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE));
        }

        public boolean hasGivenName() {
            return this.RM.contains(Integer.valueOf(GoogleScorer.CLIENT_APPSTATE));
        }

        public boolean hasHonorificPrefix() {
            return this.RM.contains(Integer.valueOf(IabHelper.BILLING_RESPONSE_RESULT_DEVELOPER_ERROR));
        }

        public boolean hasHonorificSuffix() {
            return this.RM.contains(Integer.valueOf(IabHelper.BILLING_RESPONSE_RESULT_ERROR));
        }

        public boolean hasMiddleName() {
            return this.RM.contains(Integer.valueOf(GoogleScorer.CLIENT_ALL));
        }

        public int hashCode() {
            Iterator it = RL.values().iterator();
            int i = 0;
            while (it.hasNext()) {
                int hashCode;
                com.google.android.gms.internal.fb.a aVar = (com.google.android.gms.internal.fb.a) it.next();
                if (a(aVar)) {
                    hashCode = b(aVar).hashCode() + i + aVar.eu();
                } else {
                    hashCode = i;
                }
                i = hashCode;
            }
            return i;
        }

        public com.google.android.gms.internal.ir.d il() {
            return this;
        }

        public boolean isDataValid() {
            return true;
        }

        public void writeToParcel(Parcel parcel, int i) {
            iy iyVar = CREATOR;
            iy.a(this, parcel, i);
        }
    }

    public static class e {
        public static int aT(String str) {
            if (str.equals("person")) {
                return 0;
            }
            if (str.equals("page")) {
                return 1;
            }
            throw new IllegalArgumentException("Unknown objectType string: " + str);
        }
    }

    public static final class f extends fb implements SafeParcelable, Organizations {
        public static final iz CREATOR;
        private static final HashMap RL;
        private int AI;
        private String CX;
        private String FH;
        private final Set RM;
        private String Sj;
        private String Sz;
        private String Tp;
        private String Tq;
        private boolean Tr;
        private String mName;
        private final int wj;

        static {
            CREATOR = new iz();
            RL = new HashMap();
            RL.put("department", com.google.android.gms.internal.fb.a.j("department", GoogleScorer.CLIENT_PLUS));
            RL.put(PlusShare.KEY_CONTENT_DEEP_LINK_METADATA_DESCRIPTION, com.google.android.gms.internal.fb.a.j(PlusShare.KEY_CONTENT_DEEP_LINK_METADATA_DESCRIPTION, IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE));
            RL.put("endDate", com.google.android.gms.internal.fb.a.j("endDate", GoogleScorer.CLIENT_APPSTATE));
            RL.put("location", com.google.android.gms.internal.fb.a.j("location", IabHelper.BILLING_RESPONSE_RESULT_DEVELOPER_ERROR));
            RL.put(Fields.NAME, com.google.android.gms.internal.fb.a.j(Fields.NAME, IabHelper.BILLING_RESPONSE_RESULT_ERROR));
            RL.put("primary", com.google.android.gms.internal.fb.a.i("primary", GoogleScorer.CLIENT_ALL));
            RL.put("startDate", com.google.android.gms.internal.fb.a.j("startDate", IabHelper.BILLING_RESPONSE_RESULT_ITEM_NOT_OWNED));
            RL.put(PlusShare.KEY_CONTENT_DEEP_LINK_METADATA_TITLE, com.google.android.gms.internal.fb.a.j(PlusShare.KEY_CONTENT_DEEP_LINK_METADATA_TITLE, ZBuildConfig.$minsdk));
            RL.put(AnalyticsSQLiteHelper.EVENT_LIST_TYPE, com.google.android.gms.internal.fb.a.a(AnalyticsSQLiteHelper.EVENT_LIST_TYPE, R.styleable.MapAttrs_uiZoomControls, new ey().f("work", 0).f("school", 1), false));
        }

        public f() {
            this.wj = 1;
            this.RM = new HashSet();
        }

        f(Set set, int i, String str, String str2, String str3, String str4, String str5, boolean z, String str6, String str7, int i2) {
            this.RM = set;
            this.wj = i;
            this.Tp = str;
            this.FH = str2;
            this.Sj = str3;
            this.Tq = str4;
            this.mName = str5;
            this.Tr = z;
            this.Sz = str6;
            this.CX = str7;
            this.AI = i2;
        }

        protected boolean a(com.google.android.gms.internal.fb.a aVar) {
            return this.RM.contains(Integer.valueOf(aVar.eu()));
        }

        protected Object ak(String str) {
            return null;
        }

        protected boolean al(String str) {
            return false;
        }

        protected Object b(com.google.android.gms.internal.fb.a aVar) {
            switch (aVar.eu()) {
                case GoogleScorer.CLIENT_PLUS:
                    return this.Tp;
                case IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE:
                    return this.FH;
                case GoogleScorer.CLIENT_APPSTATE:
                    return this.Sj;
                case IabHelper.BILLING_RESPONSE_RESULT_DEVELOPER_ERROR:
                    return this.Tq;
                case IabHelper.BILLING_RESPONSE_RESULT_ERROR:
                    return this.mName;
                case GoogleScorer.CLIENT_ALL:
                    return Boolean.valueOf(this.Tr);
                case IabHelper.BILLING_RESPONSE_RESULT_ITEM_NOT_OWNED:
                    return this.Sz;
                case ZBuildConfig.$minsdk:
                    return this.CX;
                case R.styleable.MapAttrs_uiZoomControls:
                    return Integer.valueOf(this.AI);
                default:
                    throw new IllegalStateException("Unknown safe parcelable id=" + aVar.eu());
            }
        }

        public int describeContents() {
            iz izVar = CREATOR;
            return 0;
        }

        public HashMap en() {
            return RL;
        }

        public boolean equals(com.google.android.gms.internal.ir.f fVar) {
            if (!(fVar instanceof com.google.android.gms.internal.ir.f)) {
                return false;
            }
            if (this == fVar) {
                return true;
            }
            fVar = fVar;
            Iterator it = RL.values().iterator();
            while (it.hasNext()) {
                com.google.android.gms.internal.fb.a aVar = (com.google.android.gms.internal.fb.a) it.next();
                if (a(aVar)) {
                    if (!fVar.a(aVar)) {
                        return false;
                    }
                    if (!b(aVar).equals(fVar.b(aVar))) {
                        return false;
                    }
                } else if (fVar.a(aVar)) {
                    return false;
                }
            }
            return true;
        }

        public /* synthetic */ Object freeze() {
            return im();
        }

        public String getDepartment() {
            return this.Tp;
        }

        public String getDescription() {
            return this.FH;
        }

        public String getEndDate() {
            return this.Sj;
        }

        public String getLocation() {
            return this.Tq;
        }

        public String getName() {
            return this.mName;
        }

        public String getStartDate() {
            return this.Sz;
        }

        public String getTitle() {
            return this.CX;
        }

        public int getType() {
            return this.AI;
        }

        int getVersionCode() {
            return this.wj;
        }

        Set hB() {
            return this.RM;
        }

        public boolean hasDepartment() {
            return this.RM.contains(Integer.valueOf(GoogleScorer.CLIENT_PLUS));
        }

        public boolean hasDescription() {
            return this.RM.contains(Integer.valueOf(IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE));
        }

        public boolean hasEndDate() {
            return this.RM.contains(Integer.valueOf(GoogleScorer.CLIENT_APPSTATE));
        }

        public boolean hasLocation() {
            return this.RM.contains(Integer.valueOf(IabHelper.BILLING_RESPONSE_RESULT_DEVELOPER_ERROR));
        }

        public boolean hasName() {
            return this.RM.contains(Integer.valueOf(IabHelper.BILLING_RESPONSE_RESULT_ERROR));
        }

        public boolean hasPrimary() {
            return this.RM.contains(Integer.valueOf(GoogleScorer.CLIENT_ALL));
        }

        public boolean hasStartDate() {
            return this.RM.contains(Integer.valueOf(IabHelper.BILLING_RESPONSE_RESULT_ITEM_NOT_OWNED));
        }

        public boolean hasTitle() {
            return this.RM.contains(Integer.valueOf(ZBuildConfig.$minsdk));
        }

        public boolean hasType() {
            return this.RM.contains(Integer.valueOf(R.styleable.MapAttrs_uiZoomControls));
        }

        public int hashCode() {
            Iterator it = RL.values().iterator();
            int i = 0;
            while (it.hasNext()) {
                int hashCode;
                com.google.android.gms.internal.fb.a aVar = (com.google.android.gms.internal.fb.a) it.next();
                if (a(aVar)) {
                    hashCode = b(aVar).hashCode() + i + aVar.eu();
                } else {
                    hashCode = i;
                }
                i = hashCode;
            }
            return i;
        }

        public com.google.android.gms.internal.ir.f im() {
            return this;
        }

        public boolean isDataValid() {
            return true;
        }

        public boolean isPrimary() {
            return this.Tr;
        }

        public void writeToParcel(Parcel parcel, int i) {
            iz izVar = CREATOR;
            iz.a(this, parcel, i);
        }
    }

    public static final class g extends fb implements SafeParcelable, PlacesLived {
        public static final ja CREATOR;
        private static final HashMap RL;
        private final Set RM;
        private boolean Tr;
        private String mValue;
        private final int wj;

        static {
            CREATOR = new ja();
            RL = new HashMap();
            RL.put("primary", com.google.android.gms.internal.fb.a.i("primary", GoogleScorer.CLIENT_PLUS));
            RL.put(Constants.NATIVE_AD_VALUE_ELEMENT, com.google.android.gms.internal.fb.a.j(Constants.NATIVE_AD_VALUE_ELEMENT, IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE));
        }

        public g() {
            this.wj = 1;
            this.RM = new HashSet();
        }

        g(Set set, int i, boolean z, String str) {
            this.RM = set;
            this.wj = i;
            this.Tr = z;
            this.mValue = str;
        }

        protected boolean a(com.google.android.gms.internal.fb.a aVar) {
            return this.RM.contains(Integer.valueOf(aVar.eu()));
        }

        protected Object ak(String str) {
            return null;
        }

        protected boolean al(String str) {
            return false;
        }

        protected Object b(com.google.android.gms.internal.fb.a aVar) {
            switch (aVar.eu()) {
                case GoogleScorer.CLIENT_PLUS:
                    return Boolean.valueOf(this.Tr);
                case IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE:
                    return this.mValue;
                default:
                    throw new IllegalStateException("Unknown safe parcelable id=" + aVar.eu());
            }
        }

        public int describeContents() {
            ja jaVar = CREATOR;
            return 0;
        }

        public HashMap en() {
            return RL;
        }

        public boolean equals(com.google.android.gms.internal.ir.g gVar) {
            if (!(gVar instanceof com.google.android.gms.internal.ir.g)) {
                return false;
            }
            if (this == gVar) {
                return true;
            }
            gVar = gVar;
            Iterator it = RL.values().iterator();
            while (it.hasNext()) {
                com.google.android.gms.internal.fb.a aVar = (com.google.android.gms.internal.fb.a) it.next();
                if (a(aVar)) {
                    if (!gVar.a(aVar)) {
                        return false;
                    }
                    if (!b(aVar).equals(gVar.b(aVar))) {
                        return false;
                    }
                } else if (gVar.a(aVar)) {
                    return false;
                }
            }
            return true;
        }

        public /* synthetic */ Object freeze() {
            return in();
        }

        public String getValue() {
            return this.mValue;
        }

        int getVersionCode() {
            return this.wj;
        }

        Set hB() {
            return this.RM;
        }

        public boolean hasPrimary() {
            return this.RM.contains(Integer.valueOf(GoogleScorer.CLIENT_PLUS));
        }

        public boolean hasValue() {
            return this.RM.contains(Integer.valueOf(IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE));
        }

        public int hashCode() {
            Iterator it = RL.values().iterator();
            int i = 0;
            while (it.hasNext()) {
                int hashCode;
                com.google.android.gms.internal.fb.a aVar = (com.google.android.gms.internal.fb.a) it.next();
                if (a(aVar)) {
                    hashCode = b(aVar).hashCode() + i + aVar.eu();
                } else {
                    hashCode = i;
                }
                i = hashCode;
            }
            return i;
        }

        public com.google.android.gms.internal.ir.g in() {
            return this;
        }

        public boolean isDataValid() {
            return true;
        }

        public boolean isPrimary() {
            return this.Tr;
        }

        public void writeToParcel(Parcel parcel, int i) {
            ja jaVar = CREATOR;
            ja.a(this, parcel, i);
        }
    }

    public static final class h extends fb implements SafeParcelable, Urls {
        public static final jb CREATOR;
        private static final HashMap RL;
        private int AI;
        private final Set RM;
        private String Ts;
        private final int Tt;
        private String mValue;
        private final int wj;

        static {
            CREATOR = new jb();
            RL = new HashMap();
            RL.put(PlusShare.KEY_CALL_TO_ACTION_LABEL, com.google.android.gms.internal.fb.a.j(PlusShare.KEY_CALL_TO_ACTION_LABEL, IabHelper.BILLING_RESPONSE_RESULT_DEVELOPER_ERROR));
            RL.put(AnalyticsSQLiteHelper.EVENT_LIST_TYPE, com.google.android.gms.internal.fb.a.a(AnalyticsSQLiteHelper.EVENT_LIST_TYPE, IabHelper.BILLING_RESPONSE_RESULT_ERROR, new ey().f("home", 0).f("work", 1).f("blog", GoogleScorer.CLIENT_PLUS).f(Scopes.PROFILE, IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE).f(MMRequest.MARITAL_OTHER, GoogleScorer.CLIENT_APPSTATE).f("otherProfile", IabHelper.BILLING_RESPONSE_RESULT_DEVELOPER_ERROR).f("contributor", IabHelper.BILLING_RESPONSE_RESULT_ERROR).f("website", GoogleScorer.CLIENT_ALL), false));
            RL.put(Constants.NATIVE_AD_VALUE_ELEMENT, com.google.android.gms.internal.fb.a.j(Constants.NATIVE_AD_VALUE_ELEMENT, GoogleScorer.CLIENT_APPSTATE));
        }

        public h() {
            this.Tt = 4;
            this.wj = 2;
            this.RM = new HashSet();
        }

        h(Set set, int i, String str, int i2, String str2, int i3) {
            this.Tt = 4;
            this.RM = set;
            this.wj = i;
            this.Ts = str;
            this.AI = i2;
            this.mValue = str2;
        }

        protected boolean a(com.google.android.gms.internal.fb.a aVar) {
            return this.RM.contains(Integer.valueOf(aVar.eu()));
        }

        protected Object ak(String str) {
            return null;
        }

        protected boolean al(String str) {
            return false;
        }

        protected Object b(com.google.android.gms.internal.fb.a aVar) {
            switch (aVar.eu()) {
                case GoogleScorer.CLIENT_APPSTATE:
                    return this.mValue;
                case IabHelper.BILLING_RESPONSE_RESULT_DEVELOPER_ERROR:
                    return this.Ts;
                case IabHelper.BILLING_RESPONSE_RESULT_ERROR:
                    return Integer.valueOf(this.AI);
                default:
                    throw new IllegalStateException("Unknown safe parcelable id=" + aVar.eu());
            }
        }

        public int describeContents() {
            jb jbVar = CREATOR;
            return 0;
        }

        public HashMap en() {
            return RL;
        }

        public boolean equals(com.google.android.gms.internal.ir.h hVar) {
            if (!(hVar instanceof com.google.android.gms.internal.ir.h)) {
                return false;
            }
            if (this == hVar) {
                return true;
            }
            hVar = hVar;
            Iterator it = RL.values().iterator();
            while (it.hasNext()) {
                com.google.android.gms.internal.fb.a aVar = (com.google.android.gms.internal.fb.a) it.next();
                if (a(aVar)) {
                    if (!hVar.a(aVar)) {
                        return false;
                    }
                    if (!b(aVar).equals(hVar.b(aVar))) {
                        return false;
                    }
                } else if (hVar.a(aVar)) {
                    return false;
                }
            }
            return true;
        }

        public /* synthetic */ Object freeze() {
            return ip();
        }

        public String getLabel() {
            return this.Ts;
        }

        public int getType() {
            return this.AI;
        }

        public String getValue() {
            return this.mValue;
        }

        int getVersionCode() {
            return this.wj;
        }

        Set hB() {
            return this.RM;
        }

        public boolean hasLabel() {
            return this.RM.contains(Integer.valueOf(IabHelper.BILLING_RESPONSE_RESULT_DEVELOPER_ERROR));
        }

        public boolean hasType() {
            return this.RM.contains(Integer.valueOf(IabHelper.BILLING_RESPONSE_RESULT_ERROR));
        }

        public boolean hasValue() {
            return this.RM.contains(Integer.valueOf(GoogleScorer.CLIENT_APPSTATE));
        }

        public int hashCode() {
            Iterator it = RL.values().iterator();
            int i = 0;
            while (it.hasNext()) {
                int hashCode;
                com.google.android.gms.internal.fb.a aVar = (com.google.android.gms.internal.fb.a) it.next();
                if (a(aVar)) {
                    hashCode = b(aVar).hashCode() + i + aVar.eu();
                } else {
                    hashCode = i;
                }
                i = hashCode;
            }
            return i;
        }

        @Deprecated
        public int io() {
            return GoogleScorer.CLIENT_APPSTATE;
        }

        public com.google.android.gms.internal.ir.h ip() {
            return this;
        }

        public boolean isDataValid() {
            return true;
        }

        public void writeToParcel(Parcel parcel, int i) {
            jb jbVar = CREATOR;
            jb.a(this, parcel, i);
        }
    }

    static {
        CREATOR = new is();
        RL = new HashMap();
        RL.put("aboutMe", com.google.android.gms.internal.fb.a.j("aboutMe", GoogleScorer.CLIENT_PLUS));
        RL.put("ageRange", com.google.android.gms.internal.fb.a.a("ageRange", IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE, a.class));
        RL.put("birthday", com.google.android.gms.internal.fb.a.j("birthday", GoogleScorer.CLIENT_APPSTATE));
        RL.put("braggingRights", com.google.android.gms.internal.fb.a.j("braggingRights", IabHelper.BILLING_RESPONSE_RESULT_DEVELOPER_ERROR));
        RL.put("circledByCount", com.google.android.gms.internal.fb.a.g("circledByCount", IabHelper.BILLING_RESPONSE_RESULT_ERROR));
        RL.put("cover", com.google.android.gms.internal.fb.a.a("cover", GoogleScorer.CLIENT_ALL, b.class));
        RL.put("currentLocation", com.google.android.gms.internal.fb.a.j("currentLocation", IabHelper.BILLING_RESPONSE_RESULT_ITEM_NOT_OWNED));
        RL.put(AdMarvelNativeAd.FIELD_DISPLAYNAME, com.google.android.gms.internal.fb.a.j(AdMarvelNativeAd.FIELD_DISPLAYNAME, ZBuildConfig.$minsdk));
        RL.put(MMRequest.KEY_GENDER, com.google.android.gms.internal.fb.a.a(MMRequest.KEY_GENDER, R.styleable.MapAttrs_useViewLifecycle, new ey().f(MMRequest.GENDER_MALE, 0).f(MMRequest.GENDER_FEMALE, 1).f(MMRequest.MARITAL_OTHER, GoogleScorer.CLIENT_PLUS), false));
        RL.put(AnalyticsEvent.EVENT_ID, com.google.android.gms.internal.fb.a.j(AnalyticsEvent.EVENT_ID, MMException.REQUEST_NOT_FILLED));
        RL.put(Constants.NATIVE_AD_IMAGE_ELEMENT, com.google.android.gms.internal.fb.a.a(Constants.NATIVE_AD_IMAGE_ELEMENT, MMException.REQUEST_BAD_RESPONSE, c.class));
        RL.put("isPlusUser", com.google.android.gms.internal.fb.a.i("isPlusUser", MMException.REQUEST_NOT_PERMITTED));
        RL.put("language", com.google.android.gms.internal.fb.a.j("language", ApiEventType.API_MRAID_GET_CURRENT_POSITION));
        RL.put(Fields.NAME, com.google.android.gms.internal.fb.a.a(Fields.NAME, ApiEventType.API_MRAID_GET_DEFAULT_POSITION, d.class));
        RL.put("nickname", com.google.android.gms.internal.fb.a.j("nickname", MMException.DISPLAY_AD_NOT_READY));
        RL.put("objectType", com.google.android.gms.internal.fb.a.a("objectType", MMException.DISPLAY_AD_EXPIRED, new ey().f("person", 0).f("page", 1), false));
        RL.put("organizations", com.google.android.gms.internal.fb.a.b("organizations", MMException.DISPLAY_AD_NOT_FOUND, f.class));
        RL.put("placesLived", com.google.android.gms.internal.fb.a.b("placesLived", MMException.DISPLAY_AD_ALREADY_DISPLAYED, g.class));
        RL.put("plusOneCount", com.google.android.gms.internal.fb.a.g("plusOneCount", MMException.DISPLAY_AD_NOT_PERMITTED));
        RL.put("relationshipStatus", com.google.android.gms.internal.fb.a.a("relationshipStatus", MMException.AD_BROKEN_REFERENCE, new ey().f(MMRequest.MARITAL_SINGLE, 0).f("in_a_relationship", 1).f(MMRequest.MARITAL_ENGAGED, GoogleScorer.CLIENT_PLUS).f(MMRequest.MARITAL_MARRIED, IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE).f("its_complicated", GoogleScorer.CLIENT_APPSTATE).f("open_relationship", IabHelper.BILLING_RESPONSE_RESULT_DEVELOPER_ERROR).f("widowed", IabHelper.BILLING_RESPONSE_RESULT_ERROR).f("in_domestic_partnership", GoogleScorer.CLIENT_ALL).f("in_civil_union", IabHelper.BILLING_RESPONSE_RESULT_ITEM_NOT_OWNED), false));
        RL.put("tagline", com.google.android.gms.internal.fb.a.j("tagline", MMException.AD_NO_ACTIVITY));
        RL.put(PlusShare.KEY_CALL_TO_ACTION_URL, com.google.android.gms.internal.fb.a.j(PlusShare.KEY_CALL_TO_ACTION_URL, ApiEventType.API_MRAID_SEND_SMS));
        RL.put("urls", com.google.android.gms.internal.fb.a.b("urls", ApiEventType.API_MRAID_SEND_MAIL, h.class));
        RL.put("verified", com.google.android.gms.internal.fb.a.i("verified", ApiEventType.API_MRAID_MAKE_CALL));
    }

    public ir() {
        this.wj = 2;
        this.RM = new HashSet();
    }

    public ir(String str, String str2, c cVar, int i, String str3) {
        this.wj = 2;
        this.RM = new HashSet();
        this.FE = str;
        this.RM.add(Integer.valueOf(ZBuildConfig.$minsdk));
        this.uS = str2;
        this.RM.add(Integer.valueOf(MMException.REQUEST_NOT_FILLED));
        this.SR = cVar;
        this.RM.add(Integer.valueOf(MMException.REQUEST_BAD_RESPONSE));
        this.SW = i;
        this.RM.add(Integer.valueOf(MMException.DISPLAY_AD_EXPIRED));
        this.pS = str3;
        this.RM.add(Integer.valueOf(ApiEventType.API_MRAID_SEND_SMS));
    }

    ir(Set set, int i, String str, a aVar, String str2, String str3, int i2, b bVar, String str4, String str5, int i3, String str6, c cVar, boolean z, String str7, d dVar, String str8, int i4, List list, List list2, int i5, int i6, String str9, String str10, List list3, boolean z2) {
        this.RM = set;
        this.wj = i;
        this.SK = str;
        this.SL = aVar;
        this.SM = str2;
        this.SN = str3;
        this.SO = i2;
        this.SP = bVar;
        this.SQ = str4;
        this.FE = str5;
        this.lu = i3;
        this.uS = str6;
        this.SR = cVar;
        this.SS = z;
        this.ST = str7;
        this.SU = dVar;
        this.SV = str8;
        this.SW = i4;
        this.SX = list;
        this.SY = list2;
        this.SZ = i5;
        this.Ta = i6;
        this.Tb = str9;
        this.pS = str10;
        this.Tc = list3;
        this.Td = z2;
    }

    public static ir i(byte[] bArr) {
        Parcel obtain = Parcel.obtain();
        obtain.unmarshall(bArr, 0, bArr.length);
        obtain.setDataPosition(0);
        ir aI = CREATOR.aI(obtain);
        obtain.recycle();
        return aI;
    }

    protected boolean a(com.google.android.gms.internal.fb.a aVar) {
        return this.RM.contains(Integer.valueOf(aVar.eu()));
    }

    protected Object ak(String str) {
        return null;
    }

    protected boolean al(String str) {
        return false;
    }

    protected Object b(com.google.android.gms.internal.fb.a aVar) {
        switch (aVar.eu()) {
            case GoogleScorer.CLIENT_PLUS:
                return this.SK;
            case IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE:
                return this.SL;
            case GoogleScorer.CLIENT_APPSTATE:
                return this.SM;
            case IabHelper.BILLING_RESPONSE_RESULT_DEVELOPER_ERROR:
                return this.SN;
            case IabHelper.BILLING_RESPONSE_RESULT_ERROR:
                return Integer.valueOf(this.SO);
            case GoogleScorer.CLIENT_ALL:
                return this.SP;
            case IabHelper.BILLING_RESPONSE_RESULT_ITEM_NOT_OWNED:
                return this.SQ;
            case ZBuildConfig.$minsdk:
                return this.FE;
            case R.styleable.MapAttrs_useViewLifecycle:
                return Integer.valueOf(this.lu);
            case MMException.REQUEST_NOT_FILLED:
                return this.uS;
            case MMException.REQUEST_BAD_RESPONSE:
                return this.SR;
            case MMException.REQUEST_NOT_PERMITTED:
                return Boolean.valueOf(this.SS);
            case ApiEventType.API_MRAID_GET_CURRENT_POSITION:
                return this.ST;
            case ApiEventType.API_MRAID_GET_DEFAULT_POSITION:
                return this.SU;
            case MMException.DISPLAY_AD_NOT_READY:
                return this.SV;
            case MMException.DISPLAY_AD_EXPIRED:
                return Integer.valueOf(this.SW);
            case MMException.DISPLAY_AD_NOT_FOUND:
                return this.SX;
            case MMException.DISPLAY_AD_ALREADY_DISPLAYED:
                return this.SY;
            case MMException.DISPLAY_AD_NOT_PERMITTED:
                return Integer.valueOf(this.SZ);
            case MMException.AD_BROKEN_REFERENCE:
                return Integer.valueOf(this.Ta);
            case MMException.AD_NO_ACTIVITY:
                return this.Tb;
            case ApiEventType.API_MRAID_SEND_SMS:
                return this.pS;
            case ApiEventType.API_MRAID_SEND_MAIL:
                return this.Tc;
            case ApiEventType.API_MRAID_MAKE_CALL:
                return Boolean.valueOf(this.Td);
            default:
                throw new IllegalStateException("Unknown safe parcelable id=" + aVar.eu());
        }
    }

    public int describeContents() {
        is isVar = CREATOR;
        return 0;
    }

    public HashMap en() {
        return RL;
    }

    public boolean equals(ir irVar) {
        if (!(irVar instanceof ir)) {
            return false;
        }
        if (this == irVar) {
            return true;
        }
        irVar = irVar;
        Iterator it = RL.values().iterator();
        while (it.hasNext()) {
            com.google.android.gms.internal.fb.a aVar = (com.google.android.gms.internal.fb.a) it.next();
            if (a(aVar)) {
                if (!irVar.a(aVar)) {
                    return false;
                }
                if (!b(aVar).equals(irVar.b(aVar))) {
                    return false;
                }
            } else if (irVar.a(aVar)) {
                return false;
            }
        }
        return true;
    }

    public /* synthetic */ Object freeze() {
        return id();
    }

    public String getAboutMe() {
        return this.SK;
    }

    public AgeRange getAgeRange() {
        return this.SL;
    }

    public String getBirthday() {
        return this.SM;
    }

    public String getBraggingRights() {
        return this.SN;
    }

    public int getCircledByCount() {
        return this.SO;
    }

    public Cover getCover() {
        return this.SP;
    }

    public String getCurrentLocation() {
        return this.SQ;
    }

    public String getDisplayName() {
        return this.FE;
    }

    public int getGender() {
        return this.lu;
    }

    public String getId() {
        return this.uS;
    }

    public Image getImage() {
        return this.SR;
    }

    public String getLanguage() {
        return this.ST;
    }

    public Name getName() {
        return this.SU;
    }

    public String getNickname() {
        return this.SV;
    }

    public int getObjectType() {
        return this.SW;
    }

    public List getOrganizations() {
        return (ArrayList) this.SX;
    }

    public List getPlacesLived() {
        return (ArrayList) this.SY;
    }

    public int getPlusOneCount() {
        return this.SZ;
    }

    public int getRelationshipStatus() {
        return this.Ta;
    }

    public String getTagline() {
        return this.Tb;
    }

    public String getUrl() {
        return this.pS;
    }

    public List getUrls() {
        return (ArrayList) this.Tc;
    }

    int getVersionCode() {
        return this.wj;
    }

    Set hB() {
        return this.RM;
    }

    a hW() {
        return this.SL;
    }

    b hX() {
        return this.SP;
    }

    c hY() {
        return this.SR;
    }

    d hZ() {
        return this.SU;
    }

    public boolean hasAboutMe() {
        return this.RM.contains(Integer.valueOf(GoogleScorer.CLIENT_PLUS));
    }

    public boolean hasAgeRange() {
        return this.RM.contains(Integer.valueOf(IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE));
    }

    public boolean hasBirthday() {
        return this.RM.contains(Integer.valueOf(GoogleScorer.CLIENT_APPSTATE));
    }

    public boolean hasBraggingRights() {
        return this.RM.contains(Integer.valueOf(IabHelper.BILLING_RESPONSE_RESULT_DEVELOPER_ERROR));
    }

    public boolean hasCircledByCount() {
        return this.RM.contains(Integer.valueOf(IabHelper.BILLING_RESPONSE_RESULT_ERROR));
    }

    public boolean hasCover() {
        return this.RM.contains(Integer.valueOf(GoogleScorer.CLIENT_ALL));
    }

    public boolean hasCurrentLocation() {
        return this.RM.contains(Integer.valueOf(IabHelper.BILLING_RESPONSE_RESULT_ITEM_NOT_OWNED));
    }

    public boolean hasDisplayName() {
        return this.RM.contains(Integer.valueOf(ZBuildConfig.$minsdk));
    }

    public boolean hasGender() {
        return this.RM.contains(Integer.valueOf(R.styleable.MapAttrs_useViewLifecycle));
    }

    public boolean hasId() {
        return this.RM.contains(Integer.valueOf(MMException.REQUEST_NOT_FILLED));
    }

    public boolean hasImage() {
        return this.RM.contains(Integer.valueOf(MMException.REQUEST_BAD_RESPONSE));
    }

    public boolean hasIsPlusUser() {
        return this.RM.contains(Integer.valueOf(MMException.REQUEST_NOT_PERMITTED));
    }

    public boolean hasLanguage() {
        return this.RM.contains(Integer.valueOf(ApiEventType.API_MRAID_GET_CURRENT_POSITION));
    }

    public boolean hasName() {
        return this.RM.contains(Integer.valueOf(ApiEventType.API_MRAID_GET_DEFAULT_POSITION));
    }

    public boolean hasNickname() {
        return this.RM.contains(Integer.valueOf(MMException.DISPLAY_AD_NOT_READY));
    }

    public boolean hasObjectType() {
        return this.RM.contains(Integer.valueOf(MMException.DISPLAY_AD_EXPIRED));
    }

    public boolean hasOrganizations() {
        return this.RM.contains(Integer.valueOf(MMException.DISPLAY_AD_NOT_FOUND));
    }

    public boolean hasPlacesLived() {
        return this.RM.contains(Integer.valueOf(MMException.DISPLAY_AD_ALREADY_DISPLAYED));
    }

    public boolean hasPlusOneCount() {
        return this.RM.contains(Integer.valueOf(MMException.DISPLAY_AD_NOT_PERMITTED));
    }

    public boolean hasRelationshipStatus() {
        return this.RM.contains(Integer.valueOf(MMException.AD_BROKEN_REFERENCE));
    }

    public boolean hasTagline() {
        return this.RM.contains(Integer.valueOf(MMException.AD_NO_ACTIVITY));
    }

    public boolean hasUrl() {
        return this.RM.contains(Integer.valueOf(ApiEventType.API_MRAID_SEND_SMS));
    }

    public boolean hasUrls() {
        return this.RM.contains(Integer.valueOf(ApiEventType.API_MRAID_SEND_MAIL));
    }

    public boolean hasVerified() {
        return this.RM.contains(Integer.valueOf(ApiEventType.API_MRAID_MAKE_CALL));
    }

    public int hashCode() {
        Iterator it = RL.values().iterator();
        int i = 0;
        while (it.hasNext()) {
            int hashCode;
            com.google.android.gms.internal.fb.a aVar = (com.google.android.gms.internal.fb.a) it.next();
            if (a(aVar)) {
                hashCode = b(aVar).hashCode() + i + aVar.eu();
            } else {
                hashCode = i;
            }
            i = hashCode;
        }
        return i;
    }

    List ia() {
        return this.SX;
    }

    List ib() {
        return this.SY;
    }

    List ic() {
        return this.Tc;
    }

    public ir id() {
        return this;
    }

    public boolean isDataValid() {
        return true;
    }

    public boolean isPlusUser() {
        return this.SS;
    }

    public boolean isVerified() {
        return this.Td;
    }

    public void writeToParcel(Parcel parcel, int i) {
        is isVar = CREATOR;
        is.a(this, parcel, i);
    }
}