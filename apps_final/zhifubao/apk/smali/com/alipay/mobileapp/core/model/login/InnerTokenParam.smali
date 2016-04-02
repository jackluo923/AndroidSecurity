.class public Lcom/alipay/mobileapp/core/model/login/InnerTokenParam;
.super Ljava/lang/Object;


# instance fields
.field public innerToken:Ljava/lang/String;

.field public source:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getInnerToken()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobileapp/core/model/login/InnerTokenParam;->innerToken:Ljava/lang/String;

    return-object v0
.end method

.method public getSource()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobileapp/core/model/login/InnerTokenParam;->source:Ljava/lang/String;

    return-object v0
.end method

.method public setInnerToken(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobileapp/core/model/login/InnerTokenParam;->innerToken:Ljava/lang/String;

    return-void
.end method

.method public setSource(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobileapp/core/model/login/InnerTokenParam;->source:Ljava/lang/String;

    return-void
.end method
