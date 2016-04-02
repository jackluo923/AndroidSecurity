.class final Lcom/alipay/mobile/rome/pushservice/adapter/d;
.super Ljava/lang/Object;
.source "AlipayPushDownloadHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/rome/pushservice/adapter/b;

.field private final synthetic b:I


# direct methods
.method constructor <init>(Lcom/alipay/mobile/rome/pushservice/adapter/b;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/rome/pushservice/adapter/d;->a:Lcom/alipay/mobile/rome/pushservice/adapter/b;

    iput p2, p0, Lcom/alipay/mobile/rome/pushservice/adapter/d;->b:I

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .prologue
    .line 80
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/rome/pushservice/adapter/d;->a:Lcom/alipay/mobile/rome/pushservice/adapter/b;

    iget v1, p0, Lcom/alipay/mobile/rome/pushservice/adapter/d;->b:I

    iget-object v2, v0, Lcom/alipay/mobile/rome/pushservice/adapter/b;->b:Landroid/app/Activity;

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/alipay/mobile/rome/pushservice/adapter/b;->b:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, v0, Lcom/alipay/mobile/rome/pushservice/adapter/b;->b:Landroid/app/Activity;

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v3, v0, Lcom/alipay/mobile/rome/pushservice/adapter/b;->b:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/alipay/mobile/rome/pushservice/d;->d:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    iget-object v3, v0, Lcom/alipay/mobile/rome/pushservice/adapter/b;->b:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    sget v1, Lcom/alipay/mobile/rome/pushservice/d;->c:I

    new-instance v3, Lcom/alipay/mobile/rome/pushservice/adapter/e;

    invoke-direct {v3, v0}, Lcom/alipay/mobile/rome/pushservice/adapter/e;-><init>(Lcom/alipay/mobile/rome/pushservice/adapter/b;)V

    invoke-virtual {v2, v1, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    :cond_0
    :goto_0
    return-void

    .line 81
    :catch_0
    move-exception v0

    .line 82
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "StackTrace"

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
