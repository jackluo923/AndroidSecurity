package com.zeptolab.ctr.video.brightcove;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.MediaController;
import com.brightcove.ima.GoogleIMAComponent;
import com.brightcove.ima.GoogleIMAEventType;
import com.brightcove.player.event.Event;
import com.brightcove.player.event.EventEmitter;
import com.brightcove.player.event.EventListener;
import com.brightcove.player.event.EventType;
import com.brightcove.player.model.CuePoint;
import com.brightcove.player.model.CuePoint.PositionType;
import com.brightcove.player.model.Source;
import com.brightcove.player.model.SourceCollection;
import com.brightcove.player.model.Video;
import com.brightcove.player.model.Video.Fields;
import com.brightcove.player.view.BrightcovePlayer;
import com.brightcove.player.view.BrightcoveVideoView;
import com.google.ads.interactivemedia.v3.api.AdDisplayContainer;
import com.google.ads.interactivemedia.v3.api.AdsRequest;
import com.google.ads.interactivemedia.v3.api.CompanionAdSlot;
import com.google.ads.interactivemedia.v3.api.ImaSdkFactory;
import com.inmobi.commons.ads.cache.AdDatabaseHelper;
import com.inmobi.commons.analytics.db.AnalyticsEvent;
import com.zeptolab.ctr.CtrPreferences;
import com.zeptolab.ctr.ads.R;
import com.zeptolab.ctr.ads.R.id;
import com.zeptolab.ctr.ads.R.layout;
import com.zeptolab.ctr.scorer.GoogleScorer;
import com.zeptolab.zbuild.ZBuildConfig;
import com.zeptolab.zbuild.ZR;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.regex.Pattern;

public class BrightcoveView extends BrightcovePlayer {
    private static final String PLAYLIST = "3033538441001";
    private static final String TAG = "BrightcoveView";
    private final String adServer;
    private long currentVideo;
    private EventEmitter eventEmitter;
    private String[] googleAds;
    private GoogleIMAComponent googleIMAComponent;
    private long[] ids;
    private String[] referenceIds;
    private String[] sponsorIds;

    class AnonymousClass_2 implements EventListener {
        final /* synthetic */ BroadcastingMediaController val$bmc;

        AnonymousClass_2(BroadcastingMediaController broadcastingMediaController) {
            this.val$bmc = broadcastingMediaController;
        }

        public void processEvent(Event event) {
            int i;
            long access$100 = BrightcoveView.getVideoId(event);
            boolean access$200 = BrightcoveView.this.isBumper(access$100);
            i = access$200 ? 8 : 0;
            this.val$bmc.setVisibility(i);
            if (i == 8) {
                if (this.val$bmc.isShowing()) {
                    this.val$bmc.hide();
                }
            } else if (this.val$bmc.isShowing()) {
                this.val$bmc.show();
            }
            if (!access$200) {
                BrightcoveView.this.currentVideo = access$100;
                Brightcove.instance().onVideoStarted_(access$100);
            }
        }
    }

    class AnonymousClass_6 implements EventListener {
        final /* synthetic */ ImaSdkFactory val$sdkFactory;

        AnonymousClass_6(ImaSdkFactory imaSdkFactory) {
            this.val$sdkFactory = imaSdkFactory;
        }

