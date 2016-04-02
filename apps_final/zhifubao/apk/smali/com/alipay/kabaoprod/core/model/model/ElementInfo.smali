.class public Lcom/alipay/kabaoprod/core/model/model/ElementInfo;
.super Lcom/alipay/kabaoprod/service/facade/model/ToString;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public editEnable:Z

.field public fieldDesc:Ljava/lang/String;

.field public fieldName:Ljava/lang/String;

.field public options:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/kabaoprod/core/model/model/ElementOption;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/alipay/kabaoprod/service/facade/model/ToString;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/kabaoprod/core/model/model/ElementInfo;->editEnable:Z

    return-void
.end method
