.class public Lcom/alipay/android/phone/home/user/UserInfoActivity;
.super Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;
.source "UserInfoActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Lcom/alipay/mobile/commonui/widget/APTitleBar;

.field private final b:Ljava/lang/String;

.field private c:Lcom/alipay/mobile/framework/service/ext/security/AuthService;

.field private d:Lcom/alipay/mobile/framework/service/ext/openplatform/service/AppManageService;

.field private final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/framework/service/ext/openplatform/app/Stage;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lcom/alipay/android/phone/home/user/UserContainer;

.field private g:Landroid/view/View;

.field private h:Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

.field private i:Lcom/alipay/android/phone/home/widget/UserAvatarImageView;

.field private j:Lcom/alipay/mobile/commonbiz/image/ImageWorker;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;-><init>()V

    .line 55
    const-class v0, Lcom/alipay/android/phone/home/user/UserInfoActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/phone/home/user/UserInfoActivity;->b:Ljava/lang/String;

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/phone/home/user/UserInfoActivity;->e:Ljava/util/List;

    .line 51
    return-void
.end method

.method static synthetic a(Lcom/alipay/android/phone/home/user/UserInfoActivity;)Lcom/alipay/android/phone/home/widget/UserAvatarImageView;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/alipay/android/phone/home/user/UserInfoActivity;->i:Lcom/alipay/android/phone/home/widget/UserAvatarImageView;

    return-object v0
.end method

