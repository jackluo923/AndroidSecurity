package com.brightcove.player.display;

import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.util.Log;
import android.widget.ImageView;
import com.brightcove.player.display.tasks.LoadImageTask;
import com.brightcove.player.event.AbstractComponent;
import com.brightcove.player.event.Component;
import com.brightcove.player.event.Emits;
import com.brightcove.player.event.Event;
import com.brightcove.player.event.EventEmitter;
import com.brightcove.player.event.EventListener;
import com.brightcove.player.event.EventType;
import com.brightcove.player.event.ListensFor;
import com.brightcove.player.util.ErrorUtil;
import com.zeptolab.ctr.scorer.GoogleScorer;
import java.net.URI;

@Emits(events = {})
@ListensFor(events = {"cuePoint", "didPlay", "didSeekTo", "setVideoStill", "willChangeVideo"})
public class VideoStillDisplayComponent extends AbstractComponent implements Component {
    public static final String TAG;
    private int cuePointListenerToken;
    private int didPlayListenerToken;
    private int didSeekToListenerToken;
    private LoadImageTask task;
    private ImageView view;

    private class OnDidPlayDidSeekToOrCuePointListener implements EventListener {
        private OnDidPlayDidSeekToOrCuePointListener() {
        }

        public void processEvent(Event event) {
            Log.v(TAG, "OnDidPlayDidSeekToOrCuePointListener");
            VideoStillDisplayComponent.this.view.setVisibility(GoogleScorer.CLIENT_APPSTATE);
            if (VideoStillDisplayComponent.this.task != null) {
                VideoStillDisplayComponent.this.task.cancel(true);
                VideoStillDisplayComponent.this.task = null;
            }
            VideoStillDisplayComponent.this.eventEmitter.off(EventType.CUE_POINT, VideoStillDisplayComponent.this.cuePointListenerToken);
            VideoStillDisplayComponent.this.eventEmitter.off(EventType.DID_PLAY, VideoStillDisplayComponent.this.didPlayListenerToken);
            VideoStillDisplayComponent.this.eventEmitter.off(EventType.DID_SEEK_TO, VideoStillDisplayComponent.this.didSeekToListenerToken);
        }
    }

    private class OnSetVideoStill implements EventListener {
        private OnSetVideoStill() {
        }

        public void processEvent(Event event) {
            Log.v(TAG, "OnSetVideoStill");
            EventListener onDidPlayDidSeekToOrCuePointListener = new OnDidPlayDidSeekToOrCuePointListener(null);
            VideoStillDisplayComponent.this.cuePointListenerToken = VideoStillDisplayComponent.this.eventEmitter.once(EventType.CUE_POINT, onDidPlayDidSeekToOrCuePointListener);
            VideoStillDisplayComponent.this.didPlayListenerToken = VideoStillDisplayComponent.this.eventEmitter.once(EventType.DID_PLAY, onDidPlayDidSeekToOrCuePointListener);
            VideoStillDisplayComponent.this.didSeekToListenerToken = VideoStillDisplayComponent.this.eventEmitter.once(EventType.DID_SEEK_TO, onDidPlayDidSeekToOrCuePointListener);
            URI uri = (URI) event.properties.get(Event.VIDEO_STILL);
            VideoStillDisplayComponent.this.task = new LoadImageTask(VideoStillDisplayComponent.this.view, VideoStillDisplayComponent.this.eventEmitter);
            VideoStillDisplayComponent.this.task.setSuccessEventType(EventType.DID_SET_VIDEO_STILL);
            VideoStillDisplayComponent.this.task.execute(new URI[]{uri});
        }
    }

    private class OnWillChangeVideo implements EventListener {
        private OnWillChangeVideo() {
        }

        public void processEvent(Event event) {
            Drawable drawable = VideoStillDisplayComponent.this.view.getDrawable();
            if (drawable != null && drawable instanceof BitmapDrawable) {
                ((BitmapDrawable) drawable).getBitmap().recycle();
            }
        }
    }

    static {
        TAG = VideoStillDisplayComponent.class.getSimpleName();
    }

    public VideoStillDisplayComponent(ImageView imageView, EventEmitter eventEmitter) {
        super(eventEmitter, VideoStillDisplayComponent.class);
        if (imageView == null) {
            throw new IllegalArgumentException(ErrorUtil.getMessage(ErrorUtil.IMAGE_VIEW_REQUIRED));
        }
        this.view = imageView;
        initializeListeners();
    }

    protected void initializeListeners() {
        addListener(EventType.SET_VIDEO_STILL, new OnSetVideoStill(null));
        addListener(EventType.WILL_CHANGE_VIDEO, new OnWillChangeVideo(null));
    }
}