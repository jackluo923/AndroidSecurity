package com.google.android.gms.common.images;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.widget.ImageView;
import android.widget.TextView;
import com.google.android.gms.common.images.ImageManager.OnImageLoadedListener;
import com.google.android.gms.internal.ea;
import com.google.android.gms.internal.eb;
import com.google.android.gms.internal.ec;
import com.google.android.gms.internal.ed;
import com.google.android.gms.internal.ep;
import com.google.android.gms.internal.fr;
import com.zeptolab.ctr.billing.google.utils.IabHelper;
import com.zeptolab.ctr.scorer.GoogleScorer;
import java.lang.ref.WeakReference;

public final class a {
    final a AF;
    private int AG;
    private int AH;
    int AI;
    private int AJ;
    private WeakReference AK;
    private WeakReference AL;
    private WeakReference AM;
    private int AN;
    private boolean AO;
    private boolean AP;
    private int AQ;

    public static final class a {
        public final Uri uri;

        public a(Uri uri) {
            this.uri = uri;
        }

        public boolean equals(com.google.android.gms.common.images.a.a aVar) {
            if (!(aVar instanceof com.google.android.gms.common.images.a.a)) {
                return false;
            }
            return this == aVar || aVar.hashCode() == hashCode();
        }

        public int hashCode() {
            return ep.hashCode(new Object[]{this.uri});
        }
    }

    public a(int i) {
        this.AG = 0;
        this.AH = 0;
        this.AN = -1;
        this.AO = true;
        this.AP = false;
        this.AF = new a(null);
        this.AH = i;
    }

    public a(Uri uri) {
        this.AG = 0;
        this.AH = 0;
        this.AN = -1;
        this.AO = true;
        this.AP = false;
        this.AF = new a(uri);
        this.AH = 0;
    }

    private ea a_(Drawable drawable, Drawable drawable2) {
        if (drawable == null) {
            drawable = null;
        } else if (drawable instanceof ea) {
            drawable = ((ea) drawable).dO();
        }
        return new ea(drawable, drawable2);
    }

    private void a_(Drawable drawable, boolean z, boolean z2, boolean z3) {
        switch (this.AI) {
            case GoogleScorer.CLIENT_GAMES:
                if (!z2) {
                    OnImageLoadedListener onImageLoadedListener = (OnImageLoadedListener) this.AK.get();
                    if (onImageLoadedListener != null) {
                        onImageLoadedListener.onImageLoaded(this.AF.uri, drawable, z3);
                    }
                }
            case GoogleScorer.CLIENT_PLUS:
                ImageView imageView = (ImageView) this.AL.get();
                if (imageView != null) {
                    a(imageView, drawable, z, z2, z3);
                }
            case IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE:
                TextView textView = (TextView) this.AM.get();
                if (textView != null) {
                    a(textView, this.AN, drawable, z, z2);
                }
            default:
                break;
        }
    }

    private void a_(ImageView imageView, Drawable drawable, boolean z, boolean z2, boolean z3) {
        Drawable a;
        if (z2 || z3) {
            boolean z4 = false;
        } else {
            int i = 1;
        }
        if (i != 0 && imageView instanceof ec) {
            int dQ = ((ec) imageView).dQ();
            if (this.AH != 0 && dQ == this.AH) {
                return;
            }
        }
        boolean b = b(z, z2);
        a = b ? a(imageView.getDrawable(), drawable) : drawable;
        imageView.setImageDrawable(a);
        if (imageView instanceof ec) {
            ec ecVar = (ec) imageView;
            ecVar.d(z3 ? this.AF.uri : null);
            ecVar.N(i != 0 ? this.AH : 0);
        }
        if (b) {
            ((ea) a).startTransition(250);
        }
    }

    private void a_(TextView textView, int i, Drawable drawable, boolean z, boolean z2) {
        Drawable[] compoundDrawablesRelative;
        boolean b = b(z, z2);
        compoundDrawablesRelative = fr.eO() ? textView.getCompoundDrawablesRelative() : textView.getCompoundDrawables();
        Drawable drawable2 = compoundDrawablesRelative[i];
        if (b) {
            ea a = a(drawable2, drawable);
        } else {
            drawable2 = drawable;
        }
        Drawable drawable3 = i == 0 ? drawable2 : compoundDrawablesRelative[0];
        Drawable drawable4 = i == 1 ? drawable2 : compoundDrawablesRelative[1];
        Drawable drawable5 = i == 2 ? drawable2 : compoundDrawablesRelative[2];
        Drawable drawable6 = i == 3 ? drawable2 : compoundDrawablesRelative[3];
        if (fr.eO()) {
            textView.setCompoundDrawablesRelativeWithIntrinsicBounds(drawable3, drawable4, drawable5, drawable6);
        } else {
            textView.setCompoundDrawablesWithIntrinsicBounds(drawable3, drawable4, drawable5, drawable6);
        }
        if (b) {
            ((ea) drawable2).startTransition(250);
        }
    }

    private boolean b(boolean z, boolean z2) {
        return this.AO && !z2 && (!z || this.AP);
    }

    public void L(int i) {
        this.AH = i;
    }

    void a_(Context context, Bitmap bitmap, boolean z) {
        ed.d(bitmap);
        if ((this.AQ & 1) != 0) {
            bitmap = eb.a(bitmap);
        }
        a(new BitmapDrawable(context.getResources(), bitmap), z, false, true);
    }

    public void a_(ImageView imageView) {
        ed.d(imageView);
        this.AK = null;
        this.AL = new WeakReference(imageView);
        this.AM = null;
        this.AN = -1;
        this.AI = 2;
        this.AJ = imageView.hashCode();
    }

    public void a_(OnImageLoadedListener onImageLoadedListener) {
        ed.d(onImageLoadedListener);
        this.AK = new WeakReference(onImageLoadedListener);
        this.AL = null;
        this.AM = null;
        this.AN = -1;
        this.AI = 1;
        this.AJ = ep.hashCode(new Object[]{onImageLoadedListener, this.AF});
    }

    void b(Context context, boolean z) {
        Drawable drawable = null;
        if (this.AH != 0) {
            Resources resources = context.getResources();
            drawable = resources.getDrawable(this.AH);
            if ((this.AQ & 1) != 0) {
                drawable = eb.a(resources, drawable);
            }
        }
        a(drawable, z, false, false);
    }

    public boolean equals(a aVar) {
        if (!(aVar instanceof a)) {
            return false;
        }
        return this == aVar || aVar.hashCode() == hashCode();
    }

    public int hashCode() {
        return this.AJ;
    }

    void x(Context context) {
        Drawable drawable = null;
        if (this.AG != 0) {
            Resources resources = context.getResources();
            drawable = resources.getDrawable(this.AG);
            if ((this.AQ & 1) != 0) {
                drawable = eb.a(resources, drawable);
            }
        }
        a(drawable, false, true, false);
    }
}