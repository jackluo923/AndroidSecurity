.class public Lcom/ali/user/mobile/AppIdDef;
.super Ljava/lang/Object;
.source "AppIdDef.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "UseSparseArrays"
    }
.end annotation


# static fields
.field public static final APPID_ALIPAY_MOBILEAPP:Ljava/lang/String; = "ALIPAY"

.field public static final APPID_ALIPAY_MOBILECASHIER:Ljava/lang/String; = "ALIPAY_MOBILECASHIER"

.field public static final APPID_LAIWANG:Ljava/lang/String; = "LAIWANG"

.field public static final APPID_TAOBAO:Ljava/lang/String; = "TAOBAO"

.field private static a:Lcom/ali/user/mobile/AppIdDef$AppIdIndex;

.field private static final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 15
    sget-object v0, Lcom/ali/user/mobile/AppIdDef$AppIdIndex;->ALIPAY_MOBILEAPP_INDEX:Lcom/ali/user/mobile/AppIdDef$AppIdIndex;

    sput-object v0, Lcom/ali/user/mobile/AppIdDef;->a:Lcom/ali/user/mobile/AppIdDef$AppIdIndex;

    .line 22
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 25
    sput-object v0, Lcom/ali/user/mobile/AppIdDef;->b:Ljava/util/Map;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "ALIPAY"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    sget-object v0, Lcom/ali/user/mobile/AppIdDef;->b:Ljava/util/Map;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "ALIPAY_MOBILECASHIER"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    sget-object v0, Lcom/ali/user/mobile/AppIdDef;->b:Ljava/util/Map;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "TAOBAO"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    sget-object v0, Lcom/ali/user/mobile/AppIdDef;->b:Ljava/util/Map;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "LAIWANG"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static currentAppId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 49
    sget-object v0, Lcom/ali/user/mobile/AppIdDef;->b:Ljava/util/Map;

    sget-object v1, Lcom/ali/user/mobile/AppIdDef;->a:Lcom/ali/user/mobile/AppIdDef$AppIdIndex;

    invoke-virtual {v1}, Lcom/ali/user/mobile/AppIdDef$AppIdIndex;->ordinal()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static currentAppIdIndex()Lcom/ali/user/mobile/AppIdDef$AppIdIndex;
    .locals 1

    .prologue
    .line 53
    sget-object v0, Lcom/ali/user/mobile/AppIdDef;->a:Lcom/ali/user/mobile/AppIdDef$AppIdIndex;

    return-object v0
.end method

.method public static setAppId(Lcom/ali/user/mobile/AppIdDef$AppIdIndex;)V
    .locals 0

    .prologue
    .line 40
    sput-object p0, Lcom/ali/user/mobile/AppIdDef;->a:Lcom/ali/user/mobile/AppIdDef$AppIdIndex;

    .line 41
    return-void
.end method
