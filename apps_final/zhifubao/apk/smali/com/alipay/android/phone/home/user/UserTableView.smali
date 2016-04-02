.class public Lcom/alipay/android/phone/home/user/UserTableView;
.super Lcom/alipay/mobile/commonui/widget/APRelativeLayout;
.source "UserTableView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Landroid/view/View;

.field private c:Landroid/view/View;

.field private d:Landroid/view/View;

.field private e:Landroid/view/View;

.field private f:Lcom/alipay/mobile/commonui/widget/APTextView;

.field private g:Lcom/alipay/mobile/commonui/widget/APTextView;

.field private h:Lcom/alipay/android/phone/home/widget/UserAvatarImageView;

.field private i:Lcom/alipay/android/phone/home/widget/UserAvatarImageView;

.field private j:Lcom/alipay/android/phone/home/widget/UserAvatarImageView;

.field private k:Landroid/content/Context;

.field private l:Lcom/alipay/mobile/commonui/widget/APImageView;

.field private m:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

.field private n:Ljava/lang/String;

.field private o:Lcom/alipay/mobile/mpass/badge/ui/BadgeView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 83
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/alipay/android/phone/home/user/UserTableView;-><init>(Landroid/content/Context;B)V

    .line 84
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;B)V
    .locals 1

    .prologue
    .line 91
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/alipay/android/phone/home/user/UserTableView;-><init>(Landroid/content/Context;C)V

    .line 92
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;C)V
    .locals 3

    .prologue
    .line 100
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/alipay/mobile/commonui/widget/APRelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 36
    const-string/jumbo v0, "UserTableView"

    iput-object v0, p0, Lcom/alipay/android/phone/home/user/UserTableView;->a:Ljava/lang/String;

    .line 101
    iput-object p1, p0, Lcom/alipay/android/phone/home/user/UserTableView;->k:Landroid/content/Context;

    .line 102
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/alipay/android/phone/openplatform/R$layout;->p:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, p0}, Lcom/alipay/android/phone/home/user/UserTableView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Lcom/alipay/android/phone/openplatform/R$id;->V:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/phone/home/user/UserTableView;->b:Landroid/view/View;

    sget v0, Lcom/alipay/android/phone/openplatform/R$id;->W:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/phone/home/user/UserTableView;->c:Landroid/view/View;

    sget v0, Lcom/alipay/android/phone/openplatform/R$id;->k:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/phone/home/user/UserTableView;->d:Landroid/view/View;

    sget v0, Lcom/alipay/android/phone/openplatform/R$id;->l:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/phone/home/user/UserTableView;->e:Landroid/view/View;

    sget v0, Lcom/alipay/android/phone/openplatform/R$id;->R:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APImageView;

    iput-object v0, p0, Lcom/alipay/android/phone/home/user/UserTableView;->l:Lcom/alipay/mobile/commonui/widget/APImageView;

    sget v0, Lcom/alipay/android/phone/openplatform/R$id;->S:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTextView;

    iput-object v0, p0, Lcom/alipay/android/phone/home/user/UserTableView;->f:Lcom/alipay/mobile/commonui/widget/APTextView;

    sget v0, Lcom/alipay/android/phone/openplatform/R$id;->T:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTextView;

    iput-object v0, p0, Lcom/alipay/android/phone/home/user/UserTableView;->g:Lcom/alipay/mobile/commonui/widget/APTextView;

    sget v0, Lcom/alipay/android/phone/openplatform/R$id;->q:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/home/widget/UserAvatarImageView;

    iput-object v0, p0, Lcom/alipay/android/phone/home/user/UserTableView;->h:Lcom/alipay/android/phone/home/widget/UserAvatarImageView;

    sget v0, Lcom/alipay/android/phone/openplatform/R$id;->r:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/home/widget/UserAvatarImageView;

    iput-object v0, p0, Lcom/alipay/android/phone/home/user/UserTableView;->i:Lcom/alipay/android/phone/home/widget/UserAvatarImageView;

    sget v0, Lcom/alipay/android/phone/openplatform/R$id;->s:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/home/widget/UserAvatarImageView;

    iput-object v0, p0, Lcom/alipay/android/phone/home/user/UserTableView;->j:Lcom/alipay/android/phone/home/widget/UserAvatarImageView;

    sget v0, Lcom/alipay/android/phone/openplatform/R$id;->t:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    iput-object v0, p0, Lcom/alipay/android/phone/home/user/UserTableView;->m:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    sget v0, Lcom/alipay/android/phone/openplatform/R$id;->H:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/mpass/badge/ui/BadgeView;

    iput-object v0, p0, Lcom/alipay/android/phone/home/user/UserTableView;->o:Lcom/alipay/mobile/mpass/badge/ui/BadgeView;

    .line 103
    return-void
.end method


# virtual methods
.method public getIconView()Lcom/alipay/mobile/commonui/widget/APImageView;
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/alipay/android/phone/home/user/UserTableView;->l:Lcom/alipay/mobile/commonui/widget/APImageView;

    return-object v0
.end method

.method public getImageView1()Lcom/alipay/mobile/commonui/widget/APImageView;
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Lcom/alipay/android/phone/home/user/UserTableView;->h:Lcom/alipay/android/phone/home/widget/UserAvatarImageView;

    return-object v0
.end method

