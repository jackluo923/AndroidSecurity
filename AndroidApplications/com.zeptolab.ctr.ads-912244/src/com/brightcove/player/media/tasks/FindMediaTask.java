package com.brightcove.player.media.tasks;

import android.os.AsyncTask;
import android.util.Log;
import com.brightcove.player.event.Event;
import com.brightcove.player.event.EventEmitter;
import com.brightcove.player.media.ErrorFields;
import com.brightcove.player.media.HttpService;
import com.brightcove.player.media.MediaService;
import com.brightcove.player.media.VideoFields;
import com.brightcove.player.util.ErrorUtil;
import com.brightcove.player.util.StringUtil;
import com.inmobi.commons.analytics.iat.impl.AdTrackerConstants;
import java.io.IOException;
import java.net.URI;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

public class FindMediaTask extends AsyncTask {
    private static final String TAG;
    protected Event event;
    protected EventEmitter eventEmitter;
    protected HttpService httpService;
    protected Map options;
    protected String queryBaseURL;
    protected URI uri;

    static {
        TAG = FindMediaTask.class.getSimpleName();
    }

    protected FindMediaTask(EventEmitter eventEmitter, Event event, String str, Map map) {
        if (eventEmitter == null) {
            throw new IllegalArgumentException(ErrorUtil.getMessage(ErrorUtil.EVENT_EMITTER_REQUIRED));
        } else if (event == null) {
            throw new IllegalArgumentException(ErrorUtil.getMessage(ErrorUtil.EVENT_REQUIRED));
        } else if (str == null || str.trim().equals(AdTrackerConstants.BLANK)) {
            throw new IllegalArgumentException(ErrorUtil.getMessage(ErrorUtil.BASE_URL_REQUIRED));
        } else {
            String str2 = (String) map.get(MediaService.TOKEN);
            if (str2 == null || str2.trim().length() == 0) {
                throw new IllegalArgumentException(ErrorUtil.getMessage(ErrorUtil.TOKEN_REQUIRED));
            }
            str2 = (String) map.get(MediaService.MEDIA_DELIVERY);
            if (str2 == null || str2.trim().length() == 0) {
                throw new IllegalArgumentException(ErrorUtil.getMessage(ErrorUtil.MEDIA_DELIVERY_REQUIRED));
            }
            this.eventEmitter = eventEmitter;
            this.event = event;
            this.queryBaseURL = str;
            this.options = map;
            this.httpService = new HttpService();
        }
    }

    public URI buildURI(String str, String str2, String str3) {
        Map hashMap = new HashMap(this.options);
        hashMap.put(MediaService.COMMAND, str);
        hashMap.put(str2, str3);
        String str4 = (String) this.options.get(MediaService.VIDEO_FIELDS);
        if (str4 == null) {
            hashMap.put(MediaService.VIDEO_FIELDS, StringUtil.join(VideoFields.DEFAULT_FIELDS, ","));
        } else if (!str4.contains(VideoFields.ACCOUNT_ID)) {
            hashMap.put(MediaService.VIDEO_FIELDS, str4.length() == 0 ? VideoFields.ACCOUNT_ID : str4 + "," + VideoFields.ACCOUNT_ID);
        }
        return HttpService.buildURIWithQueryParameters(this.queryBaseURL, hashMap);
    }

    protected JSONObject doInBackground(URI... uriArr) {
        if (uriArr == null || uriArr.length != 1) {
            throw new IllegalArgumentException(ErrorUtil.getMessage(ErrorUtil.URI_REQUIRED));
        }
        JSONObject jSONObject = null;
        this.uri = uriArr[0];
        try {
            return this.httpService.doJSONGetRequest(this.uri);
        } catch (IOException e) {
            Exception exception = e;
            Log.e(TAG, "IOException: " + exception);
            emitError(String.format(ErrorUtil.getMessage(ErrorUtil.URI_ERROR), new Object[]{this.uri.toString()}), exception);
            return jSONObject;
        } catch (JSONException e2) {
            exception = e2;
            Log.e(TAG, "JSONException" + exception);
            emitError("Not a valid JSON Response", exception);
            return jSONObject;
        }
    }

    protected void emitError(String str, Exception exception) {
        Log.e(TAG, str, exception);
        Map hashMap = new HashMap();
        hashMap.put(ErrorFields.MESSAGE, str + ": " + exception.getMessage());
        this.eventEmitter.emit(ErrorUtil.ERROR, hashMap);
    }

    public void executeWithCommand(String str, String str2, String str3) {
        if (str == null || str.trim().length() == 0) {
            throw new IllegalArgumentException(ErrorUtil.getMessage(ErrorUtil.MEDIA_API_COMMAND_REQUIRED));
        } else if (str2 == null || str2.trim().length() == 0) {
            throw new IllegalArgumentException(ErrorUtil.getMessage(ErrorUtil.ID_FIELD_REQUIRED));
        } else if (str3 == null || str3.trim().length() == 0) {
            throw new IllegalArgumentException(ErrorUtil.getMessage(ErrorUtil.ID_REQUIRED));
        } else {
            execute(new URI[]{buildURI(str, str2, str3)});
        }
    }

    public void executeWithURI(URI uri) {
        if (uri == null) {
            throw new IllegalArgumentException(ErrorUtil.getMessage(ErrorUtil.URI_REQUIRED));
        }
        execute(new URI[]{uri});
    }
}