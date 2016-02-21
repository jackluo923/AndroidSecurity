package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.inmobi.commons.internal.ApiStatCollector.ApiEventType;
import com.millennialmedia.android.MMException;
import com.zeptolab.ctr.ads.R;
import com.zeptolab.ctr.billing.google.utils.IabHelper;
import com.zeptolab.ctr.scorer.GoogleScorer;
import com.zeptolab.zbuild.ZBuildConfig;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

public class in implements Creator {
    static void a(im imVar, Parcel parcel, int i) {
        int p = b.p(parcel);
        Set hB = imVar.hB();
        if (hB.contains(Integer.valueOf(1))) {
            b.c(parcel, 1, imVar.getVersionCode());
        }
        if (hB.contains(Integer.valueOf(GoogleScorer.CLIENT_PLUS))) {
            b.a(parcel, (int)GoogleScorer.CLIENT_PLUS, imVar.hC(), i, true);
        }
        if (hB.contains(Integer.valueOf(IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE))) {
            b.a(parcel, (int)IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE, imVar.getAdditionalName(), true);
        }
        if (hB.contains(Integer.valueOf(GoogleScorer.CLIENT_APPSTATE))) {
            b.a(parcel, (int)GoogleScorer.CLIENT_APPSTATE, imVar.hD(), i, true);
        }
        if (hB.contains(Integer.valueOf(IabHelper.BILLING_RESPONSE_RESULT_DEVELOPER_ERROR))) {
            b.a(parcel, (int)IabHelper.BILLING_RESPONSE_RESULT_DEVELOPER_ERROR, imVar.getAddressCountry(), true);
        }
        if (hB.contains(Integer.valueOf(IabHelper.BILLING_RESPONSE_RESULT_ERROR))) {
            b.a(parcel, (int)IabHelper.BILLING_RESPONSE_RESULT_ERROR, imVar.getAddressLocality(), true);
        }
        if (hB.contains(Integer.valueOf(GoogleScorer.CLIENT_ALL))) {
            b.a(parcel, (int)GoogleScorer.CLIENT_ALL, imVar.getAddressRegion(), true);
        }
        if (hB.contains(Integer.valueOf(IabHelper.BILLING_RESPONSE_RESULT_ITEM_NOT_OWNED))) {
            b.b(parcel, IabHelper.BILLING_RESPONSE_RESULT_ITEM_NOT_OWNED, imVar.hE(), true);
        }
        if (hB.contains(Integer.valueOf(ZBuildConfig.$minsdk))) {
            b.c(parcel, ZBuildConfig.$minsdk, imVar.getAttendeeCount());
        }
        if (hB.contains(Integer.valueOf(R.styleable.MapAttrs_uiZoomControls))) {
            b.b(parcel, R.styleable.MapAttrs_uiZoomControls, imVar.hF(), true);
        }
        if (hB.contains(Integer.valueOf(R.styleable.MapAttrs_uiZoomGestures))) {
            b.a(parcel, (int)R.styleable.MapAttrs_uiZoomGestures, imVar.hG(), i, true);
        }
        if (hB.contains(Integer.valueOf(R.styleable.MapAttrs_useViewLifecycle))) {
            b.b(parcel, R.styleable.MapAttrs_useViewLifecycle, imVar.hH(), true);
        }
        if (hB.contains(Integer.valueOf(R.styleable.MapAttrs_zOrderOnTop))) {
            b.a(parcel, (int)R.styleable.MapAttrs_zOrderOnTop, imVar.getBestRating(), true);
        }
        if (hB.contains(Integer.valueOf(MMException.REQUEST_NOT_FILLED))) {
            b.a(parcel, (int)MMException.REQUEST_NOT_FILLED, imVar.getBirthDate(), true);
        }
        if (hB.contains(Integer.valueOf(MMException.REQUEST_BAD_RESPONSE))) {
            b.a(parcel, (int)MMException.REQUEST_BAD_RESPONSE, imVar.hI(), i, true);
        }
        if (hB.contains(Integer.valueOf(ZBuildConfig.$targetsdk))) {
            b.a(parcel, (int)ZBuildConfig.$targetsdk, imVar.getContentSize(), true);
        }
        if (hB.contains(Integer.valueOf(MMException.REQUEST_NOT_PERMITTED))) {
            b.a(parcel, (int)MMException.REQUEST_NOT_PERMITTED, imVar.getCaption(), true);
        }
        if (hB.contains(Integer.valueOf(ApiEventType.API_MRAID_GET_DEFAULT_POSITION))) {
            b.b(parcel, ApiEventType.API_MRAID_GET_DEFAULT_POSITION, imVar.hJ(), true);
        }
        if (hB.contains(Integer.valueOf(ApiEventType.API_MRAID_GET_CURRENT_POSITION))) {
            b.a(parcel, (int)ApiEventType.API_MRAID_GET_CURRENT_POSITION, imVar.getContentUrl(), true);
        }
        if (hB.contains(Integer.valueOf(MMException.DISPLAY_AD_EXPIRED))) {
            b.a(parcel, (int)MMException.DISPLAY_AD_EXPIRED, imVar.getDateModified(), true);
        }
        if (hB.contains(Integer.valueOf(MMException.DISPLAY_AD_NOT_READY))) {
            b.a(parcel, (int)MMException.DISPLAY_AD_NOT_READY, imVar.getDateCreated(), true);
        }
        if (hB.contains(Integer.valueOf(MMException.DISPLAY_AD_ALREADY_DISPLAYED))) {
            b.a(parcel, (int)MMException.DISPLAY_AD_ALREADY_DISPLAYED, imVar.getDescription(), true);
        }
        if (hB.contains(Integer.valueOf(MMException.DISPLAY_AD_NOT_FOUND))) {
            b.a(parcel, (int)MMException.DISPLAY_AD_NOT_FOUND, imVar.getDatePublished(), true);
        }
        if (hB.contains(Integer.valueOf(MMException.AD_BROKEN_REFERENCE))) {
            b.a(parcel, (int)MMException.AD_BROKEN_REFERENCE, imVar.getEmbedUrl(), true);
        }
        if (hB.contains(Integer.valueOf(MMException.DISPLAY_AD_NOT_PERMITTED))) {
            b.a(parcel, (int)MMException.DISPLAY_AD_NOT_PERMITTED, imVar.getDuration(), true);
        }
        if (hB.contains(Integer.valueOf(ApiEventType.API_MRAID_SEND_SMS))) {
            b.a(parcel, (int)ApiEventType.API_MRAID_SEND_SMS, imVar.getFamilyName(), true);
        }
        if (hB.contains(Integer.valueOf(MMException.AD_NO_ACTIVITY))) {
            b.a(parcel, (int)MMException.AD_NO_ACTIVITY, imVar.getEndDate(), true);
        }
        if (hB.contains(Integer.valueOf(ApiEventType.API_MRAID_MAKE_CALL))) {
            b.a(parcel, (int)ApiEventType.API_MRAID_MAKE_CALL, imVar.hK(), i, true);
        }
        if (hB.contains(Integer.valueOf(ApiEventType.API_MRAID_SEND_MAIL))) {
            b.a(parcel, (int)ApiEventType.API_MRAID_SEND_MAIL, imVar.getGender(), true);
        }
        if (hB.contains(Integer.valueOf(ApiEventType.API_MRAID_ASYNC_PING))) {
            b.a(parcel, (int)ApiEventType.API_MRAID_ASYNC_PING, imVar.getHeight(), true);
        }
        if (hB.contains(Integer.valueOf(ADCNetwork.timeout_seconds))) {
            b.a(parcel, (int)ADCNetwork.timeout_seconds, imVar.getGivenName(), true);
        }
        if (hB.contains(Integer.valueOf(ApiEventType.API_MRAID_UNMUTE_AUDIO))) {
            b.a(parcel, (int)ApiEventType.API_MRAID_UNMUTE_AUDIO, imVar.hL(), i, true);
        }
        if (hB.contains(Integer.valueOf(ApiEventType.API_MRAID_PLAY_AUDIO))) {
            b.a(parcel, (int)ApiEventType.API_MRAID_PLAY_AUDIO, imVar.getId(), true);
        }
        if (hB.contains(Integer.valueOf(ApiEventType.API_MRAID_MUTE_AUDIO))) {
            b.a(parcel, (int)ApiEventType.API_MRAID_MUTE_AUDIO, imVar.getImage(), true);
        }
        if (hB.contains(Integer.valueOf(ApiEventType.API_MRAID_SEEK_AUDIO))) {
            b.a(parcel, (int)ApiEventType.API_MRAID_SEEK_AUDIO, imVar.getLongitude());
        }
        if (hB.contains(Integer.valueOf(ApiEventType.API_MRAID_PAUSE_AUDIO))) {
            b.a(parcel, (int)ApiEventType.API_MRAID_PAUSE_AUDIO, imVar.getName(), true);
        }
        if (hB.contains(Integer.valueOf(ApiEventType.API_MRAID_SET_AUDIO_VOLUME))) {
            b.a(parcel, (int)ApiEventType.API_MRAID_SET_AUDIO_VOLUME, imVar.getLatitude());
        }
        if (hB.contains(Integer.valueOf(ApiEventType.API_MRAID_GET_AUDIO_VOLUME))) {
            b.a(parcel, (int)ApiEventType.API_MRAID_GET_AUDIO_VOLUME, imVar.hM(), i, true);
        }
        if (hB.contains(Integer.valueOf(ApiEventType.API_MRAID_UNMUTE_VIDEO))) {
            b.a(parcel, (int)ApiEventType.API_MRAID_UNMUTE_VIDEO, imVar.getPlayerType(), true);
        }
        if (hB.contains(Integer.valueOf(ApiEventType.API_MRAID_IS_VIDEO_MUTED))) {
            b.a(parcel, (int)ApiEventType.API_MRAID_IS_VIDEO_MUTED, imVar.getPostOfficeBoxNumber(), true);
        }
        if (hB.contains(Integer.valueOf(ApiEventType.API_MRAID_PLAY_VIDEO))) {
            b.a(parcel, (int)ApiEventType.API_MRAID_PLAY_VIDEO, imVar.hN(), i, true);
        }
        if (hB.contains(Integer.valueOf(ApiEventType.API_MRAID_MUTE_VIDEO))) {
            b.b(parcel, ApiEventType.API_MRAID_MUTE_VIDEO, imVar.hO(), true);
        }
        if (hB.contains(Integer.valueOf(ApiEventType.API_MRAID_SEEK_VIDEO))) {
            b.a(parcel, (int)ApiEventType.API_MRAID_SEEK_VIDEO, imVar.hP(), i, true);
        }
        if (hB.contains(Integer.valueOf(ApiEventType.API_MRAID_PAUSE_VIDEO))) {
            b.a(parcel, (int)ApiEventType.API_MRAID_PAUSE_VIDEO, imVar.getStartDate(), true);
        }
        if (hB.contains(Integer.valueOf(ApiEventType.API_MRAID_SET_VIDEO_VOLUME))) {
            b.a(parcel, (int)ApiEventType.API_MRAID_SET_VIDEO_VOLUME, imVar.getPostalCode(), true);
        }
        if (hB.contains(Integer.valueOf(ApiEventType.API_MRAID_GET_VIDEO_VOLUME))) {
            b.a(parcel, (int)ApiEventType.API_MRAID_GET_VIDEO_VOLUME, imVar.getRatingValue(), true);
        }
        if (hB.contains(Integer.valueOf(ApiEventType.API_MRAID_GET_MIC_INTENSITY))) {
            b.a(parcel, (int)ApiEventType.API_MRAID_GET_MIC_INTENSITY, imVar.getThumbnailUrl(), true);
        }
        if (hB.contains(Integer.valueOf(ApiEventType.API_MRAID_CLOSE_VIDEO))) {
            b.a(parcel, (int)ApiEventType.API_MRAID_CLOSE_VIDEO, imVar.hQ(), i, true);
        }
        if (hB.contains(Integer.valueOf(ApiEventType.API_MRAID_SHOW_VIDEO))) {
            b.a(parcel, (int)ApiEventType.API_MRAID_SHOW_VIDEO, imVar.getText(), true);
        }
        if (hB.contains(Integer.valueOf(ApiEventType.API_MRAID_HIDE_VIDEO))) {
            b.a(parcel, (int)ApiEventType.API_MRAID_HIDE_VIDEO, imVar.getStreetAddress(), true);
        }
        if (hB.contains(Integer.valueOf(55))) {
            b.a(parcel, 55, imVar.getWidth(), true);
        }
        if (hB.contains(Integer.valueOf(54))) {
            b.a(parcel, 54, imVar.getUrl(), true);
        }
        if (hB.contains(Integer.valueOf(53))) {
            b.a(parcel, 53, imVar.getType(), true);
        }
        if (hB.contains(Integer.valueOf(52))) {
            b.a(parcel, 52, imVar.getTickerSymbol(), true);
        }
        if (hB.contains(Integer.valueOf(56))) {
            b.a(parcel, 56, imVar.getWorstRating(), true);
        }
        b.D(parcel, p);
    }

