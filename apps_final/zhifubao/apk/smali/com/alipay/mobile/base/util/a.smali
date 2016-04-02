.class final Lcom/alipay/mobile/base/util/a;
.super Ljava/lang/Object;
.source "FetchConfigAfterLogin.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/base/util/FetchConfigAfterLogin;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/base/util/FetchConfigAfterLogin;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/base/util/a;->a:Lcom/alipay/mobile/base/util/FetchConfigAfterLogin;

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/alipay/mobile/base/util/a;->a:Lcom/alipay/mobile/base/util/FetchConfigAfterLogin;

    invoke-static {}, Lcom/alipay/mobile/base/util/FetchConfigAfterLogin;->c()V

    .line 42
    return-void
.end method
