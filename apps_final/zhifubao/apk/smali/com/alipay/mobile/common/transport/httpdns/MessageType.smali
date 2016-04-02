.class public final enum Lcom/alipay/mobile/common/transport/httpdns/MessageType;
.super Ljava/lang/Enum;
.source "MessageType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alipay/mobile/common/transport/httpdns/MessageType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum DNSFAIL:Lcom/alipay/mobile/common/transport/httpdns/MessageType;

.field public static final enum DNSNONE:Lcom/alipay/mobile/common/transport/httpdns/MessageType;

.field public static final enum DNSTIME:Lcom/alipay/mobile/common/transport/httpdns/MessageType;

.field public static final enum IPERROR:Lcom/alipay/mobile/common/transport/httpdns/MessageType;

.field public static final enum RESLOVERROR:Lcom/alipay/mobile/common/transport/httpdns/MessageType;

.field private static final synthetic a:[Lcom/alipay/mobile/common/transport/httpdns/MessageType;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 14
    new-instance v0, Lcom/alipay/mobile/common/transport/httpdns/MessageType;

    const-string/jumbo v1, "DNSFAIL"

    invoke-direct {v0, v1, v2}, Lcom/alipay/mobile/common/transport/httpdns/MessageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/mobile/common/transport/httpdns/MessageType;->DNSFAIL:Lcom/alipay/mobile/common/transport/httpdns/MessageType;

    new-instance v0, Lcom/alipay/mobile/common/transport/httpdns/MessageType;

    const-string/jumbo v1, "DNSTIME"

    invoke-direct {v0, v1, v3}, Lcom/alipay/mobile/common/transport/httpdns/MessageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/mobile/common/transport/httpdns/MessageType;->DNSTIME:Lcom/alipay/mobile/common/transport/httpdns/MessageType;

    new-instance v0, Lcom/alipay/mobile/common/transport/httpdns/MessageType;

    const-string/jumbo v1, "IPERROR"

    invoke-direct {v0, v1, v4}, Lcom/alipay/mobile/common/transport/httpdns/MessageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/mobile/common/transport/httpdns/MessageType;->IPERROR:Lcom/alipay/mobile/common/transport/httpdns/MessageType;

    new-instance v0, Lcom/alipay/mobile/common/transport/httpdns/MessageType;

    const-string/jumbo v1, "RESLOVERROR"

    invoke-direct {v0, v1, v5}, Lcom/alipay/mobile/common/transport/httpdns/MessageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/mobile/common/transport/httpdns/MessageType;->RESLOVERROR:Lcom/alipay/mobile/common/transport/httpdns/MessageType;

    new-instance v0, Lcom/alipay/mobile/common/transport/httpdns/MessageType;

    const-string/jumbo v1, "DNSNONE"

    invoke-direct {v0, v1, v6}, Lcom/alipay/mobile/common/transport/httpdns/MessageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/mobile/common/transport/httpdns/MessageType;->DNSNONE:Lcom/alipay/mobile/common/transport/httpdns/MessageType;

    .line 13
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/alipay/mobile/common/transport/httpdns/MessageType;

    sget-object v1, Lcom/alipay/mobile/common/transport/httpdns/MessageType;->DNSFAIL:Lcom/alipay/mobile/common/transport/httpdns/MessageType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/alipay/mobile/common/transport/httpdns/MessageType;->DNSTIME:Lcom/alipay/mobile/common/transport/httpdns/MessageType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alipay/mobile/common/transport/httpdns/MessageType;->IPERROR:Lcom/alipay/mobile/common/transport/httpdns/MessageType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/alipay/mobile/common/transport/httpdns/MessageType;->RESLOVERROR:Lcom/alipay/mobile/common/transport/httpdns/MessageType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/alipay/mobile/common/transport/httpdns/MessageType;->DNSNONE:Lcom/alipay/mobile/common/transport/httpdns/MessageType;

    aput-object v1, v0, v6

    sput-object v0, Lcom/alipay/mobile/common/transport/httpdns/MessageType;->a:[Lcom/alipay/mobile/common/transport/httpdns/MessageType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 13
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alipay/mobile/common/transport/httpdns/MessageType;
    .locals 1

    .prologue
    .line 13
    const-class v0, Lcom/alipay/mobile/common/transport/httpdns/MessageType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/common/transport/httpdns/MessageType;

    return-object v0
.end method

.method public static values()[Lcom/alipay/mobile/common/transport/httpdns/MessageType;
    .locals 1

    .prologue
    .line 13
    sget-object v0, Lcom/alipay/mobile/common/transport/httpdns/MessageType;->a:[Lcom/alipay/mobile/common/transport/httpdns/MessageType;

    invoke-virtual {v0}, [Lcom/alipay/mobile/common/transport/httpdns/MessageType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alipay/mobile/common/transport/httpdns/MessageType;

    return-object v0
.end method