        public void processEvent(Event event) {
            AdDisplayContainer createAdDisplayContainer = this.val$sdkFactory.createAdDisplayContainer();
            createAdDisplayContainer.setPlayer(BrightcoveView.this.googleIMAComponent.getVideoAdPlayer());
            createAdDisplayContainer.setAdContainer(BrightcoveView.this.brightcoveVideoView);
            Collection arrayList = new ArrayList();
            CompanionAdSlot createCompanionAdSlot = this.val$sdkFactory.createCompanionAdSlot();
            BrightcoveView brightcoveView = BrightcoveView.this;
            id idVar = ZR.id;
            ViewGroup viewGroup = (ViewGroup) brightcoveView.findViewById(R.id.ad_frame);
            viewGroup.setClickable(false);
            createCompanionAdSlot.setContainer(viewGroup);
            createCompanionAdSlot.setSize(viewGroup.getWidth(), viewGroup.getHeight());
            arrayList.add(createCompanionAdSlot);
            createAdDisplayContainer.setCompanionSlots(arrayList);
            ArrayList arrayList2 = new ArrayList(BrightcoveView.this.googleAds.length);
            String[] access$800 = BrightcoveView.this.googleAds;
            int length = access$800.length;
            int i = 0;
            while (i < length) {
                String str = access$800[i];
                AdsRequest createAdsRequest = this.val$sdkFactory.createAdsRequest();
                createAdsRequest.setAdTagUrl(str);
                createAdsRequest.setAdDisplayContainer(createAdDisplayContainer);
                arrayList2.add(createAdsRequest);
                i++;
            }
            event.properties.put(GoogleIMAComponent.ADS_REQUESTS, arrayList2);
            BrightcoveView.this.eventEmitter.respond(event);
        }
    }

    class BroadcastingMediaController extends MediaController {
        final View closeButton;

        public BroadcastingMediaController(Context context, View view) {
            super(context);
            this.closeButton = view;
        }

        public void hide() {
            super.hide();
            this.closeButton.setVisibility(GoogleScorer.CLIENT_APPSTATE);
        }

        public void show() {
            super.show();
            if (getVisibility() == 0) {
                this.closeButton.setVisibility(0);
            }
        }
    }

    public BrightcoveView() {
        this.googleAds = new String[]{"http://ads.admarvel.com/fam/vastGetAd.php?partner_id=d6ef6b05d7536f33&site_id=89407"};
        this.adServer = "_DB";
        this.currentVideo = 0;
    }

    private static long getVideoId(Event event) {
        Iterator it = ((Video) event.properties.get(Event.VIDEO)).getSourceCollections().entrySet().iterator();
        while (it.hasNext()) {
            Iterator it2 = ((SourceCollection) ((Entry) it.next()).getValue()).getSources().iterator();
            while (it2.hasNext()) {
                String[] split = ((Source) it2.next()).getUrl().split("\\?")[1].split("&");
                int length = split.length;
                int i = 0;
                while (i < length) {
                    String[] split2 = split[i].split("=");
                    if (split2[0].equals("videoId")) {
                        return Long.parseLong(split2[1]);
                    }
                    i++;
                }
            }
        }
        return 0;
    }

    private boolean hasBumper(long j) {
        return Brightcove.instance().hasBumper(j);
    }

    private boolean isBumper(long j) {
        if (this.ids == null) {
            return false;
        }
        int i = 0;
        while (i < this.ids.length) {
            if (this.ids[i] != j) {
                i++;
            } else if (this.referenceIds == null || this.referenceIds.length <= i) {
                return false;
            } else {
                return Pattern.matches("\\w+_bumper_[a-zA-Z][a-zA-Z]", this.referenceIds[i]);
            }
        }
        return false;
    }

    private void setupCuePoints(Source source) {
        String str = AdDatabaseHelper.TABLE_AD;
        Map hashMap = new HashMap();
        Map hashMap2 = new HashMap();
        hashMap2.put(Event.CUE_POINT, new CuePoint(PositionType.BEFORE, str, hashMap));
        this.eventEmitter.emit(EventType.SET_CUE_POINT, hashMap2);
    }

