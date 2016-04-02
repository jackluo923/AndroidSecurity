.class public Lcom/alipay/mobile/personalbase/search/ItemSearchChain;
.super Ljava/lang/Object;
.source "ItemSearchChain.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public fs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/personalbase/search/ItemSearchChain;",
            ">;"
        }
    .end annotation
.end field

.field public isfc:Ljava/lang/Boolean;

.field public minfo:Lcom/alipay/mobile/personalbase/search/ItemMatchInfo;

.field public pri:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput v0, p0, Lcom/alipay/mobile/personalbase/search/ItemSearchChain;->pri:I

    .line 11
    iput-object v1, p0, Lcom/alipay/mobile/personalbase/search/ItemSearchChain;->minfo:Lcom/alipay/mobile/personalbase/search/ItemMatchInfo;

    .line 12
    iput-object v1, p0, Lcom/alipay/mobile/personalbase/search/ItemSearchChain;->fs:Ljava/util/List;

    .line 13
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/personalbase/search/ItemSearchChain;->isfc:Ljava/lang/Boolean;

    .line 9
    return-void
.end method
