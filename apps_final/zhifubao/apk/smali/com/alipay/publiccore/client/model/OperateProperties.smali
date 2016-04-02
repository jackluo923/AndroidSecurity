.class public Lcom/alipay/publiccore/client/model/OperateProperties;
.super Lcom/alipay/publiccore/common/service/facade/model/ToString;
.source "OperateProperties.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final DELETE_TYPE_DISABLE:Ljava/lang/String; = "disable"

.field public static final DELETE_TYPE_LOCAL:Ljava/lang/String; = "local"

.field public static final DELETE_TYPE_REMOTE:Ljava/lang/String; = "remote"

.field public static final TOP_TYPE_DEFAULT:Ljava/lang/String; = "default"

.field public static final TOP_TYPE_FORCE:Ljava/lang/String; = "force"

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private defaultOrder:Ljava/lang/String;

.field private deleteType:Ljava/lang/String;

.field private topType:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/alipay/publiccore/common/service/facade/model/ToString;-><init>()V

    return-void
.end method


# virtual methods
.method public getDefaultOrder()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/alipay/publiccore/client/model/OperateProperties;->defaultOrder:Ljava/lang/String;

    return-object v0
.end method

.method public getDeleteType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/alipay/publiccore/client/model/OperateProperties;->deleteType:Ljava/lang/String;

    return-object v0
.end method

.method public getTopType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/alipay/publiccore/client/model/OperateProperties;->topType:Ljava/lang/String;

    return-object v0
.end method

.method public setDefaultOrder(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 57
    iput-object p1, p0, Lcom/alipay/publiccore/client/model/OperateProperties;->defaultOrder:Ljava/lang/String;

    .line 58
    return-void
.end method

.method public setDeleteType(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 44
    iput-object p1, p0, Lcom/alipay/publiccore/client/model/OperateProperties;->deleteType:Ljava/lang/String;

    .line 45
    return-void
.end method

.method public setTopType(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 31
    iput-object p1, p0, Lcom/alipay/publiccore/client/model/OperateProperties;->topType:Ljava/lang/String;

    .line 32
    return-void
.end method
