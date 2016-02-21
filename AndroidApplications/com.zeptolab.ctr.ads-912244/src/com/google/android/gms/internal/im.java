package com.google.android.gms.internal;

import android.os.Parcel;
import com.admarvel.android.ads.Constants;
import com.brightcove.player.model.Video.Fields;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.internal.fb.a;
import com.google.android.gms.plus.PlusShare;
import com.google.android.gms.plus.model.moments.ItemScope;
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

public final class im extends fb implements SafeParcelable, ItemScope {
    public static final in CREATOR;
    private static final HashMap RL;
    private String FH;
    private double KX;
    private double KY;
    private String Oc;
    private final Set RM;
    private im RN;
    private List RO;
    private im RP;
    private String RQ;
    private String RR;
    private String RS;
    private List RT;
    private int RU;
    private List RV;
    private im RW;
    private List RX;
    private String RY;
    private String RZ;
    private String SA;
    private String SB;
    private im SC;
    private String SD;
    private String SE;
    private String SF;
    private String SG;
    private im Sa;
    private String Sb;
    private String Sc;
    private List Sd;
    private String Se;
    private String Sf;
    private String Sg;
    private String Sh;
    private String Si;
    private String Sj;
    private String Sk;
    private String Sl;
    private im Sm;
    private String Sn;
    private String So;
    private String Sp;
    private im Sq;
    private im Sr;
    private im Ss;
    private List St;
    private String Su;
    private String Sv;
    private String Sw;
    private String Sx;
    private im Sy;
    private String Sz;
    private String lt;
    private String mName;
    private String pS;
    private String uS;
    private final int wj;

