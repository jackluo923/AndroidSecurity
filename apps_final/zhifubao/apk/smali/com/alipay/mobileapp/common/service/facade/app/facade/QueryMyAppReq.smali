.class public Lcom/alipay/mobileapp/common/service/facade/app/facade/QueryMyAppReq;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public appList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobileapp/core/model/app/MobileAppInfoVO;",
            ">;"
        }
    .end annotation
.end field

.field public channel:Ljava/lang/String;

.field public platform:Ljava/lang/String;

.field public platformVersion:Ljava/lang/String;

.field public pre:Z

.field public productID:Ljava/lang/String;

.field public productVersion:Ljava/lang/String;

.field public resolution:Ljava/lang/String;

.field public userAgent:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
