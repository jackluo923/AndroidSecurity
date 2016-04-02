.class public interface abstract Lcom/alipay/android/phone/globalsearch/api/QueryListener;
.super Ljava/lang/Object;
.source "QueryListener.java"


# virtual methods
.method public abstract doQuery(Lcom/alipay/android/phone/globalsearch/api/IndexResult;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract doQuery(Lcom/alipay/android/phone/globalsearch/api/IndexResult;Ljava/lang/String;)V
.end method

.method public abstract doQuery(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/android/phone/globalsearch/api/IndexResult;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract doQuery(Ljava/util/List;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/android/phone/globalsearch/api/IndexResult;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation
.end method
