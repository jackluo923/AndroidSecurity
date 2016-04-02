.class final enum Lcom/alipay/mobile/common/transport/httpdns/HttpDns$AugType;
.super Ljava/lang/Enum;
.source "HttpDns.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alipay/mobile/common/transport/httpdns/HttpDns$AugType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ADD_NEW:Lcom/alipay/mobile/common/transport/httpdns/HttpDns$AugType;

.field public static final enum HAS_FAIL:Lcom/alipay/mobile/common/transport/httpdns/HttpDns$AugType;

.field public static final enum LIST_INIT:Lcom/alipay/mobile/common/transport/httpdns/HttpDns$AugType;

.field private static final synthetic a:[Lcom/alipay/mobile/common/transport/httpdns/HttpDns$AugType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 882
    new-instance v0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$AugType;

    const-string/jumbo v1, "LIST_INIT"

    invoke-direct {v0, v1, v2}, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$AugType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$AugType;->LIST_INIT:Lcom/alipay/mobile/common/transport/httpdns/HttpDns$AugType;

    new-instance v0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$AugType;

    const-string/jumbo v1, "ADD_NEW"

    invoke-direct {v0, v1, v3}, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$AugType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$AugType;->ADD_NEW:Lcom/alipay/mobile/common/transport/httpdns/HttpDns$AugType;

    new-instance v0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$AugType;

    const-string/jumbo v1, "HAS_FAIL"

    invoke-direct {v0, v1, v4}, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$AugType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$AugType;->HAS_FAIL:Lcom/alipay/mobile/common/transport/httpdns/HttpDns$AugType;

    .line 881
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/alipay/mobile/common/transport/httpdns/HttpDns$AugType;

    sget-object v1, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$AugType;->LIST_INIT:Lcom/alipay/mobile/common/transport/httpdns/HttpDns$AugType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$AugType;->ADD_NEW:Lcom/alipay/mobile/common/transport/httpdns/HttpDns$AugType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$AugType;->HAS_FAIL:Lcom/alipay/mobile/common/transport/httpdns/HttpDns$AugType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$AugType;->a:[Lcom/alipay/mobile/common/transport/httpdns/HttpDns$AugType;

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
    .line 881
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alipay/mobile/common/transport/httpdns/HttpDns$AugType;
    .locals 1

    .prologue
    .line 881
    const-class v0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$AugType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$AugType;

    return-object v0
.end method

.method public static values()[Lcom/alipay/mobile/common/transport/httpdns/HttpDns$AugType;
    .locals 1

    .prologue
    .line 881
    sget-object v0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$AugType;->a:[Lcom/alipay/mobile/common/transport/httpdns/HttpDns$AugType;

    invoke-virtual {v0}, [Lcom/alipay/mobile/common/transport/httpdns/HttpDns$AugType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alipay/mobile/common/transport/httpdns/HttpDns$AugType;

    return-object v0
.end method
