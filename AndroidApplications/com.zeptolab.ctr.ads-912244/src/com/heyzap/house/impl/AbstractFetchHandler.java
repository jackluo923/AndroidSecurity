package com.heyzap.house.impl;

import android.content.Context;
import com.heyzap.house.Manager;
import com.heyzap.house.model.AdCache;
import com.heyzap.house.model.AdModel;
import com.heyzap.house.request.FetchRequest;
import com.heyzap.house.request.FetchRequest.OnFetchResponse;
import com.heyzap.http.JsonHttpResponseHandler;
import com.heyzap.internal.Logger;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;
import org.apache.http.Header;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public abstract class AbstractFetchHandler extends JsonHttpResponseHandler {
    private static final OnFetchResponse DEFAULT_CALLBACK;
    private OnFetchResponse callback;
    private Context context;
    private FetchRequest request;
    private AtomicBoolean sentResponse;

    public class AlreadyInstalledException extends Exception {
        private static final long serialVersionUID = -6895029172770132009L;

        public AlreadyInstalledException(String str) {
            super(str);
        }
    }

    static {
        DEFAULT_CALLBACK = new a();
    }

    public AbstractFetchHandler(Context context, FetchRequest fetchRequest) {
        this.request = fetchRequest;
        this.context = context;
        this.sentResponse = new AtomicBoolean(false);
    }

    public OnFetchResponse getCallback() {
        return this.callback == null ? DEFAULT_CALLBACK : this.callback;
    }

    public Context getContext() {
        return this.context;
    }

    public FetchRequest getFetchRequest() {
        return this.request;
    }

    public void onFailure(int i, Header[] headerArr, Throwable th, JSONArray jSONArray) {
        onFetchReceived(new Throwable("bad_response"));
    }

    public void onFailure(int i, Header[] headerArr, Throwable th, JSONObject jSONObject) {
        onFetchReceived(new Throwable("bad_response"));
    }

    protected void onFailure(Throwable th) {
        if (!this.sentResponse.get()) {
            Logger.format("(FETCH FAILED) Error: %s", new Object[]{th});
            this.sentResponse.set(true);
            Manager.getInstance().getOnStatusListener(Integer.valueOf(getFetchRequest().getAdUnit())).onFailedToFetch(getFetchRequest().getTag());
            getCallback().onFetchResponse(null, getFetchRequest(), th);
        }
    }

    public void onFetchReceived(Throwable th) {
        onFailure(th);
    }

    public final void onFetchReceived(JSONObject jSONObject) {
        try {
            if (!jSONObject.has("status") || jSONObject.isNull("status") || jSONObject.getInt("status") > 200) {
                throw new Exception("bad_response");
            }
            List onFetchSuccess = onFetchSuccess(jSONObject);
            if (onFetchSuccess == null || onFetchSuccess.size() == 0) {
                throw new Exception("no_fill");
            }
            Iterator it = onFetchSuccess.iterator();
            while (it.hasNext()) {
                AdCache.getInstance().put((AdModel) it.next());
            }
            if (shouldFireCallbackOnSuccess().booleanValue()) {
                onSuccess(onFetchSuccess);
            }
        } catch (JSONException e) {
            onFetchReceived(new Throwable("bad_response"));
        } catch (AlreadyInstalledException e2) {
            AlreadyInstalledException alreadyInstalledException = e2;
            FetchRequest fetchRequest = getFetchRequest();
            fetchRequest.setRejectedImpressionId(alreadyInstalledException.getMessage());
            fetchRequest.execute(getContext());
        } catch (Exception e3) {
            onFetchReceived(e3);
        }
    }

    protected abstract List onFetchSuccess(JSONObject jSONObject);

    public void onSuccess(int i, Header[] headerArr, JSONArray jSONArray) {
        onFetchReceived(new Throwable("bad_response"));
    }

    public void onSuccess(int i, Header[] headerArr, JSONObject jSONObject) {
        onFetchReceived(jSONObject);
    }

    protected void onSuccess(List list) {
        if (!this.sentResponse.get()) {
            Logger.format("(FETCH) %s", new Object[]{list});
            this.sentResponse.set(true);
            Manager.getInstance().getOnStatusListener(Integer.valueOf(getFetchRequest().getAdUnit())).onAvailable(getFetchRequest().getTag());
            getCallback().onFetchResponse(list, getFetchRequest(), null);
        }
    }

    public void setCallback(OnFetchResponse onFetchResponse) {
        this.callback = onFetchResponse;
    }

    public Boolean shouldFireCallbackOnSuccess() {
        return Boolean.valueOf(true);
    }
}