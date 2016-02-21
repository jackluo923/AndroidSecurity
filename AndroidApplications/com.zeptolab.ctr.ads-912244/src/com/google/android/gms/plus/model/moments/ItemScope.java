package com.google.android.gms.plus.model.moments;

import com.google.android.gms.common.data.Freezable;
import com.google.android.gms.internal.im;
import com.inmobi.commons.internal.ApiStatCollector.ApiEventType;
import com.millennialmedia.android.MMException;
import com.zeptolab.ctr.ads.R;
import com.zeptolab.ctr.billing.google.utils.IabHelper;
import com.zeptolab.ctr.scorer.GoogleScorer;
import com.zeptolab.zbuild.ZBuildConfig;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

public interface ItemScope extends Freezable {

    public static class Builder {
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

        public Builder() {
            this.RM = new HashSet();
        }

        public ItemScope build() {
            return new im(this.RM, this.RN, this.RO, this.RP, this.RQ, this.RR, this.RS, this.RT, this.RU, this.RV, this.RW, this.RX, this.RY, this.RZ, this.Sa, this.Sb, this.Sc, this.lt, this.Sd, this.Se, this.Sf, this.Sg, this.FH, this.Sh, this.Si, this.Sj, this.Sk, this.Sl, this.Sm, this.Sn, this.So, this.uS, this.Sp, this.Sq, this.KX, this.Sr, this.KY, this.mName, this.Ss, this.St, this.Su, this.Sv, this.Sw, this.Sx, this.Sy, this.Sz, this.SA, this.SB, this.SC, this.SD, this.SE, this.Oc, this.pS, this.SF, this.SG);
        }

        public com.google.android.gms.plus.model.moments.ItemScope.Builder setAbout(ItemScope itemScope) {
            this.RN = (im) itemScope;
            this.RM.add(Integer.valueOf(GoogleScorer.CLIENT_PLUS));
            return this;
        }

        public com.google.android.gms.plus.model.moments.ItemScope.Builder setAdditionalName(List list) {
            this.RO = list;
            this.RM.add(Integer.valueOf(IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE));
            return this;
        }

        public com.google.android.gms.plus.model.moments.ItemScope.Builder setAddress(ItemScope itemScope) {
            this.RP = (im) itemScope;
            this.RM.add(Integer.valueOf(GoogleScorer.CLIENT_APPSTATE));
            return this;
        }

        public com.google.android.gms.plus.model.moments.ItemScope.Builder setAddressCountry(String str) {
            this.RQ = str;
            this.RM.add(Integer.valueOf(IabHelper.BILLING_RESPONSE_RESULT_DEVELOPER_ERROR));
            return this;
        }

        public com.google.android.gms.plus.model.moments.ItemScope.Builder setAddressLocality(String str) {
            this.RR = str;
            this.RM.add(Integer.valueOf(IabHelper.BILLING_RESPONSE_RESULT_ERROR));
            return this;
        }

        public com.google.android.gms.plus.model.moments.ItemScope.Builder setAddressRegion(String str) {
            this.RS = str;
            this.RM.add(Integer.valueOf(GoogleScorer.CLIENT_ALL));
            return this;
        }

        public com.google.android.gms.plus.model.moments.ItemScope.Builder setAssociated_media(List list) {
            this.RT = list;
            this.RM.add(Integer.valueOf(IabHelper.BILLING_RESPONSE_RESULT_ITEM_NOT_OWNED));
            return this;
        }

        public com.google.android.gms.plus.model.moments.ItemScope.Builder setAttendeeCount(int i) {
            this.RU = i;
            this.RM.add(Integer.valueOf(ZBuildConfig.$minsdk));
            return this;
        }

        public com.google.android.gms.plus.model.moments.ItemScope.Builder setAttendees(List list) {
            this.RV = list;
            this.RM.add(Integer.valueOf(R.styleable.MapAttrs_uiZoomControls));
            return this;
        }

        public com.google.android.gms.plus.model.moments.ItemScope.Builder setAudio(ItemScope itemScope) {
            this.RW = (im) itemScope;
            this.RM.add(Integer.valueOf(R.styleable.MapAttrs_uiZoomGestures));
            return this;
        }

        public com.google.android.gms.plus.model.moments.ItemScope.Builder setAuthor(List list) {
            this.RX = list;
            this.RM.add(Integer.valueOf(R.styleable.MapAttrs_useViewLifecycle));
            return this;
        }

