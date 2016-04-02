.class final Lcom/alipay/mobile/common/logging/impl/a;
.super Ljava/lang/Object;
.source "StatisticalExceptionHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/alipay/mobile/common/logging/impl/StatisticalExceptionHandler;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/common/logging/impl/StatisticalExceptionHandler;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 41
    iput-object p1, p0, Lcom/alipay/mobile/common/logging/impl/a;->b:Lcom/alipay/mobile/common/logging/impl/StatisticalExceptionHandler;

    iput-object p2, p0, Lcom/alipay/mobile/common/logging/impl/a;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 45
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/impl/a;->a:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alibaba/motu/NativeCrashHandler;->init(Landroid/content/Context;Z)Lcom/alibaba/motu/NativeCrashHandler;

    .line 46
    invoke-static {}, Lcom/alibaba/motu/NativeCrashHandler;->getInstance()Lcom/alibaba/motu/NativeCrashHandler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alibaba/motu/NativeCrashHandler;->register(Z)V

    .line 47
    return-void
.end method
