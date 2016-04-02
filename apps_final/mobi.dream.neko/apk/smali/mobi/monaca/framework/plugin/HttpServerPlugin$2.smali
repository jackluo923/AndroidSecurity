.class Lmobi/monaca/framework/plugin/HttpServerPlugin$2;
.super Ljava/lang/Object;
.source "HttpServerPlugin.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobi/monaca/framework/plugin/HttpServerPlugin;->execute(Ljava/lang/String;Lorg/json/JSONArray;Lorg/apache/cordova/api/CallbackContext;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobi/monaca/framework/plugin/HttpServerPlugin;

.field final synthetic val$callbackContext:Lorg/apache/cordova/api/CallbackContext;


# direct methods
.method constructor <init>(Lmobi/monaca/framework/plugin/HttpServerPlugin;Lorg/apache/cordova/api/CallbackContext;)V
    .locals 0

    .prologue
    .line 80
    iput-object p1, p0, Lmobi/monaca/framework/plugin/HttpServerPlugin$2;->this$0:Lmobi/monaca/framework/plugin/HttpServerPlugin;

    iput-object p2, p0, Lmobi/monaca/framework/plugin/HttpServerPlugin$2;->val$callbackContext:Lorg/apache/cordova/api/CallbackContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 83
    iget-object v0, p0, Lmobi/monaca/framework/plugin/HttpServerPlugin$2;->val$callbackContext:Lorg/apache/cordova/api/CallbackContext;

    const-string v1, "Cannot start server."

    invoke-virtual {v0, v1}, Lorg/apache/cordova/api/CallbackContext;->error(Ljava/lang/String;)V

    .line 84
    return-void
.end method
