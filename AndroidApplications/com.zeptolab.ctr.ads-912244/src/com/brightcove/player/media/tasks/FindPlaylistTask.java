package com.brightcove.player.media.tasks;

import com.brightcove.player.event.Event;
import com.brightcove.player.event.EventEmitter;
import com.brightcove.player.media.MediaService;
import com.brightcove.player.util.ErrorUtil;
import java.util.ArrayList;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

public class FindPlaylistTask extends FindMediaTask {
    public FindPlaylistTask(EventEmitter eventEmitter, Event event, String str, Map map) {
        super(eventEmitter, event, str, map);
    }

    public void findPlaylistById(String str) {
        executeWithCommand(MediaService.FIND_PLAYLIST_BY_ID, MediaService.PLAYLIST_ID, str);
    }

    public void findPlaylistByReferenceId(String str) {
        executeWithCommand(MediaService.FIND_PLAYLIST_BY_REFERENCE_ID, MediaService.REFERENCE_ID, str);
    }

    protected void onPostExecute(JSONObject jSONObject) {
        ArrayList arrayList = new ArrayList();
        if (jSONObject == null) {
            arrayList.add(String.format(ErrorUtil.getMessage(ErrorUtil.MEDIA_REQUEST_NO_RESULTS), new Object[]{this.uri}));
        } else if (jSONObject.isNull(ErrorUtil.ERROR)) {
            try {
                this.event.properties.put(Event.PLAYLIST, MediaService.buildPlaylistFromJSON(jSONObject, this.eventEmitter, arrayList));
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