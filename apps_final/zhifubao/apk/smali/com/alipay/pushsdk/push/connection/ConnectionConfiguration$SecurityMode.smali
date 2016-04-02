.class public final enum Lcom/alipay/pushsdk/push/connection/ConnectionConfiguration$SecurityMode;
.super Ljava/lang/Enum;
.source "ConnectionConfiguration.java"


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/alipay/pushsdk/push/connection/ConnectionConfiguration$SecurityMode;

.field public static final enum disabled:Lcom/alipay/pushsdk/push/connection/ConnectionConfiguration$SecurityMode;

.field public static final enum enabled:Lcom/alipay/pushsdk/push/connection/ConnectionConfiguration$SecurityMode;

.field public static final enum required:Lcom/alipay/pushsdk/push/connection/ConnectionConfiguration$SecurityMode;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 637
    new-instance v0, Lcom/alipay/pushsdk/push/connection/ConnectionConfiguration$SecurityMode;

    const-string/jumbo v1, "required"

    invoke-direct {v0, v1, v2}, Lcom/alipay/pushsdk/push/connection/ConnectionConfiguration$SecurityMode;-><init>(Ljava/lang/String;I)V

    .line 642
    sput-object v0, Lcom/alipay/pushsdk/push/connection/ConnectionConfiguration$SecurityMode;->required:Lcom/alipay/pushsdk/push/connection/ConnectionConfiguration$SecurityMode;

    .line 644
    new-instance v0, Lcom/alipay/pushsdk/push/connection/ConnectionConfiguration$SecurityMode;

    const-string/jumbo v1, "enabled"

    invoke-direct {v0, v1, v3}, Lcom/alipay/pushsdk/push/connection/ConnectionConfiguration$SecurityMode;-><init>(Ljava/lang/String;I)V

    .line 648
    sput-object v0, Lcom/alipay/pushsdk/push/connection/ConnectionConfiguration$SecurityMode;->enabled:Lcom/alipay/pushsdk/push/connection/ConnectionConfiguration$SecurityMode;

    .line 650
    new-instance v0, Lcom/alipay/pushsdk/push/connection/ConnectionConfiguration$SecurityMode;

    const-string/jumbo v1, "disabled"

    invoke-direct {v0, v1, v4}, Lcom/alipay/pushsdk/push/connection/ConnectionConfiguration$SecurityMode;-><init>(Ljava/lang/String;I)V

    .line 655
    sput-object v0, Lcom/alipay/pushsdk/push/connection/ConnectionConfiguration$SecurityMode;->disabled:Lcom/alipay/pushsdk/push/connection/ConnectionConfiguration$SecurityMode;

    .line 635
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/alipay/pushsdk/push/connection/ConnectionConfiguration$SecurityMode;

    sget-object v1, Lcom/alipay/pushsdk/push/connection/ConnectionConfiguration$SecurityMode;->required:Lcom/alipay/pushsdk/push/connection/ConnectionConfiguration$SecurityMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/alipay/pushsdk/push/connection/ConnectionConfiguration$SecurityMode;->enabled:Lcom/alipay/pushsdk/push/connection/ConnectionConfiguration$SecurityMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alipay/pushsdk/push/connection/ConnectionConfiguration$SecurityMode;->disabled:Lcom/alipay/pushsdk/push/connection/ConnectionConfiguration$SecurityMode;

    aput-object v1, v0, v4

    sput-object v0, Lcom/alipay/pushsdk/push/connection/ConnectionConfiguration$SecurityMode;->ENUM$VALUES:[Lcom/alipay/pushsdk/push/connection/ConnectionConfiguration$SecurityMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 635
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alipay/pushsdk/push/connection/ConnectionConfiguration$SecurityMode;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/alipay/pushsdk/push/connection/ConnectionConfiguration$SecurityMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alipay/pushsdk/push/connection/ConnectionConfiguration$SecurityMode;

    return-object v0
.end method

.method public static values()[Lcom/alipay/pushsdk/push/connection/ConnectionConfiguration$SecurityMode;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/alipay/pushsdk/push/connection/ConnectionConfiguration$SecurityMode;->ENUM$VALUES:[Lcom/alipay/pushsdk/push/connection/ConnectionConfiguration$SecurityMode;

    array-length v1, v0

    new-array v2, v1, [Lcom/alipay/pushsdk/push/connection/ConnectionConfiguration$SecurityMode;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
