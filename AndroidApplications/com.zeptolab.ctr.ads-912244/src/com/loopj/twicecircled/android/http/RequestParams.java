package com.loopj.twicecircled.android.http;

import com.zeptolab.utils.HTMLEncoder;
import java.io.File;
import java.io.FileInputStream;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.concurrent.ConcurrentHashMap;
import org.apache.http.HttpEntity;
import org.apache.http.client.entity.UrlEncodedFormEntity;
import org.apache.http.client.utils.URLEncodedUtils;
import org.apache.http.message.BasicNameValuePair;

public class RequestParams {
    private static String ENCODING;
    protected ConcurrentHashMap fileParams;
    protected ConcurrentHashMap urlParams;
    protected ConcurrentHashMap urlParamsWithArray;

    private static class FileWrapper {
        public String contentType;
        public String fileName;
        public InputStream inputStream;

        public FileWrapper(InputStream inputStream, String str, String str2) {
            this.inputStream = inputStream;
            this.fileName = str;
            this.contentType = str2;
        }

        public String getFileName() {
            return this.fileName != null ? this.fileName : "nofilename";
        }
    }

    static {
        ENCODING = HTMLEncoder.ENCODE_NAME_DEFAULT;
    }

    public RequestParams() {
        init();
    }

    public RequestParams(String str, String str2) {
        init();
        put(str, str2);
    }

    public RequestParams(Map map) {
        init();
        Iterator it = map.entrySet().iterator();
        while (it.hasNext()) {
            Entry entry = (Entry) it.next();
            put((String) entry.getKey(), (String) entry.getValue());
        }
    }

    public RequestParams(Object... objArr) {
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

    private void init() {
        this.urlParams = new ConcurrentHashMap();
        this.fileParams = new ConcurrentHashMap();
        this.urlParamsWithArray = new ConcurrentHashMap();
    }

    public HttpEntity getEntity() {
        if (this.fileParams.isEmpty()) {
            try {
                return new UrlEncodedFormEntity(getParamsList(), ENCODING);
            } catch (UnsupportedEncodingException e) {
                e.printStackTrace();
                return null;
            }
        }
        HttpEntity simpleMultipartEntity = new SimpleMultipartEntity();
        Iterator it = this.urlParams.entrySet().iterator();
        while (it.hasNext()) {
            Entry entry = (Entry) it.next();
            simpleMultipartEntity.addPart((String) entry.getKey(), (String) entry.getValue());
        }
        int size = this.fileParams.entrySet().size() - 1;
        Iterator it2 = this.fileParams.entrySet().iterator();
        int i = 0;
        while (it2.hasNext()) {
            entry = (Entry) it2.next();
            FileWrapper fileWrapper = (FileWrapper) entry.getValue();
            if (fileWrapper.inputStream != null) {
                boolean z;
                z = i == size;
                if (fileWrapper.contentType != null) {
                    simpleMultipartEntity.addPart((String) entry.getKey(), fileWrapper.getFileName(), fileWrapper.inputStream, fileWrapper.contentType, z);
                } else {
                    simpleMultipartEntity.addPart((String) entry.getKey(), fileWrapper.getFileName(), fileWrapper.inputStream, z);
                }
            }
            i++;
        }
        Iterator it3 = this.urlParamsWithArray.entrySet().iterator();
        while (it3.hasNext()) {
            entry = (Entry) it3.next();
            Iterator it4 = ((ArrayList) entry.getValue()).iterator();
            while (it4.hasNext()) {
                simpleMultipartEntity.addPart((String) entry.getKey(), (String) it4.next());
            }
        }
        return simpleMultipartEntity;
    }

    protected String getParamString() {
        return URLEncodedUtils.format(getParamsList(), ENCODING);
    }

    protected List getParamsList() {
        List linkedList = new LinkedList();
        Iterator it = this.urlParams.entrySet().iterator();
        while (it.hasNext()) {
            Entry entry = (Entry) it.next();
            linkedList.add(new BasicNameValuePair((String) entry.getKey(), (String) entry.getValue()));
        }
        Iterator it2 = this.urlParamsWithArray.entrySet().iterator();
        while (it2.hasNext()) {
            entry = (Entry) it2.next();
            Iterator it3 = ((ArrayList) entry.getValue()).iterator();
            while (it3.hasNext()) {
                linkedList.add(new BasicNameValuePair((String) entry.getKey(), (String) it3.next()));
            }
        }
        return linkedList;
    }

    public void put(String str, File file) {
        put(str, new FileInputStream(file), file.getName());
    }

    public void put(String str, InputStream inputStream) {
        put(str, inputStream, null);
    }

    public void put(String str, InputStream inputStream, String str2) {
        put(str, inputStream, str2, null);
    }

    public void put(String str, InputStream inputStream, String str2, String str3) {
        if (str != null && inputStream != null) {
            this.fileParams.put(str, new FileWrapper(inputStream, str2, str3));
        }
    }

    public void put(String str, String str2) {
        if (str != null && str2 != null) {
            this.urlParams.put(str, str2);
        }
    }

    public void put(String str, ArrayList arrayList) {
        if (str != null && arrayList != null) {
            this.urlParamsWithArray.put(str, arrayList);
        }
    }

    public void remove(String str) {
        this.urlParams.remove(str);
        this.fileParams.remove(str);
        this.urlParamsWithArray.remove(str);
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
        Iterator it2 = this.fileParams.entrySet().iterator();
        while (it2.hasNext()) {
            entry = (Entry) it2.next();
            if (stringBuilder.length() > 0) {
                stringBuilder.append("&");
            }
            stringBuilder.append((String) entry.getKey());
            stringBuilder.append("=");
            stringBuilder.append("FILE");
        }
        Iterator it3 = this.urlParamsWithArray.entrySet().iterator();
        while (it3.hasNext()) {
            entry = (Entry) it3.next();
            if (stringBuilder.length() > 0) {
                stringBuilder.append("&");
            }
            ArrayList arrayList = (ArrayList) entry.getValue();
            Iterator it4 = arrayList.iterator();
            while (it4.hasNext()) {
                String str = (String) it4.next();
                if (arrayList.indexOf(str) != 0) {
                    stringBuilder.append("&");
                }
                stringBuilder.append((String) entry.getKey());
                stringBuilder.append("=");
                stringBuilder.append(str);
            }
        }
        return stringBuilder.toString();
    }
}