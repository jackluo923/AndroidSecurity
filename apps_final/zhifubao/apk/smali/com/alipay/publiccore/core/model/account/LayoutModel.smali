.class public Lcom/alipay/publiccore/core/model/account/LayoutModel;
.super Lcom/alipay/publiccore/common/service/facade/model/ToString;
.source "LayoutModel.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public agreementId:Ljava/lang/String;

.field public backImageUrl:Ljava/lang/String;

.field public baseColor:Ljava/lang/String;

.field public button:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/publiccore/core/model/account/ButtonObject;",
            ">;"
        }
    .end annotation
.end field

.field public canAddThirdAccount:Z

.field public canChat:Z

.field public disThirdAccountText:Ljava/lang/String;

.field public headImageUrl:Ljava/lang/String;

.field public instId:Ljava/lang/String;

.field public menuKey:Ljava/lang/String;

.field public pluginType:Ljava/lang/String;

.field public proxy:Z

.field public publicId:Ljava/lang/String;

.field public publicName:Ljava/lang/String;

.field public settingPageUrl:Ljava/lang/String;

.field public templateId:Ljava/lang/String;

.field public uploadGis:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/alipay/publiccore/common/service/facade/model/ToString;-><init>()V

    return-void
.end method