        public com.google.android.gms.plus.model.moments.ItemScope.Builder setBestRating(String str) {
            this.RY = str;
            this.RM.add(Integer.valueOf(R.styleable.MapAttrs_zOrderOnTop));
            return this;
        }

        public com.google.android.gms.plus.model.moments.ItemScope.Builder setBirthDate(String str) {
            this.RZ = str;
            this.RM.add(Integer.valueOf(MMException.REQUEST_NOT_FILLED));
            return this;
        }

        public com.google.android.gms.plus.model.moments.ItemScope.Builder setByArtist(ItemScope itemScope) {
            this.Sa = (im) itemScope;
            this.RM.add(Integer.valueOf(MMException.REQUEST_BAD_RESPONSE));
            return this;
        }

        public com.google.android.gms.plus.model.moments.ItemScope.Builder setCaption(String str) {
            this.Sb = str;
            this.RM.add(Integer.valueOf(MMException.REQUEST_NOT_PERMITTED));
            return this;
        }

        public com.google.android.gms.plus.model.moments.ItemScope.Builder setContentSize(String str) {
            this.Sc = str;
            this.RM.add(Integer.valueOf(ZBuildConfig.$targetsdk));
            return this;
        }

        public com.google.android.gms.plus.model.moments.ItemScope.Builder setContentUrl(String str) {
            this.lt = str;
            this.RM.add(Integer.valueOf(ApiEventType.API_MRAID_GET_CURRENT_POSITION));
            return this;
        }

        public com.google.android.gms.plus.model.moments.ItemScope.Builder setContributor(List list) {
            this.Sd = list;
            this.RM.add(Integer.valueOf(ApiEventType.API_MRAID_GET_DEFAULT_POSITION));
            return this;
        }

        public com.google.android.gms.plus.model.moments.ItemScope.Builder setDateCreated(String str) {
            this.Se = str;
            this.RM.add(Integer.valueOf(MMException.DISPLAY_AD_NOT_READY));
            return this;
        }

        public com.google.android.gms.plus.model.moments.ItemScope.Builder setDateModified(String str) {
            this.Sf = str;
            this.RM.add(Integer.valueOf(MMException.DISPLAY_AD_EXPIRED));
            return this;
        }

        public com.google.android.gms.plus.model.moments.ItemScope.Builder setDatePublished(String str) {
            this.Sg = str;
            this.RM.add(Integer.valueOf(MMException.DISPLAY_AD_NOT_FOUND));
            return this;
        }

        public com.google.android.gms.plus.model.moments.ItemScope.Builder setDescription(String str) {
            this.FH = str;
            this.RM.add(Integer.valueOf(MMException.DISPLAY_AD_ALREADY_DISPLAYED));
            return this;
        }

        public com.google.android.gms.plus.model.moments.ItemScope.Builder setDuration(String str) {
            this.Sh = str;
            this.RM.add(Integer.valueOf(MMException.DISPLAY_AD_NOT_PERMITTED));
            return this;
        }

        public com.google.android.gms.plus.model.moments.ItemScope.Builder setEmbedUrl(String str) {
            this.Si = str;
            this.RM.add(Integer.valueOf(MMException.AD_BROKEN_REFERENCE));
            return this;
        }

        public com.google.android.gms.plus.model.moments.ItemScope.Builder setEndDate(String str) {
            this.Sj = str;
            this.RM.add(Integer.valueOf(MMException.AD_NO_ACTIVITY));
            return this;
        }

        public com.google.android.gms.plus.model.moments.ItemScope.Builder setFamilyName(String str) {
            this.Sk = str;
            this.RM.add(Integer.valueOf(ApiEventType.API_MRAID_SEND_SMS));
            return this;
        }

        public com.google.android.gms.plus.model.moments.ItemScope.Builder setGender(String str) {
            this.Sl = str;
            this.RM.add(Integer.valueOf(ApiEventType.API_MRAID_SEND_MAIL));
            return this;
        }

        public com.google.android.gms.plus.model.moments.ItemScope.Builder setGeo(ItemScope itemScope) {
            this.Sm = (im) itemScope;
            this.RM.add(Integer.valueOf(ApiEventType.API_MRAID_MAKE_CALL));
            return this;
        }

        public com.google.android.gms.plus.model.moments.ItemScope.Builder setGivenName(String str) {
            this.Sn = str;
            this.RM.add(Integer.valueOf(ADCNetwork.timeout_seconds));
            return this;
        }

        public com.google.android.gms.plus.model.moments.ItemScope.Builder setHeight(String str) {
            this.So = str;
            this.RM.add(Integer.valueOf(ApiEventType.API_MRAID_ASYNC_PING));
            return this;
        }

