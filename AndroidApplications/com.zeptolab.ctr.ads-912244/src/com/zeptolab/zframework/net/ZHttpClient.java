package com.zeptolab.zframework.net;

import android.opengl.GLSurfaceView;
import android.os.AsyncTask;
import com.inmobi.commons.analytics.iat.impl.AdTrackerConstants;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import org.apache.http.Header;
import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.NameValuePair;
import org.apache.http.client.ClientProtocolException;
import org.apache.http.client.HttpClient;
import org.apache.http.client.entity.UrlEncodedFormEntity;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.client.methods.HttpUriRequest;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.message.BasicNameValuePair;
import org.apache.http.util.EntityUtils;

public class ZHttpClient {
    private final GLSurfaceView m_view;

    public class GetData {
        private int m_asyncId;
        private String m_lastModified;
        private String m_url;

        public GetData() {
            this.m_asyncId = 0;
            this.m_asyncId = -1;
        }

        public int getAsyncId() {
            return this.m_asyncId;
        }

        public String getLastModified() {
            return this.m_lastModified;
        }

        public String getUrl() {
            return this.m_url;
        }

        public void setAsyncId(int i) {
            this.m_asyncId = i;
        }

        public void setLastModified(String str) {
            this.m_lastModified = str;
        }

        public void setUrl(String str) {
            this.m_url = str;
        }
    }

    public class GetRequestTask extends AsyncTask {

        class AnonymousClass_1 implements Runnable {
            final /* synthetic */ com.zeptolab.zframework.net.ZHttpClient.NetResponse val$response;

            AnonymousClass_1(com.zeptolab.zframework.net.ZHttpClient.NetResponse netResponse) {
                this.val$response = netResponse;
            }

            public void run() {
                com.zeptolab.zframework.net.ZHttpClient.GetRequestTask.this.this$0.nativeAsyncResponse(this.val$response, this.val$response.getAsyncId());
            }
        }

        protected com.zeptolab.zframework.net.ZHttpClient.NetResponse doInBackground(com.zeptolab.zframework.net.ZHttpClient.GetData... getDataArr) {
            return ZHttpClient.this.sendGetRequest(getDataArr[0]);
        }

        protected void onPostExecute(com.zeptolab.zframework.net.ZHttpClient.NetResponse netResponse) {
            super.onPostExecute(netResponse);
            ZHttpClient.this.m_view.queueEvent(new AnonymousClass_1(netResponse));
        }
    }

    public class NetResponse {
        private int m_asyncId;
        private byte[] m_content;
        private String m_lastModified;
        private int m_resultCode;

        public NetResponse() {
            this.m_resultCode = 418;
            this.m_asyncId = -1;
        }

        public int getAsyncId() {
            return this.m_asyncId;
        }

        public byte[] getContent() {
            return this.m_content;
        }

        public String getLastModified() {
            return this.m_lastModified;
        }

        public int getResultCode() {
            return this.m_resultCode;
        }

        public void setAsyncId(int i) {
            this.m_asyncId = i;
        }

        public void setContent(byte[] bArr) {
            this.m_content = bArr;
        }

        public void setLastModified(String str) {
            this.m_lastModified = str;
        }

        public void setResultCode(int i) {
            this.m_resultCode = i;
        }
    }

    public class PostData {
        private int m_asyncId;
        private final List m_content;
        private String m_url;

        public PostData() {
            this.m_asyncId = 0;
            this.m_asyncId = -1;
            this.m_content = new ArrayList();
        }

        public void addContent(NameValuePair nameValuePair) {
            this.m_content.add(nameValuePair);
        }

        public int getAsyncId() {
            return this.m_asyncId;
        }

        public List getContent() {
            return this.m_content;
        }

        public String getUrl() {
            return this.m_url;
        }

        public void setAsyncId(int i) {
            this.m_asyncId = i;
        }

        public void setUrl(String str) {
            this.m_url = str;
        }
    }

    public class PostRequestTask extends AsyncTask {

        class AnonymousClass_1 implements Runnable {
            final /* synthetic */ com.zeptolab.zframework.net.ZHttpClient.NetResponse val$response;

            AnonymousClass_1(com.zeptolab.zframework.net.ZHttpClient.NetResponse netResponse) {
                this.val$response = netResponse;
            }

            public void run() {
                com.zeptolab.zframework.net.ZHttpClient.PostRequestTask.this.this$0.nativeAsyncResponse(this.val$response, this.val$response.getAsyncId());
            }
        }

