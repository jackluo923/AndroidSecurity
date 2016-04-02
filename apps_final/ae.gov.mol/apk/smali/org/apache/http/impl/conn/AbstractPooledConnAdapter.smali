.class public abstract Lorg/apache/http/impl/conn/AbstractPooledConnAdapter;
.super Lorg/apache/http/impl/conn/AbstractClientConnAdapter;
.source "AbstractPooledConnAdapter.java"


# instance fields
.field protected volatile poolEntry:Lorg/apache/http/impl/conn/AbstractPoolEntry;


# direct methods
.method protected constructor <init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/impl/conn/AbstractPoolEntry;)V
    .locals 1
    .param p1, "manager"    # Lorg/apache/http/conn/ClientConnectionManager;
    .param p2, "entry"    # Lorg/apache/http/impl/conn/AbstractPoolEntry;

    .prologue
    .line 63
    iget-object v0, p2, Lorg/apache/http/impl/conn/AbstractPoolEntry;->connection:Lorg/apache/http/conn/OperatedClientConnection;

    invoke-direct {p0, p1, v0}, Lorg/apache/http/impl/conn/AbstractClientConnAdapter;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/conn/OperatedClientConnection;)V

    .line 64
    iput-object p2, p0, Lorg/apache/http/impl/conn/AbstractPooledConnAdapter;->poolEntry:Lorg/apache/http/impl/conn/AbstractPoolEntry;

    .line 65
    return-void
.end method


# virtual methods
.method protected final assertAttached()V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 76
    iget-object v0, p0, Lorg/apache/http/impl/conn/AbstractPooledConnAdapter;->poolEntry:Lorg/apache/http/impl/conn/AbstractPoolEntry;

    if-nez v0, :cond_0

    .line 77
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Adapter is detached."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 79
    :cond_0
    return-void
.end method

.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 142
    iget-object v1, p0, Lorg/apache/http/impl/conn/AbstractPooledConnAdapter;->poolEntry:Lorg/apache/http/impl/conn/AbstractPoolEntry;

    .line 143
    .local v1, "entry":Lorg/apache/http/impl/conn/AbstractPoolEntry;
    if-eqz v1, :cond_0

    .line 144
    invoke-virtual {v1}, Lorg/apache/http/impl/conn/AbstractPoolEntry;->shutdownEntry()V

    .line 146
    :cond_0
    invoke-virtual {p0}, Lorg/apache/http/impl/conn/AbstractPooledConnAdapter;->getWrappedConnection()Lorg/apache/http/conn/OperatedClientConnection;

    move-result-object v0

    .line 147
    .local v0, "conn":Lorg/apache/http/conn/OperatedClientConnection;
    if-eqz v0, :cond_1

    .line 148
    invoke-interface {v0}, Lorg/apache/http/conn/OperatedClientConnection;->close()V

    .line 150
    :cond_1
    return-void
.end method

.method protected declared-synchronized detach()V
    .locals 1

    .prologue
    .line 87
    monitor-enter p0

    :try_start_0
    invoke-super {p0}, Lorg/apache/http/impl/conn/AbstractClientConnAdapter;->detach()V

    .line 88
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/http/impl/conn/AbstractPooledConnAdapter;->poolEntry:Lorg/apache/http/impl/conn/AbstractPoolEntry;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    monitor-exit p0

    return-void

    .line 87
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getRoute()Lorg/apache/http/conn/routing/HttpRoute;
    .locals 3

    .prologue
    .line 92
    iget-object v0, p0, Lorg/apache/http/impl/conn/AbstractPooledConnAdapter;->poolEntry:Lorg/apache/http/impl/conn/AbstractPoolEntry;

    .line 93
    .local v0, "entry":Lorg/apache/http/impl/conn/AbstractPoolEntry;
    if-nez v0, :cond_0

    .line 94
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Adapter is detached."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 96
    :cond_0
    iget-object v1, v0, Lorg/apache/http/impl/conn/AbstractPoolEntry;->tracker:Lorg/apache/http/conn/routing/RouteTracker;

    if-nez v1, :cond_1

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_1
    iget-object v1, v0, Lorg/apache/http/impl/conn/AbstractPoolEntry;->tracker:Lorg/apache/http/conn/routing/RouteTracker;

    invoke-virtual {v1}, Lorg/apache/http/conn/routing/RouteTracker;->toRoute()Lorg/apache/http/conn/routing/HttpRoute;

    move-result-object v1

    goto :goto_0
.end method

.method public getState()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 164
    iget-object v0, p0, Lorg/apache/http/impl/conn/AbstractPooledConnAdapter;->poolEntry:Lorg/apache/http/impl/conn/AbstractPoolEntry;

    .line 165
    .local v0, "entry":Lorg/apache/http/impl/conn/AbstractPoolEntry;
    if-nez v0, :cond_0

    .line 166
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Adapter is detached."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 168
    :cond_0
    invoke-virtual {v0}, Lorg/apache/http/impl/conn/AbstractPoolEntry;->getState()Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public layerProtocol(Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/params/HttpParams;)V
    .locals 3
    .param p1, "context"    # Lorg/apache/http/protocol/HttpContext;
    .param p2, "params"    # Lorg/apache/http/params/HttpParams;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 133
    invoke-virtual {p0}, Lorg/apache/http/impl/conn/AbstractPooledConnAdapter;->assertNotAborted()V

    .line 134
    iget-object v0, p0, Lorg/apache/http/impl/conn/AbstractPooledConnAdapter;->poolEntry:Lorg/apache/http/impl/conn/AbstractPoolEntry;

    .line 135
    .local v0, "entry":Lorg/apache/http/impl/conn/AbstractPoolEntry;
    if-nez v0, :cond_0

    .line 136
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Adapter is detached."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 138
    :cond_0
    invoke-virtual {v0, p1, p2}, Lorg/apache/http/impl/conn/AbstractPoolEntry;->layerProtocol(Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/params/HttpParams;)V

    .line 139
    return-void