        public com.google.android.gms.plus.model.moments.ItemScope.Builder setId(String str) {
            this.uS = str;
            this.RM.add(Integer.valueOf(ApiEventType.API_MRAID_PLAY_AUDIO));
            return this;
        }

        public com.google.android.gms.plus.model.moments.ItemScope.Builder setImage(String str) {
            this.Sp = str;
            this.RM.add(Integer.valueOf(ApiEventType.API_MRAID_MUTE_AUDIO));
            return this;
        }

        public com.google.android.gms.plus.model.moments.ItemScope.Builder setInAlbum(ItemScope itemScope) {
            this.Sq = (im) itemScope;
            this.RM.add(Integer.valueOf(ApiEventType.API_MRAID_UNMUTE_AUDIO));
            return this;
        }

        public com.google.android.gms.plus.model.moments.ItemScope.Builder setLatitude(double d) {
            this.KX = d;
            this.RM.add(Integer.valueOf(ApiEventType.API_MRAID_SET_AUDIO_VOLUME));
            return this;
        }

        public com.google.android.gms.plus.model.moments.ItemScope.Builder setLocation(ItemScope itemScope) {
            this.Sr = (im) itemScope;
            this.RM.add(Integer.valueOf(ApiEventType.API_MRAID_GET_AUDIO_VOLUME));
            return this;
        }

        public com.google.android.gms.plus.model.moments.ItemScope.Builder setLongitude(double d) {
            this.KY = d;
            this.RM.add(Integer.valueOf(ApiEventType.API_MRAID_SEEK_AUDIO));
            return this;
        }

        public com.google.android.gms.plus.model.moments.ItemScope.Builder setName(String str) {
            this.mName = str;
            this.RM.add(Integer.valueOf(ApiEventType.API_MRAID_PAUSE_AUDIO));
            return this;
        }

        public com.google.android.gms.plus.model.moments.ItemScope.Builder setPartOfTVSeries(ItemScope itemScope) {
            this.Ss = (im) itemScope;
            this.RM.add(Integer.valueOf(ApiEventType.API_MRAID_PLAY_VIDEO));
            return this;
        }

        public com.google.android.gms.plus.model.moments.ItemScope.Builder setPerformers(List list) {
            this.St = list;
            this.RM.add(Integer.valueOf(ApiEventType.API_MRAID_MUTE_VIDEO));
            return this;
        }

        public com.google.android.gms.plus.model.moments.ItemScope.Builder setPlayerType(String str) {
            this.Su = str;
            this.RM.add(Integer.valueOf(ApiEventType.API_MRAID_UNMUTE_VIDEO));
            return this;
        }

        public com.google.android.gms.plus.model.moments.ItemScope.Builder setPostOfficeBoxNumber(String str) {
            this.Sv = str;
            this.RM.add(Integer.valueOf(ApiEventType.API_MRAID_IS_VIDEO_MUTED));
            return this;
        }

        public com.google.android.gms.plus.model.moments.ItemScope.Builder setPostalCode(String str) {
            this.Sw = str;
            this.RM.add(Integer.valueOf(ApiEventType.API_MRAID_SET_VIDEO_VOLUME));
            return this;
        }

        public com.google.android.gms.plus.model.moments.ItemScope.Builder setRatingValue(String str) {
            this.Sx = str;
            this.RM.add(Integer.valueOf(ApiEventType.API_MRAID_GET_VIDEO_VOLUME));
            return this;
        }

        public com.google.android.gms.plus.model.moments.ItemScope.Builder setReviewRating(ItemScope itemScope) {
            this.Sy = (im) itemScope;
            this.RM.add(Integer.valueOf(ApiEventType.API_MRAID_SEEK_VIDEO));
            return this;
        }

        public com.google.android.gms.plus.model.moments.ItemScope.Builder setStartDate(String str) {
            this.Sz = str;
            this.RM.add(Integer.valueOf(ApiEventType.API_MRAID_PAUSE_VIDEO));
            return this;
        }

        public com.google.android.gms.plus.model.moments.ItemScope.Builder setStreetAddress(String str) {
            this.SA = str;
            this.RM.add(Integer.valueOf(ApiEventType.API_MRAID_HIDE_VIDEO));
            return this;
        }

        public com.google.android.gms.plus.model.moments.ItemScope.Builder setText(String str) {
            this.SB = str;
            this.RM.add(Integer.valueOf(ApiEventType.API_MRAID_SHOW_VIDEO));
            return this;
        }

