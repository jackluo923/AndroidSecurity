.class public Lcom/alipay/mobile/rome/pushservice/adapter/AlipayPushUpgrade;
.super Landroid/app/Activity;
.source "AlipayPushUpgrade.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final a:Ljava/lang/String;


# instance fields
.field private b:Landroid/widget/Button;

.field private c:Landroid/widget/Button;

.field private d:Landroid/widget/TextView;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Lorg/json/JSONObject;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 19
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "AlipayPush_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 20
    const-class v1, Lcom/alipay/mobile/rome/pushservice/adapter/AlipayPushUpgrade;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 19
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/rome/pushservice/adapter/AlipayPushUpgrade;->a:Ljava/lang/String;

    .line 18
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public getResources()Landroid/content/res/Resources;
    .locals 1

    .prologue
    .line 87
    invoke-virtual {p0}, Lcom/alipay/mobile/rome/pushservice/adapter/AlipayPushUpgrade;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 69
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/alipay/mobile/rome/pushservice/b;->a:I

    if-ne v0, v1, :cond_2

    .line 70
    iget-object v0, p0, Lcom/alipay/mobile/rome/pushservice/adapter/AlipayPushUpgrade;->f:Ljava/lang/String;

    if-eqz v0, :cond_1

    const-string/jumbo v0, ""

    iget-object v1, p0, Lcom/alipay/mobile/rome/pushservice/adapter/AlipayPushUpgrade;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 71
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/rome/pushservice/adapter/AlipayPushUpgrade;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "onClick: updateUrl="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/alipay/mobile/rome/pushservice/adapter/AlipayPushUpgrade;->f:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    iget-object v0, p0, Lcom/alipay/mobile/rome/pushservice/adapter/AlipayPushUpgrade;->b:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setClickable(Z)V

    .line 74
    new-instance v0, Lcom/alipay/mobile/rome/pushservice/adapter/b;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/rome/pushservice/adapter/b;-><init>(Landroid/app/Activity;)V

    .line 76
    iget-object v1, p0, Lcom/alipay/mobile/rome/pushservice/adapter/AlipayPushUpgrade;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/rome/pushservice/adapter/b;->a(Ljava/lang/String;)V

    .line 83
    :cond_0
    :goto_0
    return-void

    .line 78
    :cond_1
    invoke-virtual {p0}, Lcom/alipay/mobile/rome/pushservice/adapter/AlipayPushUpgrade;->finish()V

    goto :goto_0

    .line 80
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/alipay/mobile/rome/pushservice/b;->b:I

    if-ne v0, v1, :cond_0

    .line 81
    invoke-virtual {p0}, Lcom/alipay/mobile/rome/pushservice/adapter/AlipayPushUpgrade;->finish()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 33
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 35
    sget v0, Lcom/alipay/mobile/rome/pushservice/c;->a:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/rome/pushservice/adapter/AlipayPushUpgrade;->setContentView(I)V

    .line 37
    sget v0, Lcom/alipay/mobile/rome/pushservice/b;->a:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/rome/pushservice/adapter/AlipayPushUpgrade;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/alipay/mobile/rome/pushservice/adapter/AlipayPushUpgrade;->b:Landroid/widget/Button;

    .line 38
    sget v0, Lcom/alipay/mobile/rome/pushservice/b;->b:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/rome/pushservice/adapter/AlipayPushUpgrade;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/alipay/mobile/rome/pushservice/adapter/AlipayPushUpgrade;->c:Landroid/widget/Button;

    .line 39
    sget v0, Lcom/alipay/mobile/rome/pushservice/b;->c:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/rome/pushservice/adapter/AlipayPushUpgrade;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alipay/mobile/rome/pushservice/adapter/AlipayPushUpgrade;->d:Landroid/widget/TextView;

    .line 42
    :try_start_0
    invoke-virtual {p0}, Lcom/alipay/mobile/rome/pushservice/adapter/AlipayPushUpgrade;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 43
    const-string/jumbo v1, "upgrade_params"

    .line 42
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/rome/pushservice/adapter/AlipayPushUpgrade;->e:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 48
    :goto_0
    :try_start_1
    new-instance v0, Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/alipay/mobile/rome/pushservice/adapter/AlipayPushUpgrade;->e:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/alipay/mobile/rome/pushservice/adapter/AlipayPushUpgrade;->h:Lorg/json/JSONObject;

    .line 49
    iget-object v0, p0, Lcom/alipay/mobile/rome/pushservice/adapter/AlipayPushUpgrade;->h:Lorg/json/JSONObject;

    .line 50
    const-string/jumbo v1, "url"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 49
    iput-object v0, p0, Lcom/alipay/mobile/rome/pushservice/adapter/AlipayPushUpgrade;->f:Ljava/lang/String;

    .line 51
    iget-object v0, p0, Lcom/alipay/mobile/rome/pushservice/adapter/AlipayPushUpgrade;->h:Lorg/json/JSONObject;

    .line 52
    const-string/jumbo v1, "tip"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 51
    iput-object v0, p0, Lcom/alipay/mobile/rome/pushservice/adapter/AlipayPushUpgrade;->g:Ljava/lang/String;

    .line 53
    iget-object v0, p0, Lcom/alipay/mobile/rome/pushservice/adapter/AlipayPushUpgrade;->d:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/alipay/mobile/rome/pushservice/adapter/AlipayPushUpgrade;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 55
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/rome/pushservice/adapter/AlipayPushUpgrade;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "onCreate: updateTip="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/alipay/mobile/rome/pushservice/adapter/AlipayPushUpgrade;->g:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 60
    :goto_1
    iget-object v0, p0, Lcom/alipay/mobile/rome/pushservice/adapter/AlipayPushUpgrade;->b:Landroid/widget/Button;

    sget v1, Lcom/alipay/mobile/rome/pushservice/d;->i:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 61
    iget-object v0, p0, Lcom/alipay/mobile/rome/pushservice/adapter/AlipayPushUpgrade;->c:Landroid/widget/Button;

    sget v1, Lcom/alipay/mobile/rome/pushservice/d;->h:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 63
    iget-object v0, p0, Lcom/alipay/mobile/rome/pushservice/adapter/AlipayPushUpgrade;->b:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 64
    iget-object v0, p0, Lcom/alipay/mobile/rome/pushservice/adapter/AlipayPushUpgrade;->c:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 65
    return-void

    .line 56
    :catch_0
    move-exception v0

    .line 57
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "StackTrace"

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_0
.end method
