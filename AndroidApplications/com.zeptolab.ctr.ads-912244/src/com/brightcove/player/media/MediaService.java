package com.brightcove.player.media;

import android.util.Log;
import com.brightcove.player.event.AbstractComponent;
import com.brightcove.player.event.Component;
import com.brightcove.player.event.Emits;
import com.brightcove.player.event.Event;
import com.brightcove.player.event.EventEmitter;
import com.brightcove.player.event.EventListener;
import com.brightcove.player.event.EventType;
import com.brightcove.player.event.ListensFor;
import com.brightcove.player.media.SourceFields.Containers;
import com.brightcove.player.media.tasks.FindPlaylistTask;
import com.brightcove.player.media.tasks.FindVideoTask;
import com.brightcove.player.model.CuePoint;
import com.brightcove.player.model.Playlist;
import com.brightcove.player.model.Source;
import com.brightcove.player.model.SourceAwareMetadataObject;
import com.brightcove.player.model.SourceCollection;
import com.brightcove.player.model.Video;
import com.brightcove.player.model.Video.Fields;
import com.brightcove.player.util.ErrorUtil;
import com.brightcove.player.util.StringUtil;
import com.google.android.gms.plus.PlusShare;
import java.io.Serializable;
import java.io.UnsupportedEncodingException;
import java.net.URI;
import java.net.URISyntaxException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

@Emits(events = {"error"})
@ListensFor(events = {"findVideo", "findPlaylist"})
public class MediaService extends AbstractComponent implements Component {
    public static final String COMMAND = "command";
    public static final String DEFAULT_MEDIA_DELIVERY = "http";
    public static final String DEFAULT_QUERY_BASE_URL = "http://api.brightcove.com/services/library";
    public static final String FIND_PLAYLIST_BY_ID = "find_playlist_by_id";
    public static final String FIND_PLAYLIST_BY_REFERENCE_ID = "find_playlist_by_reference_id";
    public static final String FIND_VIDEO_BY_ID = "find_video_by_id";
    public static final String FIND_VIDEO_BY_REFERENCE_ID = "find_video_by_reference_id";
    private static final String FLVURL = "FLVURL";
    public static final String HLS_MEDIA_DELIVERY = "http_ios";
    public static final String ID = "id";
    public static final String KK_QUERY_BASE_URL = "http://api.brightcove.co.jp/services/library";
    public static final String MEDIA_DELIVERY = "media_delivery";
    public static final String OPTIONS = "options";
    public static final String PLAYLIST_ID = "playlist_id";
    public static final String REFERENCE_ID = "reference_id";
    public static final String TAG;
    public static final String TOKEN = "token";
    public static final String VIDEO_FIELDS = "video_fields";
    public static final String VIDEO_ID = "video_id";
    private OnFindMediaListener findMediaListener;
    private String queryBaseURL;
    private String readToken;

    private class OnFindMediaListener implements EventListener {
        private OnFindMediaListener() {
        }

        public void processEvent(Event event) {
            Map hashMap = new HashMap();
            hashMap.put(TOKEN, MediaService.this.readToken);
            hashMap.put(MEDIA_DELIVERY, DEFAULT_MEDIA_DELIVERY);
            if (event.properties.containsKey(OPTIONS)) {
                hashMap.putAll((Map) event.properties.get(OPTIONS));
            }
            try {
                if (event.properties.containsKey(Catalog.VIDEO_ID)) {
                    new FindVideoTask(MediaService.this.eventEmitter, event, MediaService.this.queryBaseURL, hashMap).findVideoById((String) event.properties.get(Catalog.VIDEO_ID));
                } else if (event.properties.containsKey(Catalog.VIDEO_REFERENCE_ID)) {
                    new FindVideoTask(MediaService.this.eventEmitter, event, MediaService.this.queryBaseURL, hashMap).findVideoByReferenceId((String) event.properties.get(Catalog.VIDEO_REFERENCE_ID));
                } else if (event.properties.containsKey(Catalog.PLAYLIST_ID)) {
                    new FindPlaylistTask(MediaService.this.eventEmitter, event, MediaService.this.queryBaseURL, hashMap).findPlaylistById((String) event.properties.get(Catalog.PLAYLIST_ID));
                } else if (event.properties.containsKey(Catalog.PLAYLIST_REFERENCE_ID)) {
                    new FindPlaylistTask(MediaService.this.eventEmitter, event, MediaService.this.queryBaseURL, hashMap).findPlaylistByReferenceId((String) event.properties.get(Catalog.PLAYLIST_REFERENCE_ID));
                } else {
                    throw new IllegalArgumentException(ErrorUtil.getMessage(ErrorUtil.KEY_NOT_FOUND));
                }
            } catch (URISyntaxException e) {
                MediaService.this.respondWithError(event, e);
            } catch (UnsupportedEncodingException e2) {
                MediaService.this.respondWithError(event, e2);
            }
        }
    }