    static {
        CREATOR = new in();
        RL = new HashMap();
        RL.put("about", a.a("about", GoogleScorer.CLIENT_PLUS, im.class));
        RL.put("additionalName", a.k("additionalName", IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE));
        RL.put("address", a.a("address", GoogleScorer.CLIENT_APPSTATE, im.class));
        RL.put("addressCountry", a.j("addressCountry", IabHelper.BILLING_RESPONSE_RESULT_DEVELOPER_ERROR));
        RL.put("addressLocality", a.j("addressLocality", IabHelper.BILLING_RESPONSE_RESULT_ERROR));
        RL.put("addressRegion", a.j("addressRegion", GoogleScorer.CLIENT_ALL));
        RL.put("associated_media", a.b("associated_media", IabHelper.BILLING_RESPONSE_RESULT_ITEM_NOT_OWNED, im.class));
        RL.put("attendeeCount", a.g("attendeeCount", ZBuildConfig.$minsdk));
        RL.put("attendees", a.b("attendees", R.styleable.MapAttrs_uiZoomControls, im.class));
        RL.put("audio", a.a("audio", R.styleable.MapAttrs_uiZoomGestures, im.class));
        RL.put("author", a.b("author", R.styleable.MapAttrs_useViewLifecycle, im.class));
        RL.put("bestRating", a.j("bestRating", R.styleable.MapAttrs_zOrderOnTop));
        RL.put("birthDate", a.j("birthDate", MMException.REQUEST_NOT_FILLED));
        RL.put("byArtist", a.a("byArtist", MMException.REQUEST_BAD_RESPONSE, im.class));
        RL.put("caption", a.j("caption", MMException.REQUEST_NOT_PERMITTED));
        RL.put("contentSize", a.j("contentSize", ZBuildConfig.$targetsdk));
        RL.put("contentUrl", a.j("contentUrl", ApiEventType.API_MRAID_GET_CURRENT_POSITION));
        RL.put("contributor", a.b("contributor", ApiEventType.API_MRAID_GET_DEFAULT_POSITION, im.class));
        RL.put("dateCreated", a.j("dateCreated", MMException.DISPLAY_AD_NOT_READY));
        RL.put("dateModified", a.j("dateModified", MMException.DISPLAY_AD_EXPIRED));
        RL.put("datePublished", a.j("datePublished", MMException.DISPLAY_AD_NOT_FOUND));
        RL.put(PlusShare.KEY_CONTENT_DEEP_LINK_METADATA_DESCRIPTION, a.j(PlusShare.KEY_CONTENT_DEEP_LINK_METADATA_DESCRIPTION, MMException.DISPLAY_AD_ALREADY_DISPLAYED));
        RL.put(Fields.DURATION, a.j(Fields.DURATION, MMException.DISPLAY_AD_NOT_PERMITTED));
        RL.put("embedUrl", a.j("embedUrl", MMException.AD_BROKEN_REFERENCE));
        RL.put("endDate", a.j("endDate", MMException.AD_NO_ACTIVITY));
        RL.put("familyName", a.j("familyName", ApiEventType.API_MRAID_SEND_SMS));
        RL.put(MMRequest.KEY_GENDER, a.j(MMRequest.KEY_GENDER, ApiEventType.API_MRAID_SEND_MAIL));
        RL.put(Event.INTENT_MAPS, a.a(Event.INTENT_MAPS, ApiEventType.API_MRAID_MAKE_CALL, im.class));
        RL.put("givenName", a.j("givenName", ADCNetwork.timeout_seconds));
        RL.put(MMLayout.KEY_HEIGHT, a.j(MMLayout.KEY_HEIGHT, ApiEventType.API_MRAID_ASYNC_PING));
        RL.put(AnalyticsEvent.EVENT_ID, a.j(AnalyticsEvent.EVENT_ID, ApiEventType.API_MRAID_PLAY_AUDIO));
        RL.put(Constants.NATIVE_AD_IMAGE_ELEMENT, a.j(Constants.NATIVE_AD_IMAGE_ELEMENT, ApiEventType.API_MRAID_MUTE_AUDIO));
        RL.put("inAlbum", a.a("inAlbum", ApiEventType.API_MRAID_UNMUTE_AUDIO, im.class));
        RL.put("latitude", a.h("latitude", ApiEventType.API_MRAID_SET_AUDIO_VOLUME));
        RL.put("location", a.a("location", ApiEventType.API_MRAID_GET_AUDIO_VOLUME, im.class));
        RL.put("longitude", a.h("longitude", ApiEventType.API_MRAID_SEEK_AUDIO));
        RL.put(Fields.NAME, a.j(Fields.NAME, ApiEventType.API_MRAID_PAUSE_AUDIO));
        RL.put("partOfTVSeries", a.a("partOfTVSeries", ApiEventType.API_MRAID_PLAY_VIDEO, im.class));
        RL.put("performers", a.b("performers", ApiEventType.API_MRAID_MUTE_VIDEO, im.class));
        RL.put("playerType", a.j("playerType", ApiEventType.API_MRAID_UNMUTE_VIDEO));
        RL.put("postOfficeBoxNumber", a.j("postOfficeBoxNumber", ApiEventType.API_MRAID_IS_VIDEO_MUTED));
        RL.put("postalCode", a.j("postalCode", ApiEventType.API_MRAID_SET_VIDEO_VOLUME));
        RL.put("ratingValue", a.j("ratingValue", ApiEventType.API_MRAID_GET_VIDEO_VOLUME));
        RL.put("reviewRating", a.a("reviewRating", ApiEventType.API_MRAID_SEEK_VIDEO, im.class));
        RL.put("startDate", a.j("startDate", ApiEventType.API_MRAID_PAUSE_VIDEO));
        RL.put("streetAddress", a.j("streetAddress", ApiEventType.API_MRAID_HIDE_VIDEO));
        RL.put("text", a.j("text", ApiEventType.API_MRAID_SHOW_VIDEO));
        RL.put("thumbnail", a.a("thumbnail", ApiEventType.API_MRAID_CLOSE_VIDEO, im.class));
        RL.put(PlusShare.KEY_CONTENT_DEEP_LINK_METADATA_THUMBNAIL_URL, a.j(PlusShare.KEY_CONTENT_DEEP_LINK_METADATA_THUMBNAIL_URL, ApiEventType.API_MRAID_GET_MIC_INTENSITY));
        RL.put("tickerSymbol", a.j("tickerSymbol", 52));
        RL.put(AnalyticsSQLiteHelper.EVENT_LIST_TYPE, a.j(AnalyticsSQLiteHelper.EVENT_LIST_TYPE, 53));
        RL.put(PlusShare.KEY_CALL_TO_ACTION_URL, a.j(PlusShare.KEY_CALL_TO_ACTION_URL, 54));
        RL.put(MMLayout.KEY_WIDTH, a.j(MMLayout.KEY_WIDTH, 55));
        RL.put("worstRating", a.j("worstRating", 56));
    }

