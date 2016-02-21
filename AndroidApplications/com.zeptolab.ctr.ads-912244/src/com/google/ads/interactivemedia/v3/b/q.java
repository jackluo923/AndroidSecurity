package com.google.ads.interactivemedia.v3.b;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.AsyncTask;
import android.util.Log;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.ImageView;
import com.google.ads.interactivemedia.v3.b.a.c;
import com.google.ads.interactivemedia.v3.b.r.b;
import java.net.URL;
import java.util.HashMap;
import java.util.Map;

public final class q extends ImageView implements OnClickListener {
    private final c a;
    private final s b;
    private final String c;

    public q(Context context, s sVar, c cVar, String str) {
        super(context);
        this.b = sVar;
        this.a = cVar;
        this.c = str;
        setOnClickListener(this);
        new AsyncTask() {
            Exception a;

            {
                this.a = null;
            }

            private Bitmap a() {
                try {
                    return BitmapFactory.decodeStream(new URL(q.this.a.src).openConnection().getInputStream());
                } catch (Exception e) {
                    this.a = e;
                    return null;
                }
            }

            protected final /* synthetic */ Object doInBackground(Object[] objArr) {
                return a();
            }

            protected final /* synthetic */ void onPostExecute(Object obj) {
                Bitmap bitmap = (Bitmap) obj;
                if (bitmap == null) {
                    Log.e("IMASDK", new StringBuilder("Loading image companion ").append(q.this.a.src).append(" failed: ").append(this.a).toString());
                } else {
                    q.b(q.this);
                    q.this.setImageBitmap(bitmap);
                }
            }
        }.execute(new Void[0]);
    }

    static /* synthetic */ void b(q qVar) {
        Map hashMap = new HashMap();
        hashMap.put("companionId", qVar.a.companionId);
        qVar.b.b(new r(b.displayContainer, r.c.companionView, qVar.c, hashMap));
    }

    public final void onClick(View view) {
        this.b.b(this.a.clickThroughUrl);
    }
}