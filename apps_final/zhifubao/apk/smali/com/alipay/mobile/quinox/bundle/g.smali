.class final Lcom/alipay/mobile/quinox/bundle/g;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/alipay/mobile/quinox/LauncherApplication;

.field final synthetic c:I

.field final synthetic d:Lcom/alipay/mobile/quinox/bundle/e;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/quinox/bundle/e;Landroid/content/Context;Lcom/alipay/mobile/quinox/LauncherApplication;I)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/quinox/bundle/g;->d:Lcom/alipay/mobile/quinox/bundle/e;

    iput-object p2, p0, Lcom/alipay/mobile/quinox/bundle/g;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/alipay/mobile/quinox/bundle/g;->b:Lcom/alipay/mobile/quinox/LauncherApplication;

    iput p4, p0, Lcom/alipay/mobile/quinox/bundle/g;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/alipay/mobile/quinox/bundle/g;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/alipay/mobile/quinox/bundle/g;->b:Lcom/alipay/mobile/quinox/LauncherApplication;

    invoke-virtual {v1}, Lcom/alipay/mobile/quinox/LauncherApplication;->getOldResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lcom/alipay/mobile/quinox/bundle/g;->c:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method