    static {
        TAG = MediaService.class.getSimpleName();
    }

    public MediaService(EventEmitter eventEmitter, String str) {
        this(eventEmitter, str, null);
    }

    public MediaService(EventEmitter eventEmitter, String str, String str2) {
        super(eventEmitter, MediaService.class);
        if (str == null || str.trim().length() == 0) {
            throw new IllegalArgumentException(ErrorUtil.getMessage(ErrorUtil.READ_TOKEN_REQUIRED));
        }
        if (str2 == null) {
            str2 = DEFAULT_QUERY_BASE_URL;
        }
        this.readToken = str;
        this.queryBaseURL = str2;
        initializeListeners();
    }

    public static CuePoint buildCuePointFromJSON(JSONObject jSONObject, EventEmitter eventEmitter, List list) {
        String str = null;
        int i = 0;
        if (jSONObject.isNull(CuePointFields.TIME)) {
            list.add(String.format(ErrorUtil.getMessage(ErrorUtil.MISSING_CUE_POINT_PROPERTY), new Object[]{CuePointFields.TIME}));
            return null;
        } else if (jSONObject.isNull(CuePointFields.TYPE_ENUM)) {
            list.add(String.format(ErrorUtil.getMessage(ErrorUtil.MISSING_CUE_POINT_PROPERTY), new Object[]{CuePointFields.TYPE_ENUM}));
            return null;
        } else {
            Iterator keys = jSONObject.keys();
            Map hashMap = new HashMap();
            while (keys.hasNext()) {
                int i2;
                String str2 = (String) keys.next();
                if (str2.equals(CuePointFields.TIME)) {
                    String str3 = str;
                    i2 = jSONObject.getInt(CuePointFields.TIME);
                    str2 = str3;
                } else if (str2.equals(CuePointFields.TYPE_ENUM)) {
                    str2 = jSONObject.getString(CuePointFields.TYPE_ENUM);
                    i2 = i;
                } else {
                    hashMap.put(str2, buildSerializable(jSONObject.get(str2)));
                    str2 = str;
                    i2 = i;
                }
                i = i2;
                str = str2;
            }
            parseJSONProperties(jSONObject, hashMap, Arrays.asList(CuePointFields.DEFAULT_FIELDS));
            return new CuePoint(i, str, hashMap);
        }
    }

    private static SourceCollection buildHLSSourceCollectionFromURL(JSONObject jSONObject, String str) {
        String string = jSONObject.getString(str);
        return string.indexOf(".m3u8") > 0 ? new SourceCollection(new Source(string, DeliveryType.HLS), DeliveryType.HLS) : null;
    }

    public static Playlist buildPlaylistFromJSON(JSONObject jSONObject, EventEmitter eventEmitter, List list) {
        if (jSONObject == null) {
            throw new IllegalArgumentException(ErrorUtil.getMessage(ErrorUtil.JSON_REQUIRED));
        }
        Map hashMap = new HashMap();
        if (!jSONObject.isNull(ID)) {
            hashMap.put(ID, Long.valueOf(jSONObject.getLong(ID)));
        }
        if (!jSONObject.isNull(Fields.REFERENCE_ID)) {
            hashMap.put(Fields.REFERENCE_ID, jSONObject.getString(Fields.REFERENCE_ID));
        }
        if (!jSONObject.isNull(Fields.NAME)) {
            hashMap.put(Fields.NAME, jSONObject.getString(Fields.NAME));
        }
        if (!jSONObject.isNull(Fields.SHORT_DESCRIPTION)) {
            hashMap.put(Fields.SHORT_DESCRIPTION, jSONObject.getString(Fields.SHORT_DESCRIPTION));
        }
        if (!jSONObject.isNull(PlaylistFields.THUMBNAIL_URL)) {
            hashMap.put(PlaylistFields.THUMBNAIL_URL, jSONObject.getString(PlaylistFields.THUMBNAIL_URL));
        }
        List arrayList = new ArrayList();
        if (!jSONObject.isNull(PlaylistFields.VIDEOS)) {
            JSONArray jSONArray = jSONObject.getJSONArray(PlaylistFields.VIDEOS);
            int i = 0;
            while (i < jSONArray.length()) {
                JSONObject jSONObject2 = jSONArray.getJSONObject(i);
                if (jSONObject2 != null) {
                    arrayList.add(buildVideoFromJSON(jSONObject2, eventEmitter, list));
                }
                i++;
            }
        }
        parseJSONProperties(jSONObject, hashMap, Arrays.asList(PlaylistFields.DEFAULT_FIELDS));
        return new Playlist(hashMap, arrayList);
    }

