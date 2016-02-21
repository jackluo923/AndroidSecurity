package com.heyzap.http;

import android.util.Log;
import com.zeptolab.utils.HTMLEncoder;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import org.apache.http.HttpEntity;
import org.apache.http.client.entity.UrlEncodedFormEntity;
import org.apache.http.client.utils.URLEncodedUtils;
import org.apache.http.message.BasicNameValuePair;

public class RequestParams {
    protected static final String LOG_TAG = "RequestParams";
    protected String contentEncoding;
    protected ConcurrentHashMap fileParams;
    protected boolean isRepeatable;
    protected ConcurrentHashMap streamParams;
    protected ConcurrentHashMap urlParams;
    protected ConcurrentHashMap urlParamsWithObjects;
    protected boolean useJsonStreamer;

    public static class FileWrapper {
        public String contentType;
        public File file;

        public FileWrapper(File file, String str) {
            this.file = file;
            this.contentType = str;
        }
    }

    public static class StreamWrapper {
        public String contentType;
        public InputStream inputStream;
        public String name;

        public StreamWrapper(InputStream inputStream, String str, String str2) {
            this.inputStream = inputStream;
            this.name = str;
            this.contentType = str2;
        }
    }

    public RequestParams() {
        this((Map) 0);
    }

    public RequestParams(String str, String str2) {
        this(new s(str, str2));
    }

    public RequestParams(Map map) {
        this.contentEncoding = HTMLEncoder.ENCODE_NAME_DEFAULT;
        init();
        if (map != null) {
            Iterator it = map.entrySet().iterator();
            while (it.hasNext()) {
                Entry entry = (Entry) it.next();
                put((String) entry.getKey(), (String) entry.getValue());
            }
        }
    }

    public RequestParams(Object... objArr) {
        this.contentEncoding = HTMLEncoder.ENCODE_NAME_DEFAULT;
        init();
        int length = objArr.length;
        if (length % 2 != 0) {
            throw new IllegalArgumentException("Supplied arguments must be even");
        }
        int i = 0;
        while (i < length) {
            put(String.valueOf(objArr[i]), String.valueOf(objArr[i + 1]));
            i += 2;
        }
    }

    private HttpEntity createFormEntity() {
        try {
            return new UrlEncodedFormEntity(getParamsList(), this.contentEncoding);
        } catch (UnsupportedEncodingException e) {
            Log.e(LOG_TAG, "createFormEntity failed", e);
            return null;
        }
    }

    private HttpEntity createJsonStreamerEntity() {
        boolean z;
        z = !this.fileParams.isEmpty() || !this.streamParams.isEmpty();
        HttpEntity qVar = new q(z);
        Iterator it = this.urlParams.entrySet().iterator();
        while (it.hasNext()) {
            Entry entry = (Entry) it.next();
            qVar.a((String) entry.getKey(), entry.getValue());
        }
        it = this.urlParamsWithObjects.entrySet().iterator();
        while (it.hasNext()) {
            entry = (Entry) it.next();
            qVar.a((String) entry.getKey(), entry.getValue());
        }
        it = this.fileParams.entrySet().iterator();
        while (it.hasNext()) {
            entry = (Entry) it.next();
            FileWrapper fileWrapper = (FileWrapper) entry.getValue();
            qVar.a((String) entry.getKey(), new FileInputStream(fileWrapper.file), fileWrapper.file.getName(), fileWrapper.contentType);
        }
        it = this.streamParams.entrySet().iterator();
        while (it.hasNext()) {
            entry = (Entry) it.next();
            StreamWrapper streamWrapper = (StreamWrapper) entry.getValue();
            if (streamWrapper.inputStream != null) {
                qVar.a((String) entry.getKey(), streamWrapper.inputStream, streamWrapper.name, streamWrapper.contentType);
            }
        }
        return qVar;
    }

