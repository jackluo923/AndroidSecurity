package com.millennialmedia.android;

import java.util.Stack;

class ComponentRegistry {
    static Stack a;
    static Stack b;
    static Stack c;
    static Stack d;
    static Stack e;
    static Stack f;
    static Stack g;
    static Stack h;
    static Stack i;
    static Stack j;
    static Stack k;

    static {
        a = new Stack();
        b = new Stack();
        c = new Stack();
        d = new Stack();
        e = new Stack();
        f = new Stack();
        g = new Stack();
        h = new Stack();
        i = new Stack();
        j = new Stack();
        k = new Stack();
    }

    ComponentRegistry() {
    }

    static ExampleComponent a() {
        return (ExampleComponent) a(a);
    }

    private static Object a(Stack stack) {
        return stack.isEmpty() ? null : stack.lastElement();
    }

    static void a(BridgeMMBanner bridgeMMBanner) {
        b.push(bridgeMMBanner);
    }

    static void a(BridgeMMCachedVideo bridgeMMCachedVideo) {
        c.push(bridgeMMCachedVideo);
    }

    static void a(BridgeMMCalendar bridgeMMCalendar) {
        d.push(bridgeMMCalendar);
    }

    static void a(BridgeMMDevice bridgeMMDevice) {
        e.push(bridgeMMDevice);
    }

    static void a(BridgeMMInlineVideo bridgeMMInlineVideo) {
        f.push(bridgeMMInlineVideo);
    }

    static void a(BridgeMMInterstitial bridgeMMInterstitial) {
        g.push(bridgeMMInterstitial);
    }

    static void a(BridgeMMMedia bridgeMMMedia) {
        h.push(bridgeMMMedia);
    }

    static void a(BridgeMMNotification bridgeMMNotification) {
        i.push(bridgeMMNotification);
    }

    static void a(BridgeMMSpeechkit bridgeMMSpeechkit) {
        j.push(bridgeMMSpeechkit);
    }

    static void a(ExampleComponent exampleComponent) {
        a.push(exampleComponent);
    }

    static void a(LoggingComponent loggingComponent) {
        k.push(loggingComponent);
    }

    static void a(boolean z) {
        a(z, a);
    }

    private static void a(boolean z, Stack stack) {
        if (!stack.isEmpty()) {
            if (stack.size() != 1 || z) {
                stack.pop();
            }
        }
    }

    static BridgeMMBanner b() {
        return (BridgeMMBanner) a(b);
    }

    static void b(boolean z) {
        a(z, b);
    }

    static BridgeMMCachedVideo c() {
        return (BridgeMMCachedVideo) a(c);
    }

    static void c(boolean z) {
        a(z, c);
    }

    static BridgeMMCalendar d() {
        return (BridgeMMCalendar) a(d);
    }

    static void d(boolean z) {
        a(z, d);
    }

    static BridgeMMDevice e() {
        return (BridgeMMDevice) a(e);
    }

    static void e(boolean z) {
        a(z, e);
    }

    static BridgeMMInlineVideo f() {
        return (BridgeMMInlineVideo) a(f);
    }

    static void f(boolean z) {
        a(z, f);
    }

    static BridgeMMInterstitial g() {
        return (BridgeMMInterstitial) a(g);
    }

    static void g(boolean z) {
        a(z, g);
    }

    static BridgeMMMedia h() {
        return (BridgeMMMedia) a(h);
    }

    static void h(boolean z) {
        a(z, h);
    }

    static BridgeMMNotification i() {
        return (BridgeMMNotification) a(i);
    }

    static void i(boolean z) {
        a(z, i);
    }

    static BridgeMMSpeechkit j() {
        return (BridgeMMSpeechkit) a(j);
    }

    static void j(boolean z) {
        a(z, j);
    }

    static LoggingComponent k() {
        return (LoggingComponent) a(k);
    }

    static void k(boolean z) {
        a(z, k);
    }
}