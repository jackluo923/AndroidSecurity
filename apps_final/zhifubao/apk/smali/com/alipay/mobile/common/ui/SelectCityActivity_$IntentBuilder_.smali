.class public Lcom/alipay/mobile/common/ui/SelectCityActivity_$IntentBuilder_;
.super Ljava/lang/Object;
.source "SelectCityActivity_.java"


# instance fields
.field private context_:Landroid/content/Context;

.field private final intent_:Landroid/content/Intent;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 133
    iput-object p1, p0, Lcom/alipay/mobile/common/ui/SelectCityActivity_$IntentBuilder_;->context_:Landroid/content/Context;

    .line 134
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/alipay/mobile/common/ui/SelectCityActivity_;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/alipay/mobile/common/ui/SelectCityActivity_$IntentBuilder_;->intent_:Landroid/content/Intent;

    .line 135
    return-void
.end method


# virtual methods
.method public flags(I)Lcom/alipay/mobile/common/ui/SelectCityActivity_$IntentBuilder_;
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/alipay/mobile/common/ui/SelectCityActivity_$IntentBuilder_;->intent_:Landroid/content/Intent;

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 143
    return-object p0
.end method

.method public get()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/alipay/mobile/common/ui/SelectCityActivity_$IntentBuilder_;->intent_:Landroid/content/Intent;

    return-object v0
.end method

.method public start()V
    .locals 2

    .prologue
    .line 147
    iget-object v0, p0, Lcom/alipay/mobile/common/ui/SelectCityActivity_$IntentBuilder_;->context_:Landroid/content/Context;

    iget-object v1, p0, Lcom/alipay/mobile/common/ui/SelectCityActivity_$IntentBuilder_;->intent_:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 148
    return-void
.end method

.method public startForResult(I)V
    .locals 2

    .prologue
    .line 151
    iget-object v0, p0, Lcom/alipay/mobile/common/ui/SelectCityActivity_$IntentBuilder_;->context_:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/alipay/mobile/common/ui/SelectCityActivity_$IntentBuilder_;->context_:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    iget-object v1, p0, Lcom/alipay/mobile/common/ui/SelectCityActivity_$IntentBuilder_;->intent_:Landroid/content/Intent;

    invoke-virtual {v0, v1, p1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 156
    :goto_0
    return-void

    .line 154
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/ui/SelectCityActivity_$IntentBuilder_;->context_:Landroid/content/Context;

    iget-object v1, p0, Lcom/alipay/mobile/common/ui/SelectCityActivity_$IntentBuilder_;->intent_:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