    private HttpEntity createMultipartEntity(ResponseHandlerInterface responseHandlerInterface) {
        HttpEntity uVar = new u(responseHandlerInterface);
        uVar.a(this.isRepeatable);
        Iterator it = this.urlParams.entrySet().iterator();
        while (it.hasNext()) {
            Entry entry = (Entry) it.next();
            uVar.a((String) entry.getKey(), (String) entry.getValue());
        }
        Iterator it2 = getParamsList(null, this.urlParamsWithObjects).iterator();
        while (it2.hasNext()) {
            BasicNameValuePair basicNameValuePair = (BasicNameValuePair) it2.next();
            uVar.a(basicNameValuePair.getName(), basicNameValuePair.getValue());
        }
        it = this.streamParams.entrySet().iterator();
        while (it.hasNext()) {
            entry = (Entry) it.next();
            StreamWrapper streamWrapper = (StreamWrapper) entry.getValue();
            if (streamWrapper.inputStream != null) {
                uVar.a((String) entry.getKey(), streamWrapper.name, streamWrapper.inputStream, streamWrapper.contentType);
            }
        }
        it = this.fileParams.entrySet().iterator();
        while (it.hasNext()) {
            entry = (Entry) it.next();
            FileWrapper fileWrapper = (FileWrapper) entry.getValue();
            uVar.a((String) entry.getKey(), fileWrapper.file, fileWrapper.contentType);
        }
        return uVar;
    }

