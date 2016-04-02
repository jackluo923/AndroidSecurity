.class public interface abstract Lcom/alipay/mobile/framework/pipeline/Pipeline;
.super Ljava/lang/Object;
.source "Pipeline.java"


# virtual methods
.method public abstract addTask(Ljava/lang/Runnable;Ljava/lang/String;)V
.end method

.method public abstract addTask(Ljava/lang/Runnable;Ljava/lang/String;I)V
.end method

.method public abstract next()V
.end method

.method public abstract setExecutor(Ljava/util/concurrent/Executor;)V
.end method

.method public abstract start()V
.end method

.method public abstract stop()V
.end method
