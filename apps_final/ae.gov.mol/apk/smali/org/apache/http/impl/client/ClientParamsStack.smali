.class public Lorg/apache/http/impl/client/ClientParamsStack;
.super Lorg/apache/http/params/AbstractHttpParams;
.source "ClientParamsStack.java"


# annotations
.annotation build Lorg/apache/http/annotation/NotThreadSafe;
.end annotation


# instance fields
.field protected final applicationParams:Lorg/apache/http/params/HttpParams;

.field protected final clientParams:Lorg/apache/http/params/HttpParams;

.field protected final overrideParams:Lorg/apache/http/params/HttpParams;

.field protected final requestParams:Lorg/apache/http/params/HttpParams;


# direct methods
.method public constructor <init>(Lorg/apache/http/impl/client/ClientParamsStack;)V
    .locals 4
    .param p1, "stack"    # Lorg/apache/http/impl/client/ClientParamsStack;

    .prologue
    .line 114
    invoke-virtual {p1}, Lorg/apache/http/impl/client/ClientParamsStack;->getApplicationParams()Lorg/apache/http/params/HttpParams;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/http/impl/client/ClientParamsStack;->getClientParams()Lorg/apache/http/params/HttpParams;

    move-result-object v1

    invoke-virtual {p1}, Lorg/apache/http/impl/client/ClientParamsStack;->getRequestParams()Lorg/apache/http/params/HttpParams;

    move-result-object v2

    invoke-virtual {p1}, Lorg/apache/http/impl/client/ClientParamsStack;->getOverrideParams()Lorg/apache/http/params/HttpParams;

    move-result-object v3

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/apache/http/impl/client/ClientParamsStack;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/params/HttpParams;Lorg/apache/http/params/HttpParams;Lorg/apache/http/params/HttpParams;)V

    .line 118
    return-void
.end method

.method public constructor <init>(Lorg/apache/http/impl/client/ClientParamsStack;Lorg/apache/http/params/HttpParams;Lorg/apache/http/params/HttpParams;Lorg/apache/http/params/HttpParams;Lorg/apache/http/params/HttpParams;)V
    .locals 0
    .param p1, "stack"    # Lorg/apache/http/impl/client/ClientParamsStack;
    .param p2, "aparams"    # Lorg/apache/http/params/HttpParams;
    .param p3, "cparams"    # Lorg/apache/http/params/HttpParams;
    .param p4, "rparams"    # Lorg/apache/http/params/HttpParams;
    .param p5, "oparams"    # Lorg/apache/http/params/HttpParams;

    .prologue
    .line 137
    if-eqz p2, :cond_0

    .end local p2    # "aparams":Lorg/apache/http/params/HttpParams;
    :goto_0
    if-eqz p3, :cond_1

    .end local p3    # "cparams":Lorg/apache/http/params/HttpParams;
    :goto_1
    if-eqz p4, :cond_2

    .end local p4    # "rparams":Lorg/apache/http/params/HttpParams;
    :goto_2
    if-eqz p5, :cond_3

    .end local p5    # "oparams":Lorg/apache/http/params/HttpParams;
    :goto_3
    invoke-direct {p0, p2, p3, p4, p5}, Lorg/apache/http/impl/client/ClientParamsStack;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/params/HttpParams;Lorg/apache/http/params/HttpParams;Lorg/apache/http/params/HttpParams;)V

    .line 141
    return-void

    .line 137
    .restart local p2    # "aparams":Lorg/apache/http/params/HttpParams;
    .restart local p3    # "cparams":Lorg/apache/http/params/HttpParams;
    .restart local p4    # "rparams":Lorg/apache/http/params/HttpParams;
    .restart local p5    # "oparams":Lorg/apache/http/params/HttpParams;
    :cond_0
    invoke-virtual {p1}, Lorg/apache/http/impl/client/ClientParamsStack;->getApplicationParams()Lorg/apache/http/params/HttpParams;

    move-result-object p2

    goto :goto_0

    .end local p2    # "aparams":Lorg/apache/http/params/HttpParams;
    :cond_1
    invoke-virtual {p1}, Lorg/apache/http/impl/client/ClientParamsStack;->getClientParams()Lorg/apache/http/params/HttpParams;

    move-result-object p3

    goto :goto_1

    .end local p3    # "cparams":Lorg/apache/http/params/HttpParams;
    :cond_2
    invoke-virtual {p1}, Lorg/apache/http/impl/client/ClientParamsStack;->getRequestParams()Lorg/apache/http/params/HttpParams;

    move-result-object p4

    goto :goto_2

    .end local p4    # "rparams":Lorg/apache/http/params/HttpParams;
    :cond_3
    invoke-virtual {p1}, Lorg/apache/http/impl/client/ClientParamsStack;->getOverrideParams()Lorg/apache/http/params/HttpParams;

    move-result-object p5

    goto :goto_3
.end method

