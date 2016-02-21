package com.millennialmedia.android;

class InterstitialWebViewClient extends MMWebViewClient {
    InterstitialWebViewClient(MMWebViewClientListener mMWebViewClientListener, RedirectionListenerImpl redirectionListenerImpl) {
        super(mMWebViewClientListener, redirectionListenerImpl);
    }

    void a(MMWebView mMWebView) {
        mMWebView.m();
        mMWebView.o();
        mMWebView.t();
    }
}