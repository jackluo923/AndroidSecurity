package com.andymstone.a;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.FloatBuffer;
import java.nio.ShortBuffer;

public class c {
    public static ByteBuffer a(byte[] bArr) {
        ByteBuffer allocateDirect = ByteBuffer.allocateDirect(bArr.length);
        allocateDirect.put(bArr);
        allocateDirect.position(0);
        return allocateDirect;
    }

    public static FloatBuffer a(float[] fArr) {
        return a(fArr, fArr.length);
    }

    public static FloatBuffer a(float[] fArr, int i) {
        ByteBuffer allocateDirect = ByteBuffer.allocateDirect(i * 4);
        allocateDirect.order(ByteOrder.nativeOrder());
        FloatBuffer asFloatBuffer = allocateDirect.asFloatBuffer();
        asFloatBuffer.put(fArr, 0, i);
        asFloatBuffer.position(0);
        return asFloatBuffer;
    }

    public static ShortBuffer a(short[] sArr) {
        return a(sArr, sArr.length);
    }

    public static ShortBuffer a(short[] sArr, int i) {
        ByteBuffer allocateDirect = ByteBuffer.allocateDirect(i * 2);
        allocateDirect.order(ByteOrder.nativeOrder());
        ShortBuffer asShortBuffer = allocateDirect.asShortBuffer();
        asShortBuffer.put(sArr, 0, i);
        asShortBuffer.position(0);
        return asShortBuffer;
    }
}