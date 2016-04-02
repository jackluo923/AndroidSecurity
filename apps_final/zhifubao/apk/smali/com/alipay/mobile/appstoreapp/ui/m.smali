.class final Lcom/alipay/mobile/appstoreapp/ui/m;
.super Ljava/lang/Object;
.source "AppLaunchFromShortcutActivityImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/appstoreapp/ui/AppLaunchFromShortcutActivityImpl;

.field private final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/appstoreapp/ui/AppLaunchFromShortcutActivityImpl;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/appstoreapp/ui/m;->a:Lcom/alipay/mobile/appstoreapp/ui/AppLaunchFromShortcutActivityImpl;

    iput-object p2, p0, Lcom/alipay/mobile/appstoreapp/ui/m;->b:Ljava/lang/String;

    .line 249
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 252
    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/ui/m;->a:Lcom/alipay/mobile/appstoreapp/ui/AppLaunchFromShortcutActivityImpl;

    # getter for: Lcom/alipay/mobile/appstoreapp/ui/AppLaunchFromShortcutActivityImpl;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/alipay/mobile/appstoreapp/ui/AppLaunchFromShortcutActivityImpl;->access$1(Lcom/alipay/mobile/appstoreapp/ui/AppLaunchFromShortcutActivityImpl;)Landroid/app/Activity;

    move-result-object v0

    .line 253
    iget-object v1, p0, Lcom/alipay/mobile/appstoreapp/ui/m;->b:Ljava/lang/String;

    .line 252
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 254
    const/16 v1, 0x11

    invoke-virtual {v0, v1, v2, v2}, Landroid/widget/Toast;->setGravity(III)V

    .line 255
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 256
    return-void
.end method
