.class public Lcom/alipay/mobile/framework/service/ext/openplatform/service/AuthorizeException;
.super Ljava/lang/Exception;
.source "AuthorizeException.java"


# static fields
.field public static final USER_NOT_LOGIN:I = 0x1

.field public static final USER_NOT_MATCH:I = 0x0

.field private static final serialVersionUID:J = 0x75a16abL


# instance fields
.field private code:I

.field private msg:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 10
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/framework/service/ext/openplatform/service/AuthorizeException;->setCode(I)V

    .line 11
    invoke-virtual {p0, p2}, Lcom/alipay/mobile/framework/service/ext/openplatform/service/AuthorizeException;->setMsg(Ljava/lang/String;)V

    .line 12
    return-void
.end method


# virtual methods
.method public getCode()I
    .locals 1

    .prologue
    .line 14
    iget v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/service/AuthorizeException;->code:I

    return v0
.end method

.method public getMsg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/service/AuthorizeException;->msg:Ljava/lang/String;

    return-object v0
.end method

.method public setCode(I)V
    .locals 0

    .prologue
    .line 17
    iput p1, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/service/AuthorizeException;->code:I

    .line 18
    return-void
.end method

.method public setMsg(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 23
    iput-object p1, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/service/AuthorizeException;->msg:Ljava/lang/String;

    .line 24
    return-void
.end method
