.class public Lcom/alipay/publiccore/client/model/DynamicConfig;
.super Lcom/alipay/publiccore/common/service/facade/model/ToString;
.source "DynamicConfig.java"


# instance fields
.field private addPublicPageWelcomeMsg:Ljava/lang/String;

.field private dynamicConfigUid:Ljava/lang/String;

.field private mapiPayUrls:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private taobaoBatchPayUrls:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private taobaoPayUrls:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private thirdPayUrls:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/alipay/publiccore/common/service/facade/model/ToString;-><init>()V

    return-void
.end method


# virtual methods
.method public getAddPublicPageWelcomeMsg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/alipay/publiccore/client/model/DynamicConfig;->addPublicPageWelcomeMsg:Ljava/lang/String;

    return-object v0
.end method

.method public getDynamicConfigUid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/alipay/publiccore/client/model/DynamicConfig;->dynamicConfigUid:Ljava/lang/String;

    return-object v0
.end method

.method public getMapiPayUrls()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 70
    iget-object v0, p0, Lcom/alipay/publiccore/client/model/DynamicConfig;->mapiPayUrls:Ljava/util/List;

    return-object v0
.end method

.method public getTaobaoBatchPayUrls()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 58
    iget-object v0, p0, Lcom/alipay/publiccore/client/model/DynamicConfig;->taobaoBatchPayUrls:Ljava/util/List;

    return-object v0
.end method

.method public getTaobaoPayUrls()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 46
    iget-object v0, p0, Lcom/alipay/publiccore/client/model/DynamicConfig;->taobaoPayUrls:Ljava/util/List;

    return-object v0
.end method

.method public getThirdPayUrls()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 34
    iget-object v0, p0, Lcom/alipay/publiccore/client/model/DynamicConfig;->thirdPayUrls:Ljava/util/List;

    return-object v0
.end method

.method public setAddPublicPageWelcomeMsg(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 78
    iput-object p1, p0, Lcom/alipay/publiccore/client/model/DynamicConfig;->addPublicPageWelcomeMsg:Ljava/lang/String;

    .line 79
    return-void
.end method

.method public setDynamicConfigUid(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 18
    iput-object p1, p0, Lcom/alipay/publiccore/client/model/DynamicConfig;->dynamicConfigUid:Ljava/lang/String;

    .line 19
    return-void
.end method

.method public setMapiPayUrls(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 66
    iput-object p1, p0, Lcom/alipay/publiccore/client/model/DynamicConfig;->mapiPayUrls:Ljava/util/List;

    .line 67
    return-void
.end method

.method public setTaobaoBatchPayUrls(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 54
    iput-object p1, p0, Lcom/alipay/publiccore/client/model/DynamicConfig;->taobaoBatchPayUrls:Ljava/util/List;

    .line 55
    return-void
.end method

.method public setTaobaoPayUrls(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 42
    iput-object p1, p0, Lcom/alipay/publiccore/client/model/DynamicConfig;->taobaoPayUrls:Ljava/util/List;

    .line 43
    return-void
.end method

.method public setThirdPayUrls(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 30
    iput-object p1, p0, Lcom/alipay/publiccore/client/model/DynamicConfig;->thirdPayUrls:Ljava/util/List;

    .line 31
    return-void
.end method
