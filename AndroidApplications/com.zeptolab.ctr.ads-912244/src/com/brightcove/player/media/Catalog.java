package com.brightcove.player.media;

import com.brightcove.player.event.Component;
import com.brightcove.player.event.Emits;
import com.brightcove.player.event.Event;
import com.brightcove.player.event.EventEmitter;
import com.brightcove.player.event.EventEmitterImpl;
import com.brightcove.player.event.EventListener;
import com.brightcove.player.event.EventType;
import com.brightcove.player.event.ListensFor;
import com.brightcove.player.model.Playlist;
import com.brightcove.player.model.Video;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

@Emits(events = {"findPlaylist", "findVideo"})
@ListensFor(events = {"error"})
public class Catalog implements Component {
    public static final String PLAYLIST_ID = "playlistID";
    public static final String PLAYLIST_REFERENCE_ID = "playlistReferenceID";
    public static final String VIDEO_ID = "videoID";
    public static final String VIDEO_REFERENCE_ID = "videoReferenceID";
    private EventEmitter eventEmitter;
    private MediaService mediaService;

    private class OnFindPlaylistListener implements EventListener {
        private PlaylistListener playlistListener;

        public OnFindPlaylistListener(PlaylistListener playlistListener) {
            this.playlistListener = playlistListener;
        }

        public void processEvent(Event event) {
            List list = (List) event.properties.get(Event.ERRORS);
            if (list == null || list.isEmpty()) {
                this.playlistListener.onPlaylist((Playlist) event.properties.get(Event.PLAYLIST));
            } else {
                Iterator it = list.iterator();
                while (it.hasNext()) {
                    this.playlistListener.onError((String) it.next());
                }
            }
        }
    }

    private class OnFindVideoListener implements EventListener {
        private VideoListener videoListener;

        public OnFindVideoListener(VideoListener videoListener) {
            this.videoListener = videoListener;
        }

        public void processEvent(Event event) {
            List list = (List) event.properties.get(Event.ERRORS);
            if (list == null || list.isEmpty()) {
                this.videoListener.onVideo((Video) event.properties.get(Event.VIDEO));
            } else {
                Iterator it = list.iterator();
                while (it.hasNext()) {
                    this.videoListener.onError((String) it.next());
                }
            }
        }
    }

    public Catalog(String str) {
        this.eventEmitter = new EventEmitterImpl();
        this.mediaService = new MediaService(this.eventEmitter, str);
    }

    public Catalog(String str, String str2) {
        this.eventEmitter = new EventEmitterImpl();
        this.mediaService = new MediaService(this.eventEmitter, str, str2);
    }

    public void findPlaylistByID(String str, PlaylistListener playlistListener) {
        findPlaylistByID(str, null, playlistListener);
    }

    public void findPlaylistByID(String str, Map map, PlaylistListener playlistListener) {
        Map hashMap = new HashMap();
        hashMap.put(PLAYLIST_ID, str);
        if (map != null) {
            hashMap.put(MediaService.OPTIONS, map);
        }
        this.eventEmitter.request(EventType.FIND_PLAYLIST, hashMap, new OnFindPlaylistListener(playlistListener));
    }

    public void findPlaylistByReferenceID(String str, PlaylistListener playlistListener) {
        findPlaylistByReferenceID(str, null, playlistListener);
    }

    public void findPlaylistByReferenceID(String str, Map map, PlaylistListener playlistListener) {
        Map hashMap = new HashMap();
        hashMap.put(PLAYLIST_REFERENCE_ID, str);
        if (map != null) {
            hashMap.put(MediaService.OPTIONS, map);
        }
        this.eventEmitter.request(EventType.FIND_PLAYLIST, hashMap, new OnFindPlaylistListener(playlistListener));
    }

    public void findVideoByID(String str, VideoListener videoListener) {
        findVideoByID(str, null, videoListener);
    }

    public void findVideoByID(String str, Map map, VideoListener videoListener) {
        Map hashMap = new HashMap();
        hashMap.put(VIDEO_ID, str);
        if (map != null) {
            hashMap.put(MediaService.OPTIONS, map);
        }
        this.eventEmitter.request(EventType.FIND_VIDEO, hashMap, new OnFindVideoListener(videoListener));
    }

    public void findVideoByReferenceID(String str, VideoListener videoListener) {
        findVideoByReferenceID(str, null, videoListener);
    }

    public void findVideoByReferenceID(String str, Map map, VideoListener videoListener) {
        Map hashMap = new HashMap();
        hashMap.put(VIDEO_REFERENCE_ID, str);
        if (map != null) {
            hashMap.put(MediaService.OPTIONS, map);
        }
        this.eventEmitter.request(EventType.FIND_VIDEO, hashMap, new OnFindVideoListener(videoListener));
    }

    public EventEmitter getEventEmitter() {
        return this.eventEmitter;
    }

    public void setEventEmitter(EventEmitter eventEmitter) {
        this.eventEmitter = eventEmitter;
    }
}