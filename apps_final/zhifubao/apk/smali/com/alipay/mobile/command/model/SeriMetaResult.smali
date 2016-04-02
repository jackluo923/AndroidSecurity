.class public Lcom/alipay/mobile/command/model/SeriMetaResult;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private a:Z

.field private b:Z

.field private c:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getMeta()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/alipay/mobile/command/model/SeriMetaResult;->c:Ljava/lang/Object;

    return-object v0
.end method

.method public isHasMetaFile()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/mobile/command/model/SeriMetaResult;->b:Z

    return v0
.end method

.method public isReadSuccess()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/mobile/command/model/SeriMetaResult;->a:Z

    return v0
.end method

.method public setHasMetaFile(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/alipay/mobile/command/model/SeriMetaResult;->b:Z

    return-void
.end method

.method public setMeta(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/alipay/mobile/command/model/SeriMetaResult;->c:Ljava/lang/Object;

    return-void
.end method

.method public setReadSuccess(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/alipay/mobile/command/model/SeriMetaResult;->a:Z

    return-void
.end method
