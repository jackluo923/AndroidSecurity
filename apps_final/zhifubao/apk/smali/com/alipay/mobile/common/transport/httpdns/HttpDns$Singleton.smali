.class Lcom/alipay/mobile/common/transport/httpdns/HttpDns$Singleton;
.super Ljava/lang/Object;
.source "HttpDns.java"


# static fields
.field static instance:Lcom/alipay/mobile/common/transport/httpdns/HttpDns;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 90
    new-instance v0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;-><init>(Lcom/alipay/mobile/common/transport/httpdns/HttpDns$1;)V

    sput-object v0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$Singleton;->instance:Lcom/alipay/mobile/common/transport/httpdns/HttpDns;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