        public com.google.android.gms.plus.model.moments.ItemScope.Builder setThumbnail(ItemScope itemScope) {
            this.SC = (im) itemScope;
            this.RM.add(Integer.valueOf(ApiEventType.API_MRAID_CLOSE_VIDEO));
            return this;
        }

        public com.google.android.gms.plus.model.moments.ItemScope.Builder setThumbnailUrl(String str) {
            this.SD = str;
            this.RM.add(Integer.valueOf(ApiEventType.API_MRAID_GET_MIC_INTENSITY));
            return this;
        }

        public com.google.android.gms.plus.model.moments.ItemScope.Builder setTickerSymbol(String str) {
            this.SE = str;
            this.RM.add(Integer.valueOf(52));
            return this;
        }

        public com.google.android.gms.plus.model.moments.ItemScope.Builder setType(String str) {
            this.Oc = str;
            this.RM.add(Integer.valueOf(53));
            return this;
        }

        public com.google.android.gms.plus.model.moments.ItemScope.Builder setUrl(String str) {
            this.pS = str;
            this.RM.add(Integer.valueOf(54));
            return this;
        }

        public com.google.android.gms.plus.model.moments.ItemScope.Builder setWidth(String str) {
            this.SF = str;
            this.RM.add(Integer.valueOf(55));
            return this;
        }

        public com.google.android.gms.plus.model.moments.ItemScope.Builder setWorstRating(String str) {
            this.SG = str;
            this.RM.add(Integer.valueOf(56));
            return this;
        }
    }

    ItemScope getAbout();

    List getAdditionalName();

    ItemScope getAddress();

    String getAddressCountry();

    String getAddressLocality();

    String getAddressRegion();

    List getAssociated_media();

    int getAttendeeCount();

    List getAttendees();

    ItemScope getAudio();

    List getAuthor();

    String getBestRating();

    String getBirthDate();

    ItemScope getByArtist();

    String getCaption();

    String getContentSize();

    String getContentUrl();

    List getContributor();

    String getDateCreated();

    String getDateModified();

    String getDatePublished();

    String getDescription();

    String getDuration();

    String getEmbedUrl();

    String getEndDate();

    String getFamilyName();

    String getGender();

    ItemScope getGeo();

    String getGivenName();

    String getHeight();

    String getId();

    String getImage();

    ItemScope getInAlbum();

    double getLatitude();

    ItemScope getLocation();

    double getLongitude();

    String getName();

    ItemScope getPartOfTVSeries();

    List getPerformers();

    String getPlayerType();

    String getPostOfficeBoxNumber();

    String getPostalCode();

    String getRatingValue();

    ItemScope getReviewRating();

    String getStartDate();

    String getStreetAddress();

    String getText();

    ItemScope getThumbnail();

    String getThumbnailUrl();

    String getTickerSymbol();

    String getType();

    String getUrl();

    String getWidth();

    String getWorstRating();

    boolean hasAbout();

    boolean hasAdditionalName();

    boolean hasAddress();

    boolean hasAddressCountry();

    boolean hasAddressLocality();

    boolean hasAddressRegion();

    boolean hasAssociated_media();

    boolean hasAttendeeCount();

    boolean hasAttendees();

    boolean hasAudio();

    boolean hasAuthor();

    boolean hasBestRating();

    boolean hasBirthDate();

    boolean hasByArtist();

    boolean hasCaption();

    boolean hasContentSize();

    boolean hasContentUrl();

    boolean hasContributor();

    boolean hasDateCreated();

    boolean hasDateModified();

    boolean hasDatePublished();

    boolean hasDescription();

    boolean hasDuration();

    boolean hasEmbedUrl();

    boolean hasEndDate();

    boolean hasFamilyName();

    boolean hasGender();

    boolean hasGeo();

    boolean hasGivenName();

    boolean hasHeight();

    boolean hasId();

    boolean hasImage();

    boolean hasInAlbum();

    boolean hasLatitude();

    boolean hasLocation();

    boolean hasLongitude();

    boolean hasName();

    boolean hasPartOfTVSeries();

    boolean hasPerformers();

    boolean hasPlayerType();

    boolean hasPostOfficeBoxNumber();

    boolean hasPostalCode();

    boolean hasRatingValue();

    boolean hasReviewRating();

    boolean hasStartDate();

    boolean hasStreetAddress();

    boolean hasText();

    boolean hasThumbnail();

    boolean hasThumbnailUrl();

    boolean hasTickerSymbol();

    boolean hasType();

    boolean hasUrl();

    boolean hasWidth();

    boolean hasWorstRating();
}