.end method

.method public open(Lorg/apache/http/conn/routing/HttpRoute;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/params/HttpParams;)V
    .locals 3
    .param p1, "route"    # Lorg/apache/http/conn/routing/HttpRoute;
    .param p2, "context"    # Lorg/apache/http/protocol/HttpContext;
    .param p3, "params"    # Lorg/apache/http/params/HttpParams;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 103
    invoke-virtual {p0}, Lorg/apache/http/impl/conn/AbstractPooledConnAdapter;->assertNotAborted()V

    .line 104
    iget-object v0, p0, Lorg/apache/http/impl/conn/AbstractPooledConnAdapter;->poolEntry:Lorg/apache/http/impl/conn/AbstractPoolEntry;

    .line 105
    .local v0, "entry":Lorg/apache/http/impl/conn/AbstractPoolEntry;
    if-nez v0, :cond_0

    .line 106
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Adapter is detached."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 108
    :cond_0
    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/http/impl/conn/AbstractPoolEntry;->open(Lorg/apache/http/conn/routing/HttpRoute;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/params/HttpParams;)V

    .line 109
    return-void
.end method

.method public setState(Ljava/lang/Object;)V
    .locals 3
    .param p1, "state"    # Ljava/lang/Object;

    .prologue
    .line 172
    iget-object v0, p0, Lorg/apache/http/impl/conn/AbstractPooledConnAdapter;->poolEntry:Lorg/apache/http/impl/conn/AbstractPoolEntry;

    .line 173
    .local v0, "entry":Lorg/apache/http/impl/conn/AbstractPoolEntry;
    if-nez v0, :cond_0

    .line 174
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Adapter is detached."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 176
    :cond_0
    invoke-virtual {v0, p1}, Lorg/apache/http/impl/conn/AbstractPoolEntry;->setState(Ljava/lang/Object;)V

    .line 177
    return-void
.end method

.method public shutdown()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 153
    iget-object v1, p0, Lorg/apache/http/impl/conn/AbstractPooledConnAdapter;->poolEntry:Lorg/apache/http/impl/conn/AbstractPoolEntry;

    .line 154
    .local v1, "entry":Lorg/apache/http/impl/conn/AbstractPoolEntry;
    if-eqz v1, :cond_0

    .line 155
    invoke-virtual {v1}, Lorg/apache/http/impl/conn/AbstractPoolEntry;->shutdownEntry()V

    .line 157
    :cond_0
    invoke-virtual {p0}, Lorg/apache/http/impl/conn/AbstractPooledConnAdapter;->getWrappedConnection()Lorg/apache/http/conn/OperatedClientConnection;

    move-result-object v0

    .line 158
    .local v0, "conn":Lorg/apache/http/conn/OperatedClientConnection;
    if-eqz v0, :cond_1

    .line 159
    invoke-interface {v0}, Lorg/apache/http/conn/OperatedClientConnection;->shutdown()V

    .line 161
    :cond_1
    return-void
.end method

.method public tunnelProxy(Lorg/apache/http/HttpHost;ZLorg/apache/http/params/HttpParams;)V
    .locals 3
    .param p1, "next"    # Lorg/apache/http/HttpHost;
    .param p2, "secure"    # Z
    .param p3, "params"    # Lorg/apache/http/params/HttpParams;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 123
    invoke-virtual {p0}, Lorg/apache/http/impl/conn/AbstractPooledConnAdapter;->assertNotAborted()V

    .line 124
    iget-object v0, p0, Lorg/apache/http/impl/conn/AbstractPooledConnAdapter;->poolEntry:Lorg/apache/http/impl/conn/AbstractPoolEntry;

    .line 125
    .local v0, "entry":Lorg/apache/http/impl/conn/AbstractPoolEntry;
    if-nez v0, :cond_0

    .line 126
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Adapter is detached."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 128
    :cond_0
    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/http/impl/conn/AbstractPoolEntry;->tunnelProxy(Lorg/apache/http/HttpHost;ZLorg/apache/http/params/HttpParams;)V

    .line 129
    return-void
.end method

.method public tunnelTarget(ZLorg/apache/http/params/HttpParams;)V
    .locals 3
    .param p1, "secure"    # Z
    .param p2, "params"    # Lorg/apache/http/params/HttpParams;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 113
    invoke-virtual {p0}, Lorg/apache/http/impl/conn/AbstractPooledConnAdapter;->assertNotAborted()V

    .line 114
    iget-object v0, p0, Lorg/apache/http/impl/conn/AbstractPooledConnAdapter;->poolEntry:Lorg/apache/http/impl/conn/AbstractPoolEntry;

    .line 115
    .local v0, "entry":Lorg/apache/http/impl/conn/AbstractPoolEntry;
    if-nez v0, :cond_0

    .line 116
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Adapter is detached."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 118
    :cond_0
    invoke-virtual {v0, p1, p2}, Lorg/apache/http/impl/conn/AbstractPoolEntry;->tunnelTarget(ZLorg/apache/http/params/HttpParams;)V

    .line 119
    return-void
.end method
