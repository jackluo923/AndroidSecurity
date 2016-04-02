.class public Lcom/alipay/mobile/android/mvp/model/MvpResult;
.super Ljava/lang/Object;
.source "MvpResult.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final SYSTEM_ERROR:Ljava/lang/String; = "SYSTEM_ERROR"


# instance fields
.field private a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public exception:Ljava/lang/Exception;

.field public resultCode:Ljava/lang/String;

.field public resultMessage:Ljava/lang/String;

.field public success:Z

.field public value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput-boolean p1, p0, Lcom/alipay/mobile/android/mvp/model/MvpResult;->success:Z

    .line 74
    return-void
.end method

.method public static final makeExceptionResult(Ljava/lang/Exception;Ljava/lang/Object;)Lcom/alipay/mobile/android/mvp/model/MvpResult;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Exception;",
            "TT;)",
            "Lcom/alipay/mobile/android/mvp/model/MvpResult",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 64
    new-instance v0, Lcom/alipay/mobile/android/mvp/model/MvpResult;

    invoke-direct {v0}, Lcom/alipay/mobile/android/mvp/model/MvpResult;-><init>()V

    .line 65
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/alipay/mobile/android/mvp/model/MvpResult;->success:Z

    .line 66
    iput-object p0, v0, Lcom/alipay/mobile/android/mvp/model/MvpResult;->exception:Ljava/lang/Exception;

    .line 67
    iput-object p1, v0, Lcom/alipay/mobile/android/mvp/model/MvpResult;->value:Ljava/lang/Object;

    .line 68
    return-object v0
.end method

.method public static final makeFailResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/android/mvp/model/MvpResult;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "TT;)",
            "Lcom/alipay/mobile/android/mvp/model/MvpResult",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 48
    new-instance v0, Lcom/alipay/mobile/android/mvp/model/MvpResult;

    invoke-direct {v0}, Lcom/alipay/mobile/android/mvp/model/MvpResult;-><init>()V

    .line 49
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/alipay/mobile/android/mvp/model/MvpResult;->success:Z

    .line 50
    iput-object p0, v0, Lcom/alipay/mobile/android/mvp/model/MvpResult;->resultCode:Ljava/lang/String;

    .line 51
    iput-object p1, v0, Lcom/alipay/mobile/android/mvp/model/MvpResult;->resultMessage:Ljava/lang/String;

    .line 52
    iput-object p2, v0, Lcom/alipay/mobile/android/mvp/model/MvpResult;->value:Ljava/lang/Object;

    .line 53
    return-object v0
.end method

.method public static final makeSuccessResult(Ljava/lang/Object;)Lcom/alipay/mobile/android/mvp/model/MvpResult;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lcom/alipay/mobile/android/mvp/model/MvpResult",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 33
    new-instance v0, Lcom/alipay/mobile/android/mvp/model/MvpResult;

    invoke-direct {v0}, Lcom/alipay/mobile/android/mvp/model/MvpResult;-><init>()V

    .line 34
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/alipay/mobile/android/mvp/model/MvpResult;->success:Z

    .line 35
    iput-object p0, v0, Lcom/alipay/mobile/android/mvp/model/MvpResult;->value:Ljava/lang/Object;

    .line 36
    return-object v0
.end method


# virtual methods
.method public getExtMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 80
    iget-object v0, p0, Lcom/alipay/mobile/android/mvp/model/MvpResult;->a:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/alipay/mobile/android/mvp/model/MvpResult;->a:Ljava/util/Map;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/android/mvp/model/MvpResult;->a:Ljava/util/Map;

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/android/mvp/model/MvpResult;->a:Ljava/util/Map;

    return-object v0
.end method