    private static Serializable buildSerializable(Object obj) {
        if (obj instanceof Serializable) {
            return (Serializable) obj;
        }
        if (!(obj instanceof JSONObject)) {
            return null;
        }
        JSONObject jSONObject = (JSONObject) obj;
        HashMap hashMap = new HashMap();
        Iterator keys = jSONObject.keys();
        while (keys.hasNext()) {
            String str = (String) keys.next();
            hashMap.put(str, buildSerializable(jSONObject.get(str)));
        }
        return hashMap;
    }

    private static SourceCollection buildSourceCollectionFromVideoFullLength(JSONObject jSONObject) {
        JSONObject jSONObject2 = jSONObject.getJSONObject(VideoFields.VIDEO_FULL_LENGTH);
        Set hashSet = new HashSet();
        Source buildSourceFromJSON = buildSourceFromJSON(jSONObject2);
        hashSet.add(buildSourceFromJSON);
        return new SourceCollection(hashSet, buildSourceFromJSON.getDeliveryType());
    }

    public static Source buildSourceFromJSON(JSONObject jSONObject) {
        Map hashMap = new HashMap();
        if (!jSONObject.isNull(PlusShare.KEY_CALL_TO_ACTION_URL)) {
            hashMap.put(PlusShare.KEY_CALL_TO_ACTION_URL, jSONObject.getString(PlusShare.KEY_CALL_TO_ACTION_URL));
        }
        if (!jSONObject.isNull(SourceFields.DURATION)) {
            hashMap.put(Fields.DURATION, Long.valueOf(jSONObject.getLong(SourceFields.DURATION)));
        }
        if (!jSONObject.isNull(SourceFields.BIT_RATE)) {
            hashMap.put(Source.Fields.BIT_RATE, Integer.valueOf(jSONObject.getInt(SourceFields.BIT_RATE)));
        }
        if (!jSONObject.isNull(SourceFields.VIDEO_CONTAINER)) {
            int i;
            boolean z;
            String string = jSONObject.getString(SourceFields.VIDEO_CONTAINER);
            try {
                String str = (String) hashMap.get(PlusShare.KEY_CALL_TO_ACTION_URL);
                if (str != null) {
                    str = new URI(str).getScheme();
                    i = (str.equals(DEFAULT_MEDIA_DELIVERY) || str.equals("https")) ? 1 : false;
                } else {
                    z = false;
                }
            } catch (URISyntaxException e) {
                z = false;
            }
            if (i == 0) {
                hashMap.put(SourceAwareMetadataObject.Fields.DELIVERY_TYPE, DeliveryType.UNKNOWN);
            } else if (string.equals(Containers.MP4)) {
                hashMap.put(SourceAwareMetadataObject.Fields.DELIVERY_TYPE, DeliveryType.MP4);
            } else if (string.equals(Containers.M2TS)) {
                hashMap.put(SourceAwareMetadataObject.Fields.DELIVERY_TYPE, DeliveryType.HLS);
            } else if (string.equals(Containers.FLV)) {
                hashMap.put(SourceAwareMetadataObject.Fields.DELIVERY_TYPE, DeliveryType.FLV);
            } else if (string.equals(Containers.WVM)) {
                hashMap.put(SourceAwareMetadataObject.Fields.DELIVERY_TYPE, DeliveryType.WVM);
            } else {
                hashMap.put(SourceAwareMetadataObject.Fields.DELIVERY_TYPE, DeliveryType.UNKNOWN);
            }
        }
        parseJSONProperties(jSONObject, hashMap, Arrays.asList(SourceFields.DEFAULT_FIELDS));
        return new Source(hashMap);
    }

