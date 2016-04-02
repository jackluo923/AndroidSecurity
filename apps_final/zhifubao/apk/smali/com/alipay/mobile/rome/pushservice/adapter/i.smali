.class final Lcom/alipay/mobile/rome/pushservice/adapter/i;
.super Ljava/lang/Object;
.source "AlipayPushDownloadHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/rome/pushservice/adapter/b;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/rome/pushservice/adapter/b;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/rome/pushservice/adapter/i;->a:Lcom/alipay/mobile/rome/pushservice/adapter/b;

    .line 170
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/alipay/mobile/rome/pushservice/adapter/i;->a:Lcom/alipay/mobile/rome/pushservice/adapter/b;

    invoke-static {v0}, Lcom/alipay/mobile/rome/pushservice/adapter/b;->c(Lcom/alipay/mobile/rome/pushservice/adapter/b;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 173
    return-void
.end method
