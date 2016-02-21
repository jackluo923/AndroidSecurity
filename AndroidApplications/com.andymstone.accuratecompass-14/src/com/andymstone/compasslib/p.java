package com.andymstone.compasslib;

class p implements ab {
    float[] a;
    final float b;

    p() {
        this.b = 0.15f;
    }

    public void a(float[] fArr) {
        if (this.a == null) {
            this.a = (float[]) fArr.clone();
        }
        int i = 0;
        while (i < fArr.length) {
            float[] fArr2 = this.a;
            fArr2[i] = fArr2[i] + 0.15f * (fArr[i] - this.a[i]);
            i++;
        }
    }

    public float[] a() {
        return this.a;
    }

    public boolean b() {
        return this.a != null;
    }
}