package defpackage;

import com.loopj.android.http.AsyncHttpResponseHandler;

final class b extends AsyncHttpResponseHandler {
    b() {
    }

    public void onSuccess(String str) {
        System.out.println(str);
    }
}