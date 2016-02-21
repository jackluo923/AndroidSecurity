package com.google.android.gms.internal;

import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.Drawable.Callback;
import android.graphics.drawable.Drawable.ConstantState;
import android.os.SystemClock;
import com.inmobi.androidsdk.impl.ConfigException;
import com.zeptolab.ctr.scorer.GoogleScorer;

public final class ea extends Drawable implements Callback {
    private boolean AO;
    private int AS;
    private long AT;
    private int AU;
    private int AV;
    private int AW;
    private int AX;
    private int AY;
    private boolean AZ;
    private b Ba;
    private Drawable Bb;
    private Drawable Bc;
    private boolean Bd;
    private boolean Be;
    private boolean Bf;
    private int Bg;

    private static final class a extends Drawable {
        private static final a Bh;
        private static final a Bi;

        private static final class a extends ConstantState {
            private a() {
            }

            public int getChangingConfigurations() {
                return 0;
            }

            public Drawable newDrawable() {
                return Bh;
            }
        }

        static {
            Bh = new a();
            Bi = new a();
        }

        private a() {
        }

        public void draw(Canvas canvas) {
        }

        public ConstantState getConstantState() {
            return Bi;
        }

        public int getOpacity() {
            return ConfigException.MISSING_ACTIVITY_DECLARATION;
        }

        public void setAlpha(int i) {
        }

        public void setColorFilter(ColorFilter colorFilter) {
        }
    }

    static final class b extends ConstantState {
        int Bj;
        int Bk;

        b(b bVar) {
            if (bVar != null) {
                this.Bj = bVar.Bj;
                this.Bk = bVar.Bk;
            }
        }

        public int getChangingConfigurations() {
            return this.Bj;
        }

        public Drawable newDrawable() {
            return new ea(this);
        }
    }

    public ea(Drawable drawable, Drawable drawable2) {
        this(null);
        if (drawable == null) {
            drawable = a.Bh;
        }
        this.Bb = drawable;
        drawable.setCallback(this);
        b bVar = this.Ba;
        bVar.Bk |= drawable.getChangingConfigurations();
        if (drawable2 == null) {
            drawable2 = a.Bh;
        }
        this.Bc = drawable2;
        drawable2.setCallback(this);
        bVar = this.Ba;
        bVar.Bk |= drawable2.getChangingConfigurations();
    }

    ea(b bVar) {
        this.AS = 0;
        this.AW = 255;
        this.AY = 0;
        this.AO = true;
        this.Ba = new b(bVar);
    }

    public boolean canConstantState() {
        if (!this.Bd) {
            boolean z;
            z = this.Bb.getConstantState() != null && this.Bc.getConstantState() != null;
            this.Be = z;
            this.Bd = true;
        }
        return this.Be;
    }

    public Drawable dO() {
        return this.Bc;
    }

    public void draw(Canvas canvas) {
        boolean z = 1;
        int i = 0;
        switch (this.AS) {
            case GoogleScorer.CLIENT_GAMES:
                this.AT = SystemClock.uptimeMillis();
                this.AS = 2;
                break;
            case GoogleScorer.CLIENT_PLUS:
                if (this.AT >= 0) {
                    float uptimeMillis = ((float) (SystemClock.uptimeMillis() - this.AT)) / ((float) this.AX);
                    if (uptimeMillis < 1.0f) {
                        z = false;
                    }
                    if (i != 0) {
                        this.AS = 0;
                    }
                    float min = Math.min(uptimeMillis, 1.0f);
                    this.AY = (int) (min * ((float) (this.AV - this.AU)) + ((float) this.AU));
                }
                i = i;
                break;
            default:
                i = i;
                break;
        }
        int i2 = this.AY;
        boolean z2 = this.AO;
        Drawable drawable = this.Bb;
        Drawable drawable2 = this.Bc;
        if (i != 0) {
            if (!z2 || i2 == 0) {
                drawable.draw(canvas);
            }
            if (i2 == this.AW) {
                drawable2.setAlpha(this.AW);
                drawable2.draw(canvas);
            }
        } else {
            if (z2) {
                drawable.setAlpha(this.AW - i2);
            }
            drawable.draw(canvas);
            if (z2) {
                drawable.setAlpha(this.AW);
            }
            if (i2 > 0) {
                drawable2.setAlpha(i2);
                drawable2.draw(canvas);
                drawable2.setAlpha(this.AW);
            }
            invalidateSelf();
        }
    }

    public int getChangingConfigurations() {
        return (super.getChangingConfigurations() | this.Ba.Bj) | this.Ba.Bk;
    }

    public ConstantState getConstantState() {
        if (!canConstantState()) {
            return null;
        }
        this.Ba.Bj = getChangingConfigurations();
        return this.Ba;
    }

    public int getIntrinsicHeight() {
        return Math.max(this.Bb.getIntrinsicHeight(), this.Bc.getIntrinsicHeight());
    }

    public int getIntrinsicWidth() {
        return Math.max(this.Bb.getIntrinsicWidth(), this.Bc.getIntrinsicWidth());
    }

    public int getOpacity() {
        if (!this.Bf) {
            this.Bg = Drawable.resolveOpacity(this.Bb.getOpacity(), this.Bc.getOpacity());
            this.Bf = true;
        }
        return this.Bg;
    }

    public void invalidateDrawable(Drawable drawable) {
        if (fr.eJ()) {
            Callback callback = getCallback();
            if (callback != null) {
                callback.invalidateDrawable(this);
            }
        }
    }

    public Drawable mutate() {
        if (this.AZ || super.mutate() != this || canConstantState()) {
            this.Bb.mutate();
            this.Bc.mutate();
            this.AZ = true;
        } else {
            throw new IllegalStateException("One or more children of this LayerDrawable does not have constant state; this drawable cannot be mutated.");
        }
        return this;
    }

    protected void onBoundsChange(Rect rect) {
        this.Bb.setBounds(rect);
        this.Bc.setBounds(rect);
    }

    public void scheduleDrawable(Drawable drawable, Runnable runnable, long j) {
        if (fr.eJ()) {
            Callback callback = getCallback();
            if (callback != null) {
                callback.scheduleDrawable(this, runnable, j);
            }
        }
    }

    public void setAlpha(int i) {
        if (this.AY == this.AW) {
            this.AY = i;
        }
        this.AW = i;
        invalidateSelf();
    }

    public void setColorFilter(ColorFilter colorFilter) {
        this.Bb.setColorFilter(colorFilter);
        this.Bc.setColorFilter(colorFilter);
    }

    public void startTransition(int i) {
        this.AU = 0;
        this.AV = this.AW;
        this.AY = 0;
        this.AX = i;
        this.AS = 1;
        invalidateSelf();
    }

    public void unscheduleDrawable(Drawable drawable, Runnable runnable) {
        if (fr.eJ()) {
            Callback callback = getCallback();
            if (callback != null) {
                callback.unscheduleDrawable(this, runnable);
            }
        }
    }
}