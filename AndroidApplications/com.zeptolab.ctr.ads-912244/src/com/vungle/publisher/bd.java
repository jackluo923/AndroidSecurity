package com.vungle.publisher;

import android.content.Context;
import com.vungle.publisher.env.WrapperFramework;
import com.vungle.publisher.image.BitmapFactory;

public interface bd {
    void a(Context context, String str);

    void a(Class cls);

    void b(Class cls);

    void setBitmapFactory(BitmapFactory bitmapFactory);

    void setWrapperFramework(WrapperFramework wrapperFramework);

    void setWrapperFrameworkVersion(String str);
}