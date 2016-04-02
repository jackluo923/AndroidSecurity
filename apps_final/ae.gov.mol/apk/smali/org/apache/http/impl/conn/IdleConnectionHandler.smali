.class public Lorg/apache/http/impl/conn/IdleConnectionHandler;
.super Ljava/lang/Object;
.source "IdleConnectionHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/http/impl/conn/IdleConnectionHandler$TimeValues;
    }
.end annotation

.annotation build Lorg/apache/http/annotation/NotThreadSafe;
.end annotation


# instance fields
.field private final connectionToTimes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lorg/apache/http/HttpConnection;",
            "Lorg/apache/http/impl/conn/IdleConnectionHandler$TimeValues;",
            ">;"
        }
    .end annotation
.end field

.field private final log:Lorg/apache/commons/logging/Log;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/http/impl/conn/IdleConnectionHandler;->log:Lorg/apache/commons/logging/Log;

    .line 61
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/http/impl/conn/IdleConnectionHandler;->connectionToTimes:Ljava/util/Map;

    .line 62
    return-void
.end method


# virtual methods
.method public add(Lorg/apache/http/HttpConnection;JLjava/util/concurrent/TimeUnit;)V
    .locals 7
    .param p1, "connection"    # Lorg/apache/http/HttpConnection;
    .param p2, "validDuration"    # J
    .param p4, "unit"    # Ljava/util/concurrent/TimeUnit;

    .prologue
    .line 74
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 76
    .local v1, "timeAdded":J
    iget-object v0, p0, Lorg/apache/http/impl/conn/IdleConnectionHandler;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v0}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lorg/apache/http/impl/conn/IdleConnectionHandler;->log:Lorg/apache/commons/logging/Log;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Adding connection at: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 80
    :cond_0
    iget-object v6, p0, Lorg/apache/http/impl/conn/IdleConnectionHandler;->connectionToTimes:Ljava/util/Map;

    new-instance v0, Lorg/apache/http/impl/conn/IdleConnectionHandler$TimeValues;

    move-wide v3, p2

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/apache/http/impl/conn/IdleConnectionHandler$TimeValues;-><init>(JJLjava/util/concurrent/TimeUnit;)V

    invoke-interface {v6, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    return-void
.end method

.method public closeExpiredConnections()V
    .locals 10

    .prologue
    .line 142
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 143
    .local v3, "now":J
    iget-object v6, p0, Lorg/apache/http/impl/conn/IdleConnectionHandler;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v6}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 144
    iget-object v6, p0, Lorg/apache/http/impl/conn/IdleConnectionHandler;->log:Lorg/apache/commons/logging/Log;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Checking for expired connections, now: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 147
    :cond_0
    iget-object v6, p0, Lorg/apache/http/impl/conn/IdleConnectionHandler;->connectionToTimes:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 150
    .local v1, "connectionIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/http/HttpConnection;>;"
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 151
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/HttpConnection;

    .line 152
    .local v0, "conn":Lorg/apache/http/HttpConnection;
    iget-object v6, p0, Lorg/apache/http/impl/conn/IdleConnectionHandler;->connectionToTimes:Ljava/util/Map;

    invoke-interface {v6, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/http/impl/conn/IdleConnectionHandler$TimeValues;

    .line 153
    .local v5, "times":Lorg/apache/http/impl/conn/IdleConnectionHandler$TimeValues;
    # getter for: Lorg/apache/http/impl/conn/IdleConnectionHandler$TimeValues;->timeExpires:J
    invoke-static {v5}, Lorg/apache/http/impl/conn/IdleConnectionHandler$TimeValues;->access$000(Lorg/apache/http/impl/conn/IdleConnectionHandler$TimeValues;)J

    move-result-wide v6

    cmp-long v6, v6, v3

    if-gtz v6, :cond_1

    .line 154
    iget-object v6, p0, Lorg/apache/http/impl/conn/IdleConnectionHandler;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v6}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 155
    iget-object v6, p0, Lorg/apache/http/impl/conn/IdleConnectionHandler;->log:Lorg/apache/commons/logging/Log;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Closing connection, expired @: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    # getter for: Lorg/apache/http/impl/conn/IdleConnectionHandler$TimeValues;->timeExpires:J
    invoke-static {v5}, Lorg/apache/http/impl/conn/IdleConnectionHandler$TimeValues;->access$000(Lorg/apache/http/impl/conn/IdleConnectionHandler$TimeValues;)J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 158
    :cond_2
    :try_start_0
    invoke-interface {v0}, Lorg/apache/http/HttpConnection;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 159
    :catch_0
    move-exception v2

    .line 160
    .local v2, "ex":Ljava/io/IOException;
    iget-object v6, p0, Lorg/apache/http/impl/conn/IdleConnectionHandler;->log:Lorg/apache/commons/logging/Log;

    const-string v7, "I/O error closing connection"

    invoke-interface {v6, v7, v2}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 164
    .end local v0    # "conn":Lorg/apache/http/HttpConnection;
    .end local v2    # "ex":Ljava/io/IOException;
    .end local v5    # "times":Lorg/apache/http/impl/conn/IdleConnectionHandler$TimeValues;
    :cond_3
    return-void
