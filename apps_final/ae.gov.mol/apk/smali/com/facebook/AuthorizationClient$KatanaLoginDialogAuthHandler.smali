.class Lcom/facebook/AuthorizationClient$KatanaLoginDialogAuthHandler;
.super Lcom/facebook/AuthorizationClient$KatanaAuthHandler;
.source "AuthorizationClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/AuthorizationClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "KatanaLoginDialogAuthHandler"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private applicationId:Ljava/lang/String;

.field private callId:Ljava/lang/String;

.field final synthetic this$0:Lcom/facebook/AuthorizationClient;


# direct methods
.method constructor <init>(Lcom/facebook/AuthorizationClient;)V
    .locals 0

    .prologue
    .line 796
    iput-object p1, p0, Lcom/facebook/AuthorizationClient$KatanaLoginDialogAuthHandler;->this$0:Lcom/facebook/AuthorizationClient;

    invoke-direct {p0, p1}, Lcom/facebook/AuthorizationClient$KatanaAuthHandler;-><init>(Lcom/facebook/AuthorizationClient;)V

    return-void
.end method

.method private createCancelOrErrorResult(Lcom/facebook/AuthorizationClient$AuthorizationRequest;Landroid/content/Intent;)Lcom/facebook/AuthorizationClient$Result;
    .locals 6
    .param p1, "request"    # Lcom/facebook/AuthorizationClient$AuthorizationRequest;
    .param p2, "data"    # Landroid/content/Intent;

    .prologue
    .line 875
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    .line 876
    .local v3, "extras":Landroid/os/Bundle;
    const-string v5, "com.facebook.platform.status.ERROR_TYPE"

    invoke-virtual {v3, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 878
    .local v2, "errorType":Ljava/lang/String;
    const-string v5, "UserCanceled"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 879
    const-string v5, "PermissionDenied"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 880
    :cond_0
    const-string v5, "com.facebook.platform.status.ERROR_DESCRIPTION"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {p1, v5}, Lcom/facebook/AuthorizationClient$Result;->createCancelResult(Lcom/facebook/AuthorizationClient$AuthorizationRequest;Ljava/lang/String;)Lcom/facebook/AuthorizationClient$Result;

    move-result-object v5

    .line 892
    :goto_0
    return-object v5

    .line 883
    :cond_1
    const-string v5, "com.facebook.platform.status.ERROR_JSON"

    invoke-virtual {v3, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 884
    .local v1, "errorJson":Ljava/lang/String;
    const/4 v0, 0x0

    .line 885
    .local v0, "errorCode":Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 887
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 888
    .local v4, "jsonObject":Lorg/json/JSONObject;
    const-string v5, "error_code"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 893
    .end local v4    # "jsonObject":Lorg/json/JSONObject;
    :cond_2
    :goto_1
    const-string v5, "com.facebook.platform.status.ERROR_DESCRIPTION"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 892
    invoke-static {p1, v2, v5, v0}, Lcom/facebook/AuthorizationClient$Result;->createErrorResult(Lcom/facebook/AuthorizationClient$AuthorizationRequest;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/AuthorizationClient$Result;

    move-result-object v5

    goto :goto_0

    .line 889
    :catch_0
    move-exception v5

    goto :goto_1
.end method

.method private handleResultOk(Landroid/content/Intent;)Lcom/facebook/AuthorizationClient$Result;
    .locals 4
    .param p1, "data"    # Landroid/content/Intent;

    .prologue
    .line 861
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 862
    .local v1, "extras":Landroid/os/Bundle;
    const-string v2, "com.facebook.platform.status.ERROR_TYPE"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 863
    .local v0, "errorType":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 864
    iget-object v2, p0, Lcom/facebook/AuthorizationClient$KatanaLoginDialogAuthHandler;->this$0:Lcom/facebook/AuthorizationClient;

    iget-object v2, v2, Lcom/facebook/AuthorizationClient;->pendingRequest:Lcom/facebook/AuthorizationClient$AuthorizationRequest;

    .line 865
    sget-object v3, Lcom/facebook/AccessTokenSource;->FACEBOOK_APPLICATION_NATIVE:Lcom/facebook/AccessTokenSource;

    invoke-static {v1, v3}, Lcom/facebook/AccessToken;->createFromNativeLogin(Landroid/os/Bundle;Lcom/facebook/AccessTokenSource;)Lcom/facebook/AccessToken;

    move-result-object v3

    .line 864
    invoke-static {v2, v3}, Lcom/facebook/AuthorizationClient$Result;->createTokenResult(Lcom/facebook/AuthorizationClient$AuthorizationRequest;Lcom/facebook/AccessToken;)Lcom/facebook/AuthorizationClient$Result;

    move-result-object v2

    .line 870
    :goto_0
    return-object v2

    .line 866
    :cond_0
    const-string v2, "ServiceDisabled"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 867
    const-string v2, "service_disabled"

    const-string v3, "1"

    invoke-virtual {p0, v2, v3}, Lcom/facebook/AuthorizationClient$KatanaLoginDialogAuthHandler;->addLoggingExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 868
    const/4 v2, 0x0

    goto :goto_0

    .line 870
    :cond_1
    iget-object v2, p0, Lcom/facebook/AuthorizationClient$KatanaLoginDialogAuthHandler;->this$0:Lcom/facebook/AuthorizationClient;

    iget-object v2, v2, Lcom/facebook/AuthorizationClient;->pendingRequest:Lcom/facebook/AuthorizationClient$AuthorizationRequest;

    invoke-direct {p0, v2, p1}, Lcom/facebook/AuthorizationClient$KatanaLoginDialogAuthHandler;->createCancelOrErrorResult(Lcom/facebook/AuthorizationClient$AuthorizationRequest;Landroid/content/Intent;)Lcom/facebook/AuthorizationClient$Result;

    move-result-object v2

    goto :goto_0
.end method

.method private logEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "eventName"    # Ljava/lang/String;
    .param p2, "timeParameter"    # Ljava/lang/String;
    .param p3, "callId"    # Ljava/lang/String;

    .prologue
    .line 898
    if-eqz p3, :cond_0

    .line 899
    iget-object v2, p0, Lcom/facebook/AuthorizationClient$KatanaLoginDialogAuthHandler;->this$0:Lcom/facebook/AuthorizationClient;

    iget-object v2, v2, Lcom/facebook/AuthorizationClient;->context:Landroid/content/Context;

    iget-object v3, p0, Lcom/facebook/AuthorizationClient$KatanaLoginDialogAuthHandler;->applicationId:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/facebook/AppEventsLogger;->newLogger(Landroid/content/Context;Ljava/lang/String;)Lcom/facebook/AppEventsLogger;

    move-result-object v0

    .line 900
    .local v0, "appEventsLogger":Lcom/facebook/AppEventsLogger;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 901
    .local v1, "parameters":Landroid/os/Bundle;
    const-string v2, "app_id"

    iget-object v3, p0, Lcom/facebook/AuthorizationClient$KatanaLoginDialogAuthHandler;->applicationId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 902
    const-string v2, "action_id"

    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 903
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, p2, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 904
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2, v1}, Lcom/facebook/AppEventsLogger;->logSdkEvent(Ljava/lang/String;Ljava/lang/Double;Landroid/os/Bundle;)V

    .line 906
    .end local v0    # "appEventsLogger":Lcom/facebook/AppEventsLogger;
    .end local v1    # "parameters":Landroid/os/Bundle;
    :cond_0
    return-void
.end method


# virtual methods
.method getNameForLogging()Ljava/lang/String;
    .locals 1

    .prologue
    .line 803
    const-string v0, "katana_login_dialog"

    return-object v0
.end method

.method onActivityResult(IILandroid/content/Intent;)Z
    .locals 4
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 835
    const-string v1, "fb_dialogs_native_login_dialog_complete"

    .line 836
    const-string v2, "fb_native_login_dialog_complete_time"

    iget-object v3, p0, Lcom/facebook/AuthorizationClient$KatanaLoginDialogAuthHandler;->callId:Ljava/lang/String;

    .line 835
    invoke-direct {p0, v1, v2, v3}, Lcom/facebook/AuthorizationClient$KatanaLoginDialogAuthHandler;->logEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 838
    if-nez p3, :cond_0

    .line 840
    iget-object v1, p0, Lcom/facebook/AuthorizationClient$KatanaLoginDialogAuthHandler;->this$0:Lcom/facebook/AuthorizationClient;

    iget-object v1, v1, Lcom/facebook/AuthorizationClient;->pendingRequest:Lcom/facebook/AuthorizationClient$AuthorizationRequest;

    const-string v2, "Operation canceled"

    invoke-static {v1, v2}, Lcom/facebook/AuthorizationClient$Result;->createCancelResult(Lcom/facebook/AuthorizationClient$AuthorizationRequest;Ljava/lang/String;)Lcom/facebook/AuthorizationClient$Result;

    move-result-object v0

    .line 851
    .local v0, "outcome":Lcom/facebook/AuthorizationClient$Result;
    :goto_0
    if-eqz v0, :cond_4

    .line 852
    iget-object v1, p0, Lcom/facebook/AuthorizationClient$KatanaLoginDialogAuthHandler;->this$0:Lcom/facebook/AuthorizationClient;

    invoke-virtual {v1, v0}, Lcom/facebook/AuthorizationClient;->completeAndValidate(Lcom/facebook/AuthorizationClient$Result;)V

    .line 857
    :goto_1
    const/4 v1, 0x1

    return v1

    .line 841
    .end local v0    # "outcome":Lcom/facebook/AuthorizationClient$Result;
    :cond_0
    invoke-static {p3}, Lcom/facebook/internal/NativeProtocol;->isServiceDisabledResult20121101(Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 842
    const/4 v0, 0x0

    .line 843
    .restart local v0    # "outcome":Lcom/facebook/AuthorizationClient$Result;
    goto :goto_0

    .end local v0    # "outcome":Lcom/facebook/AuthorizationClient$Result;
    :cond_1
    if-nez p2, :cond_2

    .line 844
    iget-object v1, p0, Lcom/facebook/AuthorizationClient$KatanaLoginDialogAuthHandler;->this$0:Lcom/facebook/AuthorizationClient;

    iget-object v1, v1, Lcom/facebook/AuthorizationClient;->pendingRequest:Lcom/facebook/AuthorizationClient$AuthorizationRequest;

    invoke-direct {p0, v1, p3}, Lcom/facebook/AuthorizationClient$KatanaLoginDialogAuthHandler;->createCancelOrErrorResult(Lcom/facebook/AuthorizationClient$AuthorizationRequest;Landroid/content/Intent;)Lcom/facebook/AuthorizationClient$Result;

    move-result-object v0

    .line 845
    .restart local v0    # "outcome":Lcom/facebook/AuthorizationClient$Result;
    goto :goto_0

    .end local v0    # "outcome":Lcom/facebook/AuthorizationClient$Result;
    :cond_2
    const/4 v1, -0x1

    if-eq p2, v1, :cond_3

    .line 846
    iget-object v1, p0, Lcom/facebook/AuthorizationClient$KatanaLoginDialogAuthHandler;->this$0:Lcom/facebook/AuthorizationClient;

    iget-object v1, v1, Lcom/facebook/AuthorizationClient;->pendingRequest:Lcom/facebook/AuthorizationClient$AuthorizationRequest;

    const-string v2, "Unexpected resultCode from authorization."

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/facebook/AuthorizationClient$Result;->createErrorResult(Lcom/facebook/AuthorizationClient$AuthorizationRequest;Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/AuthorizationClient$Result;

    move-result-object v0

    .line 847
    .restart local v0    # "outcome":Lcom/facebook/AuthorizationClient$Result;
    goto :goto_0

    .line 848
    .end local v0    # "outcome":Lcom/facebook/AuthorizationClient$Result;
    :cond_3
    invoke-direct {p0, p3}, Lcom/facebook/AuthorizationClient$KatanaLoginDialogAuthHandler;->handleResultOk(Landroid/content/Intent;)Lcom/facebook/AuthorizationClient$Result;

    move-result-object v0

    .restart local v0    # "outcome":Lcom/facebook/AuthorizationClient$Result;
    goto :goto_0

    .line 854
    :cond_4
    iget-object v1, p0, Lcom/facebook/AuthorizationClient$KatanaLoginDialogAuthHandler;->this$0:Lcom/facebook/AuthorizationClient;

    invoke-virtual {v1}, Lcom/facebook/AuthorizationClient;->tryNextHandler()V

    goto :goto_1
.end method

.method tryAuthorize(Lcom/facebook/AuthorizationClient$AuthorizationRequest;)Z
    .locals 5
    .param p1, "request"    # Lcom/facebook/AuthorizationClient$AuthorizationRequest;

    .prologue
    .line 808
    invoke-virtual {p1}, Lcom/facebook/AuthorizationClient$AuthorizationRequest;->getApplicationId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/AuthorizationClient$KatanaLoginDialogAuthHandler;->applicationId:Ljava/lang/String;

    .line 810
    iget-object v1, p0, Lcom/facebook/AuthorizationClient$KatanaLoginDialogAuthHandler;->this$0:Lcom/facebook/AuthorizationClient;

    iget-object v1, v1, Lcom/facebook/AuthorizationClient;->context:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/facebook/AuthorizationClient$AuthorizationRequest;->getApplicationId()Ljava/lang/String;

    move-result-object v2

    .line 811
    new-instance v3, Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/facebook/AuthorizationClient$AuthorizationRequest;->getPermissions()Ljava/util/List;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 812
    invoke-virtual {p1}, Lcom/facebook/AuthorizationClient$AuthorizationRequest;->getDefaultAudience()Lcom/facebook/SessionDefaultAudience;

    move-result-object v4

    invoke-virtual {v4}, Lcom/facebook/SessionDefaultAudience;->getNativeProtocolAudience()Ljava/lang/String;

    move-result-object v4

    .line 810
    invoke-static {v1, v2, v3, v4}, Lcom/facebook/internal/NativeProtocol;->createLoginDialog20121101Intent(Landroid/content/Context;Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 813
    .local v0, "intent":Landroid/content/Intent;
    if-nez v0, :cond_0

    .line 814
    const/4 v1, 0x0

    .line 828
    :goto_0
    return v1

    .line 817
    :cond_0
    const-string v1, "com.facebook.platform.protocol.CALL_ID"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/AuthorizationClient$KatanaLoginDialogAuthHandler;->callId:Ljava/lang/String;

    .line 819
    const-string v1, "call_id"

    iget-object v2, p0, Lcom/facebook/AuthorizationClient$KatanaLoginDialogAuthHandler;->callId:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lcom/facebook/AuthorizationClient$KatanaLoginDialogAuthHandler;->addLoggingExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 820
    const-string v1, "protocol_version"

    .line 821
    const-string v2, "com.facebook.platform.protocol.PROTOCOL_VERSION"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 820
    invoke-virtual {p0, v1, v2}, Lcom/facebook/AuthorizationClient$KatanaLoginDialogAuthHandler;->addLoggingExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 822
    const-string v1, "permissions"

    .line 823
    const-string v2, ","

    const-string v3, "com.facebook.platform.extra.PERMISSIONS"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    .line 822
    invoke-virtual {p0, v1, v2}, Lcom/facebook/AuthorizationClient$KatanaLoginDialogAuthHandler;->addLoggingExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 824
    const-string v1, "write_privacy"

    const-string v2, "com.facebook.platform.extra.WRITE_PRIVACY"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/facebook/AuthorizationClient$KatanaLoginDialogAuthHandler;->addLoggingExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 825
    const-string v1, "fb_dialogs_native_login_dialog_start"

    .line 826
    const-string v2, "fb_native_login_dialog_start_time"

    iget-object v3, p0, Lcom/facebook/AuthorizationClient$KatanaLoginDialogAuthHandler;->callId:Ljava/lang/String;

    .line 825
    invoke-direct {p0, v1, v2, v3}, Lcom/facebook/AuthorizationClient$KatanaLoginDialogAuthHandler;->logEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 828
    invoke-virtual {p1}, Lcom/facebook/AuthorizationClient$AuthorizationRequest;->getRequestCode()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/facebook/AuthorizationClient$KatanaLoginDialogAuthHandler;->tryIntent(Landroid/content/Intent;I)Z

    move-result v1

    goto :goto_0
.end method