    public im aG(Parcel parcel) {
        int o = a.o(parcel);
        Set hashSet = new HashSet();
        int i = 0;
        im imVar = null;
        List list = null;
        im imVar2 = null;
        String str = null;
        String str2 = null;
        String str3 = null;
        List list2 = null;
        int i2 = 0;
        List list3 = null;
        im imVar3 = null;
        List list4 = null;
        String str4 = null;
        String str5 = null;
        im imVar4 = null;
        String str6 = null;
        String str7 = null;
        String str8 = null;
        List list5 = null;
        String str9 = null;
        String str10 = null;
        String str11 = null;
        String str12 = null;
        String str13 = null;
        String str14 = null;
        String str15 = null;
        String str16 = null;
        String str17 = null;
        im imVar5 = null;
        String str18 = null;
        String str19 = null;
        String str20 = null;
        String str21 = null;
        im imVar6 = null;
        double d = 0.0d;
        im imVar7 = null;
        double d2 = 0.0d;
        String str22 = null;
        im imVar8 = null;
        List list6 = null;
        String str23 = null;
        String str24 = null;
        String str25 = null;
        String str26 = null;
        im imVar9 = null;
        String str27 = null;
        String str28 = null;
        String str29 = null;
        im imVar10 = null;
        String str30 = null;
        String str31 = null;
        String str32 = null;
        String str33 = null;
        String str34 = null;
        String str35 = null;
        while (parcel.dataPosition() < o) {
            int n = a.n(parcel);
            im imVar11;
            switch (a.S(n)) {
                case GoogleScorer.CLIENT_GAMES:
                    i = a.g(parcel, n);
                    hashSet.add(Integer.valueOf(1));
                    break;
                case GoogleScorer.CLIENT_PLUS:
                    imVar11 = (im) a.a(parcel, n, im.CREATOR);
                    hashSet.add(Integer.valueOf(GoogleScorer.CLIENT_PLUS));
                    imVar = imVar11;
                    break;
                case IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE:
                    list = a.y(parcel, n);
                    hashSet.add(Integer.valueOf(IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE));
                    break;
                case GoogleScorer.CLIENT_APPSTATE:
                    imVar11 = (im) a.a(parcel, n, im.CREATOR);
                    hashSet.add(Integer.valueOf(GoogleScorer.CLIENT_APPSTATE));
                    imVar2 = imVar11;
                    break;
                case IabHelper.BILLING_RESPONSE_RESULT_DEVELOPER_ERROR:
                    str = a.m(parcel, n);
                    hashSet.add(Integer.valueOf(IabHelper.BILLING_RESPONSE_RESULT_DEVELOPER_ERROR));
                    break;
                case IabHelper.BILLING_RESPONSE_RESULT_ERROR:
                    str2 = a.m(parcel, n);
                    hashSet.add(Integer.valueOf(IabHelper.BILLING_RESPONSE_RESULT_ERROR));
                    break;
                case GoogleScorer.CLIENT_ALL:
                    str3 = a.m(parcel, n);
                    hashSet.add(Integer.valueOf(GoogleScorer.CLIENT_ALL));
                    break;
                case IabHelper.BILLING_RESPONSE_RESULT_ITEM_NOT_OWNED:
                    list2 = a.c(parcel, n, im.CREATOR);
                    hashSet.add(Integer.valueOf(IabHelper.BILLING_RESPONSE_RESULT_ITEM_NOT_OWNED));
                    break;
                case ZBuildConfig.$minsdk:
                    i2 = a.g(parcel, n);
                    hashSet.add(Integer.valueOf(ZBuildConfig.$minsdk));
                    break;
                case R.styleable.MapAttrs_uiZoomControls:
                    list3 = a.c(parcel, n, im.CREATOR);
                    hashSet.add(Integer.valueOf(R.styleable.MapAttrs_uiZoomControls));
                    break;
                case R.styleable.MapAttrs_uiZoomGestures:
                    imVar11 = (im) a.a(parcel, n, im.CREATOR);
                    hashSet.add(Integer.valueOf(R.styleable.MapAttrs_uiZoomGestures));
                    imVar3 = imVar11;
                    break;
                case R.styleable.MapAttrs_useViewLifecycle:
                    list4 = a.c(parcel, n, im.CREATOR);
                    hashSet.add(Integer.valueOf(R.styleable.MapAttrs_useViewLifecycle));
                    break;
                case R.styleable.MapAttrs_zOrderOnTop:
                    str4 = a.m(parcel, n);
                    hashSet.add(Integer.valueOf(R.styleable.MapAttrs_zOrderOnTop));
                    break;
                case MMException.REQUEST_NOT_FILLED:
                    str5 = a.m(parcel, n);
                    hashSet.add(Integer.valueOf(MMException.REQUEST_NOT_FILLED));
                    break;
                case MMException.REQUEST_BAD_RESPONSE:
                    imVar11 = (im) a.a(parcel, n, (Creator)im.CREATOR);
                    hashSet.add(Integer.valueOf(MMException.REQUEST_BAD_RESPONSE));
                    imVar4 = imVar11;
                    break;
                case MMException.REQUEST_NOT_PERMITTED:
                    str6 = a.m(parcel, n);
                    hashSet.add(Integer.valueOf(MMException.REQUEST_NOT_PERMITTED));
                    break;
                case ZBuildConfig.$targetsdk:
                    str7 = a.m(parcel, n);
                    hashSet.add(Integer.valueOf(ZBuildConfig.$targetsdk));
                    break;
                case ApiEventType.API_MRAID_GET_CURRENT_POSITION:
                    str8 = a.m(parcel, n);
                    hashSet.add(Integer.valueOf(ApiEventType.API_MRAID_GET_CURRENT_POSITION));
                    break;
                case ApiEventType.API_MRAID_GET_DEFAULT_POSITION:
                    list5 = a.c(parcel, n, im.CREATOR);
                    hashSet.add(Integer.valueOf(ApiEventType.API_MRAID_GET_DEFAULT_POSITION));
                    break;
                case MMException.DISPLAY_AD_NOT_READY:
                    str9 = a.m(parcel, n);
                    hashSet.add(Integer.valueOf(MMException.DISPLAY_AD_NOT_READY));
                    break;
                case MMException.DISPLAY_AD_EXPIRED:
                    str10 = a.m(parcel, n);
                    hashSet.add(Integer.valueOf(MMException.DISPLAY_AD_EXPIRED));
                    break;
                case MMException.DISPLAY_AD_NOT_FOUND:
                    str11 = a.m(parcel, n);
                    hashSet.add(Integer.valueOf(MMException.DISPLAY_AD_NOT_FOUND));
                    break;
                case MMException.DISPLAY_AD_ALREADY_DISPLAYED:
                    str12 = a.m(parcel, n);
                    hashSet.add(Integer.valueOf(MMException.DISPLAY_AD_ALREADY_DISPLAYED));
                    break;
                case MMException.DISPLAY_AD_NOT_PERMITTED:
                    str13 = a.m(parcel, n);
                    hashSet.add(Integer.valueOf(MMException.DISPLAY_AD_NOT_PERMITTED));
                    break;
                case MMException.AD_BROKEN_REFERENCE:
                    str14 = a.m(parcel, n);
                    hashSet.add(Integer.valueOf(MMException.AD_BROKEN_REFERENCE));
                    break;
                case MMException.AD_NO_ACTIVITY:
                    str15 = a.m(parcel, n);
                    hashSet.add(Integer.valueOf(MMException.AD_NO_ACTIVITY));
                    break;
                case ApiEventType.API_MRAID_SEND_SMS:
                    str16 = a.m(parcel, n);
                    hashSet.add(Integer.valueOf(ApiEventType.API_MRAID_SEND_SMS));
                    break;
                case ApiEventType.API_MRAID_SEND_MAIL:
                    str17 = a.m(parcel, n);
                    hashSet.add(Integer.valueOf(ApiEventType.API_MRAID_SEND_MAIL));
                    break;
                case ApiEventType.API_MRAID_MAKE_CALL:
                    imVar11 = (im) a.a(parcel, n, (Creator)im.CREATOR);
                    hashSet.add(Integer.valueOf(ApiEventType.API_MRAID_MAKE_CALL));
                    imVar5 = imVar11;
                    break;
                case ADCNetwork.timeout_seconds:
                    str18 = a.m(parcel, n);
                    hashSet.add(Integer.valueOf(ADCNetwork.timeout_seconds));
                    break;
                case ApiEventType.API_MRAID_ASYNC_PING:
                    str19 = a.m(parcel, n);
                    hashSet.add(Integer.valueOf(ApiEventType.API_MRAID_ASYNC_PING));
                    break;
                case ApiEventType.API_MRAID_PLAY_AUDIO:
                    str20 = a.m(parcel, n);
                    hashSet.add(Integer.valueOf(ApiEventType.API_MRAID_PLAY_AUDIO));
                    break;
                case ApiEventType.API_MRAID_MUTE_AUDIO:
                    str21 = a.m(parcel, n);
                    hashSet.add(Integer.valueOf(ApiEventType.API_MRAID_MUTE_AUDIO));
                    break;
                case ApiEventType.API_MRAID_UNMUTE_AUDIO:
                    imVar11 = (im) a.a(parcel, n, (Creator)im.CREATOR);
                    hashSet.add(Integer.valueOf(ApiEventType.API_MRAID_UNMUTE_AUDIO));
                    imVar6 = imVar11;
                    break;
                case ApiEventType.API_MRAID_SET_AUDIO_VOLUME:
                    d = a.k(parcel, n);
                    hashSet.add(Integer.valueOf(ApiEventType.API_MRAID_SET_AUDIO_VOLUME));
                    break;
                case ApiEventType.API_MRAID_GET_AUDIO_VOLUME:
                    imVar11 = (im) a.a(parcel, n, (Creator)im.CREATOR);
                    hashSet.add(Integer.valueOf(ApiEventType.API_MRAID_GET_AUDIO_VOLUME));
                    imVar7 = imVar11;
                    break;
                case ApiEventType.API_MRAID_SEEK_AUDIO:
                    d2 = a.k(parcel, n);
                    hashSet.add(Integer.valueOf(ApiEventType.API_MRAID_SEEK_AUDIO));
                    break;
                case ApiEventType.API_MRAID_PAUSE_AUDIO:
                    str22 = a.m(parcel, n);
                    hashSet.add(Integer.valueOf(ApiEventType.API_MRAID_PAUSE_AUDIO));
                    break;
                case ApiEventType.API_MRAID_PLAY_VIDEO:
                    imVar11 = (im) a.a(parcel, n, (Creator)im.CREATOR);
                    hashSet.add(Integer.valueOf(ApiEventType.API_MRAID_PLAY_VIDEO));
                    imVar8 = imVar11;
                    break;
                case ApiEventType.API_MRAID_MUTE_VIDEO:
                    list6 = a.c(parcel, n, im.CREATOR);
                    hashSet.add(Integer.valueOf(ApiEventType.API_MRAID_MUTE_VIDEO));
                    break;
                case ApiEventType.API_MRAID_UNMUTE_VIDEO:
                    str23 = a.m(parcel, n);
                    hashSet.add(Integer.valueOf(ApiEventType.API_MRAID_UNMUTE_VIDEO));
                    break;
                case ApiEventType.API_MRAID_IS_VIDEO_MUTED:
                    str24 = a.m(parcel, n);
                    hashSet.add(Integer.valueOf(ApiEventType.API_MRAID_IS_VIDEO_MUTED));
                    break;
                case ApiEventType.API_MRAID_SET_VIDEO_VOLUME:
                    str25 = a.m(parcel, n);
                    hashSet.add(Integer.valueOf(ApiEventType.API_MRAID_SET_VIDEO_VOLUME));
                    break;
                case ApiEventType.API_MRAID_GET_VIDEO_VOLUME:
                    str26 = a.m(parcel, n);
                    hashSet.add(Integer.valueOf(ApiEventType.API_MRAID_GET_VIDEO_VOLUME));
                    break;
                case ApiEventType.API_MRAID_SEEK_VIDEO:
                    imVar11 = (im) a.a(parcel, n, (Creator)im.CREATOR);
                    hashSet.add(Integer.valueOf(ApiEventType.API_MRAID_SEEK_VIDEO));
                    imVar9 = imVar11;
                    break;
                case ApiEventType.API_MRAID_PAUSE_VIDEO:
                    str27 = a.m(parcel, n);
                    hashSet.add(Integer.valueOf(ApiEventType.API_MRAID_PAUSE_VIDEO));
                    break;
                case ApiEventType.API_MRAID_HIDE_VIDEO:
                    str28 = a.m(parcel, n);
                    hashSet.add(Integer.valueOf(ApiEventType.API_MRAID_HIDE_VIDEO));
                    break;
                case ApiEventType.API_MRAID_SHOW_VIDEO:
                    str29 = a.m(parcel, n);
                    hashSet.add(Integer.valueOf(ApiEventType.API_MRAID_SHOW_VIDEO));
                    break;
                case ApiEventType.API_MRAID_CLOSE_VIDEO:
                    imVar11 = (im) a.a(parcel, n, (Creator)im.CREATOR);
                    hashSet.add(Integer.valueOf(ApiEventType.API_MRAID_CLOSE_VIDEO));
                    imVar10 = imVar11;
                    break;
                case ApiEventType.API_MRAID_GET_MIC_INTENSITY:
                    str30 = a.m(parcel, n);
                    hashSet.add(Integer.valueOf(ApiEventType.API_MRAID_GET_MIC_INTENSITY));
                    break;
                case 52:
                    str31 = a.m(parcel, n);
                    hashSet.add(Integer.valueOf(52));
                    break;
                case 53:
                    str32 = a.m(parcel, n);
                    hashSet.add(Integer.valueOf(53));
                    break;
                case 54:
                    str33 = a.m(parcel, n);
                    hashSet.add(Integer.valueOf(54));
                    break;
                case 55:
                    str34 = a.m(parcel, n);
                    hashSet.add(Integer.valueOf(55));
                    break;
                case 56:
                    str35 = a.m(parcel, n);
                    hashSet.add(Integer.valueOf(56));
                    break;
                default:
                    a.b(parcel, n);
                    break;
            }
        }
        if (parcel.dataPosition() == o) {
            return new im(hashSet, i, imVar, list, imVar2, str, str2, str3, list2, i2, list3, imVar3, list4, str4, str5, imVar4, str6, str7, str8, list5, str9, str10, str11, str12, str13, str14, str15, str16, str17, imVar5, str18, str19, str20, str21, imVar6, d, imVar7, d2, str22, imVar8, list6, str23, str24, str25, str26, imVar9, str27, str28, str29, imVar10, str30, str31, str32, str33, str34, str35);
        }
        throw new a.a("Overread allowed size end=" + o, parcel);
    }

    public im[] bD(int i) {
        return new im[i];
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return aG(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return bD(i);
    }
}