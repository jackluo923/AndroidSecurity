package com.heyzap.internal;

import android.graphics.Rect;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;

public class NinePatchChunk {
    public static final int NO_COLOR = 1;
    public static final int TRANSPARENT_COLOR = 0;
    public int[] mColor;
    public int[] mDivX;
    public int[] mDivY;
    public Rect mPaddings;

    public NinePatchChunk() {
        this.mPaddings = new Rect();
    }

    private static void checkDivCount(int i) {
        if (i == 0 || (i & 1) != 0) {
            throw new RuntimeException("invalid nine-patch: " + i);
        }
    }

    public static NinePatchChunk deserialize(byte[] bArr) {
        ByteBuffer order = ByteBuffer.wrap(bArr).order(ByteOrder.nativeOrder());
        if (order.get() == 0) {
            return null;
        }
        NinePatchChunk ninePatchChunk = new NinePatchChunk();
        ninePatchChunk.mDivX = new int[order.get()];
        ninePatchChunk.mDivY = new int[order.get()];
        ninePatchChunk.mColor = new int[order.get()];
        checkDivCount(ninePatchChunk.mDivX.length);
        checkDivCount(ninePatchChunk.mDivY.length);
        order.getInt();
        order.getInt();
        ninePatchChunk.mPaddings.left = order.getInt();
        ninePatchChunk.mPaddings.right = order.getInt();
        ninePatchChunk.mPaddings.top = order.getInt();
        ninePatchChunk.mPaddings.bottom = order.getInt();
        order.getInt();
        readIntArray(ninePatchChunk.mDivX, order);
        readIntArray(ninePatchChunk.mDivY, order);
        readIntArray(ninePatchChunk.mColor, order);
        return ninePatchChunk;
    }

    private static void readIntArray(int[] iArr, ByteBuffer byteBuffer) {
        int i = 0;
        int length = iArr.length;
        while (i < length) {
            iArr[i] = byteBuffer.getInt();
            i++;
        }
    }
}