    public im() {
        this.wj = 1;
        this.RM = new HashSet();
    }

    im(Set set, int i, im imVar, List list, im imVar2, String str, String str2, String str3, List list2, int i2, List list3, im imVar3, List list4, String str4, String str5, im imVar4, String str6, String str7, String str8, List list5, String str9, String str10, String str11, String str12, String str13, String str14, String str15, String str16, String str17, im imVar5, String str18, String str19, String str20, String str21, im imVar6, double d, im imVar7, double d2, String str22, im imVar8, List list6, String str23, String str24, String str25, String str26, im imVar9, String str27, String str28, String str29, im imVar10, String str30, String str31, String str32, String str33, String str34, String str35) {
        this.RM = set;
        this.wj = i;
        this.RN = imVar;
        this.RO = list;
        this.RP = imVar2;
        this.RQ = str;
        this.RR = str2;
        this.RS = str3;
        this.RT = list2;
        this.RU = i2;
        this.RV = list3;
        this.RW = imVar3;
        this.RX = list4;
        this.RY = str4;
        this.RZ = str5;
        this.Sa = imVar4;
        this.Sb = str6;
        this.Sc = str7;
        this.lt = str8;
        this.Sd = list5;
        this.Se = str9;
        this.Sf = str10;
        this.Sg = str11;
        this.FH = str12;
        this.Sh = str13;
        this.Si = str14;
        this.Sj = str15;
        this.Sk = str16;
        this.Sl = str17;
        this.Sm = imVar5;
        this.Sn = str18;
        this.So = str19;
        this.uS = str20;
        this.Sp = str21;
        this.Sq = imVar6;
        this.KX = d;
        this.Sr = imVar7;
        this.KY = d2;
        this.mName = str22;
        this.Ss = imVar8;
        this.St = list6;
        this.Su = str23;
        this.Sv = str24;
        this.Sw = str25;
        this.Sx = str26;
        this.Sy = imVar9;
        this.Sz = str27;
        this.SA = str28;
        this.SB = str29;
        this.SC = imVar10;
        this.SD = str30;
        this.SE = str31;
        this.Oc = str32;
        this.pS = str33;
        this.SF = str34;
        this.SG = str35;
    }