    private List getParamsList(String str, Object obj) {
        List linkedList = new LinkedList();
        if (obj instanceof Map) {
            Map map = (Map) obj;
            List arrayList = new ArrayList(map.keySet());
            Collections.sort(arrayList);
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                String str2 = (String) it.next();
                Object obj2 = map.get(str2);
                if (obj2 != null) {
                    if (str != null) {
                        str2 = String.format("%s[%s]", new Object[]{str, str2});
                    }
                    linkedList.addAll(getParamsList(str2, obj2));
                }
            }
        } else if (obj instanceof List) {
            it = ((List) obj).iterator();
            while (it.hasNext()) {
                linkedList.addAll(getParamsList(String.format("%s[]", new Object[]{str}), it.next()));
            }
        } else if (obj instanceof Object[]) {
            Object[] objArr = (Object[]) obj;
            int length = objArr.length;
            int i = 0;
            while (i < length) {
                linkedList.addAll(getParamsList(String.format("%s[]", new Object[]{str}), objArr[i]));
                i++;
            }
        } else if (obj instanceof Set) {
            it = ((Set) obj).iterator();
            while (it.hasNext()) {
                linkedList.addAll(getParamsList(str, it.next()));
            }
        } else if (obj instanceof String) {
            linkedList.add(new BasicNameValuePair(str, (String) obj));
        }
        return linkedList;
    }

    private void init() {
        this.urlParams = new ConcurrentHashMap();
        this.streamParams = new ConcurrentHashMap();
        this.fileParams = new ConcurrentHashMap();
        this.urlParamsWithObjects = new ConcurrentHashMap();
    }

    public void add(String str, String str2) {
        if (str != null && str2 != null) {
            HashSet hashSet = this.urlParamsWithObjects.get(str);
            if (hashSet == null) {
                Object hashSet2 = new HashSet();
                put(str, hashSet2);
            }
            if (hashSet instanceof List) {
                ((List) hashSet).add(str2);
            } else if (hashSet instanceof Set) {
                hashSet.add(str2);
            }
        }
    }

    public Boolean containsKey(String str) {
        boolean z = false;
        if (str == null) {
            return Boolean.valueOf(false);
        }
        if (this.urlParams.containsKey(str) || this.urlParamsWithObjects.containsKey(str)) {
            z = true;
        }
        return Boolean.valueOf(z);
    }

    public String get(String str) {
        if (str == null) {
            return null;
        }
        try {
            return (String) this.urlParams.get(str);
        } catch (NullPointerException e) {
            return null;
        }
    }

    public HttpEntity getEntity(ResponseHandlerInterface responseHandlerInterface) {
        if (this.useJsonStreamer) {
            return createJsonStreamerEntity();
        }
        return (this.streamParams.isEmpty() && this.fileParams.isEmpty()) ? createFormEntity() : createMultipartEntity(responseHandlerInterface);
    }

    protected String getParamString() {
        return URLEncodedUtils.format(getParamsList(), this.contentEncoding);
    }

    protected List getParamsList() {
        List linkedList = new LinkedList();
        Iterator it = this.urlParams.entrySet().iterator();
        while (it.hasNext()) {
            Entry entry = (Entry) it.next();
            linkedList.add(new BasicNameValuePair((String) entry.getKey(), (String) entry.getValue()));
        }
        linkedList.addAll(getParamsList(null, this.urlParamsWithObjects));
        return linkedList;
    }

    public void put(String str, File file) {
        put(str, file, null);
    }

    public void put(String str, File file, String str2) {
        if (file == null || !file.exists()) {
            throw new FileNotFoundException();
        } else if (str != null) {
            this.fileParams.put(str, new FileWrapper(file, str2));
        }
    }

    public void put(String str, InputStream inputStream) {
        put(str, inputStream, null);
    }

    public void put(String str, InputStream inputStream, String str2) {
        put(str, inputStream, str2, null);
    }

    public void put(String str, InputStream inputStream, String str2, String str3) {
        if (str != null && inputStream != null) {
            this.streamParams.put(str, new StreamWrapper(inputStream, str2, str3));
        }
    }

    public void put(String str, Integer num) {
        if (str != null && num != null) {
            this.urlParamsWithObjects.put(str, String.valueOf(num));
        }
    }

    public void put(String str, Object obj) {
        if (str != null && obj != null) {
            this.urlParamsWithObjects.put(str, obj);
        }
    }

    public void put(String str, String str2) {
        if (str != null && str2 != null) {
            this.urlParams.put(str, str2);
        }
    }

    public void remove(String str) {
        this.urlParams.remove(str);
        this.streamParams.remove(str);
        this.fileParams.remove(str);
        this.urlParamsWithObjects.remove(str);
    }

    public void setContentEncoding(String str) {
        if (str != null) {
            this.contentEncoding = str;
        }
    }

    public void setHttpEntityIsRepeatable(boolean z) {
        this.isRepeatable = z;
    }

    public void setUseJsonStreamer(boolean z) {
        this.useJsonStreamer = z;
    }

    public String toString() {
        StringBuilder stringBuilder = new StringBuilder();
        Iterator it = this.urlParams.entrySet().iterator();
        while (it.hasNext()) {
            Entry entry = (Entry) it.next();
            if (stringBuilder.length() > 0) {
                stringBuilder.append("&");
            }
            stringBuilder.append((String) entry.getKey());
            stringBuilder.append("=");
            stringBuilder.append((String) entry.getValue());
        }
        Iterator it2 = this.streamParams.entrySet().iterator();
        while (it2.hasNext()) {
            entry = (Entry) it2.next();
            if (stringBuilder.length() > 0) {
                stringBuilder.append("&");
            }
            stringBuilder.append((String) entry.getKey());
            stringBuilder.append("=");
            stringBuilder.append("STREAM");
        }
        it2 = this.fileParams.entrySet().iterator();
        while (it2.hasNext()) {
            entry = (Entry) it2.next();
            if (stringBuilder.length() > 0) {
                stringBuilder.append("&");
            }
            stringBuilder.append((String) entry.getKey());
            stringBuilder.append("=");
            stringBuilder.append("FILE");
        }
        it2 = getParamsList(null, this.urlParamsWithObjects).iterator();
        while (it2.hasNext()) {
            BasicNameValuePair basicNameValuePair = (BasicNameValuePair) it2.next();
            if (stringBuilder.length() > 0) {
                stringBuilder.append("&");
            }
            stringBuilder.append(basicNameValuePair.getName());
            stringBuilder.append("=");
            stringBuilder.append(basicNameValuePair.getValue());
        }
        return stringBuilder.toString();
    }
}