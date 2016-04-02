.class public Lcom/alipay/publiccore/core/model/account/ButtonObjectList;
.super Lcom/alipay/publiccore/common/service/facade/model/ToString;
.source "ButtonObjectList.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public buttonObjects:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/publiccore/core/model/account/ButtonObject;",
            ">;"
        }
    .end annotation
.end field

.field public menuKey:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/alipay/publiccore/common/service/facade/model/ToString;-><init>()V

    return-void
.end method


# virtual methods
.method public getButtonObjects()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/publiccore/core/model/account/ButtonObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 32
    iget-object v0, p0, Lcom/alipay/publiccore/core/model/account/ButtonObjectList;->buttonObjects:Ljava/util/List;

    return-object v0
.end method

.method public setButtonObjects(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/publiccore/core/model/account/ButtonObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 28
    iput-object p1, p0, Lcom/alipay/publiccore/core/model/account/ButtonObjectList;->buttonObjects:Ljava/util/List;

    .line 29
    return-void
.end method