    public im(Set set, im imVar, List list, im imVar2, String str, String str2, String str3, List list2, int i, List list3, im imVar3, List list4, String str4, String str5, im imVar4, String str6, String str7, String str8, List list5, String str9, String str10, String str11, String str12, String str13, String str14, String str15, String str16, String str17, im imVar5, String str18, String str19, String str20, String str21, im imVar6, double d, im imVar7, double d2, String str22, im imVar8, List list6, String str23, String str24, String str25, String str26, im imVar9, String str27, String str28, String str29, im imVar10, String str30, String str31, String str32, String str33, String str34, String str35) {
        this.RM = set;
        this.wj = 1;
        this.RN = imVar;
        this.RO = list;
        this.RP = imVar2;
        this.RQ = str;
        this.RR = str2;
        this.RS = str3;
        this.RT = list2;
        this.RU = i;
        this.RV = list3;
        this.RW = imVar3;
        this.RX = list4;
        this.RY = str4;
        this.RZ = str5;
        this.Sa = imVar4;
        this.Sb = str6;
        this.Sc = str7;
        this.lt = str8;
        this.Sd = list5;
        this.Se = str9;
        this.Sf = str10;
        this.Sg = str11;
        this.FH = str12;
        this.Sh = str13;
        this.Si = str14;
        this.Sj = str15;
        this.Sk = str16;
        this.Sl = str17;
        this.Sm = imVar5;
        this.Sn = str18;
        this.So = str19;
        this.uS = str20;
        this.Sp = str21;
        this.Sq = imVar6;
        this.KX = d;
        this.Sr = imVar7;
        this.KY = d2;
        this.mName = str22;
        this.Ss = imVar8;
        this.St = list6;
        this.Su = str23;
        this.Sv = str24;
        this.Sw = str25;
        this.Sx = str26;
        this.Sy = imVar9;
        this.Sz = str27;
        this.SA = str28;
        this.SB = str29;
        this.SC = imVar10;
        this.SD = str30;
        this.SE = str31;
        this.Oc = str32;
        this.pS = str33;
        this.SF = str34;
        this.SG = str35;
    }

    protected boolean a(a aVar) {
        return this.RM.contains(Integer.valueOf(aVar.eu()));
    }

    protected Object ak(String str) {
        return null;
    }

    protected boolean al(String str) {
        return false;
    }

    protected Object b(a aVar) {
        switch (aVar.eu()) {
            case GoogleScorer.CLIENT_PLUS:
                return this.RN;
            case IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE:
                return this.RO;
            case GoogleScorer.CLIENT_APPSTATE:
                return this.RP;
            case IabHelper.BILLING_RESPONSE_RESULT_DEVELOPER_ERROR:
                return this.RQ;
            case IabHelper.BILLING_RESPONSE_RESULT_ERROR:
                return this.RR;
            case GoogleScorer.CLIENT_ALL:
                return this.RS;
            case IabHelper.BILLING_RESPONSE_RESULT_ITEM_NOT_OWNED:
                return this.RT;
            case ZBuildConfig.$minsdk:
                return Integer.valueOf(this.RU);
            case R.styleable.MapAttrs_uiZoomControls:
                return this.RV;
            case R.styleable.MapAttrs_uiZoomGestures:
                return this.RW;
            case R.styleable.MapAttrs_useViewLifecycle:
                return this.RX;
            case R.styleable.MapAttrs_zOrderOnTop:
                return this.RY;
            case MMException.REQUEST_NOT_FILLED:
                return this.RZ;
            case MMException.REQUEST_BAD_RESPONSE:
                return this.Sa;
            case MMException.REQUEST_NOT_PERMITTED:
                return this.Sb;
            case ZBuildConfig.$targetsdk:
                return this.Sc;
            case ApiEventType.API_MRAID_GET_CURRENT_POSITION:
                return this.lt;
            case ApiEventType.API_MRAID_GET_DEFAULT_POSITION:
                return this.Sd;
            case MMException.DISPLAY_AD_NOT_READY:
                return this.Se;
            case MMException.DISPLAY_AD_EXPIRED:
                return this.Sf;
            case MMException.DISPLAY_AD_NOT_FOUND:
                return this.Sg;
            case MMException.DISPLAY_AD_ALREADY_DISPLAYED:
                return this.FH;
            case MMException.DISPLAY_AD_NOT_PERMITTED:
                return this.Sh;
            case MMException.AD_BROKEN_REFERENCE:
                return this.Si;
            case MMException.AD_NO_ACTIVITY:
                return this.Sj;
            case ApiEventType.API_MRAID_SEND_SMS:
                return this.Sk;
            case ApiEventType.API_MRAID_SEND_MAIL:
                return this.Sl;
            case ApiEventType.API_MRAID_MAKE_CALL:
                return this.Sm;
            case ADCNetwork.timeout_seconds:
                return this.Sn;
            case ApiEventType.API_MRAID_ASYNC_PING:
                return this.So;
            case ApiEventType.API_MRAID_PLAY_AUDIO:
                return this.uS;
            case ApiEventType.API_MRAID_MUTE_AUDIO:
                return this.Sp;
            case ApiEventType.API_MRAID_UNMUTE_AUDIO:
                return this.Sq;
            case ApiEventType.API_MRAID_SET_AUDIO_VOLUME:
                return Double.valueOf(this.KX);
            case ApiEventType.API_MRAID_GET_AUDIO_VOLUME:
                return this.Sr;
            case ApiEventType.API_MRAID_SEEK_AUDIO:
                return Double.valueOf(this.KY);
            case ApiEventType.API_MRAID_PAUSE_AUDIO:
                return this.mName;
            case ApiEventType.API_MRAID_PLAY_VIDEO:
                return this.Ss;
            case ApiEventType.API_MRAID_MUTE_VIDEO:
                return this.St;
            case ApiEventType.API_MRAID_UNMUTE_VIDEO:
                return this.Su;
            case ApiEventType.API_MRAID_IS_VIDEO_MUTED:
                return this.Sv;
            case ApiEventType.API_MRAID_SET_VIDEO_VOLUME:
                return this.Sw;
            case ApiEventType.API_MRAID_GET_VIDEO_VOLUME:
                return this.Sx;
            case ApiEventType.API_MRAID_SEEK_VIDEO:
                return this.Sy;
            case ApiEventType.API_MRAID_PAUSE_VIDEO:
                return this.Sz;
            case ApiEventType.API_MRAID_HIDE_VIDEO:
                return this.SA;
            case ApiEventType.API_MRAID_SHOW_VIDEO:
                return this.SB;
            case ApiEventType.API_MRAID_CLOSE_VIDEO:
                return this.SC;
            case ApiEventType.API_MRAID_GET_MIC_INTENSITY:
                return this.SD;
            case 52:
                return this.SE;
            case 53:
                return this.Oc;
            case 54:
                return this.pS;
            case 55:
                return this.SF;
            case 56:
                return this.SG;
            default:
                throw new IllegalStateException("Unknown safe parcelable id=" + aVar.eu());
        }
    }

