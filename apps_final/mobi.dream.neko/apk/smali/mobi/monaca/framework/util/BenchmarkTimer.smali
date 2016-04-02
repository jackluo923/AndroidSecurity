.class public Lmobi/monaca/framework/util/BenchmarkTimer;
.super Ljava/lang/Object;
.source "BenchmarkTimer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmobi/monaca/framework/util/BenchmarkTimer$Entry;
    }
.end annotation


# static fields
.field protected static entryList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lmobi/monaca/framework/util/BenchmarkTimer$Entry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lmobi/monaca/framework/util/BenchmarkTimer;->entryList:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    return-void
.end method

.method protected static dump()V
    .locals 11

    .prologue
    .line 36
    const/4 v4, 0x0

    .line 39
    .local v4, "prev":Lmobi/monaca/framework/util/BenchmarkTimer$Entry;
    const-wide/16 v0, 0x0

    .line 40
    .local v0, "duration":J
    const-wide/16 v5, 0x0

    .line 41
    .local v5, "total":J
    sget-object v7, Lmobi/monaca/framework/util/BenchmarkTimer;->entryList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmobi/monaca/framework/util/BenchmarkTimer$Entry;

    .line 42
    .local v2, "entry":Lmobi/monaca/framework/util/BenchmarkTimer$Entry;
    if-eqz v4, :cond_0

    .line 43
    iget-wide v7, v2, Lmobi/monaca/framework/util/BenchmarkTimer$Entry;->time:J

    iget-wide v9, v4, Lmobi/monaca/framework/util/BenchmarkTimer$Entry;->time:J

    sub-long v0, v7, v9

    .line 51
    :cond_0
    add-long/2addr v5, v0

    .line 52
    move-object v4, v2

    goto :goto_0

    .line 56
    .end local v2    # "entry":Lmobi/monaca/framework/util/BenchmarkTimer$Entry;
    :cond_1
    return-void
.end method

.method public static finish()V
    .locals 2

    .prologue
    .line 27
    sget-object v1, Lmobi/monaca/framework/util/BenchmarkTimer;->entryList:Ljava/util/ArrayList;

    monitor-enter v1

    .line 28
    :try_start_0
    const-string v0, "finish"

    invoke-static {v0}, Lmobi/monaca/framework/util/BenchmarkTimer;->mark(Ljava/lang/String;)V

    .line 29
    invoke-static {}, Lmobi/monaca/framework/util/BenchmarkTimer;->dump()V

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lmobi/monaca/framework/util/BenchmarkTimer;->entryList:Ljava/util/ArrayList;

    .line 32
    monitor-exit v1

    .line 33
    return-void

    .line 32
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static mark(Ljava/lang/String;)V
    .locals 5
    .param p0, "label"    # Ljava/lang/String;

    .prologue
    .line 59
    sget-object v1, Lmobi/monaca/framework/util/BenchmarkTimer;->entryList:Ljava/util/ArrayList;

    monitor-enter v1

    .line 60
    :try_start_0
    sget-object v0, Lmobi/monaca/framework/util/BenchmarkTimer;->entryList:Ljava/util/ArrayList;

    new-instance v2, Lmobi/monaca/framework/util/BenchmarkTimer$Entry;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-direct {v2, p0, v3, v4}, Lmobi/monaca/framework/util/BenchmarkTimer$Entry;-><init>(Ljava/lang/String;J)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 61
    const-class v0, Lmobi/monaca/framework/util/BenchmarkTimer;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "================> mark: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " <=================="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lmobi/monaca/framework/util/MyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    monitor-exit v1

    .line 65
    return-void

    .line 64
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static start()V
    .locals 2

    .prologue
    .line 20
    sget-object v1, Lmobi/monaca/framework/util/BenchmarkTimer;->entryList:Ljava/util/ArrayList;

    monitor-enter v1

    .line 21
    :try_start_0
    sget-object v0, Lmobi/monaca/framework/util/BenchmarkTimer;->entryList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 22
    const-string v0, "start"

    invoke-static {v0}, Lmobi/monaca/framework/util/BenchmarkTimer;->mark(Ljava/lang/String;)V

    .line 23
    monitor-exit v1

    .line 24
    return-void

    .line 23
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
