.class public interface abstract Lcom/ali/user/mobile/rpc/IRpcFactory;
.super Ljava/lang/Object;
.source "IRpcFactory.java"


# static fields
.field public static final RPC_PROXY_BACKGROUND:I = 0x2

.field public static final RPC_PROXY_FOREGROUND:I = 0x1


# virtual methods
.method public abstract getBgRpcProxy(Ljava/lang/Class;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation
.end method

.method public abstract getRpcProxy(Ljava/lang/Class;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation
.end method

.method public abstract getRpcProxy(Ljava/lang/Class;I)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;I)TT;"
        }
    .end annotation
.end method

.method public abstract prepareResetCookie(Ljava/lang/Object;)V
.end method