    public int describeContents() {
        in inVar = CREATOR;
        return 0;
    }

    public HashMap en() {
        return RL;
    }

    public boolean equals(im imVar) {
        if (!(imVar instanceof im)) {
            return false;
        }
        if (this == imVar) {
            return true;
        }
        imVar = imVar;
        Iterator it = RL.values().iterator();
        while (it.hasNext()) {
            a aVar = (a) it.next();
            if (a(aVar)) {
                if (!imVar.a(aVar)) {
                    return false;
                }
                if (!b(aVar).equals(imVar.b(aVar))) {
                    return false;
                }
            } else if (imVar.a(aVar)) {
                return false;
            }
        }
        return true;
    }

    public /* synthetic */ Object freeze() {
        return hR();
    }

    public ItemScope getAbout() {
        return this.RN;
    }

    public List getAdditionalName() {
        return this.RO;
    }

    public ItemScope getAddress() {
        return this.RP;
    }

    public String getAddressCountry() {
        return this.RQ;
    }

    public String getAddressLocality() {
        return this.RR;
    }

    public String getAddressRegion() {
        return this.RS;
    }

    public List getAssociated_media() {
        return (ArrayList) this.RT;
    }

    public int getAttendeeCount() {
        return this.RU;
    }

    public List getAttendees() {
        return (ArrayList) this.RV;
    }

    public ItemScope getAudio() {
        return this.RW;
    }

    public List getAuthor() {
        return (ArrayList) this.RX;
    }

    public String getBestRating() {
        return this.RY;
    }

    public String getBirthDate() {
        return this.RZ;
    }

    public ItemScope getByArtist() {
        return this.Sa;
    }

    public String getCaption() {
        return this.Sb;
    }