.method public constructor <init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/params/HttpParams;Lorg/apache/http/params/HttpParams;Lorg/apache/http/params/HttpParams;)V
    .locals 0
    .param p1, "aparams"    # Lorg/apache/http/params/HttpParams;
    .param p2, "cparams"    # Lorg/apache/http/params/HttpParams;
    .param p3, "rparams"    # Lorg/apache/http/params/HttpParams;
    .param p4, "oparams"    # Lorg/apache/http/params/HttpParams;

    .prologue
    .line 98
    invoke-direct {p0}, Lorg/apache/http/params/AbstractHttpParams;-><init>()V

    .line 99
    iput-object p1, p0, Lorg/apache/http/impl/client/ClientParamsStack;->applicationParams:Lorg/apache/http/params/HttpParams;

    .line 100
    iput-object p2, p0, Lorg/apache/http/impl/client/ClientParamsStack;->clientParams:Lorg/apache/http/params/HttpParams;

    .line 101
    iput-object p3, p0, Lorg/apache/http/impl/client/ClientParamsStack;->requestParams:Lorg/apache/http/params/HttpParams;

    .line 102
    iput-object p4, p0, Lorg/apache/http/impl/client/ClientParamsStack;->overrideParams:Lorg/apache/http/params/HttpParams;

    .line 103
    return-void
.end method


# virtual methods
.method public copy()Lorg/apache/http/params/HttpParams;
    .locals 0

    .prologue
    .line 266
    return-object p0
.end method

.method public final getApplicationParams()Lorg/apache/http/params/HttpParams;
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lorg/apache/http/impl/client/ClientParamsStack;->applicationParams:Lorg/apache/http/params/HttpParams;

    return-object v0
.end method

.method public final getClientParams()Lorg/apache/http/params/HttpParams;
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lorg/apache/http/impl/client/ClientParamsStack;->clientParams:Lorg/apache/http/params/HttpParams;

    return-object v0
.end method

.method public final getOverrideParams()Lorg/apache/http/params/HttpParams;
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lorg/apache/http/impl/client/ClientParamsStack;->overrideParams:Lorg/apache/http/params/HttpParams;

    return-object v0
.end method

.method public getParameter(Ljava/lang/String;)Ljava/lang/Object;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 191
    if-nez p1, :cond_0

    .line 192
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Parameter name must not be null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 196
    :cond_0
    const/4 v0, 0x0

    .line 198
    .local v0, "result":Ljava/lang/Object;
    iget-object v1, p0, Lorg/apache/http/impl/client/ClientParamsStack;->overrideParams:Lorg/apache/http/params/HttpParams;

    if-eqz v1, :cond_1

    .line 199
    iget-object v1, p0, Lorg/apache/http/impl/client/ClientParamsStack;->overrideParams:Lorg/apache/http/params/HttpParams;

    invoke-interface {v1, p1}, Lorg/apache/http/params/HttpParams;->getParameter(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 201
    .end local v0    # "result":Ljava/lang/Object;
    :cond_1
    if-nez v0, :cond_2

    iget-object v1, p0, Lorg/apache/http/impl/client/ClientParamsStack;->requestParams:Lorg/apache/http/params/HttpParams;

    if-eqz v1, :cond_2

    .line 202
    iget-object v1, p0, Lorg/apache/http/impl/client/ClientParamsStack;->requestParams:Lorg/apache/http/params/HttpParams;

    invoke-interface {v1, p1}, Lorg/apache/http/params/HttpParams;->getParameter(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 204
    :cond_2
    if-nez v0, :cond_3

    iget-object v1, p0, Lorg/apache/http/impl/client/ClientParamsStack;->clientParams:Lorg/apache/http/params/HttpParams;

    if-eqz v1, :cond_3

    .line 205
    iget-object v1, p0, Lorg/apache/http/impl/client/ClientParamsStack;->clientParams:Lorg/apache/http/params/HttpParams;

    invoke-interface {v1, p1}, Lorg/apache/http/params/HttpParams;->getParameter(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 207
    :cond_3
    if-nez v0, :cond_4

    iget-object v1, p0, Lorg/apache/http/impl/client/ClientParamsStack;->applicationParams:Lorg/apache/http/params/HttpParams;

    if-eqz v1, :cond_4

    .line 208
    iget-object v1, p0, Lorg/apache/http/impl/client/ClientParamsStack;->applicationParams:Lorg/apache/http/params/HttpParams;

    invoke-interface {v1, p1}, Lorg/apache/http/params/HttpParams;->getParameter(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 210
    :cond_4
    return-object v0
.end method

.method public final getRequestParams()Lorg/apache/http/params/HttpParams;
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lorg/apache/http/impl/client/ClientParamsStack;->requestParams:Lorg/apache/http/params/HttpParams;

    return-object v0
.end method

.method public removeParameter(Ljava/lang/String;)Z
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 247
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Removing parameters in a stack is not supported."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    .line 229
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Setting parameters in a stack is not supported."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
