.class public abstract Lcom/alipay/mobile/framework/service/ext/wealth/home/WealthHomeService;
.super Lcom/alipay/mobile/framework/service/ext/ExternalService;
.source "WealthHomeService.java"


# static fields
.field public static final KEY_FAMILY_RELATIONS:Ljava/lang/String; = "FAMILY_RELATIONS"

.field public static final KEY_LAST_DAY_INCOME:Ljava/lang/String; = "LAST_DAY_INCOME"

.field public static final KEY_TOTAL_AMOUNT:Ljava/lang/String; = "TOTAL_AMOUNT"

.field public static final REFRESH_INTENT_ACTION:Ljava/lang/String; = "com.alipay.android.phone.wealth.home.rpcfinish"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/alipay/mobile/framework/service/ext/ExternalService;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getWealthHomeInfo()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 22
    return-void
.end method

.method protected onDestroy(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 27
    return-void
.end method

.method public abstract refreshWealthHomeInfo()V
.end method
