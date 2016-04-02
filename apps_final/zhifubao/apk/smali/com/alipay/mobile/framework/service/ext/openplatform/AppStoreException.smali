.class public Lcom/alipay/mobile/framework/service/ext/openplatform/AppStoreException;
.super Ljava/lang/Exception;
.source "AppStoreException.java"


# static fields
.field public static final REQUEST_ERROR:I = 0x0

.field public static final RESPONSE_ERROR:I = 0x1

.field private static final serialVersionUID:J = 0xe8d5505168L


# instance fields
.field private memo:Ljava/lang/String;

.field private resultStatus:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 19
    iput p1, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/AppStoreException;->resultStatus:I

    .line 20
    iput-object p2, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/AppStoreException;->memo:Ljava/lang/String;

    .line 21
    return-void
.end method


# virtual methods
.method public getMemo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/AppStoreException;->memo:Ljava/lang/String;

    return-object v0
.end method

.method public getResultStatus()I
    .locals 1

    .prologue
    .line 36
    iget v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/AppStoreException;->resultStatus:I

    return v0
.end method

.method public setMemo(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 32
    iput-object p1, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/AppStoreException;->memo:Ljava/lang/String;

    .line 33
    return-void
.end method

.method public setResultStatus(I)V
    .locals 0

    .prologue
    .line 40
    iput p1, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/AppStoreException;->resultStatus:I

    .line 41
    return-void
.end method
