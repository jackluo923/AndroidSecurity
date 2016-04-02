.class Lcom/alipay/android/app/template/TemplateManager$1;
.super Ljava/lang/Object;
.source "TemplateManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/android/app/template/TemplateManager;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/template/TemplateManager;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/android/app/template/TemplateManager$1;->a:Lcom/alipay/android/app/template/TemplateManager;

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 92
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 93
    invoke-interface {v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getApplicationContext()Landroid/app/Application;

    move-result-object v0

    .line 91
    invoke-static {v0}, Lcom/alipay/mobile/common/transport/utils/NetworkUtils;->getNetworkType(Landroid/content/Context;)I

    move-result v0

    .line 95
    :try_start_0
    iget-object v1, p0, Lcom/alipay/android/app/template/TemplateManager$1;->a:Lcom/alipay/android/app/template/TemplateManager;

    invoke-static {v1}, Lcom/alipay/android/app/template/TemplateManager;->a(Lcom/alipay/android/app/template/TemplateManager;)Lcom/alipay/mobiletms/common/service/facade/rpc/TemplateRpcService;

    move-result-object v1

    .line 96
    iget-object v2, p0, Lcom/alipay/android/app/template/TemplateManager$1;->a:Lcom/alipay/android/app/template/TemplateManager;

    invoke-virtual {v2}, Lcom/alipay/android/app/template/TemplateManager;->getTemplateVersion()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 95
    invoke-interface {v1, v2, v0}, Lcom/alipay/mobiletms/common/service/facade/rpc/TemplateRpcService;->loadTemplateList(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobiletms/common/service/facade/rpc/LoadTemplateListRes;

    move-result-object v1

    .line 97
    if-eqz v1, :cond_6

    iget-boolean v0, v1, Lcom/alipay/mobiletms/common/service/facade/rpc/LoadTemplateListRes;->success:Z

    if-eqz v0, :cond_6

    .line 98
    iget v0, v1, Lcom/alipay/mobiletms/common/service/facade/rpc/LoadTemplateListRes;->updateSize:I

    if-lez v0, :cond_1

    .line 103
    iget-object v0, v1, Lcom/alipay/mobiletms/common/service/facade/rpc/LoadTemplateListRes;->templateJsonList:Ljava/util/List;

    .line 107
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 108
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 109
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 142
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 146
    :cond_0
    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 147
    iget-object v0, p0, Lcom/alipay/android/app/template/TemplateManager$1;->a:Lcom/alipay/android/app/template/TemplateManager;

    invoke-virtual {v0, v2}, Lcom/alipay/android/app/template/TemplateManager;->downloadTemplate(Ljava/util/Map;)Ljava/util/Map;

    .line 162
    :cond_1
    :goto_1
    return-void

    .line 109
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 110
    iget-object v4, p0, Lcom/alipay/android/app/template/TemplateManager$1;->a:Lcom/alipay/android/app/template/TemplateManager;

    invoke-static {v0}, Lcom/alipay/android/app/template/TemplateManager;->a(Ljava/lang/Object;)Lcom/alipay/mobiletms/common/service/facade/rpc/Template;

    move-result-object v0

    .line 114
    iget-object v4, p0, Lcom/alipay/android/app/template/TemplateManager$1;->a:Lcom/alipay/android/app/template/TemplateManager;

    invoke-static {v4}, Lcom/alipay/android/app/template/TemplateManager;->b(Lcom/alipay/android/app/template/TemplateManager;)Lcom/alipay/android/app/template/TemplateStorage;

    move-result-object v4

    .line 115
    iget-object v5, v0, Lcom/alipay/mobiletms/common/service/facade/rpc/Template;->tplId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/alipay/android/app/template/TemplateStorage;->a(Ljava/lang/String;)Lcom/alipay/mobiletms/common/service/facade/rpc/Template;

    move-result-object v4

    .line 117
    if-nez v4, :cond_4

    .line 119
    iget-object v4, v0, Lcom/alipay/mobiletms/common/service/facade/rpc/Template;->tplId:Ljava/lang/String;

    .line 120
    iget-object v5, p0, Lcom/alipay/android/app/template/TemplateManager$1;->a:Lcom/alipay/android/app/template/TemplateManager;

    invoke-virtual {v5, v0}, Lcom/alipay/android/app/template/TemplateManager;->createBirdParamsFromTemplate(Lcom/alipay/mobiletms/common/service/facade/rpc/Template;)Ljava/lang/String;

    move-result-object v0

    .line 119
    invoke-interface {v2, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    :cond_3
    :goto_2
    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v0

    iget v4, v1, Lcom/alipay/mobiletms/common/service/facade/rpc/LoadTemplateListRes;->updateSize:I

    if-ge v0, v4, :cond_0

    goto :goto_0

    .line 123
    :cond_4
    iget-object v5, p0, Lcom/alipay/android/app/template/TemplateManager$1;->a:Lcom/alipay/android/app/template/TemplateManager;

    .line 124
    iget-object v6, v0, Lcom/alipay/mobiletms/common/service/facade/rpc/Template;->publishVersion:Ljava/lang/String;

    .line 125
    iget-object v7, v4, Lcom/alipay/mobiletms/common/service/facade/rpc/Template;->publishVersion:Ljava/lang/String;

    .line 123
    invoke-virtual {v5, v6, v7}, Lcom/alipay/android/app/template/TemplateManager;->compareVersion(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    if-lez v5, :cond_5

    .line 128
    iget-object v4, v0, Lcom/alipay/mobiletms/common/service/facade/rpc/Template;->tplId:Ljava/lang/String;

    .line 129
    iget-object v5, p0, Lcom/alipay/android/app/template/TemplateManager$1;->a:Lcom/alipay/android/app/template/TemplateManager;

    invoke-virtual {v5, v0}, Lcom/alipay/android/app/template/TemplateManager;->createBirdParamsFromTemplate(Lcom/alipay/mobiletms/common/service/facade/rpc/Template;)Ljava/lang/String;

    move-result-object v0

    .line 128
    invoke-interface {v2, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 159
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/alipay/mobile/common/rpc/RpcException;->printStackTrace()V

    goto :goto_1

    .line 130
    :cond_5
    :try_start_1
    iget-object v5, v0, Lcom/alipay/mobiletms/common/service/facade/rpc/Template;->time:Ljava/lang/String;

    .line 131
    iget-object v4, v4, Lcom/alipay/mobiletms/common/service/facade/rpc/Template;->time:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    if-lez v4, :cond_3

    .line 134
    iget-object v4, v0, Lcom/alipay/mobiletms/common/service/facade/rpc/Template;->tplId:Ljava/lang/String;

    .line 135
    iget-object v5, p0, Lcom/alipay/android/app/template/TemplateManager$1;->a:Lcom/alipay/android/app/template/TemplateManager;

    invoke-virtual {v5, v0}, Lcom/alipay/android/app/template/TemplateManager;->createBirdParamsFromTemplate(Lcom/alipay/mobiletms/common/service/facade/rpc/Template;)Ljava/lang/String;

    move-result-object v0

    .line 134
    invoke-interface {v2, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 152
    :cond_6
    invoke-static {}, Lcom/alipay/android/app/template/TemplateManager;->a()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/alipay/android/app/template/TemplateManager;->a(I)V

    .line 154
    invoke-static {}, Lcom/alipay/android/app/template/TemplateManager;->a()I

    move-result v0

    rem-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_1

    .line 155
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/alipay/android/app/template/TemplateManager;->a(I)V

    .line 156
    iget-object v0, p0, Lcom/alipay/android/app/template/TemplateManager$1;->a:Lcom/alipay/android/app/template/TemplateManager;

    invoke-virtual {v0}, Lcom/alipay/android/app/template/TemplateManager;->triggerTemplateUpdateTask()V
    :try_end_1
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method