    private static List buildVideoCuePoints(JSONObject jSONObject, EventEmitter eventEmitter, List list) {
        if (jSONObject.isNull(VideoFields.CUE_POINTS)) {
            return null;
        }
        List arrayList = new ArrayList();
        JSONArray jSONArray = jSONObject.getJSONArray(VideoFields.CUE_POINTS);
        int i = 0;
        while (i < jSONArray.length()) {
            arrayList.add(buildCuePointFromJSON(jSONArray.getJSONObject(i), eventEmitter, list));
            i++;
        }
        return arrayList;
    }

    public static Video buildVideoFromJSON(JSONObject jSONObject, EventEmitter eventEmitter, List list) {
        if (jSONObject == null) {
            throw new IllegalArgumentException(ErrorUtil.getMessage(ErrorUtil.JSON_REQUIRED));
        }
        Map buildVideoProperties = buildVideoProperties(jSONObject, list);
        Set buildVideoSourceCollections = buildVideoSourceCollections(jSONObject);
        List buildVideoCuePoints = buildVideoCuePoints(jSONObject, eventEmitter, list);
        parseJSONProperties(jSONObject, buildVideoProperties, Arrays.asList(VideoFields.DEFAULT_FIELDS));
        return buildVideoCuePoints != null ? new Video(buildVideoProperties, buildVideoSourceCollections, buildVideoCuePoints) : new Video(buildVideoProperties, buildVideoSourceCollections);
    }

    private static Map buildVideoProperties(JSONObject jSONObject, List list) {
        Map hashMap = new HashMap();
        if (!jSONObject.isNull(VideoFields.ACCOUNT_ID)) {
            hashMap.put(Fields.PUBLISHER_ID, jSONObject.getString(VideoFields.ACCOUNT_ID));
        }
        if (!jSONObject.isNull(ID)) {
            hashMap.put(ID, Long.valueOf(jSONObject.getLong(ID)));
        }
        if (!jSONObject.isNull(Fields.REFERENCE_ID)) {
            hashMap.put(Fields.REFERENCE_ID, jSONObject.getString(Fields.REFERENCE_ID));
        }
        if (!jSONObject.isNull(Fields.NAME)) {
            hashMap.put(Fields.NAME, jSONObject.getString(Fields.NAME));
        }
        if (!jSONObject.isNull(Fields.SHORT_DESCRIPTION)) {
            hashMap.put(Fields.SHORT_DESCRIPTION, jSONObject.getString(Fields.SHORT_DESCRIPTION));
        }
        if (!jSONObject.isNull(VideoFields.DURATION)) {
            hashMap.put(Fields.DURATION, Integer.valueOf(jSONObject.getInt(VideoFields.DURATION)));
        }
        if (!jSONObject.isNull(VideoFields.VIDEO_STILL_URL)) {
            try {
                hashMap.put(Fields.STILL_IMAGE_URI, new URI(jSONObject.getString(VideoFields.VIDEO_STILL_URL)));
            } catch (URISyntaxException e) {
                String str;
                list.add(String.format(ErrorUtil.getMessage(ErrorUtil.INVALID_URI), new Object[]{str}));
            }
        }
        if (!jSONObject.isNull(Fields.CUSTOM_FIELDS)) {
            JSONObject jSONObject2 = jSONObject.getJSONObject(Fields.CUSTOM_FIELDS);
            Map hashMap2 = new HashMap();
            if (jSONObject2 != null && jSONObject2.length() > 0) {
                Iterator keys = jSONObject2.keys();
                while (keys.hasNext()) {
                    str = (String) keys.next();
                    if (str != null) {
                        hashMap2.put(str, jSONObject2.getString(str));
                    }
                }
                if (hashMap2.size() > 0) {
                    hashMap.put(Fields.CUSTOM_FIELDS, hashMap2);
                }
            }
        }
        return hashMap;
    }

