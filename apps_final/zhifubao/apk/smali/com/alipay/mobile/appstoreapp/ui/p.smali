.class final Lcom/alipay/mobile/appstoreapp/ui/p;
.super Ljava/lang/Object;
.source "FastLoginAppActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/appstoreapp/ui/o;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/appstoreapp/ui/o;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/appstoreapp/ui/p;->a:Lcom/alipay/mobile/appstoreapp/ui/o;

    .line 229
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 232
    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/ui/p;->a:Lcom/alipay/mobile/appstoreapp/ui/o;

    invoke-static {v0}, Lcom/alipay/mobile/appstoreapp/ui/o;->a(Lcom/alipay/mobile/appstoreapp/ui/o;)Lcom/alipay/mobile/appstoreapp/ui/FastLoginAppActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/appstoreapp/ui/FastLoginAppActivity;->d(Lcom/alipay/mobile/appstoreapp/ui/FastLoginAppActivity;)Lcom/alipay/mobile/appstoreapp/adapter/FastLoginAppAdapter;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/appstoreapp/adapter/FastLoginAppAdapter;->getMoreFinish(Z)V

    .line 233
    return-void
.end method
