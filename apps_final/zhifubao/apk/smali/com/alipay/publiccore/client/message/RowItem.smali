.class public Lcom/alipay/publiccore/client/message/RowItem;
.super Lcom/alipay/publiccore/common/service/facade/model/ToString;
.source "RowItem.java"


# instance fields
.field public actionParam:Ljava/lang/String;

.field public actionType:Ljava/lang/String;

.field public image:Ljava/lang/String;

.field public title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 8
    invoke-direct {p0}, Lcom/alipay/publiccore/common/service/facade/model/ToString;-><init>()V

    .line 24
    iput-object v0, p0, Lcom/alipay/publiccore/client/message/RowItem;->actionType:Ljava/lang/String;

    .line 29
    iput-object v0, p0, Lcom/alipay/publiccore/client/message/RowItem;->actionParam:Ljava/lang/String;

    .line 8
    return-void
.end method