    public String getContentSize() {
        return this.Sc;
    }

    public String getContentUrl() {
        return this.lt;
    }

    public List getContributor() {
        return (ArrayList) this.Sd;
    }

    public String getDateCreated() {
        return this.Se;
    }

    public String getDateModified() {
        return this.Sf;
    }

    public String getDatePublished() {
        return this.Sg;
    }

    public String getDescription() {
        return this.FH;
    }

    public String getDuration() {
        return this.Sh;
    }

    public String getEmbedUrl() {
        return this.Si;
    }

    public String getEndDate() {
        return this.Sj;
    }

    public String getFamilyName() {
        return this.Sk;
    }

    public String getGender() {
        return this.Sl;
    }

    public ItemScope getGeo() {
        return this.Sm;
    }

    public String getGivenName() {
        return this.Sn;
    }

    public String getHeight() {
        return this.So;
    }

    public String getId() {
        return this.uS;
    }

    public String getImage() {
        return this.Sp;
    }

    public ItemScope getInAlbum() {
        return this.Sq;
    }

    public double getLatitude() {
        return this.KX;
    }

    public ItemScope getLocation() {
        return this.Sr;
    }

    public double getLongitude() {
        return this.KY;
    }

    public String getName() {
        return this.mName;
    }

    public ItemScope getPartOfTVSeries() {
        return this.Ss;
    }

    public List getPerformers() {
        return (ArrayList) this.St;
    }

    public String getPlayerType() {
        return this.Su;
    }

    public String getPostOfficeBoxNumber() {
        return this.Sv;
    }

    public String getPostalCode() {
        return this.Sw;
    }

    public String getRatingValue() {
        return this.Sx;
    }

    public ItemScope getReviewRating() {
        return this.Sy;
    }

    public String getStartDate() {
        return this.Sz;
    }

    public String getStreetAddress() {
        return this.SA;
    }

    public String getText() {
        return this.SB;
    }

    public ItemScope getThumbnail() {
        return this.SC;
    }

    public String getThumbnailUrl() {
        return this.SD;
    }

    public String getTickerSymbol() {
        return this.SE;
    }

    public String getType() {
        return this.Oc;
    }

    public String getUrl() {
        return this.pS;
    }

    int getVersionCode() {
        return this.wj;
    }

    public String getWidth() {
        return this.SF;
    }

    public String getWorstRating() {
        return this.SG;
    }

    Set hB() {
        return this.RM;
    }

    im hC() {
        return this.RN;
    }

    im hD() {
        return this.RP;
    }

    List hE() {
        return this.RT;
    }

    List hF() {
        return this.RV;
    }

    im hG() {
        return this.RW;
    }

    List hH() {
        return this.RX;
    }

    im hI() {
        return this.Sa;
    }

    List hJ() {
        return this.Sd;
    }

    im hK() {
        return this.Sm;
    }

    im hL() {
        return this.Sq;
    }

    im hM() {
        return this.Sr;
    }

    im hN() {
        return this.Ss;
    }

    List hO() {
        return this.St;
    }

    im hP() {
        return this.Sy;
    }

    im hQ() {
        return this.SC;
    }

    public im hR() {
        return this;
    }

    public boolean hasAbout() {
        return this.RM.contains(Integer.valueOf(GoogleScorer.CLIENT_PLUS));
    }

    public boolean hasAdditionalName() {
        return this.RM.contains(Integer.valueOf(IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE));
    }

    public boolean hasAddress() {
        return this.RM.contains(Integer.valueOf(GoogleScorer.CLIENT_APPSTATE));
    }

    public boolean hasAddressCountry() {
        return this.RM.contains(Integer.valueOf(IabHelper.BILLING_RESPONSE_RESULT_DEVELOPER_ERROR));
    }

    public boolean hasAddressLocality() {
        return this.RM.contains(Integer.valueOf(IabHelper.BILLING_RESPONSE_RESULT_ERROR));
    }

