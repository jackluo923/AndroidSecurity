package com.brightcove.player.media.tasks;

import com.brightcove.player.event.Component;
import com.brightcove.player.event.Emits;
import com.brightcove.player.event.Event;
import com.brightcove.player.event.EventEmitter;
import com.brightcove.player.event.ListensFor;
import com.brightcove.player.media.MediaService;
import com.brightcove.player.util.ErrorUtil;
import java.util.ArrayList;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

@Emits(events = {})
@ListensFor(events = {})
public class FindVideoTask extends FindMediaTask implements Component {
    public FindVideoTask(EventEmitter eventEmitter, Event event, String str, Map map) {
        super(eventEmitter, event, str, map);
    }

    public void findVideoById(String str) {
        executeWithCommand(MediaService.FIND_VIDEO_BY_ID, MediaService.VIDEO_ID, str);
    }

    public void findVideoByReferenceId(String str) {
        executeWithCommand(MediaService.FIND_VIDEO_BY_REFERENCE_ID, MediaService.REFERENCE_ID, str);
    }

    protected void onPostExecute(JSONObject jSONObject) {
        ArrayList arrayList = new ArrayList();
        if (jSONObject == null) {
            arrayList.add("No data was found that matched your request. " + this.uri);
        } else if (jSONObject.isNull(ErrorUtil.ERROR)) {
            try {
                this.event.properties.put(Event.VIDEO, MediaService.buildVideoFromJSON(jSONObject, this.eventEmitter, arrayList));
            } catch (JSONException e) {
                arrayList.add(String.format(ErrorUtil.getMessage(ErrorUtil.MEDIA_REQUEST_INVALID_JSON), new Object[]{this.uri}));
            } catch (IllegalArgumentException e2) {
                arrayList.add(String.format(ErrorUtil.getMessage(ErrorUtil.MEDIA_REQUEST_NO_JSON), new Object[]{this.uri}));
            }
        } else {
            try {
                arrayList.add(jSONObject.getString(ErrorUtil.ERROR));
            } catch (JSONException e3) {
                arrayList.add(String.format(ErrorUtil.getMessage(ErrorUtil.MEDIA_REQUEST_INVALID_JSON), new Object[]{this.uri}));
            }
        }
        this.event.properties.put(Event.ERRORS, arrayList);
        this.eventEmitter.respond(this.event);
    }
}