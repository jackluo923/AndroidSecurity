.class Lcom/alipay/mobile/framework/service/common/impl/SchemeServiceImpl$6;
.super Ljava/lang/Object;
.source "SchemeServiceImpl.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private final synthetic a:Landroid/app/Activity;

.field final synthetic this$0:Lcom/alipay/mobile/framework/service/common/impl/SchemeServiceImpl;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/framework/service/common/impl/SchemeServiceImpl;Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/framework/service/common/impl/SchemeServiceImpl$6;->this$0:Lcom/alipay/mobile/framework/service/common/impl/SchemeServiceImpl;

    iput-object p2, p0, Lcom/alipay/mobile/framework/service/common/impl/SchemeServiceImpl$6;->a:Landroid/app/Activity;

    .line 382
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 385
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 386
    const-string/jumbo v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 387
    const-string/jumbo v1, "https://d.alipay.com"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 388
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 389
    iget-object v1, p0, Lcom/alipay/mobile/framework/service/common/impl/SchemeServiceImpl$6;->a:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 390
    return-void
.end method
