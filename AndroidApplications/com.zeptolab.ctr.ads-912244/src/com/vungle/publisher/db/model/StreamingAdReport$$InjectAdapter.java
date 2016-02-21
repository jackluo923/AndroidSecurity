package com.vungle.publisher.db.model;

import a.a.b;
import a.a.l;
import com.vungle.publisher.db.model.StreamingAdReport.Factory;
import java.util.Set;
import javax.inject.Provider;

public final class StreamingAdReport$$InjectAdapter extends b implements a.b, Provider {
    private b a;
    private b b;
    private b c;

    public StreamingAdReport$$InjectAdapter() {
        super("com.vungle.publisher.db.model.StreamingAdReport", "members/com.vungle.publisher.db.model.StreamingAdReport", false, StreamingAdReport.class);
    }

    public final void attach(l lVar) {
        this.a = lVar.a("com.vungle.publisher.db.model.StreamingAdReport$Factory", (Object)StreamingAdReport.class, getClass().getClassLoader());
        this.b = lVar.a("com.vungle.publisher.db.model.StreamingAdPlay$Factory", (Object)StreamingAdReport.class, getClass().getClassLoader());
        this.c = lVar.a("members/com.vungle.publisher.db.model.AdReport", StreamingAdReport.class, getClass().getClassLoader(), false, true);
    }

    public final StreamingAdReport get() {
        StreamingAdReport streamingAdReport = new StreamingAdReport();
        injectMembers(streamingAdReport);
        return streamingAdReport;
    }

    public final void getDependencies(Set set, Set set2) {
        set2.add(this.a);
        set2.add(this.b);
        set2.add(this.c);
    }

    public final void injectMembers(StreamingAdReport streamingAdReport) {
        streamingAdReport.s = (Factory) this.a.get();
        streamingAdReport.t = (Factory) this.b.get();
        this.c.injectMembers(streamingAdReport);
    }
}