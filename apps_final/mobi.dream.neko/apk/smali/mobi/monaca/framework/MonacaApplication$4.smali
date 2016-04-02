.class Lmobi/monaca/framework/MonacaApplication$4;
.super Lmobi/monaca/framework/task/GCMRegistrationIdSenderTask;
.source "MonacaApplication.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobi/monaca/framework/MonacaApplication;->sendGCMRegisterIdToAppAPI(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobi/monaca/framework/MonacaApplication;


# direct methods
.method constructor <init>(Lmobi/monaca/framework/MonacaApplication;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p2, "x0"    # Landroid/content/Context;
    .param p3, "x1"    # Ljava/lang/String;
    .param p4, "x2"    # Ljava/lang/String;

    .prologue
    .line 322
    iput-object p1, p0, Lmobi/monaca/framework/MonacaApplication$4;->this$0:Lmobi/monaca/framework/MonacaApplication;

    invoke-direct {p0, p2, p3, p4}, Lmobi/monaca/framework/task/GCMRegistrationIdSenderTask;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected onClosedTask()V
    .locals 0

    .prologue
    .line 333
    return-void
.end method

.method protected onFailedRegistration(Lorg/json/JSONObject;)V
    .locals 0
    .param p1, "resultJson"    # Lorg/json/JSONObject;

    .prologue
    .line 329
    return-void
.end method

.method protected onSucceededRegistration(Lorg/json/JSONObject;)V
    .locals 0
    .param p1, "resultJson"    # Lorg/json/JSONObject;

    .prologue
    .line 325
    return-void
.end method