.method private a()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    const/16 v9, 0x8

    .line 150
    iget-object v0, p0, Lcom/alipay/android/phone/home/user/UserInfoActivity;->c:Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    if-nez v0, :cond_1

    .line 151
    invoke-virtual {p0}, Lcom/alipay/android/phone/home/user/UserInfoActivity;->finish()V

    .line 239
    :cond_0
    :goto_0
    return-void

    .line 154
    :cond_1
    iget-object v0, p0, Lcom/alipay/android/phone/home/user/UserInfoActivity;->c:Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->getUserInfo()Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    move-result-object v1

    .line 155
    if-nez v1, :cond_2

    .line 156
    invoke-virtual {p0}, Lcom/alipay/android/phone/home/user/UserInfoActivity;->finish()V

    goto :goto_0

    .line 160
    :cond_2
    if-nez v1, :cond_4

    const-string/jumbo v0, ""

    move-object v5, v0

    .line 161
    :goto_1
    if-nez v1, :cond_5

    const-string/jumbo v0, ""

    move-object v4, v0

    .line 162
    :goto_2
    if-nez v1, :cond_6

    const-string/jumbo v0, ""

    move-object v3, v0

    .line 163
    :goto_3
    if-nez v1, :cond_7

    const-string/jumbo v0, ""

    move-object v2, v0

    .line 164
    :goto_4
    if-nez v1, :cond_8

    const-string/jumbo v0, ""

    move-object v1, v0

    .line 166
    :goto_5
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    iget-object v6, p0, Lcom/alipay/android/phone/home/user/UserInfoActivity;->b:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "refreshUserData----userInfo = [showAvatar:]"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "],[showLogonId:]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0, v6, v7}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->print(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    iget-object v6, p0, Lcom/alipay/android/phone/home/user/UserInfoActivity;->b:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "refreshUserData----userName = [showName:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 168
    const-string/jumbo v8, "],[showNick:]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "],[showcustomerType:]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 167
    invoke-interface {v0, v6, v7}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->print(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 173
    const-string/jumbo v0, "1"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 174
    sget v0, Lcom/alipay/android/phone/openplatform/R$id;->ab:I

    invoke-virtual {p0, v0}, Lcom/alipay/android/phone/home/user/UserInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 175
    sget v0, Lcom/alipay/android/phone/openplatform/R$id;->ac:I

    invoke-virtual {p0, v0}, Lcom/alipay/android/phone/home/user/UserInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    .line 195
    :cond_3
    :goto_6
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 196
    iget-object v0, p0, Lcom/alipay/android/phone/home/user/UserInfoActivity;->j:Lcom/alipay/mobile/commonbiz/image/ImageWorker;

    new-instance v4, Lcom/alipay/android/phone/home/user/b;

    invoke-direct {v4, p0}, Lcom/alipay/android/phone/home/user/b;-><init>(Lcom/alipay/android/phone/home/user/UserInfoActivity;)V

    invoke-virtual {v0, v2, v4}, Lcom/alipay/mobile/commonbiz/image/ImageWorker;->loadImage(Ljava/lang/String;Lcom/alipay/mobile/commonbiz/image/ImageWorkerCallback;)Lcom/alipay/mobile/commonbiz/image/ImageWorker;

    .line 229
    :goto_7
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 230
    sget v0, Lcom/alipay/android/phone/openplatform/R$id;->ab:I

    invoke-virtual {p0, v0}, Lcom/alipay/android/phone/home/user/UserInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroid/view/View;->setVisibility(I)V

    .line 231
    sget v0, Lcom/alipay/android/phone/openplatform/R$id;->ab:I

    invoke-virtual {p0, v0}, Lcom/alipay/android/phone/home/user/UserInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 236
    :goto_8
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 237
    sget v0, Lcom/alipay/android/phone/openplatform/R$id;->Y:I

    invoke-virtual {p0, v0}, Lcom/alipay/android/phone/home/user/UserInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 160
    :cond_4
    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getCustomerType()Ljava/lang/String;

    move-result-object v0

    move-object v5, v0

    goto/16 :goto_1

    .line 161
    :cond_5
    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getNick()Ljava/lang/String;

    move-result-object v0

    move-object v4, v0

    goto/16 :goto_2

    .line 162
    :cond_6
    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getShowName()Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    goto/16 :goto_3

    .line 163
    :cond_7
    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getUserAvatar()Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    goto/16 :goto_4

    .line 164
    :cond_8
    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getLogonId()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto/16 :goto_5

    .line 176
    :cond_9
    const-string/jumbo v0, "2"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 178
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 179
    sget v0, Lcom/alipay/android/phone/openplatform/R$id;->ab:I

    invoke-virtual {p0, v0}, Lcom/alipay/android/phone/home/user/UserInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroid/view/View;->setVisibility(I)V

    .line 180
    sget v0, Lcom/alipay/android/phone/openplatform/R$id;->ab:I

    invoke-virtual {p0, v0}, Lcom/alipay/android/phone/home/user/UserInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 185
    :goto_9
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 186
    sget v0, Lcom/alipay/android/phone/openplatform/R$id;->ac:I

    invoke-virtual {p0, v0}, Lcom/alipay/android/phone/home/user/UserInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_6

    .line 182
    :cond_a
    sget v0, Lcom/alipay/android/phone/openplatform/R$id;->ab:I

    invoke-virtual {p0, v0}, Lcom/alipay/android/phone/home/user/UserInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    goto :goto_9

    .line 188
    :cond_b
    sget v0, Lcom/alipay/android/phone/openplatform/R$id;->ac:I

    invoke-virtual {p0, v0}, Lcom/alipay/android/phone/home/user/UserInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_6

    .line 225
    :cond_c
    iget-object v0, p0, Lcom/alipay/android/phone/home/user/UserInfoActivity;->i:Lcom/alipay/android/phone/home/widget/UserAvatarImageView;

    sget v2, Lcom/alipay/android/phone/openplatform/R$drawable;->m:I

    invoke-virtual {v0, v2}, Lcom/alipay/android/phone/home/widget/UserAvatarImageView;->setImageResource(I)V

    goto/16 :goto_7

    .line 233
    :cond_d
    sget v0, Lcom/alipay/android/phone/openplatform/R$id;->ab:I

    invoke-virtual {p0, v0}, Lcom/alipay/android/phone/home/user/UserInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_8
.end method

.method static synthetic a(Lcom/alipay/android/phone/home/user/UserInfoActivity;Landroid/graphics/drawable/Drawable;)V
    .locals 3

    .prologue
    .line 241
    if-eqz p1, :cond_0

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    if-eq v1, v2, :cond_1

    new-instance v1, Lcom/alipay/android/phone/home/user/c;

    invoke-direct {v1, p0, p1}, Lcom/alipay/android/phone/home/user/c;-><init>(Lcom/alipay/android/phone/home/user/UserInfoActivity;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/alipay/android/phone/home/user/UserInfoActivity;->i:Lcom/alipay/android/phone/home/widget/UserAvatarImageView;

    invoke-virtual {v0, p1}, Lcom/alipay/android/phone/home/widget/UserAvatarImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/alipay/android/phone/home/user/UserInfoActivity;)Lcom/alipay/mobile/framework/service/ext/openplatform/service/AppManageService;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/alipay/android/phone/home/user/UserInfoActivity;->d:Lcom/alipay/mobile/framework/service/ext/openplatform/service/AppManageService;

    return-object v0
.end method

.method static synthetic c(Lcom/alipay/android/phone/home/user/UserInfoActivity;)Lcom/alipay/mobile/framework/service/ext/security/AuthService;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/alipay/android/phone/home/user/UserInfoActivity;->c:Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    return-object v0
.end method

.method static synthetic d(Lcom/alipay/android/phone/home/user/UserInfoActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/alipay/android/phone/home/user/UserInfoActivity;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lcom/alipay/android/phone/home/user/UserInfoActivity;)Lcom/alipay/android/phone/home/user/UserContainer;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/alipay/android/phone/home/user/UserInfoActivity;->f:Lcom/alipay/android/phone/home/user/UserContainer;

    return-object v0
.end method

.method static synthetic f(Lcom/alipay/android/phone/home/user/UserInfoActivity;)Lcom/alipay/mobile/framework/app/ActivityApplication;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/alipay/android/phone/home/user/UserInfoActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    return-object v0
.end method

.method static synthetic g(Lcom/alipay/android/phone/home/user/UserInfoActivity;)V
    .locals 4

    .prologue
    .line 336
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/alipay/android/phone/home/user/g;

    invoke-direct {v1, p0}, Lcom/alipay/android/phone/home/user/g;-><init>(Lcom/alipay/android/phone/home/user/UserInfoActivity;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method


# virtual methods
.method public bridge synthetic getClassLoader()Ljava/lang/ClassLoader;
    .locals 1

    .prologue
    .line 1
    invoke-super {p0}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getResources()Landroid/content/res/Resources;
    .locals 1

    .prologue
    .line 1
    invoke-super {p0}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6

    .prologue
    .line 307
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/alipay/android/phone/openplatform/R$id;->y:I

    if-ne v0, v1, :cond_1

    .line 308
    new-instance v0, Lcom/alipay/mobile/commonui/widget/APNoticePopDialog;

    const-string/jumbo v2, ""

    .line 309
    sget v1, Lcom/alipay/android/phone/openplatform/R$string;->h:I

    invoke-virtual {p0, v1}, Lcom/alipay/android/phone/home/user/UserInfoActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 310
    sget v1, Lcom/alipay/android/phone/openplatform/R$string;->g:I

    invoke-virtual {p0, v1}, Lcom/alipay/android/phone/home/user/UserInfoActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    sget v1, Lcom/alipay/android/phone/openplatform/R$string;->f:I

    invoke-virtual {p0, v1}, Lcom/alipay/android/phone/home/user/UserInfoActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object v1, p0

    .line 308
    invoke-direct/range {v0 .. v5}, Lcom/alipay/mobile/commonui/widget/APNoticePopDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    new-instance v1, Lcom/alipay/android/phone/home/user/f;

    invoke-direct {v1, p0}, Lcom/alipay/android/phone/home/user/f;-><init>(Lcom/alipay/android/phone/home/user/UserInfoActivity;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APNoticePopDialog;->setPositiveListener(Lcom/alipay/mobile/commonui/widget/APNoticePopDialog$OnClickPositiveListener;)V

    .line 328
    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APNoticePopDialog;->show()V

    .line 334
    :cond_0
    :goto_0
    return-void

    .line 329
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/alipay/android/phone/openplatform/R$id;->X:I

    if-ne v0, v1, :cond_0

    .line 331
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 332
    const-string/jumbo v1, "20000002"

    const-string/jumbo v2, "20000057"

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/alipay/mobile/framework/MicroApplicationContext;->startApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    .line 77
    invoke-super {p0, p1}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 78
    sget v0, Lcom/alipay/android/phone/openplatform/R$layout;->n:I

    invoke-virtual {p0, v0}, Lcom/alipay/android/phone/home/user/UserInfoActivity;->setContentView(I)V

    .line 80
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 81
    invoke-virtual {p0}, Lcom/alipay/android/phone/home/user/UserInfoActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x1000000

    .line 82
    const/high16 v2, 0x1000000

    .line 81
    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->setFlags(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    :cond_0
    :goto_0
    new-instance v0, Lcom/alipay/mobile/commonbiz/image/ImageWorker;

    invoke-virtual {p0}, Lcom/alipay/android/phone/home/user/UserInfoActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alipay/mobile/commonbiz/image/ImageWorker;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alipay/android/phone/home/user/UserInfoActivity;->j:Lcom/alipay/mobile/commonbiz/image/ImageWorker;

    .line 90
    sget v0, Lcom/alipay/android/phone/openplatform/R$id;->d:I

    invoke-virtual {p0, v0}, Lcom/alipay/android/phone/home/user/UserInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTitleBar;

    iput-object v0, p0, Lcom/alipay/android/phone/home/user/UserInfoActivity;->a:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    .line 91
    iget-object v0, p0, Lcom/alipay/android/phone/home/user/UserInfoActivity;->a:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->getTitlebarBg()Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

    move-result-object v0

    sget v1, Lcom/alipay/android/phone/openplatform/R$color;->b:I

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APRelativeLayout;->setBackgroundResource(I)V

    .line 92
    iget-object v0, p0, Lcom/alipay/android/phone/home/user/UserInfoActivity;->a:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    sget v1, Lcom/alipay/android/phone/openplatform/R$drawable;->n:I

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->setGenericButtonIconResource(I)V

    .line 93
    iget-object v0, p0, Lcom/alipay/android/phone/home/user/UserInfoActivity;->a:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    new-instance v1, Lcom/alipay/android/phone/home/user/a;

    invoke-direct {v1, p0}, Lcom/alipay/android/phone/home/user/a;-><init>(Lcom/alipay/android/phone/home/user/UserInfoActivity;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->setGenericButtonListener(Landroid/view/View$OnClickListener;)V

    .line 103
    sget v0, Lcom/alipay/android/phone/openplatform/R$id;->X:I

    invoke-virtual {p0, v0}, Lcom/alipay/android/phone/home/user/UserInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

    iput-object v0, p0, Lcom/alipay/android/phone/home/user/UserInfoActivity;->h:Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

    .line 104
    iget-object v0, p0, Lcom/alipay/android/phone/home/user/UserInfoActivity;->h:Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/commonui/widget/APRelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 106
    sget v0, Lcom/alipay/android/phone/openplatform/R$id;->aa:I

    invoke-virtual {p0, v0}, Lcom/alipay/android/phone/home/user/UserInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/home/widget/UserAvatarImageView;

    iput-object v0, p0, Lcom/alipay/android/phone/home/user/UserInfoActivity;->i:Lcom/alipay/android/phone/home/widget/UserAvatarImageView;

    .line 108
    sget v0, Lcom/alipay/android/phone/openplatform/R$id;->y:I

    invoke-virtual {p0, v0}, Lcom/alipay/android/phone/home/user/UserInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/phone/home/user/UserInfoActivity;->g:Landroid/view/View;

    .line 109
    iget-object v0, p0, Lcom/alipay/android/phone/home/user/UserInfoActivity;->g:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 111
    sget v0, Lcom/alipay/android/phone/openplatform/R$id;->Z:I

    invoke-virtual {p0, v0}, Lcom/alipay/android/phone/home/user/UserInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/home/user/UserContainer;

    iput-object v0, p0, Lcom/alipay/android/phone/home/user/UserInfoActivity;->f:Lcom/alipay/android/phone/home/user/UserContainer;

    .line 112
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 113
    const-class v1, Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    .line 112
    iput-object v0, p0, Lcom/alipay/android/phone/home/user/UserInfoActivity;->c:Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    .line 114
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 115
    const-class v1, Lcom/alipay/mobile/framework/service/ext/openplatform/service/AppManageService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/openplatform/service/AppManageService;

    .line 114
    iput-object v0, p0, Lcom/alipay/android/phone/home/user/UserInfoActivity;->d:Lcom/alipay/mobile/framework/service/ext/openplatform/service/AppManageService;

    .line 116
    invoke-direct {p0}, Lcom/alipay/android/phone/home/user/UserInfoActivity;->a()V

    .line 117
    iget-object v0, p0, Lcom/alipay/android/phone/home/user/UserInfoActivity;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/alipay/android/phone/home/user/UserInfoActivity;->d:Lcom/alipay/mobile/framework/service/ext/openplatform/service/AppManageService;

    const-string/jumbo v1, "userInfo"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/service/AppManageService;->getUserAppsFromLocal(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/android/phone/home/user/UserInfoActivity;->b:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "userInfo.list.size:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->print(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/android/phone/home/user/UserInfoActivity;->e:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_1
    iget-object v0, p0, Lcom/alipay/android/phone/home/user/UserInfoActivity;->f:Lcom/alipay/android/phone/home/user/UserContainer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/home/user/UserContainer;->setShowIcon(Z)V

    iget-object v0, p0, Lcom/alipay/android/phone/home/user/UserInfoActivity;->f:Lcom/alipay/android/phone/home/user/UserContainer;

    iget-object v1, p0, Lcom/alipay/android/phone/home/user/UserInfoActivity;->e:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/home/user/UserContainer;->setUserAppList(Ljava/util/List;)V

    .line 119
    return-void

    .line 85
    :catch_0
    move-exception v0

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/phone/home/user/UserInfoActivity;->b:Ljava/lang/String;

    const-string/jumbo v2, "\u786c\u4ef6\u52a0\u901f error"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 123
    invoke-super {p0}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->onResume()V

    .line 124
    iget-object v0, p0, Lcom/alipay/android/phone/home/user/UserInfoActivity;->c:Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/alipay/android/phone/home/user/UserInfoActivity;->c:Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->getUserInfo()Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    move-result-object v0

    .line 126
    iget-object v1, p0, Lcom/alipay/android/phone/home/user/UserInfoActivity;->c:Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->isLogin()Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 127
    iget-object v0, p0, Lcom/alipay/android/phone/home/user/UserInfoActivity;->g:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 132
    :cond_0
    :goto_0
    return-void

    .line 129
    :cond_1
    iget-object v0, p0, Lcom/alipay/android/phone/home/user/UserInfoActivity;->g:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method protected onStart()V
    .locals 3

    .prologue
    .line 262
    invoke-super {p0}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->onStart()V

    .line 263
    invoke-direct {p0}, Lcom/alipay/android/phone/home/user/UserInfoActivity;->a()V

    .line 264
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/phone/home/user/UserInfoActivity;->b:Ljava/lang/String;

    const-string/jumbo v2, "refreshUserAppsData"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->print(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/android/phone/home/user/UserInfoActivity;->c:Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/phone/home/user/UserInfoActivity;->d:Lcom/alipay/mobile/framework/service/ext/openplatform/service/AppManageService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/phone/home/user/UserInfoActivity;->c:Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->getUserInfo()Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/phone/home/user/UserInfoActivity;->b:Ljava/lang/String;

    const-string/jumbo v2, "refreshUserAppsData() return"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->print(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    :goto_0
    return-void

    .line 264
    :cond_1
    new-instance v0, Lcom/alipay/android/phone/home/user/d;

    invoke-direct {v0, p0}, Lcom/alipay/android/phone/home/user/d;-><init>(Lcom/alipay/android/phone/home/user/UserInfoActivity;)V

    invoke-virtual {v0}, Lcom/alipay/android/phone/home/user/d;->start()V

    goto :goto_0
.end method

.method public bridge synthetic startActivity(Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 1
    invoke-super {p0, p1}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public bridge synthetic startActivityForResult(Landroid/content/Intent;I)V
    .locals 0

    .prologue
    .line 1
    invoke-super {p0, p1, p2}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
