.class final Lcom/alipay/mobile/appstoreapp/ui/n;
.super Ljava/lang/Object;
.source "AppLaunchFromShortcutActivityImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/appstoreapp/ui/AppLaunchFromShortcutActivityImpl;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/appstoreapp/ui/AppLaunchFromShortcutActivityImpl;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/appstoreapp/ui/n;->a:Lcom/alipay/mobile/appstoreapp/ui/AppLaunchFromShortcutActivityImpl;

    .line 261
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 264
    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/ui/n;->a:Lcom/alipay/mobile/appstoreapp/ui/AppLaunchFromShortcutActivityImpl;

    # getter for: Lcom/alipay/mobile/appstoreapp/ui/AppLaunchFromShortcutActivityImpl;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/alipay/mobile/appstoreapp/ui/AppLaunchFromShortcutActivityImpl;->access$1(Lcom/alipay/mobile/appstoreapp/ui/AppLaunchFromShortcutActivityImpl;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 265
    return-void
.end method
