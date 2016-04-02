.class public Lorg/apache/http/conn/BasicManagedEntity;
.super Lorg/apache/http/entity/HttpEntityWrapper;
.source "BasicManagedEntity.java"

# interfaces
.implements Lorg/apache/http/conn/ConnectionReleaseTrigger;
.implements Lorg/apache/http/conn/EofSensorWatcher;


# annotations
.annotation build Lorg/apache/http/annotation/NotThreadSafe;
.end annotation


# instance fields
.field protected final attemptReuse:Z

.field protected managedConn:Lorg/apache/http/conn/ManagedClientConnection;


# direct methods
.method public constructor <init>(Lorg/apache/http/HttpEntity;Lorg/apache/http/conn/ManagedClientConnection;Z)V
    .locals 2
    .param p1, "entity"    # Lorg/apache/http/HttpEntity;
    .param p2, "conn"    # Lorg/apache/http/conn/ManagedClientConnection;
    .param p3, "reuse"    # Z

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lorg/apache/http/entity/HttpEntityWrapper;-><init>(Lorg/apache/http/HttpEntity;)V

    .line 72
    if-nez p2, :cond_0

    .line 73
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Connection may not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 76
    :cond_0
    iput-object p2, p0, Lorg/apache/http/conn/BasicManagedEntity;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    .line 77
    iput-boolean p3, p0, Lorg/apache/http/conn/BasicManagedEntity;->attemptReuse:Z

    .line 78
    return-void
.end method


# virtual methods
.method public abortConnection()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 118
    iget-object v0, p0, Lorg/apache/http/conn/BasicManagedEntity;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    if-eqz v0, :cond_0

    .line 120
    :try_start_0
    iget-object v0, p0, Lorg/apache/http/conn/BasicManagedEntity;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    invoke-interface {v0}, Lorg/apache/http/conn/ManagedClientConnection;->abortConnection()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 122
    iput-object v1, p0, Lorg/apache/http/conn/BasicManagedEntity;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    .line 125
    :cond_0
    return-void

    .line 122
    :catchall_0
    move-exception v0

    iput-object v1, p0, Lorg/apache/http/conn/BasicManagedEntity;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    throw v0
.end method

.method public consumeContent()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 92
    iget-object v0, p0, Lorg/apache/http/conn/BasicManagedEntity;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    if-nez v0, :cond_0

    .line 104
    :goto_0
    return-void

    .line 96
    :cond_0
    :try_start_0
    iget-boolean v0, p0, Lorg/apache/http/conn/BasicManagedEntity;->attemptReuse:Z

    if-eqz v0, :cond_1

    .line 98
    iget-object v0, p0, Lorg/apache/http/conn/BasicManagedEntity;->wrappedEntity:Lorg/apache/http/HttpEntity;

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->consumeContent()V

    .line 99
    iget-object v0, p0, Lorg/apache/http/conn/BasicManagedEntity;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    invoke-interface {v0}, Lorg/apache/http/conn/ManagedClientConnection;->markReusable()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 102
    :cond_1
    invoke-virtual {p0}, Lorg/apache/http/conn/BasicManagedEntity;->releaseManagedConnection()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lorg/apache/http/conn/BasicManagedEntity;->releaseManagedConnection()V

    throw v0
.end method

.method public eofDetected(Ljava/io/InputStream;)Z
    .locals 1
    .param p1, "wrapped"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 129
    :try_start_0
    iget-boolean v0, p0, Lorg/apache/http/conn/BasicManagedEntity;->attemptReuse:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/http/conn/BasicManagedEntity;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    if-eqz v0, :cond_0

    .line 132
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 133
    iget-object v0, p0, Lorg/apache/http/conn/BasicManagedEntity;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    invoke-interface {v0}, Lorg/apache/http/conn/ManagedClientConnection;->markReusable()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 136
    :cond_0
    invoke-virtual {p0}, Lorg/apache/http/conn/BasicManagedEntity;->releaseManagedConnection()V

    .line 138
    const/4 v0, 0x0

    return v0

    .line 136
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lorg/apache/http/conn/BasicManagedEntity;->releaseManagedConnection()V

    throw v0
.end method

.method public getContent()Ljava/io/InputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 87
    new-instance v0, Lorg/apache/http/conn/EofSensorInputStream;

    iget-object v1, p0, Lorg/apache/http/conn/BasicManagedEntity;->wrappedEntity:Lorg/apache/http/HttpEntity;

    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lorg/apache/http/conn/EofSensorInputStream;-><init>(Ljava/io/InputStream;Lorg/apache/http/conn/EofSensorWatcher;)V

    return-object v0
.end method

.method public isRepeatable()Z
    .locals 1

    .prologue
    .line 82
    const/4 v0, 0x0

    return v0
.end method

.method public releaseConnection()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 113
    invoke-virtual {p0}, Lorg/apache/http/conn/BasicManagedEntity;->consumeContent()V

    .line 114
    return-void
.end method

.method protected releaseManagedConnection()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 173
    iget-object v0, p0, Lorg/apache/http/conn/BasicManagedEntity;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    if-eqz v0, :cond_0

    .line 175
    :try_start_0
    iget-object v0, p0, Lorg/apache/http/conn/BasicManagedEntity;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    invoke-interface {v0}, Lorg/apache/http/conn/ManagedClientConnection;->releaseConnection()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 177
    iput-object v1, p0, Lorg/apache/http/conn/BasicManagedEntity;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    .line 180
    :cond_0
    return-void

    .line 177
    :catchall_0
    move-exception v0

    iput-object v1, p0, Lorg/apache/http/conn/BasicManagedEntity;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    throw v0
.end method

.method public streamAbort(Ljava/io/InputStream;)Z
    .locals 1
    .param p1, "wrapped"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 156
    iget-object v0, p0, Lorg/apache/http/conn/BasicManagedEntity;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    if-eqz v0, :cond_0

    .line 157
    iget-object v0, p0, Lorg/apache/http/conn/BasicManagedEntity;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    invoke-interface {v0}, Lorg/apache/http/conn/ManagedClientConnection;->abortConnection()V

    .line 159
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public streamClosed(Ljava/io/InputStream;)Z
    .locals 1
    .param p1, "wrapped"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 143
    :try_start_0
    iget-boolean v0, p0, Lorg/apache/http/conn/BasicManagedEntity;->attemptReuse:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/http/conn/BasicManagedEntity;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    if-eqz v0, :cond_0

    .line 146
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 147
    iget-object v0, p0, Lorg/apache/http/conn/BasicManagedEntity;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    invoke-interface {v0}, Lorg/apache/http/conn/ManagedClientConnection;->markReusable()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 150
    :cond_0
    invoke-virtual {p0}, Lorg/apache/http/conn/BasicManagedEntity;->releaseManagedConnection()V

    .line 152
    const/4 v0, 0x0

    return v0

    .line 150
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lorg/apache/http/conn/BasicManagedEntity;->releaseManagedConnection()V

    throw v0
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 0
    .param p1, "outstream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 108
    invoke-super {p0, p1}, Lorg/apache/http/entity/HttpEntityWrapper;->writeTo(Ljava/io/OutputStream;)V

    .line 109
    invoke-virtual {p0}, Lorg/apache/http/conn/BasicManagedEntity;->consumeContent()V

    .line 110
    return-void
.end method