        protected com.zeptolab.zframework.net.ZHttpClient.NetResponse doInBackground(com.zeptolab.zframework.net.ZHttpClient.PostData... postDataArr) {
            return ZHttpClient.this.sendPostRequest(postDataArr[0]);
        }

        protected void onPostExecute(com.zeptolab.zframework.net.ZHttpClient.NetResponse netResponse) {
            ZHttpClient.this.m_view.queueEvent(new AnonymousClass_1(netResponse));
        }
    }

    public ZHttpClient(GLSurfaceView gLSurfaceView) {
        this.m_view = gLSurfaceView;
    }

    private NetResponse sendGetRequest(GetData getData) {
        NetResponse netResponse = new NetResponse();
        try {
            HttpClient defaultHttpClient = new DefaultHttpClient();
            HttpUriRequest httpGet = new HttpGet(getData.getUrl());
            httpGet.setHeader("If-Modified-Since", getData.getLastModified());
            HttpResponse execute = defaultHttpClient.execute(httpGet);
            HttpEntity entity = execute.getEntity();
            netResponse.setResultCode(execute.getStatusLine().getStatusCode());
            if (entity != null) {
                netResponse.setContent(EntityUtils.toByteArray(entity));
            }
            Header[] allHeaders = execute.getAllHeaders();
            int length = allHeaders.length;
            int i = 0;
            while (i < length) {
                Header header = allHeaders[i];
                if (header.getName().equalsIgnoreCase("Last-Modified")) {
                    netResponse.setLastModified(header.getValue());
                }
                i++;
            }
        } catch (ClientProtocolException e) {
            e.printStackTrace();
        } catch (IOException e2) {
            e2.printStackTrace();
        }
        netResponse.setAsyncId(getData.getAsyncId());
        return netResponse;
    }

    private NetResponse sendPostRequest(PostData postData) {
        NetResponse netResponse = new NetResponse();
        try {
            HttpClient defaultHttpClient = new DefaultHttpClient();
            HttpUriRequest httpPost = new HttpPost(postData.getUrl());
            httpPost.setEntity(new UrlEncodedFormEntity(postData.getContent()));
            HttpResponse execute = defaultHttpClient.execute(httpPost);
            HttpEntity entity = execute.getEntity();
            netResponse.setResultCode(execute.getStatusLine().getStatusCode());
            if (entity != null) {
                netResponse.setContent(EntityUtils.toByteArray(entity));
            }
        } catch (ClientProtocolException e) {
            e.printStackTrace();
        } catch (IOException e2) {
            e2.printStackTrace();
        }
        netResponse.setAsyncId(postData.getAsyncId());
        return netResponse;
    }

    public void getAsync(String str, int i) {
        getAsync(str, null, i);
    }

    public void getAsync(String str, String str2, int i) {
        GetData getData = new GetData();
        getData.setAsyncId(i);
        getData.setUrl(str);
        if (str2 == null) {
            str2 = AdTrackerConstants.BLANK;
        }
        getData.setLastModified(str2);
        new GetRequestTask().execute(new GetData[]{getData});
    }

    public NetResponse getSync(String str) {
        return getSync(str, null);
    }

    public NetResponse getSync(String str, String str2) {
        GetData getData = new GetData();
        getData.setUrl(str);
        if (str2 == null) {
            str2 = AdTrackerConstants.BLANK;
        }
        getData.setLastModified(str2);
        return sendGetRequest(getData);
    }

    public native void nativeAsyncResponse(NetResponse netResponse, int i);

    public void postAsync(String str, String[] strArr, int i) {
        PostData postData = new PostData();
        postData.setAsyncId(i);
        postData.setUrl(str);
        if (strArr != null && strArr.length > 0) {
            int length = strArr.length;
            int i2 = 0;
            while (i2 < length) {
                String[] split = strArr[i2].trim().split(":");
                postData.addContent(new BasicNameValuePair(split[0], split[1]));
                i2++;
            }
        }
        new PostRequestTask().execute(new PostData[]{postData});
    }

    public NetResponse postSync(String str, String[] strArr) {
        PostData postData = new PostData();
        postData.setUrl(str);
        if (strArr != null && strArr.length > 0) {
            int length = strArr.length;
            int i = 0;
            while (i < length) {
                String[] split = strArr[i].trim().split(":");
                postData.addContent(new BasicNameValuePair(split[0], split[1]));
                i++;
            }
        }
        return sendPostRequest(postData);
    }
}