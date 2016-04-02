.class public Lcom/alipay/mobile/common/share/ShareException;
.super Ljava/lang/RuntimeException;
.source "ShareException.java"


# static fields
.field public static final APP_UNINSTALL:I = 0x9e35

.field public static final AUTH_ERROR:I = 0x3ea

.field public static final UNKNOWN_ERROR:I = 0x3eb

.field public static final USER_CANCEL:I = 0x3e9

.field private static final serialVersionUID:J = 0x6979ee5a4b2fff8L


# instance fields
.field private statusCode:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    .line 7
    const/4 v0, -0x1

    iput v0, p0, Lcom/alipay/mobile/common/share/ShareException;->statusCode:I

    .line 42
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    .line 7
    const/4 v0, -0x1

    iput v0, p0, Lcom/alipay/mobile/common/share/ShareException;->statusCode:I

    .line 54
    iput p1, p0, Lcom/alipay/mobile/common/share/ShareException;->statusCode:I

    .line 55
    return-void
.end method

.method public constructor <init>(Ljava/lang/Exception;)V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 7
    const/4 v0, -0x1

    iput v0, p0, Lcom/alipay/mobile/common/share/ShareException;->statusCode:I

    .line 19
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 7
    const/4 v0, -0x1

    iput v0, p0, Lcom/alipay/mobile/common/share/ShareException;->statusCode:I

    .line 15
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 7
    const/4 v0, -0x1

    iput v0, p0, Lcom/alipay/mobile/common/share/ShareException;->statusCode:I

    .line 23
    iput p2, p0, Lcom/alipay/mobile/common/share/ShareException;->statusCode:I

    .line 24
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 7
    const/4 v0, -0x1

    iput v0, p0, Lcom/alipay/mobile/common/share/ShareException;->statusCode:I

    .line 28
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Exception;I)V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 7
    const/4 v0, -0x1

    iput v0, p0, Lcom/alipay/mobile/common/share/ShareException;->statusCode:I

    .line 32
    iput p3, p0, Lcom/alipay/mobile/common/share/ShareException;->statusCode:I

    .line 33
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 7
    const/4 v0, -0x1

    iput v0, p0, Lcom/alipay/mobile/common/share/ShareException;->statusCode:I

    .line 46
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 7
    const/4 v0, -0x1

    iput v0, p0, Lcom/alipay/mobile/common/share/ShareException;->statusCode:I

    .line 50
    return-void
.end method


# virtual methods
.method public getStatusCode()I
    .locals 1

    .prologue
    .line 36
    iget v0, p0, Lcom/alipay/mobile/common/share/ShareException;->statusCode:I

    return v0
.end method

.method public setStatusCode(I)V
    .locals 0

    .prologue
    .line 58
    iput p1, p0, Lcom/alipay/mobile/common/share/ShareException;->statusCode:I

    .line 59
    return-void
.end method
