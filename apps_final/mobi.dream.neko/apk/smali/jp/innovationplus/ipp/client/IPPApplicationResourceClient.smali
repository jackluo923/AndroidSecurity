.class public Ljp/innovationplus/ipp/client/IPPApplicationResourceClient;
.super Ljp/innovationplus/ipp/client/_HttpURLConnection;
.source "IPPApplicationResourceClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljp/innovationplus/ipp/client/IPPApplicationResourceClient$QueryCondition;
    }
.end annotation


# static fields
.field private static final IPP_PUBLICS_PATH:Ljava/lang/String; = "/pubs"

.field private static final IPP_PUBLIC_PATH:Ljava/lang/String; = "/pub"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 39
    const-string v0, "/pub"

    invoke-direct {p0, p1, v0}, Ljp/innovationplus/ipp/client/_HttpURLConnection;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 40
    return-void
.end method


# virtual methods
.method public create(Ljava/lang/String;Ljp/innovationplus/ipp/jsontype/IPPApplicationResource;Ljp/innovationplus/ipp/core/IPPQueryCallback;)V
    .locals 4
    .param p1, "resourceName"    # Ljava/lang/String;
    .param p2, "resource"    # Ljp/innovationplus/ipp/jsontype/IPPApplicationResource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljp/innovationplus/ipp/jsontype/IPPApplicationResource;",
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
    .line 54
    .local p3, "callback":Ljp/innovationplus/ipp/core/IPPQueryCallback;, "Ljp/innovationplus/ipp/core/IPPQueryCallback<Ljava/lang/String;>;"
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "/pub"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 55
    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 56
    .local v1, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-super {p0, v2}, Ljp/innovationplus/ipp/client/_HttpURLConnection;->setResourcePath(Ljava/lang/String;)V

    .line 58
    const-class v2, Ljava/lang/String;

    invoke-super {p0, v2, p2, p3}, Ljp/innovationplus/ipp/client/_HttpURLConnection;->ippPostRequest(Ljava/lang/Class;Ljava/util/Map;Ljp/innovationplus/ipp/core/IPPQueryCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    .end local v1    # "sb":Ljava/lang/StringBuilder;
    :cond_0
    :goto_0
    return-void

    .line 60
    :catch_0
    move-exception v0

    .line 61
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {p0}, Ljp/innovationplus/ipp/client/IPPApplicationResourceClient;->isDebugMessage()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 62
    const-string v2, "IPPKit"

    const-string v3, "can not instanciate resource class"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public createAll(Ljava/lang/String;[Ljp/innovationplus/ipp/jsontype/IPPApplicationResource;Ljp/innovationplus/ipp/core/IPPQueryCallback;)V
    .locals 4
    .param p1, "resourceName"    # Ljava/lang/String;
    .param p2, "resource"    # [Ljp/innovationplus/ipp/jsontype/IPPApplicationResource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljp/innovationplus/ipp/jsontype/IPPApplicationResource;",
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
    .line 78
    .local p3, "callback":Ljp/innovationplus/ipp/core/IPPQueryCallback;, "Ljp/innovationplus/ipp/core/IPPQueryCallback<Ljava/lang/Void;>;"
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "/pubs"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 79
    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 80
    .local v1, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-super {p0, v2}, Ljp/innovationplus/ipp/client/_HttpURLConnection;->setResourcePath(Ljava/lang/String;)V

    .line 82
    const-class v2, Ljava/lang/Void;

    invoke-super {p0, v2, p2, p3}, Ljp/innovationplus/ipp/client/_HttpURLConnection;->ippPostRequest(Ljava/lang/Class;Ljava/lang/Object;Ljp/innovationplus/ipp/core/IPPQueryCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    .end local v1    # "sb":Ljava/lang/StringBuilder;
    :cond_0
    :goto_0
    return-void

    .line 84
    :catch_0
    move-exception v0

    .line 85
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {p0}, Ljp/innovationplus/ipp/client/IPPApplicationResourceClient;->isDebugMessage()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 86
    const-string v2, "IPPKit"

    const-string v3, "can not instanciate resource class"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public delete(Ljava/lang/String;Ljava/lang/String;Ljp/innovationplus/ipp/core/IPPQueryCallback;)V
    .locals 4
    .param p1, "resourceName"    # Ljava/lang/String;
    .param p2, "resourceId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljp/innovationplus/ipp/jsontype/IPPApplicationResource;",
            ">(",
            "Ljava/lang/String;",
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
    .line 170
    .local p3, "callback":Ljp/innovationplus/ipp/core/IPPQueryCallback;, "Ljp/innovationplus/ipp/core/IPPQueryCallback<Ljava/lang/String;>;"
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "/pub"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 171
    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 172
    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 173
    .local v1, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-super {p0, v2}, Ljp/innovationplus/ipp/client/_HttpURLConnection;->setResourcePath(Ljava/lang/String;)V

    .line 175
    const-class v2, Ljava/lang/String;

    invoke-super {p0, v2, p3}, Ljp/innovationplus/ipp/client/_HttpURLConnection;->ippDeleteRequest(Ljava/lang/Class;Ljp/innovationplus/ipp/core/IPPQueryCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 182
    .end local v1    # "sb":Ljava/lang/StringBuilder;
    :cond_0
    :goto_0
    return-void

    .line 177
    :catch_0
    move-exception v0

    .line 178
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {p0}, Ljp/innovationplus/ipp/client/IPPApplicationResourceClient;->isDebugMessage()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 179
    const-string v2, "IPPKit"

    const-string v3, "can not instanciate resource class"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public varargs get(Ljava/lang/String;Ljava/lang/String;Ljp/innovationplus/ipp/core/IPPQueryCallback;[Ljp/innovationplus/ipp/jsontype/IPPApplicationResource;)V
    .locals 5
    .param p1, "resourceName"    # Ljava/lang/String;
    .param p2, "resourceId"    # Ljava/lang/String;
    .param p4, "callbackType"    # [Ljp/innovationplus/ipp/jsontype/IPPApplicationResource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljp/innovationplus/ipp/jsontype/IPPApplicationResource;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljp/innovationplus/ipp/core/IPPQueryCallback",
            "<TT;>;[TT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljp/innovationplus/ipp/core/IPPException;
        }
    .end annotation

    .prologue
    .line 106
    .local p3, "callback":Ljp/innovationplus/ipp/core/IPPQueryCallback;, "Ljp/innovationplus/ipp/core/IPPQueryCallback<TT;>;"
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "/pub"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 107
    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 108
    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 109
    .local v1, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-super {p0, v3}, Ljp/innovationplus/ipp/client/_HttpURLConnection;->setResourcePath(Ljava/lang/String;)V

    .line 111
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v2

    .line 112
    .local v2, "t":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-super {p0, v2, p3}, Ljp/innovationplus/ipp/client/_HttpURLConnection;->ippGetRequest(Ljava/lang/Class;Ljp/innovationplus/ipp/core/IPPQueryCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 119
    .end local v1    # "sb":Ljava/lang/StringBuilder;
    .end local v2    # "t":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    :cond_0
    :goto_0
    return-void

    .line 114
    :catch_0
    move-exception v0

    .line 115
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {p0}, Ljp/innovationplus/ipp/client/IPPApplicationResourceClient;->isDebugMessage()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 116
    const-string v3, "IPPKit"

    const-string v4, "can not instanciate resource class"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

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

.method public varargs query(Ljava/lang/String;Ljp/innovationplus/ipp/client/IPPApplicationResourceClient$QueryCondition;Ljp/innovationplus/ipp/core/IPPQueryCallback;[Ljp/innovationplus/ipp/jsontype/IPPApplicationResource;)V
    .locals 4
    .param p1, "resourceName"    # Ljava/lang/String;
    .param p2, "condition"    # Ljp/innovationplus/ipp/client/IPPApplicationResourceClient$QueryCondition;
    .param p4, "callbackType"    # [Ljp/innovationplus/ipp/jsontype/IPPApplicationResource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljp/innovationplus/ipp/jsontype/IPPApplicationResource;",
            ">(",
            "Ljava/lang/String;",
            "Ljp/innovationplus/ipp/client/IPPApplicationResourceClient$QueryCondition;",
            "Ljp/innovationplus/ipp/core/IPPQueryCallback",
            "<[TT;>;[TT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljp/innovationplus/ipp/core/IPPException;
        }
    .end annotation

    .prologue
    .line 134
    .local p3, "callback":Ljp/innovationplus/ipp/core/IPPQueryCallback;, "Ljp/innovationplus/ipp/core/IPPQueryCallback<[TT;>;"
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "/pubs"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 135
    .local v1, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-super {p0, v2}, Ljp/innovationplus/ipp/client/_HttpURLConnection;->setResourcePath(Ljava/lang/String;)V

    .line 137
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p2}, Ljp/innovationplus/ipp/client/IPPApplicationResourceClient$QueryCondition;->build()Ljava/util/List;

    move-result-object v3

    invoke-super {p0, v2, v3, p3}, Ljp/innovationplus/ipp/client/_HttpURLConnection;->ippGetRequest(Ljava/lang/Class;Ljava/util/List;Ljp/innovationplus/ipp/core/IPPQueryCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 144
    .end local v1    # "sb":Ljava/lang/StringBuilder;
    :cond_0
    :goto_0
    return-void

    .line 139
    :catch_0
    move-exception v0

    .line 140
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {p0}, Ljp/innovationplus/ipp/client/IPPApplicationResourceClient;->isDebugMessage()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 141
    const-string v2, "IPPKit"

    const-string v3, "can not instanciate resource class"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

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
