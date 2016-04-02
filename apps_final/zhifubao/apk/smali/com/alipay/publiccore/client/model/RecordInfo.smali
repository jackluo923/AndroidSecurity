.class public Lcom/alipay/publiccore/client/model/RecordInfo;
.super Lcom/alipay/publiccore/common/service/facade/model/ToString;
.source "RecordInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public actionParams:Ljava/lang/String;

.field public actionType:Ljava/lang/String;

.field public desc:Ljava/lang/String;

.field public extInfo:Ljava/util/Map;
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

.field public iconPath:Ljava/lang/String;

.field public showType:Ljava/lang/String;

.field public title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/alipay/publiccore/common/service/facade/model/ToString;-><init>()V

    return-void
.end method
