.class public Ljp/innovationplus/ipp/core/IPPQueryResult;
.super Ljava/lang/Object;
.source "IPPQueryResult.java"


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
.field private result:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private resultCode:I

.field private resultCount:I

.field private resultMessage:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    .local p0, "this":Ljp/innovationplus/ipp/core/IPPQueryResult;, "Ljp/innovationplus/ipp/core/IPPQueryResult<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getResult()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 30
    .local p0, "this":Ljp/innovationplus/ipp/core/IPPQueryResult;, "Ljp/innovationplus/ipp/core/IPPQueryResult<TT;>;"
    iget-object v0, p0, Ljp/innovationplus/ipp/core/IPPQueryResult;->result:Ljava/lang/Object;

    return-object v0
.end method

.method public getResultCode()I
    .locals 1

    .prologue
    .line 48
    .local p0, "this":Ljp/innovationplus/ipp/core/IPPQueryResult;, "Ljp/innovationplus/ipp/core/IPPQueryResult<TT;>;"
    iget v0, p0, Ljp/innovationplus/ipp/core/IPPQueryResult;->resultCode:I

    return v0
.end method

.method public getResultCount()I
    .locals 1

    .prologue
    .line 84
    .local p0, "this":Ljp/innovationplus/ipp/core/IPPQueryResult;, "Ljp/innovationplus/ipp/core/IPPQueryResult<TT;>;"
    iget v0, p0, Ljp/innovationplus/ipp/core/IPPQueryResult;->resultCount:I

    return v0
.end method

.method public getResultMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    .local p0, "this":Ljp/innovationplus/ipp/core/IPPQueryResult;, "Ljp/innovationplus/ipp/core/IPPQueryResult<TT;>;"
    iget-object v0, p0, Ljp/innovationplus/ipp/core/IPPQueryResult;->resultMessage:Ljava/lang/String;

    return-object v0
.end method

.method public setResult(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 39
    .local p0, "this":Ljp/innovationplus/ipp/core/IPPQueryResult;, "Ljp/innovationplus/ipp/core/IPPQueryResult<TT;>;"
    .local p1, "result":Ljava/lang/Object;, "TT;"
    iput-object p1, p0, Ljp/innovationplus/ipp/core/IPPQueryResult;->result:Ljava/lang/Object;

    .line 40
    return-void
.end method

.method public setResultCode(I)V
    .locals 0
    .param p1, "resultCode"    # I

    .prologue
    .line 57
    .local p0, "this":Ljp/innovationplus/ipp/core/IPPQueryResult;, "Ljp/innovationplus/ipp/core/IPPQueryResult<TT;>;"
    iput p1, p0, Ljp/innovationplus/ipp/core/IPPQueryResult;->resultCode:I

    .line 58
    return-void
.end method

.method public setResultCount(I)V
    .locals 0
    .param p1, "resultCount"    # I

    .prologue
    .line 93
    .local p0, "this":Ljp/innovationplus/ipp/core/IPPQueryResult;, "Ljp/innovationplus/ipp/core/IPPQueryResult<TT;>;"
    iput p1, p0, Ljp/innovationplus/ipp/core/IPPQueryResult;->resultCount:I

    .line 94
    return-void
.end method

.method public setResultMessage(Ljava/lang/String;)V
    .locals 0
    .param p1, "resultMessage"    # Ljava/lang/String;

    .prologue
    .line 75
    .local p0, "this":Ljp/innovationplus/ipp/core/IPPQueryResult;, "Ljp/innovationplus/ipp/core/IPPQueryResult<TT;>;"
    iput-object p1, p0, Ljp/innovationplus/ipp/core/IPPQueryResult;->resultMessage:Ljava/lang/String;

    .line 76
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 103
    .local p0, "this":Ljp/innovationplus/ipp/core/IPPQueryResult;, "Ljp/innovationplus/ipp/core/IPPQueryResult<TT;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "IPPQueryResult [result="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Ljp/innovationplus/ipp/core/IPPQueryResult;->result:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", resultCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 104
    iget v1, p0, Ljp/innovationplus/ipp/core/IPPQueryResult;->resultCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", resultMessage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljp/innovationplus/ipp/core/IPPQueryResult;->resultMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 105
    const-string v1, ", resultCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ljp/innovationplus/ipp/core/IPPQueryResult;->resultCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 103
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
