package com.millennialmedia.android;

import java.util.Map;
import java.util.concurrent.Callable;

class BridgeMMInlineVideo extends MMJSObject {
    private static final String a = "adjustVideo";
    private static final String d = "insertVideo";
    private static final String e = "pauseVideo";
    private static final String f = "playVideo";
    private static final String g = "removeVideo";
    private static final String h = "resumeVideo";
    private static final String i = "setStreamVideoSource";
    private static final String j = "stopVideo";

    class AnonymousClass_1 implements Callable {
        final /* synthetic */ Map a;

        AnonymousClass_1(Map map) {
            this.a = map;
        }

        public MMJSResponse call() {
            MMWebView mMWebView = (MMWebView) BridgeMMInlineVideo.this.c.get();
            if (mMWebView == null) {
                return MMJSResponse.b();
            }
            MMLayout i = mMWebView.i();
            i.b(new InlineParams(this.a, mMWebView.getContext()));
            return MMJSResponse.a("usingStreaming=" + i.r());
        }
    }

    class AnonymousClass_4 implements Callable {
        final /* synthetic */ Map a;

        AnonymousClass_4(Map map) {
            this.a = map;
        }

        public MMJSResponse call() {
            MMWebView mMWebView = (MMWebView) BridgeMMInlineVideo.this.c.get();
            return (mMWebView == null || mMWebView == null || !mMWebView.i().a(new InlineParams(this.a, mMWebView.getContext()))) ? MMJSResponse.b() : MMJSResponse.a();
        }
    }

    class AnonymousClass_8 implements Callable {
        final /* synthetic */ Map a;

        AnonymousClass_8(Map map) {
            this.a = map;
        }

        public MMJSResponse call() {
            MMWebView mMWebView = (MMWebView) BridgeMMInlineVideo.this.c.get();
            if (mMWebView != null) {
                MMLayout i = mMWebView.i();
                String str = (String) this.a.get("streamVideoURI");
                if (!(i == null || str == null)) {
                    i.setVideoSource(str);
                    return MMJSResponse.a();
                }
            }
            return MMJSResponse.b();
        }
    }

    BridgeMMInlineVideo() {
    }

    MMJSResponse a(String str, Map map) {
        if (a.equals(str)) {
            return adjustVideo(map);
        }
        if (d.equals(str)) {
            return insertVideo(map);
        }
        if (e.equals(str)) {
            return pauseVideo(map);
        }
        if (f.equals(str)) {
            return playVideo(map);
        }
        if (g.equals(str)) {
            return removeVideo(map);
        }
        if (h.equals(str)) {
            return resumeVideo(map);
        }
        if (i.equals(str)) {
            return setStreamVideoSource(map);
        }
        return j.equals(str) ? stopVideo(map) : null;
    }

    public MMJSResponse adjustVideo(Map map) {
        return a(new AnonymousClass_4(map));
    }

    public MMJSResponse insertVideo(Map map) {
        return a(new AnonymousClass_1(map));
    }

    public MMJSResponse pauseVideo(Map map) {
        return a(new Callable() {
            public MMJSResponse call() {
                MMWebView mMWebView = (MMWebView) BridgeMMInlineVideo.this.c.get();
                if (mMWebView != null) {
                    MMLayout i = mMWebView.i();
                    if (i != null) {
                        i.p();
                        return MMJSResponse.a();
                    }
                }
                return MMJSResponse.b();
            }
        });
    }

    public MMJSResponse playVideo(Map map) {
        return a(new Callable() {
            public MMJSResponse call() {
                MMWebView mMWebView = (MMWebView) BridgeMMInlineVideo.this.c.get();
                if (mMWebView != null) {
                    MMLayout i = mMWebView.i();
                    if (i != null) {
                        i.n();
                        return MMJSResponse.a();
                    }
                }
                return MMJSResponse.b();
            }
        });
    }

    public MMJSResponse removeVideo(Map map) {
        return a(new Callable() {
            public MMJSResponse call() {
                MMWebView mMWebView = (MMWebView) BridgeMMInlineVideo.this.c.get();
                if (mMWebView != null) {
                    MMLayout i = mMWebView.i();
                    if (i != null) {
                        i.m();
                        return MMJSResponse.a();
                    }
                }
                return MMJSResponse.b();
            }
        });
    }

    public MMJSResponse resumeVideo(Map map) {
        return a(new Callable() {
            public MMJSResponse call() {
                MMWebView mMWebView = (MMWebView) BridgeMMInlineVideo.this.c.get();
                if (mMWebView != null) {
                    MMLayout i = mMWebView.i();
                    if (i != null) {
                        i.q();
                        return MMJSResponse.a();
                    }
                }
                return MMJSResponse.b();
            }
        });
    }

    public MMJSResponse setStreamVideoSource(Map map) {
        return a(new AnonymousClass_8(map));
    }

    public MMJSResponse stopVideo(Map map) {
        return a(new Callable() {
            public MMJSResponse call() {
                MMWebView mMWebView = (MMWebView) BridgeMMInlineVideo.this.c.get();
                if (mMWebView != null) {
                    MMLayout i = mMWebView.i();
                    if (i != null) {
                        i.o();
                        return MMJSResponse.a();
                    }
                }
                return MMJSResponse.b();
            }
        });
    }
}