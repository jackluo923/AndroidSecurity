.class public final enum Lcom/alipay/mobile/framework/service/ext/openplatform/AppStatus;
.super Ljava/lang/Enum;
.source "AppStatus.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alipay/mobile/framework/service/ext/openplatform/AppStatus;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum DOWNLOADING:Lcom/alipay/mobile/framework/service/ext/openplatform/AppStatus;

.field private static final synthetic ENUM$VALUES:[Lcom/alipay/mobile/framework/service/ext/openplatform/AppStatus;

.field public static final enum OFFLINE:Lcom/alipay/mobile/framework/service/ext/openplatform/AppStatus;

.field public static final enum ONLINE:Lcom/alipay/mobile/framework/service/ext/openplatform/AppStatus;

.field public static final enum UNAVAILABLE:Lcom/alipay/mobile/framework/service/ext/openplatform/AppStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 8
    new-instance v0, Lcom/alipay/mobile/framework/service/ext/openplatform/AppStatus;

    const-string/jumbo v1, "ONLINE"

    invoke-direct {v0, v1, v2}, Lcom/alipay/mobile/framework/service/ext/openplatform/AppStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/AppStatus;->ONLINE:Lcom/alipay/mobile/framework/service/ext/openplatform/AppStatus;

    .line 9
    new-instance v0, Lcom/alipay/mobile/framework/service/ext/openplatform/AppStatus;

    const-string/jumbo v1, "UNAVAILABLE"

    invoke-direct {v0, v1, v3}, Lcom/alipay/mobile/framework/service/ext/openplatform/AppStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/AppStatus;->UNAVAILABLE:Lcom/alipay/mobile/framework/service/ext/openplatform/AppStatus;

    .line 10
    new-instance v0, Lcom/alipay/mobile/framework/service/ext/openplatform/AppStatus;

    const-string/jumbo v1, "DOWNLOADING"

    invoke-direct {v0, v1, v4}, Lcom/alipay/mobile/framework/service/ext/openplatform/AppStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/AppStatus;->DOWNLOADING:Lcom/alipay/mobile/framework/service/ext/openplatform/AppStatus;

    .line 11
    new-instance v0, Lcom/alipay/mobile/framework/service/ext/openplatform/AppStatus;

    const-string/jumbo v1, "OFFLINE"

    invoke-direct {v0, v1, v5}, Lcom/alipay/mobile/framework/service/ext/openplatform/AppStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/AppStatus;->OFFLINE:Lcom/alipay/mobile/framework/service/ext/openplatform/AppStatus;

    .line 7
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/alipay/mobile/framework/service/ext/openplatform/AppStatus;

    sget-object v1, Lcom/alipay/mobile/framework/service/ext/openplatform/AppStatus;->ONLINE:Lcom/alipay/mobile/framework/service/ext/openplatform/AppStatus;

    aput-object v1, v0, v2

    sget-object v1, Lcom/alipay/mobile/framework/service/ext/openplatform/AppStatus;->UNAVAILABLE:Lcom/alipay/mobile/framework/service/ext/openplatform/AppStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alipay/mobile/framework/service/ext/openplatform/AppStatus;->DOWNLOADING:Lcom/alipay/mobile/framework/service/ext/openplatform/AppStatus;

    aput-object v1, v0, v4

    sget-object v1, Lcom/alipay/mobile/framework/service/ext/openplatform/AppStatus;->OFFLINE:Lcom/alipay/mobile/framework/service/ext/openplatform/AppStatus;

    aput-object v1, v0, v5

    sput-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/AppStatus;->ENUM$VALUES:[Lcom/alipay/mobile/framework/service/ext/openplatform/AppStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/openplatform/AppStatus;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/alipay/mobile/framework/service/ext/openplatform/AppStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/openplatform/AppStatus;

    return-object v0
.end method

.method public static values()[Lcom/alipay/mobile/framework/service/ext/openplatform/AppStatus;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/AppStatus;->ENUM$VALUES:[Lcom/alipay/mobile/framework/service/ext/openplatform/AppStatus;

    array-length v1, v0

    new-array v2, v1, [Lcom/alipay/mobile/framework/service/ext/openplatform/AppStatus;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