    private void setupGoogleIMA() {
        if ("_DB".equals("DB")) {
            this.googleAds[0] = "http://cs1.brightcodes.net/_example/ad/format/VAST_linear.xml?";
        } else {
            this.googleAds[0] = CtrPreferences.getInstance().getStringForKey("PLAYER_VAST_TAG");
        }
        this.eventEmitter.on(EventType.DID_SET_SOURCE, new EventListener() {
            public void processEvent(Event event) {
                long access$100 = BrightcoveView.getVideoId(event);
                boolean booleanForKey = CtrPreferences.getInstance().getBooleanForKey("IAP_BANNERS");
                if (!BrightcoveView.this.isBumper(access$100) && !BrightcoveView.this.hasBumper(access$100) && !booleanForKey && Brightcove.instance().shouldShowAd()) {
                    BrightcoveView.this.setupCuePoints((Source) event.properties.get(Event.SOURCE));
                }
            }
        });
        this.eventEmitter.on(GoogleIMAEventType.DID_START_AD, new EventListener() {
            public void processEvent(Event event) {
                Brightcove.instance().onAdShown_();
            }
        });
        this.eventEmitter.on(GoogleIMAEventType.ADS_REQUEST_FOR_VIDEO, new AnonymousClass_6(ImaSdkFactory.getInstance()));
        this.googleIMAComponent = new GoogleIMAComponent(this.brightcoveVideoView, this.eventEmitter);
    }

    public void onBackPressed() {
        this.brightcoveVideoView.stopPlayback();
        super.onBackPressed();
    }

    public void onCreate(Bundle bundle) {
        Brightcove.instance().onViewOpened_();
        layout com_zeptolab_ctr_ads_R_layout = ZR.layout;
        setContentView(R.layout.brightcove);
        id idVar = ZR.id;
        this.brightcoveVideoView = (BrightcoveVideoView) findViewById(R.id.brightcove_video_view);
        idVar = ZR.id;
        View findViewById = findViewById(R.id.brightcove_button_close);
        findViewById.setOnClickListener(new OnClickListener() {
            public void onClick(View view) {
                BrightcoveView.this.brightcoveVideoView.stopPlayback();
                BrightcoveView.this.finish();
            }
        });
        super.onCreate(bundle);
        MediaController broadcastingMediaController = new BroadcastingMediaController(this, findViewById);
        this.brightcoveVideoView.setMediaController(broadcastingMediaController);
        this.eventEmitter = this.brightcoveVideoView.getEventEmitter();
        this.eventEmitter.on(EventType.DID_PLAY, new AnonymousClass_2(broadcastingMediaController));
        this.eventEmitter.on(EventType.COMPLETED, new EventListener() {
            public void processEvent(Event event) {
                Brightcove.instance().onVideoEnded_(BrightcoveView.this.currentVideo);
            }
        });
        setupGoogleIMA();
        Intent intent = getIntent();
        if (intent != null) {
            this.brightcoveVideoView.clear();
            String[] stringArrayExtra = intent.getStringArrayExtra("urls");
            this.ids = intent.getLongArrayExtra("ids");
            String[] stringArrayExtra2 = intent.getStringArrayExtra("names");
            this.referenceIds = intent.getStringArrayExtra("referenceIds");
            this.sponsorIds = intent.getStringArrayExtra("sponsors");
            if (stringArrayExtra.length == this.ids.length && this.ids.length == stringArrayExtra2.length) {
                int i = 0;
                while (i < stringArrayExtra.length) {
                    Video createVideo = Video.createVideo(stringArrayExtra[i]);
                    if (createVideo.getProperties() != null) {
                        createVideo.getProperties().put(AnalyticsEvent.EVENT_ID, String.valueOf(this.ids[i]));
                        createVideo.getProperties().put(Fields.REFERENCE_ID, this.referenceIds[i]);
                        createVideo.getProperties().put(Fields.NAME, stringArrayExtra2[i]);
                        createVideo.getProperties().put(Fields.PUBLISHER_ID, ZBuildConfig.id_brightcove_account);
                    }
                    this.brightcoveVideoView.add(createVideo);
                    i++;
                }
                this.brightcoveVideoView.start();
            } else {
                Log.e(TAG, String.format("Intent's extra arrays length incorrect : urls = %s, ids = %s, names = %s", new Object[]{Integer.valueOf(stringArrayExtra.length), Integer.valueOf(this.ids.length), Integer.valueOf(stringArrayExtra2.length)}));
            }
        }
    }

    public void onDestroy() {
        Brightcove.instance().onViewClosed_(this.currentVideo);
        super.onDestroy();
    }
}