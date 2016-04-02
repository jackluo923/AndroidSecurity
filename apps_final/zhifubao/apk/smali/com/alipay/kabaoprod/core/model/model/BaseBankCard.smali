.class public Lcom/alipay/kabaoprod/core/model/model/BaseBankCard;
.super Lcom/alipay/kabaoprod/service/facade/model/ToString;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public applyTime:Ljava/lang/String;

.field public bankId:Ljava/lang/String;

.field public cardNo:Ljava/lang/String;

.field public cardNoLast4:Ljava/lang/String;

.field public cardType:Ljava/lang/String;

.field public certNo:Ljava/lang/String;

.field public certNoHiding:Ljava/lang/String;

.field public certType:Ljava/lang/String;

.field public extraInfo:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public holderName:Ljava/lang/String;

.field public instId:Ljava/lang/String;

.field public instLogUrl:Ljava/lang/String;

.field public instName:Ljava/lang/String;

.field public isOwner:Z

.field public mobile:Ljava/lang/String;

.field public signId:Ljava/lang/String;

.field public sourceChannel:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/kabaoprod/service/facade/model/ToString;-><init>()V

    return-void
.end method