.end method

.method public closeIdleConnections(J)V
    .locals 11
    .param p1, "idleTime"    # J

    .prologue
    .line 116
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long v5, v8, p1

    .line 118
    .local v5, "idleTimeout":J
    iget-object v8, p0, Lorg/apache/http/impl/conn/IdleConnectionHandler;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v8}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 119
    iget-object v8, p0, Lorg/apache/http/impl/conn/IdleConnectionHandler;->log:Lorg/apache/commons/logging/Log;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Checking for connections, idle timeout: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 121
    :cond_0
    iget-object v8, p0, Lorg/apache/http/impl/conn/IdleConnectionHandler;->connectionToTimes:Ljava/util/Map;

    invoke-interface {v8}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 123
    .local v1, "connectionIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/http/HttpConnection;>;"
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 124
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/HttpConnection;

    .line 125
    .local v0, "conn":Lorg/apache/http/HttpConnection;
    iget-object v8, p0, Lorg/apache/http/impl/conn/IdleConnectionHandler;->connectionToTimes:Ljava/util/Map;

    invoke-interface {v8, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/http/impl/conn/IdleConnectionHandler$TimeValues;

    .line 126
    .local v7, "times":Lorg/apache/http/impl/conn/IdleConnectionHandler$TimeValues;
    # getter for: Lorg/apache/http/impl/conn/IdleConnectionHandler$TimeValues;->timeAdded:J
    invoke-static {v7}, Lorg/apache/http/impl/conn/IdleConnectionHandler$TimeValues;->access$100(Lorg/apache/http/impl/conn/IdleConnectionHandler$TimeValues;)J

    move-result-wide v2

    .line 127
    .local v2, "connectionTime":J
    cmp-long v8, v2, v5

    if-gtz v8, :cond_1

    .line 128
    iget-object v8, p0, Lorg/apache/http/impl/conn/IdleConnectionHandler;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v8}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 129
    iget-object v8, p0, Lorg/apache/http/impl/conn/IdleConnectionHandler;->log:Lorg/apache/commons/logging/Log;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Closing idle connection, connection time: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 132
    :cond_2
    :try_start_0
    invoke-interface {v0}, Lorg/apache/http/HttpConnection;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 133
    :catch_0
    move-exception v4

    .line 134
    .local v4, "ex":Ljava/io/IOException;
    iget-object v8, p0, Lorg/apache/http/impl/conn/IdleConnectionHandler;->log:Lorg/apache/commons/logging/Log;

    const-string v9, "I/O error closing connection"

    invoke-interface {v8, v9, v4}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 138
    .end local v0    # "conn":Lorg/apache/http/HttpConnection;
    .end local v2    # "connectionTime":J
    .end local v4    # "ex":Ljava/io/IOException;
    .end local v7    # "times":Lorg/apache/http/impl/conn/IdleConnectionHandler$TimeValues;
    :cond_3
    return-void
.end method

.method public remove(Lorg/apache/http/HttpConnection;)Z
    .locals 6
    .param p1, "connection"    # Lorg/apache/http/HttpConnection;

    .prologue
    const/4 v1, 0x1

    .line 92
    iget-object v2, p0, Lorg/apache/http/impl/conn/IdleConnectionHandler;->connectionToTimes:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/impl/conn/IdleConnectionHandler$TimeValues;

    .line 93
    .local v0, "times":Lorg/apache/http/impl/conn/IdleConnectionHandler$TimeValues;
    if-nez v0, :cond_1

    .line 94
    iget-object v2, p0, Lorg/apache/http/impl/conn/IdleConnectionHandler;->log:Lorg/apache/commons/logging/Log;

    const-string v3, "Removing a connection that never existed!"

    invoke-interface {v2, v3}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V

    .line 97
    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    # getter for: Lorg/apache/http/impl/conn/IdleConnectionHandler$TimeValues;->timeExpires:J
    invoke-static {v0}, Lorg/apache/http/impl/conn/IdleConnectionHandler$TimeValues;->access$000(Lorg/apache/http/impl/conn/IdleConnectionHandler$TimeValues;)J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public removeAll()V
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lorg/apache/http/impl/conn/IdleConnectionHandler;->connectionToTimes:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 106
    return-void
.end method