    private static Set buildVideoSourceCollections(JSONObject jSONObject) {
        SourceCollection buildHLSSourceCollectionFromURL;
        DeliveryType deliveryType;
        Set hashSet = new HashSet();
        Set hashSet2 = new HashSet();
        if (!jSONObject.isNull(VideoFields.HLS_URL)) {
            buildHLSSourceCollectionFromURL = buildHLSSourceCollectionFromURL(jSONObject, VideoFields.HLS_URL);
            if (buildHLSSourceCollectionFromURL != null) {
                hashSet.add(buildHLSSourceCollectionFromURL);
                hashSet2.add(DeliveryType.HLS);
            }
        }
        Set renditionSources = getRenditionSources(jSONObject);
        if (!renditionSources.isEmpty()) {
            HashMap hashMap = new HashMap();
            Iterator it = renditionSources.iterator();
            while (it.hasNext()) {
                Source source = (Source) it.next();
                deliveryType = source.getDeliveryType();
                if (!hashSet2.contains(deliveryType)) {
                    if (hashMap.get(deliveryType) == null) {
                        hashMap.put(deliveryType, new HashSet());
                    }
                    ((Set) hashMap.get(deliveryType)).add(source);
                }
            }
            it = hashMap.keySet().iterator();
            while (it.hasNext()) {
                DeliveryType deliveryType2 = (DeliveryType) it.next();
                hashSet.add(new SourceCollection((Set) hashMap.get(deliveryType2), deliveryType2));
                hashSet2.add(deliveryType2);
            }
        }
        if (!jSONObject.isNull(VideoFields.VIDEO_FULL_LENGTH)) {
            buildHLSSourceCollectionFromURL = buildSourceCollectionFromVideoFullLength(jSONObject);
            deliveryType = buildHLSSourceCollectionFromURL.getDeliveryType();
            if (!hashSet2.contains(deliveryType)) {
                hashSet.add(buildHLSSourceCollectionFromURL);
                hashSet2.add(deliveryType);
            }
        }
        if (!(hashSet2.contains(DeliveryType.HLS) || jSONObject.isNull(FLVURL))) {
            buildHLSSourceCollectionFromURL = buildHLSSourceCollectionFromURL(jSONObject, FLVURL);
            if (buildHLSSourceCollectionFromURL != null) {
                hashSet.add(buildHLSSourceCollectionFromURL);
            }
        }
        return hashSet;
    }

    private static Set getRenditionSources(JSONObject jSONObject) {
        Set hashSet = new HashSet();
        hashSet.addAll(getRenditionSources(jSONObject, VideoFields.RENDITIONS));
        hashSet.addAll(getRenditionSources(jSONObject, VideoFields.WVM_RENDITIONS));
        hashSet.addAll(getRenditionSources(jSONObject, VideoFields.IOS_RENDITIONS));
        return hashSet;
    }

    private static Set getRenditionSources(JSONObject jSONObject, String str) {
        Set hashSet = new HashSet();
        JSONArray optJSONArray = jSONObject.optJSONArray(str);
        if (optJSONArray != null) {
            int i = 0;
            while (i < optJSONArray.length()) {
                hashSet.add(buildSourceFromJSON(optJSONArray.getJSONObject(i)));
                i++;
            }
        }
        return hashSet;
    }

    private static void parseJSONProperties(JSONObject jSONObject, Map map, List list) {
        if (jSONObject == null || map == null) {
            throw new IllegalArgumentException(ErrorUtil.getMessage(ErrorUtil.JSON_AND_PROPERTIES_REQUIRED));
        }
        if (list == null) {
            list = new ArrayList();
        }
        Iterator keys = jSONObject.keys();
        while (keys.hasNext()) {
            String str = (String) keys.next();
            if (!(StringUtil.isEmpty(str) || jSONObject.isNull(str) || list.contains(str))) {
                try {
                    map.put(str, jSONObject.getJSONObject(str).toString());
                } catch (JSONException e) {
                    try {
                        map.put(str, jSONObject.getJSONArray(str).toString());
                    } catch (JSONException e2) {
                        map.put(str, jSONObject.getString(str));
                    }
                }
            }
        }
    }

    private void respondWithError(Event event, Exception exception) {
        ArrayList arrayList = new ArrayList();
        Log.e(TAG, "Got unexpected exception attempting to issue Media API request.", exception);
        arrayList.add(String.format(ErrorUtil.getMessage(ErrorUtil.MEDIA_REQUEST_ERROR), new Object[]{exception.getMessage()}));
        event.properties.put(Event.ERRORS, arrayList);
        this.eventEmitter.respond(event);
    }

    protected void initializeListeners() {
        this.findMediaListener = new OnFindMediaListener(null);
        addListener(EventType.FIND_VIDEO, this.findMediaListener);
        addListener(EventType.FIND_PLAYLIST, this.findMediaListener);
    }
}