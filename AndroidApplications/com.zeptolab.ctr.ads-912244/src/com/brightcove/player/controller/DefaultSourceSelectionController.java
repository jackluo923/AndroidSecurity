package com.brightcove.player.controller;

import android.os.Build.VERSION;
import android.support.v4.view.accessibility.AccessibilityEventCompat;
import android.util.Log;
import com.brightcove.player.event.AbstractComponent;
import com.brightcove.player.event.Component;
import com.brightcove.player.event.Default;
import com.brightcove.player.event.Emits;
import com.brightcove.player.event.Event;
import com.brightcove.player.event.EventEmitter;
import com.brightcove.player.event.EventListener;
import com.brightcove.player.event.EventType;
import com.brightcove.player.event.ListensFor;
import com.brightcove.player.media.DeliveryType;
import com.brightcove.player.model.Source;
import com.brightcove.player.model.SourceCollection;
import com.brightcove.player.model.Video;
import com.brightcove.player.util.ErrorUtil;
import com.brightcove.player.util.EventUtil;
import com.millennialmedia.android.MMException;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

@Emits(events = {"sourceNotFound"})
@ListensFor(events = {"selectSource"})
public class DefaultSourceSelectionController extends AbstractComponent implements SourceSelector, Component {
    public static final String TAG;
    private final Integer DEFAULT_BIT_RATE;
    boolean preferHls;

    private class OnSelectSourceListener implements EventListener {
        private OnSelectSourceListener() {
        }

        @Default
        public void processEvent(Event event) {
            Video video = (Video) event.properties.get(Event.VIDEO);
            try {
                event.properties.put(Event.SOURCE, DefaultSourceSelectionController.this.selectSource(video));
                DefaultSourceSelectionController.this.eventEmitter.respond(event);
            } catch (NoSourceFoundException e) {
                Log.e(TAG, "no usable Source could be found for Video: " + video.toString());
                EventUtil.emit(DefaultSourceSelectionController.this.eventEmitter, EventType.SOURCE_NOT_FOUND, video);
            }
        }
    }

    static {
        TAG = DefaultSourceSelectionController.class.getSimpleName();
    }

    public DefaultSourceSelectionController(EventEmitter eventEmitter) {
        super(eventEmitter, DefaultSourceSelectionController.class);
        this.DEFAULT_BIT_RATE = Integer.valueOf(AccessibilityEventCompat.TYPE_GESTURE_DETECTION_START);
        this.preferHls = VERSION.SDK_INT >= getMinimumHLSVersion();
        initializeListeners();
    }

    public Source findBestSourceByBitRate(SourceCollection sourceCollection, Integer num) {
        if (sourceCollection.getSources() == null || sourceCollection.getSources().size() == 0) {
            throw new NoSourceFoundException();
        }
        Source source = (Source) sourceCollection.getSources().iterator().next();
        boolean z = Integer.MAX_VALUE;
        Iterator it = sourceCollection.getSources().iterator();
        Source source2 = source;
        while (it.hasNext()) {
            source = (Source) it.next();
            if (source.getBitRate() != null && source.getBitRate().intValue() > 0) {
                Source source3;
                int abs = Math.abs(source.getBitRate().intValue() - num.intValue());
                int i;
                if (abs <= i) {
                    source3 = source;
                    i = abs;
                } else {
                    i = i;
                    source3 = source2;
                }
                source2 = source3;
                z = z;
            }
        }
        return source2;
    }

    int getMinimumHLSVersion() {
        return MMException.REQUEST_NOT_FILLED;
    }

    protected void initializeListeners() {
        addListener(EventType.SELECT_SOURCE, new OnSelectSourceListener(null));
    }

    public Source selectSource(Video video) {
        boolean z = 0;
        if (video == null) {
            throw new IllegalArgumentException(ErrorUtil.getMessage(ErrorUtil.VIDEO_REQUIRED));
        }
        Map sourceCollections = video.getSourceCollections();
        if (sourceCollections == null || sourceCollections.size() == 0) {
            throw new NoSourceFoundException();
        }
        Set sources;
        Source source;
        Source source2;
        if (0 == 0 && this.preferHls && sourceCollections.containsKey(DeliveryType.HLS)) {
            sources = ((SourceCollection) sourceCollections.get(DeliveryType.HLS)).getSources();
            if (sources != null && sources.size() > 0) {
                source = (Source) sources.iterator().next();
            }
        }
        if (source == null && sourceCollections.containsKey(DeliveryType.MP4)) {
            source = findBestSourceByBitRate((SourceCollection) sourceCollections.get(DeliveryType.MP4), this.DEFAULT_BIT_RATE);
        }
        if (source == null && sourceCollections.containsKey(DeliveryType.UNKNOWN)) {
            sources = ((SourceCollection) sourceCollections.get(DeliveryType.UNKNOWN)).getSources();
            if (sources != null && sources.size() > 0) {
                source2 = (Source) sources.iterator().next();
                if (source2 != null && source2.getUrl() != null) {
                    return source2;
                }
                throw new NoSourceFoundException();
            }
        }
        source2 = source;
        throw new NoSourceFoundException();
    }
}