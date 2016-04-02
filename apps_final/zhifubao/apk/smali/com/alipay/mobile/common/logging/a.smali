.class final Lcom/alipay/mobile/common/logging/a;
.super Ljava/lang/Object;
.source "LogContextImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/alipay/mobile/common/logging/LogContextImpl;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/common/logging/LogContextImpl;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 239
    iput-object p1, p0, Lcom/alipay/mobile/common/logging/a;->b:Lcom/alipay/mobile/common/logging/LogContextImpl;

    iput-object p2, p0, Lcom/alipay/mobile/common/logging/a;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 243
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/a;->b:Lcom/alipay/mobile/common/logging/LogContextImpl;

    invoke-static {v0}, Lcom/alipay/mobile/common/logging/LogContextImpl;->c(Lcom/alipay/mobile/common/logging/LogContextImpl;)Lcom/alipay/mobile/common/logging/c;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/common/logging/a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/logging/c;->a(Ljava/lang/String;)V

    .line 244
    return-void
.end method
