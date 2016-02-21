package com.millennialmedia.android;

class BannerExpandedWebViewClient extends MMWebViewClient {
    BannerExpandedWebViewClient(MMWebViewClientListener mMWebViewClientListener, RedirectionListenerImpl redirectionListenerImpl) {
        super(mMWebViewClientListener, redirectionListenerImpl);
    }

    void a(MMWebView mMWebView) {
        mMWebView.n();
        mMWebView.s();
        mMWebView.t();
    }
}