    public boolean hasAddressRegion() {
        return this.RM.contains(Integer.valueOf(GoogleScorer.CLIENT_ALL));
    }

    public boolean hasAssociated_media() {
        return this.RM.contains(Integer.valueOf(IabHelper.BILLING_RESPONSE_RESULT_ITEM_NOT_OWNED));
    }

    public boolean hasAttendeeCount() {
        return this.RM.contains(Integer.valueOf(ZBuildConfig.$minsdk));
    }

    public boolean hasAttendees() {
        return this.RM.contains(Integer.valueOf(R.styleable.MapAttrs_uiZoomControls));
    }

    public boolean hasAudio() {
        return this.RM.contains(Integer.valueOf(R.styleable.MapAttrs_uiZoomGestures));
    }

    public boolean hasAuthor() {
        return this.RM.contains(Integer.valueOf(R.styleable.MapAttrs_useViewLifecycle));
    }

    public boolean hasBestRating() {
        return this.RM.contains(Integer.valueOf(R.styleable.MapAttrs_zOrderOnTop));
    }

    public boolean hasBirthDate() {
        return this.RM.contains(Integer.valueOf(MMException.REQUEST_NOT_FILLED));
    }

    public boolean hasByArtist() {
        return this.RM.contains(Integer.valueOf(MMException.REQUEST_BAD_RESPONSE));
    }

    public boolean hasCaption() {
        return this.RM.contains(Integer.valueOf(MMException.REQUEST_NOT_PERMITTED));
    }

    public boolean hasContentSize() {
        return this.RM.contains(Integer.valueOf(ZBuildConfig.$targetsdk));
    }

    public boolean hasContentUrl() {
        return this.RM.contains(Integer.valueOf(ApiEventType.API_MRAID_GET_CURRENT_POSITION));
    }

    public boolean hasContributor() {
        return this.RM.contains(Integer.valueOf(ApiEventType.API_MRAID_GET_DEFAULT_POSITION));
    }

    public boolean hasDateCreated() {
        return this.RM.contains(Integer.valueOf(MMException.DISPLAY_AD_NOT_READY));
    }

    public boolean hasDateModified() {
        return this.RM.contains(Integer.valueOf(MMException.DISPLAY_AD_EXPIRED));
    }

    public boolean hasDatePublished() {
        return this.RM.contains(Integer.valueOf(MMException.DISPLAY_AD_NOT_FOUND));
    }

    public boolean hasDescription() {
        return this.RM.contains(Integer.valueOf(MMException.DISPLAY_AD_ALREADY_DISPLAYED));
    }

    public boolean hasDuration() {
        return this.RM.contains(Integer.valueOf(MMException.DISPLAY_AD_NOT_PERMITTED));
    }

    public boolean hasEmbedUrl() {
        return this.RM.contains(Integer.valueOf(MMException.AD_BROKEN_REFERENCE));
    }

    public boolean hasEndDate() {
        return this.RM.contains(Integer.valueOf(MMException.AD_NO_ACTIVITY));
    }

    public boolean hasFamilyName() {
        return this.RM.contains(Integer.valueOf(ApiEventType.API_MRAID_SEND_SMS));
    }

    public boolean hasGender() {
        return this.RM.contains(Integer.valueOf(ApiEventType.API_MRAID_SEND_MAIL));
    }

    public boolean hasGeo() {
        return this.RM.contains(Integer.valueOf(ApiEventType.API_MRAID_MAKE_CALL));
    }

    public boolean hasGivenName() {
        return this.RM.contains(Integer.valueOf(ADCNetwork.timeout_seconds));
    }

    public boolean hasHeight() {
        return this.RM.contains(Integer.valueOf(ApiEventType.API_MRAID_ASYNC_PING));
    }

    public boolean hasId() {
        return this.RM.contains(Integer.valueOf(ApiEventType.API_MRAID_PLAY_AUDIO));
    }

