.class public final enum Lcom/alipay/mobile/rome/syncsdk/transport/connection/proxy/ProxyInfo$ProxyType;
.super Ljava/lang/Enum;
.source "ProxyInfo.java"


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/alipay/mobile/rome/syncsdk/transport/connection/proxy/ProxyInfo$ProxyType;

.field public static final enum HTTP:Lcom/alipay/mobile/rome/syncsdk/transport/connection/proxy/ProxyInfo$ProxyType;

.field public static final enum NONE:Lcom/alipay/mobile/rome/syncsdk/transport/connection/proxy/ProxyInfo$ProxyType;

.field public static final enum SOCKS:Lcom/alipay/mobile/rome/syncsdk/transport/connection/proxy/ProxyInfo$ProxyType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 14
    new-instance v0, Lcom/alipay/mobile/rome/syncsdk/transport/connection/proxy/ProxyInfo$ProxyType;

    const-string/jumbo v1, "NONE"

    invoke-direct {v0, v1, v2}, Lcom/alipay/mobile/rome/syncsdk/transport/connection/proxy/ProxyInfo$ProxyType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/mobile/rome/syncsdk/transport/connection/proxy/ProxyInfo$ProxyType;->NONE:Lcom/alipay/mobile/rome/syncsdk/transport/connection/proxy/ProxyInfo$ProxyType;

    new-instance v0, Lcom/alipay/mobile/rome/syncsdk/transport/connection/proxy/ProxyInfo$ProxyType;

    const-string/jumbo v1, "HTTP"

    invoke-direct {v0, v1, v3}, Lcom/alipay/mobile/rome/syncsdk/transport/connection/proxy/ProxyInfo$ProxyType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/mobile/rome/syncsdk/transport/connection/proxy/ProxyInfo$ProxyType;->HTTP:Lcom/alipay/mobile/rome/syncsdk/transport/connection/proxy/ProxyInfo$ProxyType;

    new-instance v0, Lcom/alipay/mobile/rome/syncsdk/transport/connection/proxy/ProxyInfo$ProxyType;

    const-string/jumbo v1, "SOCKS"

    invoke-direct {v0, v1, v4}, Lcom/alipay/mobile/rome/syncsdk/transport/connection/proxy/ProxyInfo$ProxyType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/mobile/rome/syncsdk/transport/connection/proxy/ProxyInfo$ProxyType;->SOCKS:Lcom/alipay/mobile/rome/syncsdk/transport/connection/proxy/ProxyInfo$ProxyType;

    .line 13
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/alipay/mobile/rome/syncsdk/transport/connection/proxy/ProxyInfo$ProxyType;

    sget-object v1, Lcom/alipay/mobile/rome/syncsdk/transport/connection/proxy/ProxyInfo$ProxyType;->NONE:Lcom/alipay/mobile/rome/syncsdk/transport/connection/proxy/ProxyInfo$ProxyType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/alipay/mobile/rome/syncsdk/transport/connection/proxy/ProxyInfo$ProxyType;->HTTP:Lcom/alipay/mobile/rome/syncsdk/transport/connection/proxy/ProxyInfo$ProxyType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alipay/mobile/rome/syncsdk/transport/connection/proxy/ProxyInfo$ProxyType;->SOCKS:Lcom/alipay/mobile/rome/syncsdk/transport/connection/proxy/ProxyInfo$ProxyType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/alipay/mobile/rome/syncsdk/transport/connection/proxy/ProxyInfo$ProxyType;->ENUM$VALUES:[Lcom/alipay/mobile/rome/syncsdk/transport/connection/proxy/ProxyInfo$ProxyType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alipay/mobile/rome/syncsdk/transport/connection/proxy/ProxyInfo$ProxyType;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/alipay/mobile/rome/syncsdk/transport/connection/proxy/ProxyInfo$ProxyType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/rome/syncsdk/transport/connection/proxy/ProxyInfo$ProxyType;

    return-object v0
.end method

.method public static values()[Lcom/alipay/mobile/rome/syncsdk/transport/connection/proxy/ProxyInfo$ProxyType;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/alipay/mobile/rome/syncsdk/transport/connection/proxy/ProxyInfo$ProxyType;->ENUM$VALUES:[Lcom/alipay/mobile/rome/syncsdk/transport/connection/proxy/ProxyInfo$ProxyType;

    array-length v1, v0

    new-array v2, v1, [Lcom/alipay/mobile/rome/syncsdk/transport/connection/proxy/ProxyInfo$ProxyType;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
