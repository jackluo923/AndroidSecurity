package com.millennialmedia.android;

class BannerWebViewClient extends MMWebViewClient {
    BannerWebViewClient(MMWebViewClientListener mMWebViewClientListener, RedirectionListenerImpl redirectionListenerImpl) {
        super(mMWebViewClientListener, redirectionListenerImpl);
    }

    void a(MMWebView mMWebView) {
        mMWebView.n();
        mMWebView.o();
        mMWebView.t();
    }
}