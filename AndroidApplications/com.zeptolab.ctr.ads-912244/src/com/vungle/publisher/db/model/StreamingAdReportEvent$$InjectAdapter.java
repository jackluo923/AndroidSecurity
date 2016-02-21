package com.vungle.publisher.db.model;

import a.a.b;
import a.a.l;
import java.util.Set;
import javax.inject.Provider;

public final class StreamingAdReportEvent$$InjectAdapter extends b implements a.b, Provider {
    private b a;
    private b b;

    public StreamingAdReportEvent$$InjectAdapter() {
        super("com.vungle.publisher.db.model.StreamingAdReportEvent", "members/com.vungle.publisher.db.model.StreamingAdReportEvent", false, StreamingAdReportEvent.class);
    }

    public final void attach(l lVar) {
        this.a = lVar.a("com.vungle.publisher.db.model.StreamingAdReportEvent$Factory", (Object)StreamingAdReportEvent.class, getClass().getClassLoader());
        this.b = lVar.a("members/com.vungle.publisher.db.model.AdReportEvent", StreamingAdReportEvent.class, getClass().getClassLoader(), false, true);
    }

    public final StreamingAdReportEvent get() {
        StreamingAdReportEvent streamingAdReportEvent = new StreamingAdReportEvent();
        injectMembers(streamingAdReportEvent);
        return streamingAdReportEvent;
    }

    public final void getDependencies(Set set, Set set2) {
        set2.add(this.a);
        set2.add(this.b);
    }

    public final void injectMembers(StreamingAdReportEvent streamingAdReportEvent) {
        streamingAdReportEvent.e = (Factory) this.a.get();
        this.b.injectMembers(streamingAdReportEvent);
    }
}