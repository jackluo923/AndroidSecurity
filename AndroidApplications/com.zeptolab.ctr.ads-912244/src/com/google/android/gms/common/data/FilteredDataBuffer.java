package com.google.android.gms.common.data;

import android.os.Bundle;
import com.google.android.gms.internal.ed;

public abstract class FilteredDataBuffer extends DataBuffer {
    protected final DataBuffer mDataBuffer;

    public FilteredDataBuffer(DataBuffer dataBuffer) {
        super(null);
        ed.d(dataBuffer);
        ed.a(!(dataBuffer instanceof FilteredDataBuffer), "Not possible to have nested FilteredDataBuffers.");
        this.mDataBuffer = dataBuffer;
    }

    public void close() {
        this.mDataBuffer.close();
    }

    protected abstract int computeRealPosition(int i);

    public Object get(int i) {
        return this.mDataBuffer.get(computeRealPosition(i));
    }

    public Bundle getMetadata() {
        return this.mDataBuffer.getMetadata();
    }

    public boolean isClosed() {
        return this.mDataBuffer.isClosed();
    }
}