package com.andymstone.a;

import javax.microedition.khronos.opengles.GL10;

public interface j {
    public static final k f;
    public static final k g;

    static {
        f = new k(new float[]{0.5f, 0.5f, 0.5f, 1.0f}, new float[]{0.992157f, 0.941176f, 0.807843f, 1.0f}, new float[]{27.9f});
        g = new k(new float[]{0.4f, 0.4f, 0.4f, 1.0f}, new float[]{0.774597f, 0.774597f, 0.774597f, 1.0f}, new float[]{76.8f});
    }

    void a(GL10 gl10);
}