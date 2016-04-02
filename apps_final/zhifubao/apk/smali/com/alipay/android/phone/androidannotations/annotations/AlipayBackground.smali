.class public interface abstract annotation Lcom/alipay/android/phone/androidannotations/annotations/AlipayBackground;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Lcom/alipay/android/phone/androidannotations/annotations/AlipayBackground;
        cache = "noCache"
        cacheKey = ""
        callback = ""
        concurrency = false
        id = ""
        progress = "no"
        progressMsg = ""
        progressView = ""
        showNetworkError = false
        showNetworkErrorParent = ""
        showNetworkErrorStyle = "underTitle"
    .end subannotation
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->CLASS:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Ljava/lang/annotation/Target;
    value = {
        .enum Ljava/lang/annotation/ElementType;->METHOD:Ljava/lang/annotation/ElementType;
    }
.end annotation


# static fields
.field public static final CACHE:Ljava/lang/String; = "cache"

.field public static final NO_CACHE:Ljava/lang/String; = "noCache"

.field public static final NO_PROGRESS:Ljava/lang/String; = "no"

.field public static final SHOW_ALWAYS:Ljava/lang/String; = "showAlways"

.field public static final SHOW_STYLE_FULLSCREEN:Ljava/lang/String; = "fullScreen"

.field public static final SHOW_STYLE_IN_VIEW:Ljava/lang/String; = "inView"

.field public static final SHOW_STYLE_UNDER_TITLEBAR:Ljava/lang/String; = "underTitle"

.field public static final SHOW_WHEN_NOCACHE:Ljava/lang/String; = "showWhenNoCache"


# virtual methods
.method public abstract cache()Ljava/lang/String;
.end method

.method public abstract cacheKey()Ljava/lang/String;
.end method

.method public abstract callback()Ljava/lang/String;
.end method

.method public abstract concurrency()Z
.end method

.method public abstract id()Ljava/lang/String;
.end method

.method public abstract progress()Ljava/lang/String;
.end method

.method public abstract progressMsg()Ljava/lang/String;
.end method

.method public abstract progressView()Ljava/lang/String;
.end method

.method public abstract showNetworkError()Z
.end method

.method public abstract showNetworkErrorParent()Ljava/lang/String;
.end method

.method public abstract showNetworkErrorStyle()Ljava/lang/String;
.end method