.method public getImageViewIndex(I)Lcom/alipay/mobile/commonui/widget/APImageView;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 190
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 191
    iget-object v0, p0, Lcom/alipay/android/phone/home/user/UserTableView;->h:Lcom/alipay/android/phone/home/widget/UserAvatarImageView;

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/home/widget/UserAvatarImageView;->setVisibility(I)V

    .line 192
    iget-object v0, p0, Lcom/alipay/android/phone/home/user/UserTableView;->h:Lcom/alipay/android/phone/home/widget/UserAvatarImageView;

    .line 200
    :goto_0
    return-object v0

    .line 193
    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 194
    iget-object v0, p0, Lcom/alipay/android/phone/home/user/UserTableView;->i:Lcom/alipay/android/phone/home/widget/UserAvatarImageView;

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/home/widget/UserAvatarImageView;->setVisibility(I)V

    .line 195
    iget-object v0, p0, Lcom/alipay/android/phone/home/user/UserTableView;->i:Lcom/alipay/android/phone/home/widget/UserAvatarImageView;

    goto :goto_0

    .line 196
    :cond_1
    const/4 v0, 0x3

    if-ne p1, v0, :cond_2

    .line 197
    iget-object v0, p0, Lcom/alipay/android/phone/home/user/UserTableView;->j:Lcom/alipay/android/phone/home/widget/UserAvatarImageView;

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/home/widget/UserAvatarImageView;->setVisibility(I)V

    .line 198
    iget-object v0, p0, Lcom/alipay/android/phone/home/user/UserTableView;->j:Lcom/alipay/android/phone/home/widget/UserAvatarImageView;

    goto :goto_0

    .line 200
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getInsertView()Lcom/alipay/mobile/commonui/widget/APLinearLayout;
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Lcom/alipay/android/phone/home/user/UserTableView;->m:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    return-object v0
.end method

.method public getRedFlag()Lcom/alipay/mobile/mpass/badge/ui/BadgeView;
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lcom/alipay/android/phone/home/user/UserTableView;->o:Lcom/alipay/mobile/mpass/badge/ui/BadgeView;

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 0

    .prologue
    .line 228
    return-object p0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 237
    iget-object v0, p0, Lcom/alipay/android/phone/home/user/UserTableView;->n:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 252
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "UserTableView"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "appId=>"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/alipay/android/phone/home/user/UserTableView;->n:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->print(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    iget-object v0, p0, Lcom/alipay/android/phone/home/user/UserTableView;->n:Ljava/lang/String;

    const-string/jumbo v1, "20000725"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 255
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/alipay/android/phone/home/user/UserTableView;->k:Landroid/content/Context;

    const-class v2, Lcom/alipay/android/phone/home/user/UserSettingActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 256
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    .line 257
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v2

    .line 258
    invoke-interface {v2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findTopRunningApp()Lcom/alipay/mobile/framework/app/MicroApplication;

    move-result-object v2

    .line 257
    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->startActivity(Lcom/alipay/mobile/framework/app/MicroApplication;Landroid/content/Intent;)V

    .line 266
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/alipay/android/phone/home/user/UserTableView;->getRedFlag()Lcom/alipay/mobile/mpass/badge/ui/BadgeView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/mpass/badge/ui/BadgeView;->getWidgetId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 267
    invoke-virtual {p0}, Lcom/alipay/android/phone/home/user/UserTableView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/mpass/badge/BadgeManager;->getInstance(Landroid/content/Context;)Lcom/alipay/mobile/mpass/badge/BadgeManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alipay/android/phone/home/user/UserTableView;->getRedFlag()Lcom/alipay/mobile/mpass/badge/ui/BadgeView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/mpass/badge/ui/BadgeView;->getWidgetId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/mpass/badge/BadgeManager;->ackClick(Ljava/lang/String;)V

    .line 269
    :cond_1
    return-void

    .line 260
    :cond_2
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 261
    const-string/jumbo v1, "20000002"

    iget-object v2, p0, Lcom/alipay/android/phone/home/user/UserTableView;->n:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/alipay/mobile/framework/MicroApplicationContext;->startApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public setAppId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 224
    iput-object p1, p0, Lcom/alipay/android/phone/home/user/UserTableView;->n:Ljava/lang/String;

    .line 225
    return-void
.end method

.method public setLeftText(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 159
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 160
    iget-object v0, p0, Lcom/alipay/android/phone/home/user/UserTableView;->f:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    .line 162
    :cond_0
    return-void
.end method

.method public setRightText(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 165
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 166
    iget-object v0, p0, Lcom/alipay/android/phone/home/user/UserTableView;->g:Lcom/alipay/mobile/commonui/widget/APTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setVisibility(I)V

    .line 167
    iget-object v0, p0, Lcom/alipay/android/phone/home/user/UserTableView;->g:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    .line 169
    :cond_0
    return-void
.end method

.method public setType(I)V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 129
    packed-switch p1, :pswitch_data_0

    .line 147
    :goto_0
    :pswitch_0
    return-void

    .line 131
    :pswitch_1
    iget-object v0, p0, Lcom/alipay/android/phone/home/user/UserTableView;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 132
    iget-object v0, p0, Lcom/alipay/android/phone/home/user/UserTableView;->e:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 135
    :pswitch_2
    iget-object v0, p0, Lcom/alipay/android/phone/home/user/UserTableView;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 136
    iget-object v0, p0, Lcom/alipay/android/phone/home/user/UserTableView;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 139
    :pswitch_3
    iget-object v0, p0, Lcom/alipay/android/phone/home/user/UserTableView;->b:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 140
    iget-object v0, p0, Lcom/alipay/android/phone/home/user/UserTableView;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 141
    iget-object v0, p0, Lcom/alipay/android/phone/home/user/UserTableView;->e:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 144
    :pswitch_4
    iget-object v0, p0, Lcom/alipay/android/phone/home/user/UserTableView;->b:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 145
    iget-object v0, p0, Lcom/alipay/android/phone/home/user/UserTableView;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 146
    iget-object v0, p0, Lcom/alipay/android/phone/home/user/UserTableView;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 129
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method
