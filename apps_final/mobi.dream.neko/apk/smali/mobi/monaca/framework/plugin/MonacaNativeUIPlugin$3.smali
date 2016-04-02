.class Lmobi/monaca/framework/plugin/MonacaNativeUIPlugin$3;
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


# direct methods
.method constructor <init>(Lmobi/monaca/framework/plugin/MonacaNativeUIPlugin;)V
    .locals 0

    .prologue
    .line 93
    iput-object p1, p0, Lmobi/monaca/framework/plugin/MonacaNativeUIPlugin$3;->this$0:Lmobi/monaca/framework/plugin/MonacaNativeUIPlugin;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 97
    iget-object v1, p0, Lmobi/monaca/framework/plugin/MonacaNativeUIPlugin$3;->this$0:Lmobi/monaca/framework/plugin/MonacaNativeUIPlugin;

    invoke-virtual {v1}, Lmobi/monaca/framework/plugin/MonacaNativeUIPlugin;->getMonacaPageActivity()Lmobi/monaca/framework/MonacaPageActivity;

    move-result-object v1

    invoke-virtual {v1}, Lmobi/monaca/framework/MonacaPageActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lmobi/monaca/framework/MonacaApplication;

    .line 98
    .local v0, "application":Lmobi/monaca/framework/MonacaApplication;
    invoke-virtual {v0}, Lmobi/monaca/framework/MonacaApplication;->dismissMonacaSpinnerDialog()V

    .line 99
    return-void
.end method
