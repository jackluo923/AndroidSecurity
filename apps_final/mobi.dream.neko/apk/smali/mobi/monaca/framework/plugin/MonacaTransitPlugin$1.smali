.class Lmobi/monaca/framework/plugin/MonacaTransitPlugin$1;
.super Ljava/lang/Object;
.source "MonacaTransitPlugin.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobi/monaca/framework/plugin/MonacaTransitPlugin;->execute(Ljava/lang/String;Lorg/json/JSONArray;Ljava/lang/String;)Lorg/apache/cordova/api/PluginResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobi/monaca/framework/plugin/MonacaTransitPlugin;

.field final synthetic val$args:Lorg/json/JSONArray;


# direct methods
.method constructor <init>(Lmobi/monaca/framework/plugin/MonacaTransitPlugin;Lorg/json/JSONArray;)V
    .locals 0

    .prologue
    .line 111
    iput-object p1, p0, Lmobi/monaca/framework/plugin/MonacaTransitPlugin$1;->this$0:Lmobi/monaca/framework/plugin/MonacaTransitPlugin;

    iput-object p2, p0, Lmobi/monaca/framework/plugin/MonacaTransitPlugin$1;->val$args:Lorg/json/JSONArray;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 114
    iget-object v2, p0, Lmobi/monaca/framework/plugin/MonacaTransitPlugin$1;->val$args:Lorg/json/JSONArray;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 115
    .local v1, "uri":Landroid/net/Uri;
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 116
    .local v0, "i":Landroid/content/Intent;
    iget-object v2, p0, Lmobi/monaca/framework/plugin/MonacaTransitPlugin$1;->this$0:Lmobi/monaca/framework/plugin/MonacaTransitPlugin;

    iget-object v2, v2, Lmobi/monaca/framework/plugin/MonacaTransitPlugin;->cordova:Lorg/apache/cordova/api/CordovaInterface;

    invoke-interface {v2}, Lorg/apache/cordova/api/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 117
    return-void
.end method
