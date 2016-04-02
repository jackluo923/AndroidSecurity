.class public Lcom/ali/user/mobile/register/ui/AliuserRegisterExistUserActivity;
.super Lcom/ali/user/mobile/register/ui/BaseRegisterActivity;
.source "AliuserRegisterExistUserActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:I

.field private b:Z

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/ExistUserInfo;

.field private g:Landroid/view/View;

.field private h:Landroid/widget/LinearLayout;

.field private i:Lcom/alipay/mobile/commonui/widget/APTitleBar;

.field private j:Landroid/widget/TextView;

.field private k:Landroid/widget/TextView;

.field private l:Lcom/alipay/mobile/commonui/widget/APImageView;

.field private m:Landroid/widget/Button;

.field private n:Landroid/widget/Button;

.field private o:Landroid/widget/Button;

.field private p:Landroid/widget/Button;

.field private q:Landroid/widget/Button;

.field private r:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/ali/user/mobile/register/ui/BaseRegisterActivity;-><init>()V

    return-void
.end method

.method private a()V
    .locals 15

    .prologue
    const/4 v14, 0x2

    const/4 v13, 0x1

    const/4 v3, 0x0

    .line 196
    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliuserRegisterExistUserActivity;->f:Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/ExistUserInfo;

    iget-object v5, v0, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/ExistUserInfo;->displayTags:Ljava/util/List;

    .line 197
    if-eqz v5, :cond_1

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 199
    invoke-virtual {p0}, Lcom/ali/user/mobile/register/ui/AliuserRegisterExistUserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/ali/user/mobile/security/ui/R$dimen;->font_size_15:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    .line 200
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v2, v3

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 210
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    .line 211
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    move v4, v3

    .line 212
    :goto_1
    if-lt v4, v7, :cond_3

    .line 229
    :cond_1
    return-void

    .line 200
    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 201
    const-string/jumbo v6, ":"

    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 202
    const-string/jumbo v6, ":"

    invoke-virtual {v0, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 203
    aget-object v0, v0, v3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    mul-int/2addr v0, v1

    .line 204
    if-le v0, v2, :cond_0

    move v2, v0

    .line 205
    goto :goto_0

    .line 213
    :cond_3
    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 214
    const-string/jumbo v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 215
    const-string/jumbo v8, ":"

    invoke-virtual {v0, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    new-array v1, v14, [Ljava/lang/String;

    const-string/jumbo v9, ""

    aput-object v9, v1, v3

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v0, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v13

    .line 216
    :goto_2
    sget v0, Lcom/ali/user/mobile/security/ui/R$layout;->layout_exist_user_info:I

    iget-object v8, p0, Lcom/ali/user/mobile/register/ui/AliuserRegisterExistUserActivity;->h:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v0, v8, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v8

    .line 217
    sget v0, Lcom/ali/user/mobile/security/ui/R$id;->infoTitle:I

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 218
    aget-object v9, v1, v3

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 219
    sget v0, Lcom/ali/user/mobile/security/ui/R$id;->infoValue:I

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 220
    aget-object v1, v1, v13

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 221
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v9, 0x9

    sget v10, Lcom/ali/user/mobile/security/ui/R$id;->infoLayout:I

    invoke-virtual {v1, v9, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {p0}, Lcom/ali/user/mobile/register/ui/AliuserRegisterExistUserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    sget v10, Lcom/ali/user/mobile/security/ui/R$dimen;->margin_20:I

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v9

    add-int/2addr v9, v2

    invoke-virtual {p0}, Lcom/ali/user/mobile/register/ui/AliuserRegisterExistUserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    sget v11, Lcom/ali/user/mobile/security/ui/R$dimen;->margin_0:I

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v10

    invoke-virtual {p0}, Lcom/ali/user/mobile/register/ui/AliuserRegisterExistUserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    sget v12, Lcom/ali/user/mobile/security/ui/R$dimen;->margin_16:I

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v11

    invoke-virtual {v1, v9, v10, v11, v10}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 222
    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliuserRegisterExistUserActivity;->h:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 223
    if-nez v4, :cond_4

    .line 224
    sget v0, Lcom/ali/user/mobile/security/ui/R$id;->seperator:I

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 212
    :cond_4
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto/16 :goto_1

    .line 215
    :cond_5
    invoke-virtual {v0, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    new-array v1, v14, [Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    sub-int v8, v9, v8

    invoke-virtual {v0, v3, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v3

    const-string/jumbo v0, ""

    aput-object v0, v1, v13

    goto/16 :goto_2

    :cond_6
    invoke-virtual {v0, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto/16 :goto_2
.end method

.method static synthetic access$3(Lcom/ali/user/mobile/register/ui/AliuserRegisterExistUserActivity;)V
    .locals 0

    .prologue
    .line 300
    invoke-direct {p0}, Lcom/ali/user/mobile/register/ui/AliuserRegisterExistUserActivity;->c()V

    return-void
.end method

.method private b()V
    .locals 2

    .prologue
    .line 276
    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliuserRegisterExistUserActivity;->mRegionNo:Ljava/lang/String;

    iget-object v1, p0, Lcom/ali/user/mobile/register/ui/AliuserRegisterExistUserActivity;->mMobileNo:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/ali/user/mobile/utils/StringUtil;->getPhoneAccount(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/register/ui/AliuserRegisterExistUserActivity;->goLogin(Ljava/lang/String;)V

    .line 277
    invoke-virtual {p0}, Lcom/ali/user/mobile/register/ui/AliuserRegisterExistUserActivity;->finish()V

    .line 278
    return-void
.end method

.method private c()V
    .locals 2

    .prologue
    .line 301
    iget v0, p0, Lcom/ali/user/mobile/register/ui/AliuserRegisterExistUserActivity;->a:I

    const/16 v1, 0xbf6

    if-ne v0, v1, :cond_1

    .line 302
    const-string/jumbo v0, "UC-ZC-150512-09"

    const-string/jumbo v1, "zccfdlqx"

    invoke-virtual {p0, v0, v1}, Lcom/ali/user/mobile/register/ui/AliuserRegisterExistUserActivity;->writeClickLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/ali/user/mobile/register/ui/AliuserRegisterExistUserActivity;->finish()V

    .line 311
    return-void

    .line 303
    :cond_1
    iget v0, p0, Lcom/ali/user/mobile/register/ui/AliuserRegisterExistUserActivity;->a:I

    const/16 v1, 0xbf9

    if-ne v0, v1, :cond_2

    .line 304
    const-string/jumbo v0, "UC-ZC-150512-15"

    const-string/jumbo v1, "zcnoneqx"

    invoke-virtual {p0, v0, v1}, Lcom/ali/user/mobile/register/ui/AliuserRegisterExistUserActivity;->writeClickLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 305
    :cond_2
    iget v0, p0, Lcom/ali/user/mobile/register/ui/AliuserRegisterExistUserActivity;->a:I

    const/16 v1, 0xbf7

    if-ne v0, v1, :cond_3

    .line 306
    const-string/jumbo v0, "UC-ZC-150512-19"

    const-string/jumbo v1, "zcnograbqx"

    invoke-virtual {p0, v0, v1}, Lcom/ali/user/mobile/register/ui/AliuserRegisterExistUserActivity;->writeClickLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 307
    :cond_3
    iget v0, p0, Lcom/ali/user/mobile/register/ui/AliuserRegisterExistUserActivity;->a:I

    const/16 v1, 0xbf8

    if-ne v0, v1, :cond_0

    .line 308
    const-string/jumbo v0, "UC-ZC-150512-23"

    const-string/jumbo v1, "zcgrabqx"

    invoke-virtual {p0, v0, v1}, Lcom/ali/user/mobile/register/ui/AliuserRegisterExistUserActivity;->writeClickLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public bridge synthetic getClassLoader()Ljava/lang/ClassLoader;
    .locals 1

    .prologue
    .line 1
    invoke-super {p0}, Lcom/ali/user/mobile/register/ui/BaseRegisterActivity;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getResources()Landroid/content/res/Resources;
    .locals 1

    .prologue
    .line 1
    invoke-super {p0}, Lcom/ali/user/mobile/register/ui/BaseRegisterActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 233
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 234
    sget v1, Lcom/ali/user/mobile/security/ui/R$id;->loginDirect:I

    if-ne v0, v1, :cond_4

    .line 235
    iget v0, p0, Lcom/ali/user/mobile/register/ui/AliuserRegisterExistUserActivity;->a:I

    const/16 v1, 0xbf6

    if-ne v0, v1, :cond_2

    .line 236
    const-string/jumbo v0, "UC-ZC-150512-10"

    const-string/jumbo v1, "zccfdlok"

    invoke-virtual {p0, v0, v1}, Lcom/ali/user/mobile/register/ui/AliuserRegisterExistUserActivity;->writeClickLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/ali/user/mobile/register/ui/AliuserRegisterExistUserActivity;->b:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliuserRegisterExistUserActivity;->mRegionNo:Ljava/lang/String;

    iget-object v1, p0, Lcom/ali/user/mobile/register/ui/AliuserRegisterExistUserActivity;->mMobileNo:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/ali/user/mobile/utils/StringUtil;->getPhoneAccount(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/ali/user/mobile/register/ui/AliuserRegisterExistUserActivity;->c:Ljava/lang/String;

    const-string/jumbo v2, "withlogintoken"

    const/4 v3, 0x1

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/ali/user/mobile/register/ui/AliuserRegisterExistUserActivity;->goLogin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_1
    invoke-virtual {p0}, Lcom/ali/user/mobile/register/ui/AliuserRegisterExistUserActivity;->finish()V

    .line 259
    :cond_1
    :goto_2
    return-void

    .line 237
    :cond_2
    iget v0, p0, Lcom/ali/user/mobile/register/ui/AliuserRegisterExistUserActivity;->a:I

    const/16 v1, 0xbf8

    if-ne v0, v1, :cond_0

    .line 238
    const-string/jumbo v0, "UC-ZC-150512-24"

    const-string/jumbo v1, "zcgrablogin"

    invoke-virtual {p0, v0, v1}, Lcom/ali/user/mobile/register/ui/AliuserRegisterExistUserActivity;->writeClickLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 240
    :cond_3
    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliuserRegisterExistUserActivity;->mRegionNo:Ljava/lang/String;

    iget-object v1, p0, Lcom/ali/user/mobile/register/ui/AliuserRegisterExistUserActivity;->mMobileNo:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/ali/user/mobile/utils/StringUtil;->getPhoneAccount(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/register/ui/AliuserRegisterExistUserActivity;->goLogin(Ljava/lang/String;)V

    goto :goto_1

    .line 241
    :cond_4
    sget v1, Lcom/ali/user/mobile/security/ui/R$id;->completeIdentity:I

    if-ne v0, v1, :cond_5

    .line 242
    const-string/jumbo v0, "UC-ZC-150512-16"

    const-string/jumbo v1, "zcnonego"

    invoke-virtual {p0, v0, v1}, Lcom/ali/user/mobile/register/ui/AliuserRegisterExistUserActivity;->writeClickLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/ali/user/mobile/register/ui/AliuserRegisterExistUserActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/ali/user/mobile/register/ui/AliuserRegisterCompleteIdentityActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/register/ui/AliuserRegisterExistUserActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_2

    .line 244
    :cond_5
    sget v1, Lcom/ali/user/mobile/security/ui/R$id;->loginImmediate:I

    if-ne v0, v1, :cond_6

    .line 245
    const-string/jumbo v0, "UC-ZC-150512-17"

    const-string/jumbo v1, "zcnonelogin"

    invoke-virtual {p0, v0, v1}, Lcom/ali/user/mobile/register/ui/AliuserRegisterExistUserActivity;->writeClickLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    invoke-direct {p0}, Lcom/ali/user/mobile/register/ui/AliuserRegisterExistUserActivity;->b()V

    goto :goto_2

    .line 247
    :cond_6
    sget v1, Lcom/ali/user/mobile/security/ui/R$id;->loginImmediate2:I

    if-ne v0, v1, :cond_7

    .line 248
    const-string/jumbo v0, "UC-ZC-150512-20"

    const-string/jumbo v1, "zcnograblogin"

    invoke-virtual {p0, v0, v1}, Lcom/ali/user/mobile/register/ui/AliuserRegisterExistUserActivity;->writeClickLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    invoke-direct {p0}, Lcom/ali/user/mobile/register/ui/AliuserRegisterExistUserActivity;->b()V

    goto :goto_2

    .line 250
    :cond_7
    sget v1, Lcom/ali/user/mobile/security/ui/R$id;->registerAnother:I

    if-ne v0, v1, :cond_8

    .line 251
    const-string/jumbo v0, "UC-ZC-150512-21"

    const-string/jumbo v1, "zcnograbphone"

    invoke-virtual {p0, v0, v1}, Lcom/ali/user/mobile/register/ui/AliuserRegisterExistUserActivity;->writeClickLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 253
    const-string/jumbo v1, "flag"

    iget v2, p0, Lcom/ali/user/mobile/register/ui/AliuserRegisterExistUserActivity;->a:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 254
    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/register/ui/AliuserRegisterExistUserActivity;->goRegister(Landroid/os/Bundle;)V

    goto :goto_2

    .line 255
    :cond_8
    sget v1, Lcom/ali/user/mobile/security/ui/R$id;->emailRegister:I

    if-ne v0, v1, :cond_1

    .line 256
    const-string/jumbo v0, "UC-ZC-150512-22"

    const-string/jumbo v1, "zcnograbemail"

    invoke-virtual {p0, v0, v1}, Lcom/ali/user/mobile/register/ui/AliuserRegisterExistUserActivity;->writeClickLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliuserRegisterExistUserActivity;->e:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/register/ui/AliuserRegisterExistUserActivity;->goEmailRegister(Ljava/lang/String;)V

    goto/16 :goto_2
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 59
    invoke-super {p0, p1}, Lcom/ali/user/mobile/register/ui/BaseRegisterActivity;->onCreate(Landroid/os/Bundle;)V

    .line 60
    sget v0, Lcom/ali/user/mobile/security/ui/R$layout;->activity_exist_user_info:I

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/register/ui/AliuserRegisterExistUserActivity;->setContentView(I)V

    .line 62
    invoke-virtual {p0}, Lcom/ali/user/mobile/register/ui/AliuserRegisterExistUserActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "flag"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/ali/user/mobile/register/ui/AliuserRegisterExistUserActivity;->a:I

    .line 63
    invoke-virtual {p0}, Lcom/ali/user/mobile/register/ui/AliuserRegisterExistUserActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "login_token"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ali/user/mobile/register/ui/AliuserRegisterExistUserActivity;->c:Ljava/lang/String;

    .line 64
    invoke-virtual {p0}, Lcom/ali/user/mobile/register/ui/AliuserRegisterExistUserActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "memo"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ali/user/mobile/register/ui/AliuserRegisterExistUserActivity;->d:Ljava/lang/String;

    .line 65
    invoke-virtual {p0}, Lcom/ali/user/mobile/register/ui/AliuserRegisterExistUserActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "aliuser_h5url"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ali/user/mobile/register/ui/AliuserRegisterExistUserActivity;->e:Ljava/lang/String;

    .line 66
    invoke-virtual {p0}, Lcom/ali/user/mobile/register/ui/AliuserRegisterExistUserActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "direct_login"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/ali/user/mobile/register/ui/AliuserRegisterExistUserActivity;->b:Z

    .line 67
    invoke-virtual {p0}, Lcom/ali/user/mobile/register/ui/AliuserRegisterExistUserActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "same_user_info"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/ExistUserInfo;

    iput-object v0, p0, Lcom/ali/user/mobile/register/ui/AliuserRegisterExistUserActivity;->f:Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/ExistUserInfo;

    .line 69
    sget v0, Lcom/ali/user/mobile/security/ui/R$id;->sameUserInfoContainer:I

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/register/ui/AliuserRegisterExistUserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/ali/user/mobile/register/ui/AliuserRegisterExistUserActivity;->g:Landroid/view/View;

    sget v0, Lcom/ali/user/mobile/security/ui/R$id;->sameUserInfoLayout:I

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/register/ui/AliuserRegisterExistUserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/ali/user/mobile/register/ui/AliuserRegisterExistUserActivity;->h:Landroid/widget/LinearLayout;

    sget v0, Lcom/ali/user/mobile/security/ui/R$id;->titleBar:I

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/register/ui/AliuserRegisterExistUserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTitleBar;

    iput-object v0, p0, Lcom/ali/user/mobile/register/ui/AliuserRegisterExistUserActivity;->i:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    sget v0, Lcom/ali/user/mobile/security/ui/R$id;->userAccount:I

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/register/ui/AliuserRegisterExistUserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ali/user/mobile/register/ui/AliuserRegisterExistUserActivity;->j:Landroid/widget/TextView;

    sget v0, Lcom/ali/user/mobile/security/ui/R$id;->userTip:I

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/register/ui/AliuserRegisterExistUserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ali/user/mobile/register/ui/AliuserRegisterExistUserActivity;->k:Landroid/widget/TextView;

    sget v0, Lcom/ali/user/mobile/security/ui/R$id;->userAvatar:I

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/register/ui/AliuserRegisterExistUserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APImageView;

    iput-object v0, p0, Lcom/ali/user/mobile/register/ui/AliuserRegisterExistUserActivity;->l:Lcom/alipay/mobile/commonui/widget/APImageView;

    sget v0, Lcom/ali/user/mobile/security/ui/R$id;->loginDirect:I

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/register/ui/AliuserRegisterExistUserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/ali/user/mobile/register/ui/AliuserRegisterExistUserActivity;->m:Landroid/widget/Button;

    sget v0, Lcom/ali/user/mobile/security/ui/R$id;->completeIdentity:I

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/register/ui/AliuserRegisterExistUserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/ali/user/mobile/register/ui/AliuserRegisterExistUserActivity;->n:Landroid/widget/Button;

    sget v0, Lcom/ali/user/mobile/security/ui/R$id;->loginImmediate:I

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/register/ui/AliuserRegisterExistUserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/ali/user/mobile/register/ui/AliuserRegisterExistUserActivity;->o:Landroid/widget/Button;

    sget v0, Lcom/ali/user/mobile/security/ui/R$id;->loginImmediate2:I

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/register/ui/AliuserRegisterExistUserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/ali/user/mobile/register/ui/AliuserRegisterExistUserActivity;->p:Landroid/widget/Button;

    sget v0, Lcom/ali/user/mobile/security/ui/R$id;->registerAnother:I

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/register/ui/AliuserRegisterExistUserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/ali/user/mobile/register/ui/AliuserRegisterExistUserActivity;->q:Landroid/widget/Button;

    sget v0, Lcom/ali/user/mobile/security/ui/R$id;->emailRegister:I

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/register/ui/AliuserRegisterExistUserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/ali/user/mobile/register/ui/AliuserRegisterExistUserActivity;->r:Landroid/view/View;

    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliuserRegisterExistUserActivity;->m:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliuserRegisterExistUserActivity;->n:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliuserRegisterExistUserActivity;->o:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliuserRegisterExistUserActivity;->p:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliuserRegisterExistUserActivity;->q:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliuserRegisterExistUserActivity;->r:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliuserRegisterExistUserActivity;->f:Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/ExistUserInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliuserRegisterExistUserActivity;->f:Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/ExistUserInfo;

    iget-object v0, v0, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/ExistUserInfo;->displayTags:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliuserRegisterExistUserActivity;->f:Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/ExistUserInfo;

    iget-object v0, v0, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/ExistUserInfo;->displayTags:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_4

    :cond_0
    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliuserRegisterExistUserActivity;->g:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliuserRegisterExistUserActivity;->mRegionNo:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliuserRegisterExistUserActivity;->mRegionNo:Ljava/lang/String;

    const-string/jumbo v1, "+86"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliuserRegisterExistUserActivity;->mRegionNo:Ljava/lang/String;

    const-string/jumbo v1, "86"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    :cond_2
    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliuserRegisterExistUserActivity;->j:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/ali/user/mobile/register/ui/AliuserRegisterExistUserActivity;->mMobileNo:Ljava/lang/String;

    const/4 v2, 0x4

    invoke-static {v1, v2}, Lcom/ali/user/mobile/utils/StringUtil;->displayWithComma(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliuserRegisterExistUserActivity;->k:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/ali/user/mobile/register/ui/AliuserRegisterExistUserActivity;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget v0, p0, Lcom/ali/user/mobile/register/ui/AliuserRegisterExistUserActivity;->a:I

    const/16 v1, 0xbf6

    if-ne v0, v1, :cond_a

    const-string/jumbo v0, "AliuserRegisterExistUserActivity"

    const-string/jumbo v1, "\u8d26\u5bc6\u5224\u65ad\u91cd\u590d\u6ce8\u518c"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliuserRegisterExistUserActivity;->m:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliuserRegisterExistUserActivity;->f:Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/ExistUserInfo;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliuserRegisterExistUserActivity;->f:Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/ExistUserInfo;

    iget-object v0, v0, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/ExistUserInfo;->ButtonFstMemo:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliuserRegisterExistUserActivity;->m:Landroid/widget/Button;

    iget-object v1, p0, Lcom/ali/user/mobile/register/ui/AliuserRegisterExistUserActivity;->f:Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/ExistUserInfo;

    iget-object v1, v1, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/ExistUserInfo;->ButtonFstMemo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 71
    :cond_3
    :goto_2
    return-void

    .line 70
    :cond_4
    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliuserRegisterExistUserActivity;->f:Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/ExistUserInfo;

    iget-object v0, v0, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/ExistUserInfo;->avatar:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string/jumbo v0, "taobao"

    iget-object v1, p0, Lcom/ali/user/mobile/register/ui/AliuserRegisterExistUserActivity;->f:Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/ExistUserInfo;

    iget-object v1, v1, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/ExistUserInfo;->accountType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliuserRegisterExistUserActivity;->l:Lcom/alipay/mobile/commonui/widget/APImageView;

    sget v1, Lcom/ali/user/mobile/security/ui/R$drawable;->taobao_head:I

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APImageView;->setImageResource(I)V

    :goto_3
    invoke-direct {p0}, Lcom/ali/user/mobile/register/ui/AliuserRegisterExistUserActivity;->a()V

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliuserRegisterExistUserActivity;->l:Lcom/alipay/mobile/commonui/widget/APImageView;

    sget v1, Lcom/ali/user/mobile/security/ui/R$drawable;->alipay_head:I

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APImageView;->setImageResource(I)V

    goto :goto_3

    :cond_6
    const-string/jumbo v0, "taobao"

    iget-object v1, p0, Lcom/ali/user/mobile/register/ui/AliuserRegisterExistUserActivity;->f:Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/ExistUserInfo;

    iget-object v1, v1, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/ExistUserInfo;->accountType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    sget v0, Lcom/ali/user/mobile/security/ui/R$drawable;->taobao_head:I

    :goto_4
    new-instance v1, Lcom/alipay/mobile/common/imageworker/ImageWorker;

    invoke-direct {v1, p0, v0}, Lcom/alipay/mobile/common/imageworker/ImageWorker;-><init>(Landroid/content/Context;I)V

    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliuserRegisterExistUserActivity;->f:Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/ExistUserInfo;

    iget-object v0, v0, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/ExistUserInfo;->avatar:Ljava/lang/String;

    iget-object v2, p0, Lcom/ali/user/mobile/register/ui/AliuserRegisterExistUserActivity;->l:Lcom/alipay/mobile/commonui/widget/APImageView;

    invoke-virtual {v1, v0, v2}, Lcom/alipay/mobile/common/imageworker/ImageWorker;->loadImage(Ljava/lang/String;Landroid/widget/ImageView;)Lcom/alipay/mobile/common/imageworker/ImageWorker;

    goto :goto_3

    :cond_7
    sget v0, Lcom/ali/user/mobile/security/ui/R$drawable;->alipay_head:I

    goto :goto_4

    :cond_8
    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliuserRegisterExistUserActivity;->mRegionNo:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliuserRegisterExistUserActivity;->mMobileNo:Ljava/lang/String;

    :goto_5
    iget-object v1, p0, Lcom/ali/user/mobile/register/ui/AliuserRegisterExistUserActivity;->j:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ali/user/mobile/register/ui/AliuserRegisterExistUserActivity;->mRegionNo:Ljava/lang/String;

    const-string/jumbo v2, "+"

    const-string/jumbo v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ali/user/mobile/register/ui/AliuserRegisterExistUserActivity;->mMobileNo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    :cond_a
    iget v0, p0, Lcom/ali/user/mobile/register/ui/AliuserRegisterExistUserActivity;->a:I

    const/16 v1, 0xbf9

    if-ne v0, v1, :cond_c

    const-string/jumbo v0, "AliuserRegisterExistUserActivity"

    const-string/jumbo v1, "\u975e\u540c\u4eba\u53ef\u91ca\u653e"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliuserRegisterExistUserActivity;->n:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliuserRegisterExistUserActivity;->f:Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/ExistUserInfo;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliuserRegisterExistUserActivity;->f:Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/ExistUserInfo;

    iget-object v0, v0, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/ExistUserInfo;->ButtonFstMemo:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliuserRegisterExistUserActivity;->n:Landroid/widget/Button;

    iget-object v1, p0, Lcom/ali/user/mobile/register/ui/AliuserRegisterExistUserActivity;->f:Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/ExistUserInfo;

    iget-object v1, v1, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/ExistUserInfo;->ButtonFstMemo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :cond_b
    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliuserRegisterExistUserActivity;->o:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliuserRegisterExistUserActivity;->f:Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/ExistUserInfo;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliuserRegisterExistUserActivity;->f:Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/ExistUserInfo;

    iget-object v0, v0, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/ExistUserInfo;->ButtonSedMemo:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliuserRegisterExistUserActivity;->o:Landroid/widget/Button;

    iget-object v1, p0, Lcom/ali/user/mobile/register/ui/AliuserRegisterExistUserActivity;->f:Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/ExistUserInfo;

    iget-object v1, v1, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/ExistUserInfo;->ButtonSedMemo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    :cond_c
    iget v0, p0, Lcom/ali/user/mobile/register/ui/AliuserRegisterExistUserActivity;->a:I

    const/16 v1, 0xbf7

    if-ne v0, v1, :cond_f

    const-string/jumbo v0, "AliuserRegisterExistUserActivity"

    const-string/jumbo v1, "\u4e0d\u53ef\u62a2\u593a\uff0f\u4e0d\u53ef\u91ca\u653e\uff0f\u540c\u4eba\u4e0d\u53ef\u62a2\u593a"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliuserRegisterExistUserActivity;->p:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliuserRegisterExistUserActivity;->f:Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/ExistUserInfo;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliuserRegisterExistUserActivity;->f:Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/ExistUserInfo;

    iget-object v0, v0, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/ExistUserInfo;->ButtonFstMemo:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliuserRegisterExistUserActivity;->p:Landroid/widget/Button;

    iget-object v1, p0, Lcom/ali/user/mobile/register/ui/AliuserRegisterExistUserActivity;->f:Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/ExistUserInfo;

    iget-object v1, v1, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/ExistUserInfo;->ButtonFstMemo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :cond_d
    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliuserRegisterExistUserActivity;->q:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliuserRegisterExistUserActivity;->f:Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/ExistUserInfo;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliuserRegisterExistUserActivity;->f:Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/ExistUserInfo;

    iget-object v0, v0, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/ExistUserInfo;->ButtonSedMemo:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliuserRegisterExistUserActivity;->q:Landroid/widget/Button;

    iget-object v1, p0, Lcom/ali/user/mobile/register/ui/AliuserRegisterExistUserActivity;->f:Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/ExistUserInfo;

    iget-object v1, v1, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/ExistUserInfo;->ButtonSedMemo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :cond_e
    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliuserRegisterExistUserActivity;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliuserRegisterExistUserActivity;->r:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_2

    :cond_f
    iget v0, p0, Lcom/ali/user/mobile/register/ui/AliuserRegisterExistUserActivity;->a:I

    const/16 v1, 0xbf8

    if-ne v0, v1, :cond_3

    const-string/jumbo v0, "AliuserRegisterExistUserActivity"

    const-string/jumbo v1, "\u540c\u4eba\u53ef\u91ca\u653e"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliuserRegisterExistUserActivity;->m:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliuserRegisterExistUserActivity;->f:Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/ExistUserInfo;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliuserRegisterExistUserActivity;->f:Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/ExistUserInfo;

    iget-object v0, v0, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/ExistUserInfo;->ButtonFstMemo:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliuserRegisterExistUserActivity;->m:Landroid/widget/Button;

    iget-object v1, p0, Lcom/ali/user/mobile/register/ui/AliuserRegisterExistUserActivity;->f:Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/ExistUserInfo;

    iget-object v1, v1, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/ExistUserInfo;->ButtonFstMemo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 292
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 293
    invoke-direct {p0}, Lcom/ali/user/mobile/register/ui/AliuserRegisterExistUserActivity;->c()V

    .line 294
    const/4 v0, 0x1

    .line 296
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/ali/user/mobile/register/ui/BaseRegisterActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 98
    invoke-super {p0}, Lcom/ali/user/mobile/register/ui/BaseRegisterActivity;->onResume()V

    .line 106
    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliuserRegisterExistUserActivity;->i:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    new-instance v1, Lcom/ali/user/mobile/register/ui/AliuserRegisterExistUserActivity$1;

    invoke-direct {v1, p0}, Lcom/ali/user/mobile/register/ui/AliuserRegisterExistUserActivity$1;-><init>(Lcom/ali/user/mobile/register/ui/AliuserRegisterExistUserActivity;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->setBackButtonListener(Landroid/view/View$OnClickListener;)V

    .line 112
    return-void
.end method

.method public bridge synthetic startActivityForResult(Landroid/content/Intent;I)V
    .locals 0

    .prologue
    .line 1
    invoke-super {p0, p1, p2}, Lcom/ali/user/mobile/register/ui/BaseRegisterActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method protected writeClickLog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 314
    const-string/jumbo v0, "RegisterExistUser"

    iget-object v1, p0, Lcom/ali/user/mobile/register/ui/AliuserRegisterExistUserActivity;->mMobileNo:Ljava/lang/String;

    iget-object v2, p0, Lcom/ali/user/mobile/register/ui/AliuserRegisterExistUserActivity;->mToken:Ljava/lang/String;

    invoke-static {p1, p2, v0, v1, v2}, Lcom/ali/user/mobile/utils/LogAgent;->logBehavorClick(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    return-void
.end method
