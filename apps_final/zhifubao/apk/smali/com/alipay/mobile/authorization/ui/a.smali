.class final Lcom/alipay/mobile/authorization/ui/a;
.super Ljava/lang/Object;
.source "AuthorizationActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/authorization/ui/AuthorizationActivity;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/authorization/ui/AuthorizationActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/authorization/ui/a;->a:Lcom/alipay/mobile/authorization/ui/AuthorizationActivity;

    .line 253
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 256
    iget-object v0, p0, Lcom/alipay/mobile/authorization/ui/a;->a:Lcom/alipay/mobile/authorization/ui/AuthorizationActivity;

    invoke-virtual {v0}, Lcom/alipay/mobile/authorization/ui/AuthorizationActivity;->finish()V

    .line 257
    return-void
.end method
