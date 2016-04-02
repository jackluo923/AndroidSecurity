.class public Lcom/alipay/kabaoprod/biz/mwallet/card/model/CardPreviewModel;
.super Lcom/alipay/kabaoprod/service/facade/model/ToString;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public action:Ljava/lang/String;

.field public backgroundColor:Ljava/lang/String;

.field public backgroundPng:Ljava/lang/String;

.field public bindCardUrl:Ljava/lang/String;

.field public cardName:Ljava/lang/String;

.field public cardType:Ljava/lang/String;

.field public commonBenefits:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public commonPrivilegeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public merchantName:Ljava/lang/String;

.field public passFrom:Ljava/lang/String;

.field public tid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/kabaoprod/service/facade/model/ToString;-><init>()V

    return-void
.end method
