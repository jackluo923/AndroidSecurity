.class final Lcom/alipay/mobile/socialwidget/ui/q;
.super Ljava/lang/Object;
.source "SocialHomePage.java"

# interfaces
.implements Lcom/alipay/mobile/commonui/widget/APPopMenu$OnItemClickListener;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;

.field private final synthetic b:I

.field private final synthetic c:Z


# direct methods
.method constructor <init>(Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;IZ)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/socialwidget/ui/q;->a:Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;

    iput p2, p0, Lcom/alipay/mobile/socialwidget/ui/q;->b:I

    iput-boolean p3, p0, Lcom/alipay/mobile/socialwidget/ui/q;->c:Z

    .line 304
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(I)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 307
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 308
    packed-switch p1, :pswitch_data_0

    .line 329
    invoke-static {}, Lcom/alipay/mobile/socialwidget/util/AppLaunchUtil;->a()V

    .line 332
    :goto_0
    return-void

    .line 310
    :pswitch_0
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/q;->a:Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;

    iget v1, p0, Lcom/alipay/mobile/socialwidget/ui/q;->b:I

    invoke-static {v0, v1}, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->a(Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;I)V

    goto :goto_0

    .line 313
    :pswitch_1
    const-string/jumbo v1, "actionType"

    const-string/jumbo v2, "actionTypeMainPage"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    iget-object v1, p0, Lcom/alipay/mobile/socialwidget/ui/q;->a:Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;

    invoke-static {v1}, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->m(Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;)Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    const-string/jumbo v2, "20000166"

    invoke-interface {v1, v3, v2, v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->startApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    .line 317
    :pswitch_2
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/q;->a:Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;

    invoke-static {v0}, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->m(Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;)Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-string/jumbo v1, "10000007"

    invoke-interface {v0, v3, v1, v3}, Lcom/alipay/mobile/framework/MicroApplicationContext;->startApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    .line 320
    :pswitch_3
    iget-boolean v0, p0, Lcom/alipay/mobile/socialwidget/ui/q;->c:Z

    if-eqz v0, :cond_0

    .line 321
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/q;->a:Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;

    invoke-static {v0}, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->m(Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;)Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-string/jumbo v1, "10000013"

    invoke-interface {v0, v3, v1, v3}, Lcom/alipay/mobile/framework/MicroApplicationContext;->startApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    .line 324
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/socialwidget/util/AppLaunchUtil;->a()V

    goto :goto_0

    .line 308
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
