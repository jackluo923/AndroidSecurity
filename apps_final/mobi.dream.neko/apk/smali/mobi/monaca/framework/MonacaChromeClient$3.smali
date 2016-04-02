.class Lmobi/monaca/framework/MonacaChromeClient$3;
.super Ljava/lang/Object;
.source "MonacaChromeClient.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobi/monaca/framework/MonacaChromeClient;->onGeolocationPermissionsShowPrompt(Ljava/lang/String;Landroid/webkit/GeolocationPermissions$Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobi/monaca/framework/MonacaChromeClient;

.field final synthetic val$fCallback:Landroid/webkit/GeolocationPermissions$Callback;

.field final synthetic val$fOrigin:Ljava/lang/String;


# direct methods
.method constructor <init>(Lmobi/monaca/framework/MonacaChromeClient;Landroid/webkit/GeolocationPermissions$Callback;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 70
    iput-object p1, p0, Lmobi/monaca/framework/MonacaChromeClient$3;->this$0:Lmobi/monaca/framework/MonacaChromeClient;

    iput-object p2, p0, Lmobi/monaca/framework/MonacaChromeClient$3;->val$fCallback:Landroid/webkit/GeolocationPermissions$Callback;

    iput-object p3, p0, Lmobi/monaca/framework/MonacaChromeClient$3;->val$fOrigin:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 3
    .param p1, "arg0"    # Landroid/content/DialogInterface;

    .prologue
    const/4 v2, 0x0

    .line 73
    iget-object v0, p0, Lmobi/monaca/framework/MonacaChromeClient$3;->val$fCallback:Landroid/webkit/GeolocationPermissions$Callback;

    iget-object v1, p0, Lmobi/monaca/framework/MonacaChromeClient$3;->val$fOrigin:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v2}, Landroid/webkit/GeolocationPermissions$Callback;->invoke(Ljava/lang/String;ZZ)V

    .line 74
    return-void
.end method
