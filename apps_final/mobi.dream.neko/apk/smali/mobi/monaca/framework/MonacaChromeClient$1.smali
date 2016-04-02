.class Lmobi/monaca/framework/MonacaChromeClient$1;
.super Ljava/lang/Object;
.source "MonacaChromeClient.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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
.method constructor <init>(Lmobi/monaca/framework/MonacaChromeClient;Ljava/lang/String;Landroid/webkit/GeolocationPermissions$Callback;)V
    .locals 0

    .prologue
    .line 57
    iput-object p1, p0, Lmobi/monaca/framework/MonacaChromeClient$1;->this$0:Lmobi/monaca/framework/MonacaChromeClient;

    iput-object p2, p0, Lmobi/monaca/framework/MonacaChromeClient$1;->val$fOrigin:Ljava/lang/String;

    iput-object p3, p0, Lmobi/monaca/framework/MonacaChromeClient$1;->val$fCallback:Landroid/webkit/GeolocationPermissions$Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v3, 0x1

    .line 60
    iget-object v0, p0, Lmobi/monaca/framework/MonacaChromeClient$1;->this$0:Lmobi/monaca/framework/MonacaChromeClient;

    # getter for: Lmobi/monaca/framework/MonacaChromeClient;->geolocationPref:Landroid/content/SharedPreferences;
    invoke-static {v0}, Lmobi/monaca/framework/MonacaChromeClient;->access$000(Lmobi/monaca/framework/MonacaChromeClient;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lmobi/monaca/framework/MonacaChromeClient$1;->val$fOrigin:Ljava/lang/String;

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 61
    iget-object v0, p0, Lmobi/monaca/framework/MonacaChromeClient$1;->val$fCallback:Landroid/webkit/GeolocationPermissions$Callback;

    iget-object v1, p0, Lmobi/monaca/framework/MonacaChromeClient$1;->val$fOrigin:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v3, v2}, Landroid/webkit/GeolocationPermissions$Callback;->invoke(Ljava/lang/String;ZZ)V

    .line 62
    return-void
.end method
