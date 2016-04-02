.class public Lcom/alipay/publiccore/common/service/facade/model/PublicResource;
.super Lcom/alipay/publiccore/common/service/facade/model/ToString;
.source "PublicResource.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public bizType:Ljava/lang/String;

.field public gmtCreate:Ljava/util/Date;

.field public gmtModify:Ljava/util/Date;

.field public id:J

.field public publicId:Ljava/lang/String;

.field public resource:Ljava/lang/String;

.field public resourceType:Ljava/lang/String;

.field public size:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/alipay/publiccore/common/service/facade/model/ToString;-><init>()V

    return-void
.end method
