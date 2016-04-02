.class public Lcom/alipay/mobile/common/transport/http/HttpException;
.super Ljava/lang/Exception;
.source "HttpException.java"


# static fields
.field public static final NETWORK_AUTH_ERROR:I = 0x8

.field public static final NETWORK_CONNECTION_EXCEPTION:I = 0x3

.field public static final NETWORK_DNS_ERROR:I = 0x9

.field public static final NETWORK_IO_EXCEPTION:I = 0x6

.field public static final NETWORK_SCHEDULE_ERROR:I = 0x7

.field public static final NETWORK_SERVER_EXCEPTION:I = 0x5

.field public static final NETWORK_SOCKET_EXCEPTION:I = 0x4

.field public static final NETWORK_SSL_EXCEPTION:I = 0x2

.field public static final NETWORK_UNAVAILABLE:I = 0x1

.field public static final NETWORK_UNKNOWN_ERROR:I


# instance fields
.field private a:I

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/Integer;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Http Transport error"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_0

    const-string/jumbo v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const-string/jumbo v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_1

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 87
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/common/transport/http/HttpException;->a:I

    .line 88
    iput-object p2, p0, Lcom/alipay/mobile/common/transport/http/HttpException;->b:Ljava/lang/String;

    .line 89
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 67
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 68
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/mobile/common/transport/http/HttpException;->a:I

    .line 69
    iput-object p1, p0, Lcom/alipay/mobile/common/transport/http/HttpException;->b:Ljava/lang/String;

    .line 70
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 76
    invoke-direct {p0, p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 77
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/mobile/common/transport/http/HttpException;->a:I

    .line 78
    iput-object p1, p0, Lcom/alipay/mobile/common/transport/http/HttpException;->b:Ljava/lang/String;

    .line 79
    return-void
.end method


# virtual methods
.method public getCode()I
    .locals 1

    .prologue
    .line 97
    iget v0, p0, Lcom/alipay/mobile/common/transport/http/HttpException;->a:I

    return v0
.end method

.method public getMsg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpException;->b:Ljava/lang/String;

    return-object v0
.end method
