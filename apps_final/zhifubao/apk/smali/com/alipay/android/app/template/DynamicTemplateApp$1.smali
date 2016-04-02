.class Lcom/alipay/android/app/template/DynamicTemplateApp$1;
.super Ljava/lang/Object;
.source "DynamicTemplateApp.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/alipay/android/app/template/DynamicTemplateApp;

.field private final synthetic b:[Ljava/lang/String;

.field private final synthetic c:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/template/DynamicTemplateApp;[Ljava/lang/String;Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/android/app/template/DynamicTemplateApp$1;->a:Lcom/alipay/android/app/template/DynamicTemplateApp;

    iput-object p2, p0, Lcom/alipay/android/app/template/DynamicTemplateApp$1;->b:[Ljava/lang/String;

    iput-object p3, p0, Lcom/alipay/android/app/template/DynamicTemplateApp$1;->c:Landroid/app/Activity;

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 10

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v9, 0x1

    .line 100
    iget-object v0, p0, Lcom/alipay/android/app/template/DynamicTemplateApp$1;->a:Lcom/alipay/android/app/template/DynamicTemplateApp;

    invoke-virtual {v0}, Lcom/alipay/android/app/template/DynamicTemplateApp;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 101
    const-class v1, Lcom/alipay/android/app/template/service/DynamicTemplateService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/template/service/DynamicTemplateService;

    .line 103
    iget-object v1, p0, Lcom/alipay/android/app/template/DynamicTemplateApp$1;->b:[Ljava/lang/String;

    aget-object v1, v1, p2

    .line 104
    const-string/jumbo v2, "close"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 105
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 206
    :cond_0
    :goto_0
    return-void

    .line 106
    :cond_1
    const-string/jumbo v2, "launchPage"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 107
    iget-object v1, p0, Lcom/alipay/android/app/template/DynamicTemplateApp$1;->c:Landroid/app/Activity;

    instance-of v1, v1, Lcom/alipay/mobile/framework/app/ui/ActivityResponsable;

    if-eqz v1, :cond_0

    .line 112
    const-string/jumbo v1, "WALLET-O2O@o2o_merchant_detail_view"

    iget-object v2, p0, Lcom/alipay/android/app/template/DynamicTemplateApp$1;->c:Landroid/app/Activity;

    invoke-virtual {v0, v1, v2}, Lcom/alipay/android/app/template/service/DynamicTemplateService;->getCachedTemplate(Ljava/lang/String;Landroid/content/Context;)Lcom/alipay/mobiletms/common/service/facade/rpc/Template;

    move-result-object v1

    .line 114
    if-nez v1, :cond_2

    .line 115
    new-instance v1, Lcom/alipay/android/app/template/DynamicTemplateApp$1$1;

    iget-object v2, p0, Lcom/alipay/android/app/template/DynamicTemplateApp$1;->c:Landroid/app/Activity;

    invoke-direct {v1, p0, v0, v2}, Lcom/alipay/android/app/template/DynamicTemplateApp$1$1;-><init>(Lcom/alipay/android/app/template/DynamicTemplateApp$1;Lcom/alipay/android/app/template/service/DynamicTemplateService;Landroid/app/Activity;)V

    new-array v0, v4, [Ljava/lang/Void;

    .line 136
    invoke-virtual {v1, v0}, Lcom/alipay/android/app/template/DynamicTemplateApp$1$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 141
    :cond_2
    :try_start_0
    iget-object v1, p0, Lcom/alipay/android/app/template/DynamicTemplateApp$1;->c:Landroid/app/Activity;

    check-cast v1, Lcom/alipay/mobile/framework/app/ui/ActivityResponsable;

    const-string/jumbo v2, "WALLET-O2O@o2o_merchant_detail_view"

    const/4 v3, 0x0

    .line 142
    const-string/jumbo v4, "{\"text\":\"hahahahaha\"}"

    const-string/jumbo v5, ""

    const-string/jumbo v6, ""

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 141
    invoke-virtual/range {v0 .. v8}, Lcom/alipay/android/app/template/service/DynamicTemplateService;->launchPage(Lcom/alipay/mobile/framework/app/ui/ActivityResponsable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/android/app/template/event/TElementEventHandler;Ljava/lang/String;)Lcom/alipay/android/app/template/service/DynamicTemplateService$TResult;

    move-result-object v0

    .line 143
    sget-object v1, Lcom/alipay/android/app/template/service/DynamicTemplateService$TResult;->OK:Lcom/alipay/android/app/template/service/DynamicTemplateService$TResult;

    if-eq v0, v1, :cond_0

    .line 144
    iget-object v1, p0, Lcom/alipay/android/app/template/DynamicTemplateApp$1;->c:Landroid/app/Activity;

    invoke-virtual {v0}, Lcom/alipay/android/app/template/service/DynamicTemplateService$TResult;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 145
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 147
    :catch_0
    move-exception v0

    .line 148
    iget-object v1, p0, Lcom/alipay/android/app/template/DynamicTemplateApp$1;->c:Landroid/app/Activity;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 151
    :cond_3
    const-string/jumbo v2, "launchListView"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 152
    sput-boolean v9, Lcom/alipay/android/app/template/ui/TplListViewActivity;->DEVELOPMENT_MODE:Z

    .line 153
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 154
    iget-object v1, p0, Lcom/alipay/android/app/template/DynamicTemplateApp$1;->a:Lcom/alipay/android/app/template/DynamicTemplateApp;

    invoke-virtual {v1}, Lcom/alipay/android/app/template/DynamicTemplateApp;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    .line 155
    invoke-interface {v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getApplicationContext()Landroid/app/Application;

    move-result-object v2

    .line 156
    const-class v3, Lcom/alipay/android/app/template/ui/TplListViewActivity;

    .line 155
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 157
    iget-object v2, p0, Lcom/alipay/android/app/template/DynamicTemplateApp$1;->a:Lcom/alipay/android/app/template/DynamicTemplateApp;

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->startActivity(Lcom/alipay/mobile/framework/app/MicroApplication;Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 158
    :cond_4
    const-string/jumbo v2, "launchRecyclerView"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 159
    sput-boolean v9, Lcom/alipay/android/app/template/ui/TplRecyclerViewActivity;->DEVELOPMENT_MODE:Z

    .line 160
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 161
    iget-object v1, p0, Lcom/alipay/android/app/template/DynamicTemplateApp$1;->a:Lcom/alipay/android/app/template/DynamicTemplateApp;

    invoke-virtual {v1}, Lcom/alipay/android/app/template/DynamicTemplateApp;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    .line 162
    invoke-interface {v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getApplicationContext()Landroid/app/Application;

    move-result-object v2

    .line 163
    const-class v3, Lcom/alipay/android/app/template/ui/TplRecyclerViewActivity;

    .line 162
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 164
    iget-object v2, p0, Lcom/alipay/android/app/template/DynamicTemplateApp$1;->a:Lcom/alipay/android/app/template/DynamicTemplateApp;

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->startActivity(Lcom/alipay/mobile/framework/app/MicroApplication;Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 165
    :cond_5
    const-string/jumbo v2, "preLoad"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 166
    new-instance v1, Lcom/alipay/android/app/template/DynamicTemplateApp$1$2;

    iget-object v2, p0, Lcom/alipay/android/app/template/DynamicTemplateApp$1;->c:Landroid/app/Activity;

    invoke-direct {v1, p0, v0, v2}, Lcom/alipay/android/app/template/DynamicTemplateApp$1$2;-><init>(Lcom/alipay/android/app/template/DynamicTemplateApp$1;Lcom/alipay/android/app/template/service/DynamicTemplateService;Landroid/app/Activity;)V

    new-array v0, v4, [Ljava/lang/Void;

    .line 173
    invoke-virtual {v1, v0}, Lcom/alipay/android/app/template/DynamicTemplateApp$1$2;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0

    .line 174
    :cond_6
    const-string/jumbo v2, "handleBirdResponse"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 178
    const-string/jumbo v2, "generateView"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 179
    iget-object v1, p0, Lcom/alipay/android/app/template/DynamicTemplateApp$1;->c:Landroid/app/Activity;

    const-string/jumbo v2, "loading\u2026\u2026"

    invoke-static {v1, v3, v2}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v1

    .line 180
    new-instance v2, Lcom/alipay/android/app/template/DynamicTemplateApp$1$3;

    iget-object v3, p0, Lcom/alipay/android/app/template/DynamicTemplateApp$1;->c:Landroid/app/Activity;

    invoke-direct {v2, p0, v0, v3, v1}, Lcom/alipay/android/app/template/DynamicTemplateApp$1$3;-><init>(Lcom/alipay/android/app/template/DynamicTemplateApp$1;Lcom/alipay/android/app/template/service/DynamicTemplateService;Landroid/app/Activity;Landroid/app/Dialog;)V

    new-array v0, v4, [Ljava/lang/Void;

    .line 204
    invoke-virtual {v2, v0}, Lcom/alipay/android/app/template/DynamicTemplateApp$1$3;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0
.end method
