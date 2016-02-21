package com.vungle.publisher.service;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import com.vungle.log.Logger;
import com.vungle.publisher.bz;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public abstract class BaseHandler extends Handler implements bz, com.vungle.publisher.bz.a.a {
    final com.vungle.publisher.bz.a a;
    final int b;
    final List c;
    int d;

    public static interface a {
        void a_(int i);

        void a_(int i, int i2);

        void b(int i);

        void b(int i, int i2);

        void c(int i);

        void d(int i);

        void e(int i);
    }

    protected BaseHandler(Looper looper, com.vungle.publisher.bz.a aVar) {
        super(looper);
        this.c = new ArrayList();
        this.a = aVar;
        this.b = 30;
    }

    private boolean a() {
        return !hasMessages(1) && !hasMessages(-1);
    }

    public void a(int i) {
        Iterator it = this.c.iterator();
        while (it.hasNext()) {
            ((a) it.next()).b(i);
        }
        getLooper().quit();
        it = this.c.iterator();
        while (it.hasNext()) {
            ((a) it.next()).a(i);
        }
    }

    public void a(int i, int i2) {
        Iterator it = this.c.iterator();
        while (it.hasNext()) {
            ((a) it.next()).a(i, i2);
        }
    }

    protected abstract void a(Message message);

    public final void a(a... aVarArr) {
        int i = 0;
        while (i <= 0) {
            this.c.add(aVarArr[0]);
            i++;
        }
    }

    public void b(int i, int i2) {
        Iterator it = this.c.iterator();
        while (it.hasNext()) {
            ((a) it.next()).b(i, i2);
        }
        getLooper().quit();
        it = this.c.iterator();
        while (it.hasNext()) {
            ((a) it.next()).a(i);
        }
    }

    public void handleMessage(Message message) {
        try {
            if (message.what != -1) {
                int i = message.arg1;
                this.d = i;
                Iterator it = this.c.iterator();
                while (it.hasNext()) {
                    ((a) it.next()).d(i);
                }
                a(message);
                it = this.c.iterator();
                while (it.hasNext()) {
                    ((a) it.next()).e(i);
                }
                if (a()) {
                    sendEmptyMessageDelayed(-1, (long) (this.b * 1000));
                    Iterator it2 = this.c.iterator();
                    while (it2.hasNext()) {
                        ((a) it2.next()).c(this.d);
                    }
                }
            } else if (a()) {
                this.a.b(this.d, this);
            }
        } catch (Exception e) {
            Logger.e(Logger.SERVICE_TAG, e);
        }
    }
}