package com.brightcove.player.display.tasks;

import android.graphics.Bitmap;
import android.os.AsyncTask;
import android.util.Log;
import android.widget.ImageView;
import com.brightcove.player.event.Component;
import com.brightcove.player.event.Emits;
import com.brightcove.player.event.EventEmitter;
import com.brightcove.player.event.ListensFor;
import com.brightcove.player.event.RegisteringEventEmitter;
import com.brightcove.player.media.HttpService;
import com.brightcove.player.util.ErrorUtil;
import java.lang.ref.WeakReference;
import java.net.URI;

@Emits(events = {"didSetVideoStill"})
@ListensFor(events = {})
public class LoadImageTask extends AsyncTask implements Component {
    public static final String TAG;
    private EventEmitter eventEmitter;
    private HttpService httpService;
    private int imageNotLoadedResourceId;
    private final WeakReference imageViewReference;
    private String successEventType;

    static {
        TAG = LoadImageTask.class.getSimpleName();
    }

    public LoadImageTask(ImageView imageView, EventEmitter eventEmitter) {
        this.imageNotLoadedResourceId = 17301532;
        if (imageView == null || eventEmitter == null) {
            throw new IllegalArgumentException(ErrorUtil.getMessage(ErrorUtil.IMAGE_VIEW_AND_EVENT_EMITTER_REQUIRED));
        }
        this.eventEmitter = RegisteringEventEmitter.build(eventEmitter, LoadImageTask.class);
        this.imageViewReference = new WeakReference(imageView);
        this.httpService = new HttpService();
    }

    protected Bitmap doInBackground(URI... uriArr) {
        if (uriArr == null || uriArr.length == 0 || uriArr[0] == null) {
            throw new IllegalArgumentException(ErrorUtil.getMessage(ErrorUtil.URL_REQUIRED));
        }
        try {
            return this.httpService.doImageGetRequest(uriArr[0]);
        } catch (Exception e) {
            Log.e(TAG, "error encountered in loading image: " + uriArr[0], e);
            return null;
        }
    }

    public String getSuccessEventType() {
        return this.successEventType;
    }

    protected void onPostExecute(Bitmap bitmap) {
        if (this.imageViewReference != null) {
            ImageView imageView = (ImageView) this.imageViewReference.get();
            if (imageView == null) {
                return;
            }
            if (bitmap != null) {
                imageView.setImageBitmap(bitmap);
                imageView.setVisibility(0);
                imageView.requestLayout();
                if (this.successEventType != null) {
                    this.eventEmitter.emit(this.successEventType);
                }
            } else {
                imageView.setImageResource(this.imageNotLoadedResourceId);
            }
        }
    }

    public void setSuccessEventType(String str) {
        this.successEventType = str;
    }
}