    public boolean hasImage() {
        return this.RM.contains(Integer.valueOf(ApiEventType.API_MRAID_MUTE_AUDIO));
    }

    public boolean hasInAlbum() {
        return this.RM.contains(Integer.valueOf(ApiEventType.API_MRAID_UNMUTE_AUDIO));
    }

    public boolean hasLatitude() {
        return this.RM.contains(Integer.valueOf(ApiEventType.API_MRAID_SET_AUDIO_VOLUME));
    }

    public boolean hasLocation() {
        return this.RM.contains(Integer.valueOf(ApiEventType.API_MRAID_GET_AUDIO_VOLUME));
    }

    public boolean hasLongitude() {
        return this.RM.contains(Integer.valueOf(ApiEventType.API_MRAID_SEEK_AUDIO));
    }

    public boolean hasName() {
        return this.RM.contains(Integer.valueOf(ApiEventType.API_MRAID_PAUSE_AUDIO));
    }

    public boolean hasPartOfTVSeries() {
        return this.RM.contains(Integer.valueOf(ApiEventType.API_MRAID_PLAY_VIDEO));
    }

    public boolean hasPerformers() {
        return this.RM.contains(Integer.valueOf(ApiEventType.API_MRAID_MUTE_VIDEO));
    }

    public boolean hasPlayerType() {
        return this.RM.contains(Integer.valueOf(ApiEventType.API_MRAID_UNMUTE_VIDEO));
    }

    public boolean hasPostOfficeBoxNumber() {
        return this.RM.contains(Integer.valueOf(ApiEventType.API_MRAID_IS_VIDEO_MUTED));
    }

    public boolean hasPostalCode() {
        return this.RM.contains(Integer.valueOf(ApiEventType.API_MRAID_SET_VIDEO_VOLUME));
    }

    public boolean hasRatingValue() {
        return this.RM.contains(Integer.valueOf(ApiEventType.API_MRAID_GET_VIDEO_VOLUME));
    }

    public boolean hasReviewRating() {
        return this.RM.contains(Integer.valueOf(ApiEventType.API_MRAID_SEEK_VIDEO));
    }

    public boolean hasStartDate() {
        return this.RM.contains(Integer.valueOf(ApiEventType.API_MRAID_PAUSE_VIDEO));
    }

    public boolean hasStreetAddress() {
        return this.RM.contains(Integer.valueOf(ApiEventType.API_MRAID_HIDE_VIDEO));
    }

    public boolean hasText() {
        return this.RM.contains(Integer.valueOf(ApiEventType.API_MRAID_SHOW_VIDEO));
    }

    public boolean hasThumbnail() {
        return this.RM.contains(Integer.valueOf(ApiEventType.API_MRAID_CLOSE_VIDEO));
    }

    public boolean hasThumbnailUrl() {
        return this.RM.contains(Integer.valueOf(ApiEventType.API_MRAID_GET_MIC_INTENSITY));
    }

    public boolean hasTickerSymbol() {
        return this.RM.contains(Integer.valueOf(52));
    }

    public boolean hasType() {
        return this.RM.contains(Integer.valueOf(53));
    }

    public boolean hasUrl() {
        return this.RM.contains(Integer.valueOf(54));
    }

    public boolean hasWidth() {
        return this.RM.contains(Integer.valueOf(55));
    }

    public boolean hasWorstRating() {
        return this.RM.contains(Integer.valueOf(56));
    }

    public int hashCode() {
        Iterator it = RL.values().iterator();
        int i = 0;
        while (it.hasNext()) {
            int hashCode;
            a aVar = (a) it.next();
            if (a(aVar)) {
                hashCode = b(aVar).hashCode() + i + aVar.eu();
            } else {
                hashCode = i;
            }
            i = hashCode;
        }
        return i;
    }

    public boolean isDataValid() {
        return true;
    }

    public void writeToParcel(Parcel parcel, int i) {
        in inVar = CREATOR;
        in.a(this, parcel, i);
    }
}