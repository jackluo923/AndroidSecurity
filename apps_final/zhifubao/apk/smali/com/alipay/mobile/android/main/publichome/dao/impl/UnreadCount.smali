.class public Lcom/alipay/mobile/android/main/publichome/dao/impl/UnreadCount;
.super Ljava/lang/Object;
.source "UnreadCount.java"


# instance fields
.field public dotCount:I

.field public numberCount:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput v0, p0, Lcom/alipay/mobile/android/main/publichome/dao/impl/UnreadCount;->numberCount:I

    .line 8
    iput v0, p0, Lcom/alipay/mobile/android/main/publichome/dao/impl/UnreadCount;->dotCount:I

    .line 6
    return-void
.end method
