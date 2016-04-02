.class public final Ljp/innovationplus/ipp/client/IPPGeoResourceClient;
.super Ljp/innovationplus/ipp/client/_HttpURLConnection;
.source "IPPGeoResourceClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljp/innovationplus/ipp/client/IPPGeoResourceClient$QueryCondition;
    }
.end annotation


# static fields
.field private static final IPP_GEORESOURCES_PATH:Ljava/lang/String; = "/georesources"

.field private static final IPP_GEORESOURCE_PATH:Ljava/lang/String; = "/georesource"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 41
    const-string v0, "/georesource"

    invoke-direct {p0, p1, v0}, Ljp/innovationplus/ipp/client/_HttpURLConnection;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 42
    return-void
.end method


# virtual methods
.method public create(Ljava/lang/Class;Ljp/innovationplus/ipp/jsontype/IPPGeoResource;Ljp/innovationplus/ipp/core/IPPQueryCallback;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljp/innovationplus/ipp/jsontype/IPPGeoResource",
            "<+",
            "Ljp/innovationplus/ipp/jsontype/IPPApplicationResource;",
            ">;>(",
            "Ljava/lang/Class",
            "<TT;>;TT;",
            "Ljp/innovationplus/ipp/core/IPPQueryCallback",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljp/innovationplus/ipp/core/IPPException;
        }
    .end annotation

    .prologue
    .line 56
    .local p1, "resourceClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p2, "resource":Ljp/innovationplus/ipp/jsontype/IPPGeoResource;, "TT;"
    .local p3, "callback":Ljp/innovationplus/ipp/core/IPPQueryCallback;, "Ljp/innovationplus/ipp/core/IPPQueryCallback<Ljava/lang/String;>;"
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "/georesource"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 57
    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljp/innovationplus/ipp/jsontype/IPPGeoResource;

    invoke-virtual {v2}, Ljp/innovationplus/ipp/jsontype/IPPGeoResource;->getResourceName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 58
    .local v1, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-super {p0, v2}, Ljp/innovationplus/ipp/client/_HttpURLConnection;->setResourcePath(Ljava/lang/String;)V

    .line 60
    const-class v2, Ljava/lang/String;

    invoke-super {p0, v2, p2, p3}, Ljp/innovationplus/ipp/client/_HttpURLConnection;->ippPostRequest(Ljava/lang/Class;Ljava/lang/Object;Ljp/innovationplus/ipp/core/IPPQueryCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    .end local v1    # "sb":Ljava/lang/StringBuilder;
    :cond_0
    :goto_0
    return-void

    .line 62
    :catch_0
    move-exception v0

    .line 63
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {p0}, Ljp/innovationplus/ipp/client/IPPGeoResourceClient;->isDebugMessage()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 64
    const-string v2, "IPPKit"

    const-string v3, "can not instanciate resource class"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public createAll(Ljava/lang/Class;[Ljp/innovationplus/ipp/jsontype/IPPGeoResource;Ljp/innovationplus/ipp/core/IPPQueryCallback;)V
    .locals 4
    .param p2, "resource"    # [Ljp/innovationplus/ipp/jsontype/IPPGeoResource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljp/innovationplus/ipp/jsontype/IPPGeoResource",
            "<+",
            "Ljp/innovationplus/ipp/jsontype/IPPApplicationResource;",
            ">;>(",
            "Ljava/lang/Class",
            "<TT;>;[TT;",
            "Ljp/innovationplus/ipp/core/IPPQueryCallback",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljp/innovationplus/ipp/core/IPPException;
        }
    .end annotation

    .prologue
    .line 80
    .local p1, "resourceClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p3, "callback":Ljp/innovationplus/ipp/core/IPPQueryCallback;, "Ljp/innovationplus/ipp/core/IPPQueryCallback<Ljava/lang/Void;>;"
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "/georesources"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 81
    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljp/innovationplus/ipp/jsontype/IPPGeoResource;

    invoke-virtual {v2}, Ljp/innovationplus/ipp/jsontype/IPPGeoResource;->getResourceName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 82
    .local v1, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-super {p0, v2}, Ljp/innovationplus/ipp/client/_HttpURLConnection;->setResourcePath(Ljava/lang/String;)V

    .line 84
    const-class v2, Ljava/lang/Void;

    invoke-super {p0, v2, p2, p3}, Ljp/innovationplus/ipp/client/_HttpURLConnection;->ippPostRequest(Ljava/lang/Class;Ljava/lang/Object;Ljp/innovationplus/ipp/core/IPPQueryCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    .end local v1    # "sb":Ljava/lang/StringBuilder;
    :cond_0
    :goto_0
    return-void

    .line 86
    :catch_0
    move-exception v0

    .line 87
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {p0}, Ljp/innovationplus/ipp/client/IPPGeoResourceClient;->isDebugMessage()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 88
    const-string v2, "IPPKit"

    const-string v3, "can not instanciate resource class"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public delete(Ljava/lang/Class;Ljava/lang/String;Ljp/innovationplus/ipp/core/IPPQueryCallback;)V
    .locals 4
    .param p2, "resourceId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljp/innovationplus/ipp/jsontype/IPPGeoResource",
            "<+",
            "Ljp/innovationplus/ipp/jsontype/IPPApplicationResource;",
            ">;>(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/String;",
            "Ljp/innovationplus/ipp/core/IPPQueryCallback",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljp/innovationplus/ipp/core/IPPException;
        }
    .end annotation

    .prologue
    .line 171
    .local p1, "resourceClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p3, "callback":Ljp/innovationplus/ipp/core/IPPQueryCallback;, "Ljp/innovationplus/ipp/core/IPPQueryCallback<Ljava/lang/String;>;"
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "/georesource"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 172
    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljp/innovationplus/ipp/jsontype/IPPGeoResource;

    invoke-virtual {v2}, Ljp/innovationplus/ipp/jsontype/IPPGeoResource;->getResourceName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 173
    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 174
    .local v1, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-super {p0, v2}, Ljp/innovationplus/ipp/client/_HttpURLConnection;->setResourcePath(Ljava/lang/String;)V

    .line 176
    const-class v2, Ljava/lang/String;

    invoke-super {p0, v2, p3}, Ljp/innovationplus/ipp/client/_HttpURLConnection;->ippDeleteRequest(Ljava/lang/Class;Ljp/innovationplus/ipp/core/IPPQueryCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 183
    .end local v1    # "sb":Ljava/lang/StringBuilder;
    :cond_0
    :goto_0
    return-void

    .line 178
    :catch_0
    move-exception v0

    .line 179
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {p0}, Ljp/innovationplus/ipp/client/IPPGeoResourceClient;->isDebugMessage()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 180
    const-string v2, "IPPKit"

    const-string v3, "can not instanciate resource class"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public get(Ljava/lang/Class;Ljava/lang/String;Ljp/innovationplus/ipp/core/IPPQueryCallback;)V
    .locals 5
    .param p2, "resourceId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljp/innovationplus/ipp/jsontype/IPPGeoResource",
            "<+",
            "Ljp/innovationplus/ipp/jsontype/IPPApplicationResource;",
            ">;>(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/String;",
            "Ljp/innovationplus/ipp/core/IPPQueryCallback",
            "<TT;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljp/innovationplus/ipp/core/IPPException;
        }
    .end annotation

    .prologue
    .line 105
    .local p1, "resourceClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p3, "callback":Ljp/innovationplus/ipp/core/IPPQueryCallback;, "Ljp/innovationplus/ipp/core/IPPQueryCallback<TT;>;"
    :try_start_0
    const-string v3, "IPPKit"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v2, "rettype:"

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljp/innovationplus/ipp/jsontype/IPPGeoResource;

    invoke-virtual {v2}, Ljp/innovationplus/ipp/jsontype/IPPGeoResource;->getResourceName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "/georesource"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 107
    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljp/innovationplus/ipp/jsontype/IPPGeoResource;

    invoke-virtual {v2}, Ljp/innovationplus/ipp/jsontype/IPPGeoResource;->getResourceName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 108
    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 109
    .local v1, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-super {p0, v2}, Ljp/innovationplus/ipp/client/_HttpURLConnection;->setResourcePath(Ljava/lang/String;)V

    .line 111
    invoke-super {p0, p1, p3}, Ljp/innovationplus/ipp/client/_HttpURLConnection;->ippGetRequest(Ljava/lang/Class;Ljp/innovationplus/ipp/core/IPPQueryCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 118
    .end local v1    # "sb":Ljava/lang/StringBuilder;
    :cond_0
    :goto_0
    return-void

    .line 113
    :catch_0
    move-exception v0

    .line 114
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {p0}, Ljp/innovationplus/ipp/client/IPPGeoResourceClient;->isDebugMessage()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 115
    const-string v2, "IPPKit"

    const-string v3, "can not instanciate resource class"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public bridge synthetic getVersionNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1
    invoke-super {p0}, Ljp/innovationplus/ipp/client/_HttpURLConnection;->getVersionNumber()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic isDebugMessage()Z
    .locals 1

    .prologue
    .line 1
    invoke-super {p0}, Ljp/innovationplus/ipp/client/_HttpURLConnection;->isDebugMessage()Z

    move-result v0

    return v0
.end method

.method public query(Ljava/lang/Class;Ljp/innovationplus/ipp/client/IPPGeoResourceClient$QueryCondition;Ljp/innovationplus/ipp/core/IPPQueryCallback;)V
    .locals 5
    .param p2, "condition"    # Ljp/innovationplus/ipp/client/IPPGeoResourceClient$QueryCondition;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljp/innovationplus/ipp/jsontype/IPPGeoResource",
            "<+",
            "Ljp/innovationplus/ipp/jsontype/IPPApplicationResource;",
            ">;>(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljp/innovationplus/ipp/client/IPPGeoResourceClient$QueryCondition;",
            "Ljp/innovationplus/ipp/core/IPPQueryCallback",
            "<[TT;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljp/innovationplus/ipp/core/IPPException;
        }
    .end annotation

    .prologue
    .line 133
    .local p1, "resourceClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p3, "callback":Ljp/innovationplus/ipp/core/IPPQueryCallback;, "Ljp/innovationplus/ipp/core/IPPQueryCallback<[TT;>;"
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "/georesources"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 134
    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljp/innovationplus/ipp/jsontype/IPPGeoResource;

    invoke-virtual {v3}, Ljp/innovationplus/ipp/jsontype/IPPGeoResource;->getResourceName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 135
    .local v2, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-super {p0, v3}, Ljp/innovationplus/ipp/client/_HttpURLConnection;->setResourcePath(Ljava/lang/String;)V

    .line 137
    const/4 v3, 0x0

    invoke-static {p1, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljp/innovationplus/ipp/jsontype/IPPGeoResource;

    .line 138
    .local v0, "arrayObj":[Ljp/innovationplus/ipp/jsontype/IPPGeoResource;
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p2}, Ljp/innovationplus/ipp/client/IPPGeoResourceClient$QueryCondition;->build()Ljava/util/List;

    move-result-object v4

    invoke-super {p0, v3, v4, p3}, Ljp/innovationplus/ipp/client/_HttpURLConnection;->ippGetRequest(Ljava/lang/Class;Ljava/util/List;Ljp/innovationplus/ipp/core/IPPQueryCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 145
    .end local v0    # "arrayObj":[Ljp/innovationplus/ipp/jsontype/IPPGeoResource;
    .end local v2    # "sb":Ljava/lang/StringBuilder;
    :cond_0
    :goto_0
    return-void

    .line 140
    :catch_0
    move-exception v1

    .line 141
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {p0}, Ljp/innovationplus/ipp/client/IPPGeoResourceClient;->isDebugMessage()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 142
    const-string v3, "IPPKit"

    const-string v4, "can not instanciate resource class"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public bridge synthetic setApplicationId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    invoke-super {p0, p1}, Ljp/innovationplus/ipp/client/_HttpURLConnection;->setApplicationId(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic setAuthKey(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    invoke-super {p0, p1}, Ljp/innovationplus/ipp/client/_HttpURLConnection;->setAuthKey(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic setDebugMessage(Z)V
    .locals 0

    .prologue
    .line 1
    invoke-super {p0, p1}, Ljp/innovationplus/ipp/client/_HttpURLConnection;->setDebugMessage(Z)V

    return-void
.end method
