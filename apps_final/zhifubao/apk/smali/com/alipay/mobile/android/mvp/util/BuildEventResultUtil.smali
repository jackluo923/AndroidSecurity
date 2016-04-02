.class public Lcom/alipay/mobile/android/mvp/util/BuildEventResultUtil;
.super Ljava/lang/Object;
.source "BuildEventResultUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final buildDataEvent4Exception(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/android/mvp/DataEvent;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Exception;",
            "Ljava/lang/String;",
            "TT;)",
            "Lcom/alipay/mobile/android/mvp/DataEvent",
            "<",
            "Lcom/alipay/mobile/android/mvp/model/MvpResult",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 30
    new-instance v1, Lcom/alipay/mobile/android/mvp/DataEvent;

    invoke-direct {v1}, Lcom/alipay/mobile/android/mvp/DataEvent;-><init>()V

    .line 31
    iput-object p1, v1, Lcom/alipay/mobile/android/mvp/DataEvent;->eventCode:Ljava/lang/String;

    .line 32
    new-instance v0, Lcom/alipay/mobile/android/mvp/model/MvpResult;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lcom/alipay/mobile/android/mvp/model/MvpResult;-><init>(Z)V

    iput-object v0, v1, Lcom/alipay/mobile/android/mvp/DataEvent;->data:Ljava/lang/Object;

    .line 33
    iget-object v0, v1, Lcom/alipay/mobile/android/mvp/DataEvent;->data:Ljava/lang/Object;

    check-cast v0, Lcom/alipay/mobile/android/mvp/model/MvpResult;

    iput-object p0, v0, Lcom/alipay/mobile/android/mvp/model/MvpResult;->exception:Ljava/lang/Exception;

    .line 34
    iget-object v0, v1, Lcom/alipay/mobile/android/mvp/DataEvent;->data:Ljava/lang/Object;

    check-cast v0, Lcom/alipay/mobile/android/mvp/model/MvpResult;

    iput-object p2, v0, Lcom/alipay/mobile/android/mvp/model/MvpResult;->value:Ljava/lang/Object;

    .line 35
    return-object v1
.end method

.method public static final buildDataEvent4Suc(Ljava/lang/Object;Ljava/lang/String;)Lcom/alipay/mobile/android/mvp/DataEvent;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/lang/String;",
            ")",
            "Lcom/alipay/mobile/android/mvp/DataEvent",
            "<",
            "Lcom/alipay/mobile/android/mvp/model/MvpResult",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 15
    new-instance v1, Lcom/alipay/mobile/android/mvp/DataEvent;

    invoke-direct {v1}, Lcom/alipay/mobile/android/mvp/DataEvent;-><init>()V

    .line 16
    iput-object p1, v1, Lcom/alipay/mobile/android/mvp/DataEvent;->eventCode:Ljava/lang/String;

    .line 17
    new-instance v0, Lcom/alipay/mobile/android/mvp/model/MvpResult;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Lcom/alipay/mobile/android/mvp/model/MvpResult;-><init>(Z)V

    iput-object v0, v1, Lcom/alipay/mobile/android/mvp/DataEvent;->data:Ljava/lang/Object;

    .line 18
    iget-object v0, v1, Lcom/alipay/mobile/android/mvp/DataEvent;->data:Ljava/lang/Object;

    check-cast v0, Lcom/alipay/mobile/android/mvp/model/MvpResult;

    iput-object p0, v0, Lcom/alipay/mobile/android/mvp/model/MvpResult;->value:Ljava/lang/Object;

    .line 19
    return-object v1
.end method
