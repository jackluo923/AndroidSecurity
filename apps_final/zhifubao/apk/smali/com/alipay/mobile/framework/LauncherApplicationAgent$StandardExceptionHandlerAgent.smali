.class public abstract Lcom/alipay/mobile/framework/LauncherApplicationAgent$StandardExceptionHandlerAgent;
.super Ljava/lang/Object;
.source "LauncherApplicationAgent.java"

# interfaces
.implements Lcom/alipay/mobile/framework/LauncherApplicationAgent$ExceptionHandlerAgent;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/Throwable;)Z
    .locals 1

    .prologue
    .line 131
    const/4 v0, 0x0

    return v0
.end method

.method public abstract uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)Z
.end method
