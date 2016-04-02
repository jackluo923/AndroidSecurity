.class Lmobi/monaca/framework/plugin/MonacaNativeUIPlugin$1;
.super Ljava/lang/Object;
.source "MonacaNativeUIPlugin.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobi/monaca/framework/plugin/MonacaNativeUIPlugin;->execute(Ljava/lang/String;Lorg/json/JSONArray;Ljava/lang/String;)Lorg/apache/cordova/api/PluginResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobi/monaca/framework/plugin/MonacaNativeUIPlugin;

.field final synthetic val$args:Lorg/json/JSONArray;


# direct methods
.method constructor <init>(Lmobi/monaca/framework/plugin/MonacaNativeUIPlugin;Lorg/json/JSONArray;)V
    .locals 0

    .prologue
    .line 58
    iput-object p1, p0, Lmobi/monaca/framework/plugin/MonacaNativeUIPlugin$1;->this$0:Lmobi/monaca/framework/plugin/MonacaNativeUIPlugin;

    iput-object p2, p0, Lmobi/monaca/framework/plugin/MonacaNativeUIPlugin$1;->val$args:Lorg/json/JSONArray;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 62
    iget-object v2, p0, Lmobi/monaca/framework/plugin/MonacaNativeUIPlugin$1;->this$0:Lmobi/monaca/framework/plugin/MonacaNativeUIPlugin;

    invoke-virtual {v2}, Lmobi/monaca/framework/plugin/MonacaNativeUIPlugin;->getMonacaPageActivity()Lmobi/monaca/framework/MonacaPageActivity;

    move-result-object v2

    invoke-virtual {v2}, Lmobi/monaca/framework/MonacaPageActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lmobi/monaca/framework/MonacaApplication;

    .line 64
    .local v0, "application":Lmobi/monaca/framework/MonacaApplication;
    :try_start_0
    iget-object v2, p0, Lmobi/monaca/framework/plugin/MonacaNativeUIPlugin$1;->this$0:Lmobi/monaca/framework/plugin/MonacaNativeUIPlugin;

    invoke-virtual {v2}, Lmobi/monaca/framework/plugin/MonacaNativeUIPlugin;->getMonacaPageActivity()Lmobi/monaca/framework/MonacaPageActivity;

    move-result-object v2

    invoke-virtual {v2}, Lmobi/monaca/framework/MonacaPageActivity;->getUiContext()Lmobi/monaca/framework/nativeui/UIContext;

    move-result-object v2

    iget-object v3, p0, Lmobi/monaca/framework/plugin/MonacaNativeUIPlugin$1;->val$args:Lorg/json/JSONArray;

    invoke-virtual {v0, v2, v3}, Lmobi/monaca/framework/MonacaApplication;->showMonacaSpinnerDialog(Lmobi/monaca/framework/nativeui/UIContext;Lorg/json/JSONArray;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    :goto_0
    return-void

    .line 66
    :catch_0
    move-exception v1

    .line 67
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
