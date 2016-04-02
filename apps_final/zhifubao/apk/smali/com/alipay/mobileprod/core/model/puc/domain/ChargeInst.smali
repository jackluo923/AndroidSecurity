.class public Lcom/alipay/mobileprod/core/model/puc/domain/ChargeInst;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public available:Z

.field public availableDesc:Ljava/lang/String;

.field public bizType:Ljava/lang/String;

.field public city:Ljava/lang/String;

.field public inputFieldList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobileprod/core/model/puc/domain/ModelField;",
            ">;"
        }
    .end annotation
.end field

.field public instId:Ljava/lang/String;

.field public instName:Ljava/lang/String;

.field public loadFieldList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobileprod/core/model/puc/domain/ModelField;",
            ">;"
        }
    .end annotation
.end field

.field public province:Ljava/lang/String;

.field public queryMode:Ljava/lang/String;

.field public specialInst:Ljava/lang/String;

.field public subBizType:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
