.class public Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;
.super Lcom/ali/user/mobile/base/BaseActivity;
.source "AliUserRegisterAvatarActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation build Lcom/googlecode/androidannotations/annotations/EActivity;
    resName = "activity_register"
.end annotation


# static fields
.field public static mPattern:Ljava/lang/String;


# instance fields
.field private a:Lcom/ali/user/mobile/register/RegionInfo;

.field private b:Lcom/ali/user/mobile/register/RegistParam;

.field private c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/ali/user/mobile/register/RegionInfo;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/lang/String;

.field private g:Lcom/alipay/mobile/framework/service/common/ImageMemCacheService;

.field private h:Lcom/alipay/mobile/framework/service/common/GenericMemCacheService;

.field protected mAlipayNickInput:Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;

.field protected mAlipayNickInputBox:Lcom/ali/user/mobile/ui/widget/AUInputBox;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "alipayNickInputBox"
    .end annotation
.end field

.field protected mAvatarBase64:Ljava/lang/String;

.field protected mAvatarBitmap:Landroid/graphics/Bitmap;

.field protected mAvatarView:Landroid/widget/ImageView;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "userAvatar"
    .end annotation
.end field

.field protected mBindConfirm:Landroid/widget/Button;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "bindConfirm"
    .end annotation
.end field

.field protected mHasNullChecker:Lcom/ali/user/mobile/ui/widget/EditTextHasNullChecker;

.field protected mLoginPasswordInput:Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;

.field protected mLoginPwdInputBox:Lcom/ali/user/mobile/ui/widget/AUInputBox;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "loginPasswordInput"
    .end annotation
.end field

.field protected mPhoneInput:Landroid/widget/EditText;

.field protected mPhoneInputBox:Lcom/ali/user/mobile/ui/widget/AUInputBox;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "phoneInputBox"
    .end annotation
.end field

.field protected mProtocol:Landroid/widget/TextView;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "taobao_protocol"
    .end annotation
.end field

.field protected mRdsWraper:Lcom/ali/user/mobile/login/rds/RDSWraper;

.field protected mRegionLayout:Landroid/view/View;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "regionLayout"
    .end annotation
.end field

.field protected mRegisterPasswordError:Landroid/widget/TextView;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "registerPasswordError"
    .end annotation
.end field

.field protected mRegisterScrollView:Landroid/view/View;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "register_scrollview"
    .end annotation
.end field

.field protected mRegisterService:Lcom/ali/user/mobile/service/UserRegisterService;

.field protected mRegisterTitle:Lcom/alipay/mobile/commonui/widget/APTitleBar;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "register_title"
    .end annotation
.end field

.field protected mRegisterView:Landroid/view/View;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "aliuser_register"
    .end annotation
.end field

.field protected mScrollView:Lcom/alipay/mobile/commonui/widget/APScrollView;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "register_scrollview"
    .end annotation
.end field

.field protected mTvCountry:Landroid/widget/TextView;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "tvCountry"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 144
    const-string/jumbo v0, "^(86){0,1}1\\d{10}$"

    sput-object v0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->mPattern:Ljava/lang/String;

    .line 95
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/ali/user/mobile/base/BaseActivity;-><init>()V

    .line 141
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->d:Ljava/util/HashMap;

    .line 142
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->e:Ljava/util/ArrayList;

    .line 95
    return-void
.end method

.method private a()V
    .locals 2

    .prologue
    .line 198
    const-string/jumbo v0, "UC-ZC-150512-04"

    const-string/jumbo v1, "zcback"

    invoke-virtual {p0, v0, v1}, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->writeClickLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->mRdsWraper:Lcom/ali/user/mobile/login/rds/RDSWraper;

    const-string/jumbo v1, "RetLoginBtn"

    invoke-virtual {v0, v1}, Lcom/ali/user/mobile/login/rds/RDSWraper;->onControlClick(Ljava/lang/String;)V

    .line 200
    invoke-virtual {p0}, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->finish()V

    .line 201
    return-void
.end method

.method private a(Landroid/view/View;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 987
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 988
    const/16 v1, 0x9

    sget v2, Lcom/ali/user/mobile/security/ui/R$id;->aliuser_register:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 989
    invoke-virtual {p0}, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/ali/user/mobile/security/ui/R$dimen;->inputbox_edit_margin_top:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    .line 990
    invoke-virtual {p0}, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/ali/user/mobile/security/ui/R$dimen;->inputbox_edit_margin_right:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    .line 991
    invoke-virtual {v0, v4, v1, v2, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 992
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 993
    return-void
.end method

.method private a(Landroid/widget/EditText;)V
    .locals 5

    .prologue
    .line 977
    invoke-virtual {p1}, Landroid/widget/EditText;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 978
    const/16 v1, 0x9

    sget v2, Lcom/ali/user/mobile/security/ui/R$id;->aliuser_register:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 979
    invoke-virtual {p0}, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/ali/user/mobile/security/ui/R$dimen;->inputbox_edit_margin_top:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    .line 980
    invoke-virtual {p0}, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/ali/user/mobile/security/ui/R$dimen;->inputbox_edit_margin_left:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    .line 981
    invoke-virtual {p0}, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/ali/user/mobile/security/ui/R$dimen;->inputbox_edit_margin_right:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    .line 982
    const/4 v4, 0x0

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 983
    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 984
    return-void
.end method

.method private a(Lcom/ali/user/mobile/register/RegionInfo;)V
    .locals 3

    .prologue
    .line 346
    if-eqz p1, :cond_0

    .line 347
    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->mTvCountry:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/ali/user/mobile/register/RegionInfo;->mRegionName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 348
    iget-object v0, p1, Lcom/ali/user/mobile/register/RegionInfo;->mRegionNumber:Ljava/lang/String;

    .line 349
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "+86"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 350
    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->mPhoneInputBox:Lcom/ali/user/mobile/ui/widget/AUInputBox;

    invoke-virtual {p0}, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/ali/user/mobile/security/ui/R$string;->phoneNumber:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ali/user/mobile/ui/widget/AUInputBox;->setInputName(Ljava/lang/String;)V

    .line 351
    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->mPhoneInputBox:Lcom/ali/user/mobile/ui/widget/AUInputBox;

    invoke-virtual {p0}, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/ali/user/mobile/security/ui/R$string;->input_phone_china:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ali/user/mobile/ui/widget/AUInputBox;->setHint(Ljava/lang/String;)V

    .line 357
    :cond_0
    :goto_0
    return-void

    .line 353
    :cond_1
    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->mPhoneInputBox:Lcom/ali/user/mobile/ui/widget/AUInputBox;

    iget-object v1, p1, Lcom/ali/user/mobile/register/RegionInfo;->mRegionNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/ali/user/mobile/ui/widget/AUInputBox;->setInputName(Ljava/lang/String;)V

    .line 354
    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->mPhoneInputBox:Lcom/ali/user/mobile/ui/widget/AUInputBox;

    invoke-virtual {p0}, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/ali/user/mobile/security/ui/R$string;->input_phone_num:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ali/user/mobile/ui/widget/AUInputBox;->setHint(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private a(Ljava/lang/String;)V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 669
    const-string/jumbo v3, "\u786e\u5b9a"

    new-instance v4, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity$9;

    invoke-direct {v4, p0}, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity$9;-><init>(Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;)V

    move-object v0, p0

    move-object v2, p1

    move-object v5, v1

    move-object v6, v1

    invoke-virtual/range {v0 .. v6}, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    .line 675
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 423
    const-string/jumbo v1, ""

    const-string/jumbo v5, ""

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v6, v4

    invoke-virtual/range {v0 .. v6}, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    .line 424
    return-void
.end method

.method static synthetic access$4(Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;Lcom/ali/user/mobile/register/RegionInfo;)V
    .locals 0

    .prologue
    .line 125
    iput-object p1, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->a:Lcom/ali/user/mobile/register/RegionInfo;

    return-void
.end method

.method static synthetic access$5(Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;Lcom/ali/user/mobile/register/RegionInfo;)V
    .locals 0

    .prologue
    .line 345
    invoke-direct {p0, p1}, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->a(Lcom/ali/user/mobile/register/RegionInfo;)V

    return-void
.end method

.method static synthetic access$6(Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;ILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 477
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/ali/user/mobile/avatar/EditAvatarActivity_;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v1, "input-type"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    if-eqz p2, :cond_0

    invoke-virtual {v0, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    const/16 v1, 0x7530

    invoke-virtual {p0, v0, v1}, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method static synthetic access$7(Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 143
    iput-object p1, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->f:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$8(Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->closeInputMethod(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$9(Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;)V
    .locals 0

    .prologue
    .line 197
    invoke-direct {p0}, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->a()V

    return-void
.end method

.method private b()V
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 805
    :try_start_0
    const-string/jumbo v2, "86"

    .line 808
    const-string/jumbo v0, "phone"

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 809
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v1

    .line 810
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    .line 811
    invoke-virtual {p0}, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v5, Lcom/ali/user/mobile/security/ui/R$array;->CountryCodes:I

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    move v0, v3

    .line 812
    :goto_0
    array-length v3, v5

    if-lt v0, v3, :cond_1

    move-object v0, v2

    .line 819
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "+"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 820
    new-instance v2, Lcom/ali/user/mobile/register/RegionInfo;

    invoke-direct {v2}, Lcom/ali/user/mobile/register/RegionInfo;-><init>()V

    iput-object v2, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->a:Lcom/ali/user/mobile/register/RegionInfo;

    .line 821
    iget-object v2, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->a:Lcom/ali/user/mobile/register/RegionInfo;

    iput-object v0, v2, Lcom/ali/user/mobile/register/RegionInfo;->mRegionNumber:Ljava/lang/String;

    .line 822
    iget-object v2, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->a:Lcom/ali/user/mobile/register/RegionInfo;

    iput-object v4, v2, Lcom/ali/user/mobile/register/RegionInfo;->mDomain:Ljava/lang/String;

    .line 824
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string/jumbo v2, "+86"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 825
    iget-object v2, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->mPhoneInputBox:Lcom/ali/user/mobile/ui/widget/AUInputBox;

    invoke-virtual {p0}, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/ali/user/mobile/security/ui/R$string;->phoneNumber:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/ali/user/mobile/ui/widget/AUInputBox;->setInputName(Ljava/lang/String;)V

    .line 826
    iget-object v2, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->mPhoneInputBox:Lcom/ali/user/mobile/ui/widget/AUInputBox;

    invoke-virtual {p0}, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/ali/user/mobile/security/ui/R$string;->input_phone_china:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/ali/user/mobile/ui/widget/AUInputBox;->setHint(Ljava/lang/String;)V

    .line 832
    :goto_2
    invoke-virtual {v1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 833
    const/4 v3, -0x1

    if-eq v2, v3, :cond_4

    .line 834
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, v2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 837
    :goto_3
    if-eqz v0, :cond_0

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "0000000"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 838
    iget-object v1, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->mPhoneInputBox:Lcom/ali/user/mobile/ui/widget/AUInputBox;

    invoke-virtual {v1, v0}, Lcom/ali/user/mobile/ui/widget/AUInputBox;->setText(Ljava/lang/CharSequence;)V

    .line 843
    :cond_0
    :goto_4
    return-void

    .line 813
    :cond_1
    aget-object v3, v5, v0

    const-string/jumbo v6, ","

    invoke-virtual {v3, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 814
    const/4 v6, 0x1

    aget-object v6, v3, v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 815
    const/4 v0, 0x0

    aget-object v0, v3, v0

    goto/16 :goto_1

    .line 812
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 828
    :cond_3
    iget-object v2, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->mPhoneInputBox:Lcom/ali/user/mobile/ui/widget/AUInputBox;

    invoke-virtual {v2, v0}, Lcom/ali/user/mobile/ui/widget/AUInputBox;->setInputName(Ljava/lang/String;)V

    .line 829
    iget-object v2, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->mPhoneInputBox:Lcom/ali/user/mobile/ui/widget/AUInputBox;

    invoke-virtual {p0}, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/ali/user/mobile/security/ui/R$string;->input_phone_num:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/ali/user/mobile/ui/widget/AUInputBox;->setHint(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 840
    :catch_0
    move-exception v0

    .line 841
    const-string/jumbo v1, "AliUserRegisterAvatarActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "\u83b7\u53d6\u624b\u673a\u53f7\u5931\u8d25"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_4
    move-object v0, v1

    goto :goto_3
.end method


# virtual methods
.method afterCountryCode(Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/RegMixRes;)V
    .locals 3
    .annotation build Lcom/googlecode/androidannotations/annotations/UiThread;
    .end annotation

    .prologue
    .line 267
    invoke-virtual {p0}, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->dismissProgress()V

    .line 268
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/RegMixRes;->countryCodeResList:Ljava/util/List;

    if-nez v0, :cond_1

    .line 287
    :cond_0
    :goto_0
    return-void

    .line 271
    :cond_1
    const-string/jumbo v0, "AliUserRegisterAvatarActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "\u83b7\u53d6\u56fd\u5bb6\u4ee3\u7801\u7ed3\u679c\uff1a"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p1, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/RegMixRes;->resultStatus:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ",msg:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 272
    iget-object v2, p1, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/RegMixRes;->memo:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 271
    invoke-static {v0, v1}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    iget v0, p1, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/RegMixRes;->resultStatus:I

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_3

    .line 274
    iget-object v0, p1, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/RegMixRes;->token:Ljava/lang/String;

    iput-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->f:Ljava/lang/String;

    .line 275
    iget-object v0, p1, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/RegMixRes;->countryCodeResList:Ljava/util/List;

    iget-object v1, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->d:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->e:Ljava/util/ArrayList;

    invoke-static {v0, v1, v2}, Lcom/ali/user/mobile/register/RegisterUtil;->fillData(Ljava/util/List;Ljava/util/HashMap;Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->c:Ljava/util/ArrayList;

    .line 276
    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->c:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->d:Ljava/util/HashMap;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_0

    .line 277
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/ali/user/mobile/register/ui/AliUserRegisterChoiceRegionActivity_;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 278
    const-string/jumbo v1, "region"

    iget-object v2, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 279
    const-string/jumbo v1, "letter"

    iget-object v2, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->d:Ljava/util/HashMap;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 280
    const-string/jumbo v1, "letter_str"

    iget-object v2, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 281
    const/16 v1, 0x4e20

    invoke-virtual {p0, v0, v1}, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 276
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 284
    :cond_3
    iget-object v0, p1, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/RegMixRes;->memo:Ljava/lang/String;

    const/16 v1, 0xbb8

    invoke-virtual {p0, v0, v1}, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->toast(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method protected afterMobileRegPreVerify(Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/RegPreVerifyRes;)V
    .locals 8
    .annotation build Lcom/googlecode/androidannotations/annotations/UiThread;
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/16 v5, 0xbb8

    const/4 v3, 0x0

    .line 527
    invoke-virtual {p0}, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->dismissProgress()V

    .line 529
    if-nez p1, :cond_1

    .line 594
    :cond_0
    :goto_0
    return-void

    .line 532
    :cond_1
    const-string/jumbo v0, "AliUserRegisterAvatarActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "\u6ce8\u518c\u9884\u6821\u9a8c\u7ed3\u679c\uff1a"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p1, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/RegPreVerifyRes;->resultStatus:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ",msg:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/RegPreVerifyRes;->memo:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 533
    iget-object v0, p1, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/RegPreVerifyRes;->token:Ljava/lang/String;

    iput-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->f:Ljava/lang/String;

    .line 534
    iget v0, p1, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/RegPreVerifyRes;->resultStatus:I

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_3

    .line 536
    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->mPhoneInputBox:Lcom/ali/user/mobile/ui/widget/AUInputBox;

    invoke-virtual {v0}, Lcom/ali/user/mobile/ui/widget/AUInputBox;->getInputName()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    .line 537
    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->mPhoneInputBox:Lcom/ali/user/mobile/ui/widget/AUInputBox;

    invoke-virtual {v0}, Lcom/ali/user/mobile/ui/widget/AUInputBox;->getInputedText()Ljava/lang/String;

    move-result-object v0

    .line 539
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/ali/user/mobile/security/ui/R$string;->phoneNumber:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 540
    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/ali/user/mobile/utils/StringUtil;->displayWithComma(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 543
    :cond_2
    invoke-virtual {p0}, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/ali/user/mobile/security/ui/R$string;->confirm_phone_title:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 544
    invoke-virtual {p0}, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v5, Lcom/ali/user/mobile/security/ui/R$string;->confirm_phone_msg:I

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v6, "\u3000"

    const-string/jumbo v7, ""

    invoke-virtual {v3, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, " "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 545
    new-instance v5, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity$5;

    invoke-direct {v5, p0}, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity$5;-><init>(Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;)V

    .line 553
    new-instance v7, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity$6;

    invoke-direct {v7, p0}, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity$6;-><init>(Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;)V

    move-object v0, p0

    move-object v6, v4

    .line 543
    invoke-virtual/range {v0 .. v7}, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->alertPop(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/commonui/widget/APNormalPopDialog$OnClickPositiveListener;Ljava/lang/String;Lcom/alipay/mobile/commonui/widget/APNormalPopDialog$OnClickNegativeListener;)V

    goto/16 :goto_0

    .line 560
    :cond_3
    iget v0, p1, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/RegPreVerifyRes;->resultStatus:I

    const/16 v1, 0xcf

    if-ne v0, v1, :cond_4

    .line 561
    iget-object v0, p1, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/RegPreVerifyRes;->memo:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 562
    :cond_4
    iget v0, p1, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/RegPreVerifyRes;->resultStatus:I

    const/16 v1, 0xbb9

    if-eq v0, v1, :cond_5

    .line 563
    iget v0, p1, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/RegPreVerifyRes;->resultStatus:I

    const/16 v1, 0xbba

    if-ne v0, v1, :cond_6

    .line 564
    :cond_5
    iget-object v0, p1, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/RegPreVerifyRes;->memo:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/ali/user/mobile/security/ui/R$string;->comfirm:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 565
    :cond_6
    iget v0, p1, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/RegPreVerifyRes;->resultStatus:I

    const/16 v1, 0xbbb

    if-ne v0, v1, :cond_7

    .line 566
    iget-object v0, p1, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/RegPreVerifyRes;->memo:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/ali/user/mobile/security/ui/R$string;->iknow:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 567
    :cond_7
    iget v0, p1, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/RegPreVerifyRes;->resultStatus:I

    const/16 v1, 0xbbc

    if-ne v0, v1, :cond_8

    .line 568
    iget-object v0, p1, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/RegPreVerifyRes;->memo:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/ali/user/mobile/security/ui/R$string;->iknow:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 569
    :cond_8
    iget v0, p1, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/RegPreVerifyRes;->resultStatus:I

    const/16 v1, 0xbdd

    if-ne v0, v1, :cond_9

    .line 570
    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->mAvatarView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_9

    .line 571
    iget-object v0, p1, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/RegPreVerifyRes;->memo:Ljava/lang/String;

    invoke-virtual {p0, v0, v5}, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->toast(Ljava/lang/String;I)V

    .line 572
    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->mAvatarView:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0

    .line 573
    :cond_9
    iget v0, p1, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/RegPreVerifyRes;->resultStatus:I

    const/16 v1, 0xbd9

    if-ne v0, v1, :cond_a

    .line 574
    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->mAlipayNickInputBox:Lcom/ali/user/mobile/ui/widget/AUInputBox;

    invoke-virtual {v0}, Lcom/ali/user/mobile/ui/widget/AUInputBox;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_a

    .line 575
    iget-object v0, p1, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/RegPreVerifyRes;->memo:Ljava/lang/String;

    invoke-virtual {p0, v0, v5}, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->toast(Ljava/lang/String;I)V

    .line 576
    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->mAlipayNickInputBox:Lcom/ali/user/mobile/ui/widget/AUInputBox;

    invoke-virtual {v0, v3}, Lcom/ali/user/mobile/ui/widget/AUInputBox;->setVisibility(I)V

    goto/16 :goto_0

    .line 577
    :cond_a
    iget v0, p1, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/RegPreVerifyRes;->resultStatus:I

    const/16 v1, 0xbf5

    if-ne v0, v1, :cond_c

    .line 578
    const-string/jumbo v0, "AliUserRegisterAvatarActivity"

    const-string/jumbo v1, "\u5f00\u59cb\u540a\u8d77\u6838\u8eab\u5e73\u53f0"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p1, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/RegPreVerifyRes;->securityId:Ljava/lang/String;

    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v2, Lcom/alipay/mobile/verifyidentity/alipay/service/VerifyIdentityService;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/verifyidentity/alipay/service/VerifyIdentityService;

    if-eqz v0, :cond_b

    const-string/jumbo v2, "Aliuser.Register.VerifyIdentity"

    new-instance v3, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity$7;

    invoke-direct {v3, p0, v1}, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity$7;-><init>(Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2, v4, v3}, Lcom/alipay/mobile/verifyidentity/alipay/service/VerifyIdentityService;->startVerifyByToken(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/alipay/mobile/verifyidentity/callback/VerifyIdentityListener;)V

    goto/16 :goto_0

    :cond_b
    invoke-virtual {p0}, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/ali/user/mobile/security/ui/R$string;->system_error_try_later:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 579
    :cond_c
    iget v0, p1, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/RegPreVerifyRes;->resultStatus:I

    const/16 v1, 0xbf6

    if-ne v0, v1, :cond_d

    .line 580
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/ali/user/mobile/register/ui/AliuserRegisterExistUserActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v1, "token"

    iget-object v2, p1, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/RegPreVerifyRes;->token:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "mobile_for_sms"

    iget-object v2, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->mPhoneInputBox:Lcom/ali/user/mobile/ui/widget/AUInputBox;

    invoke-virtual {v2}, Lcom/ali/user/mobile/ui/widget/AUInputBox;->getInputedText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "regionNo"

    iget-object v2, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->mPhoneInputBox:Lcom/ali/user/mobile/ui/widget/AUInputBox;

    invoke-virtual {v2}, Lcom/ali/user/mobile/ui/widget/AUInputBox;->getInputName()Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "\u3000"

    const-string/jumbo v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "flag"

    iget v2, p1, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/RegPreVerifyRes;->resultStatus:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v1, "direct_login"

    iget-boolean v2, p1, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/RegPreVerifyRes;->directLogin:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v1, "login_token"

    iget-object v2, p1, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/RegPreVerifyRes;->loginToken:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "memo"

    iget-object v2, p1, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/RegPreVerifyRes;->memo:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "same_user_info"

    iget-object v2, p1, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/RegPreVerifyRes;->existUserInfo:Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/ExistUserInfo;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 582
    :cond_d
    iget-object v0, p1, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/RegPreVerifyRes;->memo:Ljava/lang/String;

    invoke-virtual {p0, v0, v5}, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->toast(Ljava/lang/String;I)V

    .line 583
    iget v0, p1, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/RegPreVerifyRes;->resultStatus:I

    const/16 v1, 0xbc5

    if-eq v0, v1, :cond_e

    .line 584
    iget v0, p1, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/RegPreVerifyRes;->resultStatus:I

    const/16 v1, 0xbcd

    if-eq v0, v1, :cond_e

    .line 585
    iget v0, p1, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/RegPreVerifyRes;->resultStatus:I

    const/16 v1, 0xbcc

    if-eq v0, v1, :cond_e

    .line 586
    iget v0, p1, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/RegPreVerifyRes;->resultStatus:I

    const/16 v1, 0xbcb

    if-eq v0, v1, :cond_e

    .line 587
    iget v0, p1, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/RegPreVerifyRes;->resultStatus:I

    const/16 v1, 0xbd4

    if-eq v0, v1, :cond_e

    .line 588
    iget v0, p1, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/RegPreVerifyRes;->resultStatus:I

    const/16 v1, 0xbd6

    if-ne v0, v1, :cond_0

    .line 589
    :cond_e
    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->mRegisterPasswordError:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 590
    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->mLoginPasswordInput:Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method

.method protected afterSendSms(Lcom/alipay/aliusergw/biz/shared/processer/sms/SmsGwRes;)V
    .locals 7
    .annotation build Lcom/googlecode/androidannotations/annotations/UiThread;
    .end annotation

    .prologue
    .line 646
    invoke-virtual {p0}, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->dismissProgress()V

    .line 648
    if-eqz p1, :cond_0

    .line 649
    const-string/jumbo v0, "AliUserRegisterAvatarActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "\u53d1\u9001\u77ed\u4fe1\u6821\u9a8c\u7801:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p1, Lcom/alipay/aliusergw/biz/shared/processer/sms/SmsGwRes;->code:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ",msg:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/alipay/aliusergw/biz/shared/processer/sms/SmsGwRes;->msg:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 650
    iget-boolean v0, p1, Lcom/alipay/aliusergw/biz/shared/processer/sms/SmsGwRes;->success:Z

    if-eqz v0, :cond_1

    .line 652
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity_;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v1, "mobile_for_sms"

    iget-object v2, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->mPhoneInputBox:Lcom/ali/user/mobile/ui/widget/AUInputBox;

    invoke-virtual {v2}, Lcom/ali/user/mobile/ui/widget/AUInputBox;->getInputedText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "regionNo"

    iget-object v2, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->a:Lcom/ali/user/mobile/register/RegionInfo;

    iget-object v2, v2, Lcom/ali/user/mobile/register/RegionInfo;->mRegionNumber:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "token"

    iget-object v2, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->startActivity(Landroid/content/Intent;)V

    .line 666
    :cond_0
    :goto_0
    return-void

    .line 654
    :cond_1
    iget-object v0, p1, Lcom/alipay/aliusergw/biz/shared/processer/sms/SmsGwRes;->code:Ljava/lang/String;

    const-string/jumbo v1, "207"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 655
    iget-object v0, p1, Lcom/alipay/aliusergw/biz/shared/processer/sms/SmsGwRes;->msg:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 657
    :cond_2
    const-string/jumbo v1, ""

    iget-object v2, p1, Lcom/alipay/aliusergw/biz/shared/processer/sms/SmsGwRes;->msg:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcom/ali/user/mobile/security/ui/R$string;->comfirm:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 658
    new-instance v4, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity$8;

    invoke-direct {v4, p0}, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity$8;-><init>(Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;)V

    .line 662
    const-string/jumbo v5, ""

    const/4 v6, 0x0

    move-object v0, p0

    .line 657
    invoke-virtual/range {v0 .. v6}, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0
.end method

.method alertCountryCode()V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 308
    invoke-virtual {p0}, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/ali/user/mobile/security/ui/R$string;->confirm_can_not_get_country_code_msg:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 309
    invoke-virtual {p0}, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcom/ali/user/mobile/security/ui/R$string;->confirm_ok:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 310
    new-instance v4, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity$2;

    invoke-direct {v4, p0}, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity$2;-><init>(Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;)V

    move-object v0, p0

    move-object v5, v1

    move-object v6, v1

    .line 308
    invoke-virtual/range {v0 .. v6}, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    .line 316
    return-void
.end method

.method doMobileRegPreVerify(Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .annotation build Lcom/googlecode/androidannotations/annotations/Background;
    .end annotation

    .prologue
    .line 491
    const-string/jumbo v0, "AliUserRegisterAvatarActivity"

    const-string/jumbo v1, "\u5f00\u59cb\u9884\u9a8c\u8bc1"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 493
    :try_start_0
    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->a:Lcom/ali/user/mobile/register/RegionInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->a:Lcom/ali/user/mobile/register/RegionInfo;

    iget-object v0, v0, Lcom/ali/user/mobile/register/RegionInfo;->mDomain:Ljava/lang/String;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    const-string/jumbo v3, "CN"

    .line 494
    :goto_0
    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->a:Lcom/ali/user/mobile/register/RegionInfo;

    iget-object v0, v0, Lcom/ali/user/mobile/register/RegionInfo;->mRegionNumber:Ljava/lang/String;

    .line 495
    iget-object v1, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->mPhoneInputBox:Lcom/ali/user/mobile/ui/widget/AUInputBox;

    invoke-virtual {v1}, Lcom/ali/user/mobile/ui/widget/AUInputBox;->getInputedText()Ljava/lang/String;

    move-result-object v2

    .line 496
    invoke-virtual {v2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-ne v1, v4, :cond_1

    .line 497
    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v2, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 500
    :cond_1
    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->mRegisterService:Lcom/ali/user/mobile/service/UserRegisterService;

    invoke-interface {v0, v2}, Lcom/ali/user/mobile/service/UserRegisterService;->setMobileNo(Ljava/lang/String;)V

    .line 502
    invoke-virtual {p0}, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/ali/user/mobile/rsa/Rsa;->getRSAKey(Landroid/content/Context;)Lcom/alipay/aliusergw/biz/shared/processer/rsa/RSAPKeyResult;

    move-result-object v0

    .line 503
    iget-object v1, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->mLoginPasswordInput:Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;

    invoke-virtual {v1}, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->getSafeText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v0, v0, Lcom/alipay/aliusergw/biz/shared/processer/rsa/RSAPKeyResult;->rsaPK:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/ali/user/mobile/rsa/Rsa;->encrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 504
    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->mRegisterService:Lcom/ali/user/mobile/service/UserRegisterService;

    iget-object v1, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->f:Ljava/lang/String;

    iget-object v4, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->mAvatarBase64:Ljava/lang/String;

    .line 505
    iget-object v6, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->mAlipayNickInput:Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;

    invoke-virtual {v6}, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-interface {v6}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7, v6}, Lcom/alipay/mobile/common/emoji/EmojiUtil;->utf2ubb(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 506
    iget-object v7, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->mRdsWraper:Lcom/ali/user/mobile/login/rds/RDSWraper;

    invoke-virtual {p0}, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v7, v8, v2}, Lcom/ali/user/mobile/login/rds/RDSWraper;->getRdsData(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    move-object v7, p1

    move-object v8, p2

    .line 504
    invoke-interface/range {v0 .. v9}, Lcom/ali/user/mobile/service/UserRegisterService;->mobileRegPreVerifyV3(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/RegPreVerifyRes;

    move-result-object v0

    .line 508
    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->afterMobileRegPreVerify(Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/RegPreVerifyRes;)V

    return-void

    .line 493
    :cond_2
    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->a:Lcom/ali/user/mobile/register/RegionInfo;

    iget-object v3, v0, Lcom/ali/user/mobile/register/RegionInfo;->mDomain:Ljava/lang/String;
    :try_end_0
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 509
    :catch_0
    move-exception v0

    .line 510
    invoke-virtual {p0}, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->dismissProgress()V

    .line 511
    throw v0
.end method

.method protected doSendSms(Ljava/lang/String;)V
    .locals 3
    .annotation build Lcom/googlecode/androidannotations/annotations/Background;
    .end annotation

    .prologue
    .line 628
    const-string/jumbo v0, "AliUserRegisterAvatarActivity"

    const-string/jumbo v1, "\u5f00\u59cb\u53d1\u9001\u77ed\u4fe1\u6821\u9a8c\u7801"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 630
    :try_start_0
    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->mRegisterService:Lcom/ali/user/mobile/service/UserRegisterService;

    iget-object v1, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->f:Ljava/lang/String;

    const-string/jumbo v2, "register"

    invoke-interface {v0, v1, p1, v2}, Lcom/ali/user/mobile/service/UserRegisterService;->sendSms(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/aliusergw/biz/shared/processer/sms/SmsGwRes;

    move-result-object v0

    .line 631
    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->afterSendSms(Lcom/alipay/aliusergw/biz/shared/processer/sms/SmsGwRes;)V
    :try_end_0
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 632
    :catch_0
    move-exception v0

    .line 633
    invoke-virtual {p0}, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->dismissProgress()V

    .line 634
    throw v0
.end method

.method public bridge synthetic getClassLoader()Ljava/lang/ClassLoader;
    .locals 1

    .prologue
    .line 1
    invoke-super {p0}, Lcom/ali/user/mobile/base/BaseActivity;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    return-object v0
.end method

.method getCountryCode()V
    .locals 2
    .annotation build Lcom/googlecode/androidannotations/annotations/Background;
    .end annotation

    .prologue
    .line 221
    const-string/jumbo v0, "AliUserRegisterAvatarActivity"

    const-string/jumbo v1, "\u5f00\u59cb\u83b7\u53d6\u56fd\u5bb6\u4ee3\u7801"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    :try_start_0
    invoke-static {}, Lcom/ali/user/mobile/register/RegionChoice;->getInstance()Lcom/ali/user/mobile/register/RegionChoice;

    move-result-object v0

    new-instance v1, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity$1;

    invoke-direct {v1, p0}, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity$1;-><init>(Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;)V

    invoke-virtual {v0, p0, v1}, Lcom/ali/user/mobile/register/RegionChoice;->chooseRegion(Landroid/content/Context;Lcom/ali/user/mobile/register/RegionChoice$RegionCallback;)V
    :try_end_0
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 254
    :catch_0
    move-exception v0

    .line 255
    invoke-virtual {p0}, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->dismissProgress()V

    .line 256
    throw v0
.end method

.method public bridge synthetic getResources()Landroid/content/res/Resources;
    .locals 1

    .prologue
    .line 1
    invoke-super {p0}, Lcom/ali/user/mobile/base/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method protected init()V
    .locals 14
    .annotation build Lcom/googlecode/androidannotations/annotations/AfterViews;
    .end annotation

    .prologue
    const/4 v5, 0x5

    const/4 v13, 0x2

    const/4 v12, 0x1

    const/16 v11, 0x21

    const/4 v10, 0x0

    .line 179
    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->mRegisterTitle:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    new-instance v1, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity$10;

    invoke-direct {v1, p0}, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity$10;-><init>(Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->setBackButtonListener(Landroid/view/View$OnClickListener;)V

    .line 180
    sget v0, Lcom/ali/user/mobile/security/ui/R$string;->register_password_error:I

    invoke-virtual {p0}, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/text/SpannableString;

    invoke-direct {v1, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v2, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {p0}, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/ali/user/mobile/security/ui/R$color;->passwor_error_tip0_color:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-direct {v2, v3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v1, v2, v10, v5, v11}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    new-instance v2, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {p0}, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/ali/user/mobile/security/ui/R$color;->passwor_error_tip_color:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-direct {v2, v3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v1, v2, v5, v0, v11}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->mRegisterPasswordError:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 181
    sget v0, Lcom/ali/user/mobile/security/ui/R$string;->alipay_taobao_pro:I

    const-string/jumbo v1, "\u652f\u4ed8\u5b9d\u670d\u52a1\u534f\u8bae"

    const-string/jumbo v2, "\u6dd8\u5b9d\u670d\u52a1\u534f\u8bae"

    const-string/jumbo v3, "https://tms.alicdn.com/go/chn/member/agreement.php"

    const-string/jumbo v4, "https://ab.alipay.com/agreement/contract.htm"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x2

    add-int/lit8 v5, v1, 0x1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v2, v5

    invoke-virtual {p0}, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v6, Landroid/text/SpannableString;

    invoke-direct {v6, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v7, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {p0}, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Lcom/ali/user/mobile/security/ui/R$color;->colorLightGray:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    invoke-direct {v7, v8}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v6, v7, v10, v13, v11}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    new-instance v7, Lcom/ali/user/mobile/register/TaoUrlSpan;

    invoke-direct {v7, v4}, Lcom/ali/user/mobile/register/TaoUrlSpan;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p0}, Lcom/ali/user/mobile/register/TaoUrlSpan;->setContext(Landroid/content/Context;)Lcom/ali/user/mobile/register/TaoUrlSpan;

    move-result-object v4

    invoke-virtual {v6, v4, v13, v1, v11}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    new-instance v4, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {p0}, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/ali/user/mobile/security/ui/R$color;->linkcolor:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    invoke-direct {v4, v7}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v6, v4, v13, v1, v11}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    new-instance v4, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {p0}, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/ali/user/mobile/security/ui/R$color;->colorLightGray:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    invoke-direct {v4, v7}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v6, v4, v1, v5, v11}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    new-instance v1, Lcom/ali/user/mobile/register/TaoUrlSpan;

    invoke-direct {v1, v3}, Lcom/ali/user/mobile/register/TaoUrlSpan;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Lcom/ali/user/mobile/register/TaoUrlSpan;->setContext(Landroid/content/Context;)Lcom/ali/user/mobile/register/TaoUrlSpan;

    move-result-object v1

    invoke-virtual {v6, v1, v5, v2, v11}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {p0}, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/ali/user/mobile/security/ui/R$color;->linkcolor:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-direct {v1, v3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v6, v1, v5, v2, v11}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    new-instance v1, Landroid/text/style/AbsoluteSizeSpan;

    const/16 v2, 0xe

    invoke-direct {v1, v2, v12}, Landroid/text/style/AbsoluteSizeSpan;-><init>(IZ)V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v6, v1, v10, v0, v11}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->mProtocol:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->mProtocol:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->mProtocol:Landroid/widget/TextView;

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 182
    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->mAlipayNickInputBox:Lcom/ali/user/mobile/ui/widget/AUInputBox;

    invoke-virtual {v0}, Lcom/ali/user/mobile/ui/widget/AUInputBox;->getEtContent()Landroid/widget/EditText;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;

    iput-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->mAlipayNickInput:Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;

    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->mAlipayNickInput:Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;

    invoke-virtual {v0, v12}, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->setSupportEmoji(Z)V

    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->mPhoneInputBox:Lcom/ali/user/mobile/ui/widget/AUInputBox;

    invoke-virtual {v0}, Lcom/ali/user/mobile/ui/widget/AUInputBox;->getEtContent()Landroid/widget/EditText;

    move-result-object v0

    iput-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->mPhoneInput:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->mLoginPwdInputBox:Lcom/ali/user/mobile/ui/widget/AUInputBox;

    invoke-virtual {v0}, Lcom/ali/user/mobile/ui/widget/AUInputBox;->getEtContent()Landroid/widget/EditText;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;

    iput-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->mLoginPasswordInput:Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;

    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->mAlipayNickInputBox:Lcom/ali/user/mobile/ui/widget/AUInputBox;

    iget-object v1, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->mAlipayNickInput:Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;

    invoke-static {v0, v1}, Lcom/ali/user/mobile/utils/WidgetVisualStyleSetting;->initFocusChangeBackground(Landroid/view/View;Landroid/widget/EditText;)V

    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->mPhoneInputBox:Lcom/ali/user/mobile/ui/widget/AUInputBox;

    iget-object v1, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->mPhoneInput:Landroid/widget/EditText;

    invoke-static {v0, v1}, Lcom/ali/user/mobile/utils/WidgetVisualStyleSetting;->initFocusChangeBackground(Landroid/view/View;Landroid/widget/EditText;)V

    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->mLoginPwdInputBox:Lcom/ali/user/mobile/ui/widget/AUInputBox;

    iget-object v1, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->mLoginPasswordInput:Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;

    invoke-static {v0, v1}, Lcom/ali/user/mobile/utils/WidgetVisualStyleSetting;->initFocusChangeBackground(Landroid/view/View;Landroid/widget/EditText;)V

    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->mAlipayNickInputBox:Lcom/ali/user/mobile/ui/widget/AUInputBox;

    invoke-virtual {v0}, Lcom/ali/user/mobile/ui/widget/AUInputBox;->getInputName()Landroid/widget/TextView;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->a(Landroid/view/View;)V

    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->mPhoneInputBox:Lcom/ali/user/mobile/ui/widget/AUInputBox;

    invoke-virtual {v0}, Lcom/ali/user/mobile/ui/widget/AUInputBox;->getInputName()Landroid/widget/TextView;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->a(Landroid/view/View;)V

    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->mLoginPwdInputBox:Lcom/ali/user/mobile/ui/widget/AUInputBox;

    invoke-virtual {v0}, Lcom/ali/user/mobile/ui/widget/AUInputBox;->getInputName()Landroid/widget/TextView;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->a(Landroid/view/View;)V

    sget v0, Lcom/ali/user/mobile/security/ui/R$id;->tvCountryAndRegion:I

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->a(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/ali/user/mobile/security/ui/R$dimen;->defaultFontSizeSP:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x6

    iget-object v1, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->mAlipayNickInputBox:Lcom/ali/user/mobile/ui/widget/AUInputBox;

    invoke-virtual {v1}, Lcom/ali/user/mobile/ui/widget/AUInputBox;->getInputName()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setWidth(I)V

    iget-object v1, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->mPhoneInputBox:Lcom/ali/user/mobile/ui/widget/AUInputBox;

    invoke-virtual {v1}, Lcom/ali/user/mobile/ui/widget/AUInputBox;->getInputName()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setWidth(I)V

    iget-object v1, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->mLoginPwdInputBox:Lcom/ali/user/mobile/ui/widget/AUInputBox;

    invoke-virtual {v1}, Lcom/ali/user/mobile/ui/widget/AUInputBox;->getInputName()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setWidth(I)V

    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->mAlipayNickInput:Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;

    invoke-direct {p0, v0}, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->a(Landroid/widget/EditText;)V

    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->mPhoneInput:Landroid/widget/EditText;

    invoke-direct {p0, v0}, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->a(Landroid/widget/EditText;)V

    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->mLoginPasswordInput:Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;

    invoke-direct {p0, v0}, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->a(Landroid/widget/EditText;)V

    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->mLoginPwdInputBox:Lcom/ali/user/mobile/ui/widget/AUInputBox;

    invoke-virtual {v0}, Lcom/ali/user/mobile/ui/widget/AUInputBox;->getSpecialFuncImg()Landroid/widget/ImageButton;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/ali/user/mobile/security/ui/R$dimen;->inputbox_specimage_margin_left:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    invoke-virtual {v0, v2, v10, v10, v10}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->mLoginPasswordInput:Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;

    invoke-static {}, Landroid/text/method/HideReturnsTransformationMethod;->getInstance()Landroid/text/method/HideReturnsTransformationMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->mLoginPwdInputBox:Lcom/ali/user/mobile/ui/widget/AUInputBox;

    sget v1, Lcom/ali/user/mobile/security/ui/R$drawable;->eye_2:I

    invoke-virtual {v0, v1}, Lcom/ali/user/mobile/ui/widget/AUInputBox;->setSepciaFunBtn(I)V

    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->mLoginPasswordInput:Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;

    iget-object v1, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->mLoginPasswordInput:Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;

    invoke-virtual {v1}, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->getSafeText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->setSelection(I)V

    invoke-direct {p0}, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->b()V

    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->b:Lcom/ali/user/mobile/register/RegistParam;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->b:Lcom/ali/user/mobile/register/RegistParam;

    iget-object v0, v0, Lcom/ali/user/mobile/register/RegistParam;->country:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->mPhoneInputBox:Lcom/ali/user/mobile/ui/widget/AUInputBox;

    iget-object v1, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->b:Lcom/ali/user/mobile/register/RegistParam;

    iget-object v1, v1, Lcom/ali/user/mobile/register/RegistParam;->country:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/ali/user/mobile/ui/widget/AUInputBox;->setInputName(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->b:Lcom/ali/user/mobile/register/RegistParam;

    iget-object v0, v0, Lcom/ali/user/mobile/register/RegistParam;->registAccount:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->mTvCountry:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->b:Lcom/ali/user/mobile/register/RegistParam;

    iget-object v1, v1, Lcom/ali/user/mobile/register/RegistParam;->registAccount:Ljava/lang/String;

    invoke-static {v1}, Lcom/ali/user/mobile/utils/StringUtil;->getCountryName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->b:Lcom/ali/user/mobile/register/RegistParam;

    iget-object v0, v0, Lcom/ali/user/mobile/register/RegistParam;->registAccount:Ljava/lang/String;

    const-string/jumbo v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_5

    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->b:Lcom/ali/user/mobile/register/RegistParam;

    iget-object v0, v0, Lcom/ali/user/mobile/register/RegistParam;->registAccount:Ljava/lang/String;

    const-string/jumbo v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object v1, v0, v10

    const-string/jumbo v2, "+"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "+"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v2, v0, v10

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v10

    :cond_1
    iget-object v1, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->mPhoneInputBox:Lcom/ali/user/mobile/ui/widget/AUInputBox;

    aget-object v2, v0, v10

    invoke-virtual {v1, v2}, Lcom/ali/user/mobile/ui/widget/AUInputBox;->setInputName(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->mPhoneInput:Landroid/widget/EditText;

    aget-object v0, v0, v12

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    :goto_0
    const-string/jumbo v0, "NO"

    invoke-virtual {p0}, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "CFG_ALIUSER_REGISTERV2_AVATAR_ENABLE"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->mAvatarView:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_1
    const-string/jumbo v0, "NO"

    invoke-virtual {p0}, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "CFG_ALIUSER_REGISTERV2_NICK_ENABLE"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->mAlipayNickInputBox:Lcom/ali/user/mobile/ui/widget/AUInputBox;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/ali/user/mobile/ui/widget/AUInputBox;->setVisibility(I)V

    :goto_2
    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->mScrollView:Lcom/alipay/mobile/commonui/widget/APScrollView;

    new-instance v1, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity$11;

    invoke-direct {v1, p0}, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity$11;-><init>(Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APScrollView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->mAlipayNickInput:Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->showInputMethodPannel(Landroid/view/View;)V

    .line 183
    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->mAvatarView:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->mRegionLayout:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->mBindConfirm:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->mLoginPwdInputBox:Lcom/ali/user/mobile/ui/widget/AUInputBox;

    invoke-virtual {v0}, Lcom/ali/user/mobile/ui/widget/AUInputBox;->getSpecialFuncImg()Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 184
    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->mHasNullChecker:Lcom/ali/user/mobile/ui/widget/EditTextHasNullChecker;

    iget-object v1, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->mBindConfirm:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Lcom/ali/user/mobile/ui/widget/EditTextHasNullChecker;->addNeedEnabledButton(Landroid/widget/Button;)V

    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->mPhoneInputBox:Lcom/ali/user/mobile/ui/widget/AUInputBox;

    invoke-virtual {v0}, Lcom/ali/user/mobile/ui/widget/AUInputBox;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->mHasNullChecker:Lcom/ali/user/mobile/ui/widget/EditTextHasNullChecker;

    iget-object v1, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->mPhoneInput:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Lcom/ali/user/mobile/ui/widget/EditTextHasNullChecker;->addNeedCheckView(Landroid/widget/EditText;)V

    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->mPhoneInput:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->mHasNullChecker:Lcom/ali/user/mobile/ui/widget/EditTextHasNullChecker;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    :cond_3
    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->mLoginPwdInputBox:Lcom/ali/user/mobile/ui/widget/AUInputBox;

    invoke-virtual {v0}, Lcom/ali/user/mobile/ui/widget/AUInputBox;->getVisibility()I

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->mHasNullChecker:Lcom/ali/user/mobile/ui/widget/EditTextHasNullChecker;

    iget-object v1, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->mLoginPasswordInput:Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;

    invoke-virtual {v0, v1}, Lcom/ali/user/mobile/ui/widget/EditTextHasNullChecker;->addNeedCheckView(Landroid/widget/EditText;)V

    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->mLoginPasswordInput:Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;

    iget-object v1, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->mHasNullChecker:Lcom/ali/user/mobile/ui/widget/EditTextHasNullChecker;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 185
    :cond_4
    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->mRdsWraper:Lcom/ali/user/mobile/login/rds/RDSWraper;

    invoke-virtual {p0}, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->mPhoneInputBox:Lcom/ali/user/mobile/ui/widget/AUInputBox;

    invoke-virtual {v2}, Lcom/ali/user/mobile/ui/widget/AUInputBox;->getInputedText()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "LoginPage"

    invoke-virtual {v0, v1, v2, v3}, Lcom/ali/user/mobile/login/rds/RDSWraper;->initPage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->mRdsWraper:Lcom/ali/user/mobile/login/rds/RDSWraper;

    iget-object v1, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->mPhoneInput:Landroid/widget/EditText;

    const-string/jumbo v2, "UsernameET"

    invoke-virtual {v0, v1, v2}, Lcom/ali/user/mobile/login/rds/RDSWraper;->initTextChange(Landroid/widget/EditText;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->mRdsWraper:Lcom/ali/user/mobile/login/rds/RDSWraper;

    iget-object v1, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->mAlipayNickInput:Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;

    const-string/jumbo v2, "NicknameET"

    invoke-virtual {v0, v1, v2}, Lcom/ali/user/mobile/login/rds/RDSWraper;->initTextChange(Landroid/widget/EditText;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->mRdsWraper:Lcom/ali/user/mobile/login/rds/RDSWraper;

    iget-object v1, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->mPhoneInput:Landroid/widget/EditText;

    const-string/jumbo v2, "UsernameET"

    invoke-virtual {v0, v1, v2}, Lcom/ali/user/mobile/login/rds/RDSWraper;->initFocusChange(Landroid/view/View;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->mRdsWraper:Lcom/ali/user/mobile/login/rds/RDSWraper;

    iget-object v1, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->mAlipayNickInput:Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;

    const-string/jumbo v2, "NicknameET"

    invoke-virtual {v0, v1, v2}, Lcom/ali/user/mobile/login/rds/RDSWraper;->initFocusChange(Landroid/view/View;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->mRdsWraper:Lcom/ali/user/mobile/login/rds/RDSWraper;

    iget-object v1, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->mLoginPasswordInput:Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;

    const-string/jumbo v2, "PwdET"

    invoke-virtual {v0, v1, v2}, Lcom/ali/user/mobile/login/rds/RDSWraper;->initFocusChange(Landroid/view/View;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->mRdsWraper:Lcom/ali/user/mobile/login/rds/RDSWraper;

    iget-object v1, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->mRegisterScrollView:Landroid/view/View;

    const-string/jumbo v2, "RegisterViewContainer"

    invoke-virtual {v0, v1, v2}, Lcom/ali/user/mobile/login/rds/RDSWraper;->initScreenTouch(Landroid/view/View;Ljava/lang/String;)V

    .line 186
    return-void

    .line 182
    :cond_5
    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->mPhoneInput:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->b:Lcom/ali/user/mobile/register/RegistParam;

    iget-object v1, v1, Lcom/ali/user/mobile/register/RegistParam;->registAccount:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_6
    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->mAvatarView:Landroid/widget/ImageView;

    invoke-virtual {v0, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_1

    :cond_7
    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->mAlipayNickInputBox:Lcom/ali/user/mobile/ui/widget/AUInputBox;

    invoke-virtual {v0, v10}, Lcom/ali/user/mobile/ui/widget/AUInputBox;->setVisibility(I)V

    goto/16 :goto_2
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 364
    invoke-super {p0, p1, p2, p3}, Lcom/ali/user/mobile/base/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 365
    const/16 v0, 0x4e20

    if-ne p1, v0, :cond_0

    .line 366
    const-string/jumbo v0, "AliUserRegisterAvatarActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "\u9009\u62e9\u56fd\u5bb6\u4ee3\u7801\u7ed3\u679c, requestCode:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ",resultCode:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ",data:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 367
    if-eqz p3, :cond_0

    .line 368
    const-string/jumbo v0, "region"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/ali/user/mobile/register/RegionInfo;

    iput-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->a:Lcom/ali/user/mobile/register/RegionInfo;

    .line 369
    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->a:Lcom/ali/user/mobile/register/RegionInfo;

    invoke-direct {p0, v0}, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->a(Lcom/ali/user/mobile/register/RegionInfo;)V

    .line 372
    :cond_0
    const/16 v0, 0x7530

    if-ne p1, v0, :cond_3

    .line 373
    const-string/jumbo v0, "AliUserRegisterAvatarActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "\u9009\u62e9\u5934\u50cf\u7ed3\u679c, requestCode:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ",resultCode:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 374
    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->h:Lcom/alipay/mobile/framework/service/common/GenericMemCacheService;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->h:Lcom/alipay/mobile/framework/service/common/GenericMemCacheService;

    const-string/jumbo v2, "Aliuser"

    const-string/jumbo v3, "head_img_data"

    invoke-virtual {v0, v2, v3}, Lcom/alipay/mobile/framework/service/common/GenericMemCacheService;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4

    check-cast v0, Ljava/lang/String;

    :goto_0
    iput-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->mAvatarBase64:Ljava/lang/String;

    .line 375
    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->mAvatarBase64:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 376
    sget-object v0, Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;->MONITORPOINT_CLIENTSERR:Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;

    const-string/jumbo v2, "null base64 from EditAvatarActivity"

    invoke-static {v0, v2}, Lcom/ali/user/mobile/log/AliUserLog;->monitor(Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;Ljava/lang/String;)V

    .line 378
    :cond_1
    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->g:Lcom/alipay/mobile/framework/service/common/ImageMemCacheService;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->g:Lcom/alipay/mobile/framework/service/common/ImageMemCacheService;

    const-string/jumbo v1, "Aliuser"

    const-string/jumbo v2, "head_img_bitmap"

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/framework/service/common/ImageMemCacheService;->get(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    :cond_2
    iput-object v1, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->mAvatarBitmap:Landroid/graphics/Bitmap;

    .line 379
    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->mAvatarBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_5

    .line 380
    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->mAvatarView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->mAvatarBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 381
    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->mAvatarView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->invalidate()V

    .line 386
    :cond_3
    :goto_1
    return-void

    :cond_4
    move-object v0, v1

    .line 374
    goto :goto_0

    .line 383
    :cond_5
    sget-object v0, Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;->MONITORPOINT_CLIENTSERR:Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;

    const-string/jumbo v1, "null bitmap from EditAvatarActivity"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/log/AliUserLog;->monitor(Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 857
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 858
    sget v1, Lcom/ali/user/mobile/security/ui/R$id;->userAvatar:I

    if-ne v0, v1, :cond_1

    .line 859
    const-string/jumbo v0, "UC-ZC-150512-03"

    const-string/jumbo v1, "zchead"

    invoke-virtual {p0, v0, v1}, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->writeClickLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 860
    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->mRdsWraper:Lcom/ali/user/mobile/login/rds/RDSWraper;

    const-string/jumbo v1, "AddheadBtn"

    invoke-virtual {v0, v1}, Lcom/ali/user/mobile/login/rds/RDSWraper;->onControlClick(Ljava/lang/String;)V

    .line 861
    new-instance v0, Lcom/alipay/mobile/common/dialog/BottomPopupActionDialog;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/common/dialog/BottomPopupActionDialog;-><init>(Landroid/content/Context;)V

    const-string/jumbo v1, "\u4ece\u76f8\u518c\u9009\u62e9"

    new-instance v2, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity$3;

    invoke-direct {v2, p0, v0}, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity$3;-><init>(Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;Lcom/alipay/mobile/common/dialog/BottomPopupActionDialog;)V

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/common/dialog/BottomPopupActionDialog;->addAction(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    const-string/jumbo v1, "\u62cd\u7167"

    new-instance v2, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity$4;

    invoke-direct {v2, p0, v0}, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity$4;-><init>(Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;Lcom/alipay/mobile/common/dialog/BottomPopupActionDialog;)V

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/common/dialog/BottomPopupActionDialog;->addAction(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0}, Lcom/alipay/mobile/common/dialog/BottomPopupActionDialog;->show()V

    .line 884
    :cond_0
    :goto_0
    return-void

    .line 862
    :cond_1
    sget v1, Lcom/ali/user/mobile/security/ui/R$id;->regionLayout:I

    if-ne v0, v1, :cond_2

    .line 863
    const-string/jumbo v0, "UC-ZC-150512-02"

    const-string/jumbo v1, "zchaiwai"

    invoke-virtual {p0, v0, v1}, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->writeClickLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 864
    invoke-virtual {p0}, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->getCountryCode()V

    goto :goto_0

    .line 865
    :cond_2
    sget v1, Lcom/ali/user/mobile/security/ui/R$id;->bindConfirm:I

    if-ne v0, v1, :cond_3

    .line 866
    const-string/jumbo v0, "UC-ZC-150512-06"

    const-string/jumbo v1, "zcnext"

    invoke-virtual {p0, v0, v1}, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->writeClickLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 867
    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->mRdsWraper:Lcom/ali/user/mobile/login/rds/RDSWraper;

    const-string/jumbo v1, "RegisterBtn"

    invoke-virtual {v0, v1}, Lcom/ali/user/mobile/login/rds/RDSWraper;->onControlClick(Ljava/lang/String;)V

    .line 868
    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->mLoginPasswordInput:Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->closeSafeKeyboard()V

    .line 869
    const-string/jumbo v0, ""

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->showProgress(Ljava/lang/String;)V

    .line 870
    const-string/jumbo v0, ""

    const-string/jumbo v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->doMobileRegPreVerify(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 871
    :cond_3
    sget v1, Lcom/ali/user/mobile/security/ui/R$id;->specialFuncImgButton:I

    if-ne v0, v1, :cond_0

    .line 872
    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->mRdsWraper:Lcom/ali/user/mobile/login/rds/RDSWraper;

    const-string/jumbo v1, "SeePwdBtn"

    invoke-virtual {v0, v1}, Lcom/ali/user/mobile/login/rds/RDSWraper;->onControlClick(Ljava/lang/String;)V

    .line 873
    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->mLoginPasswordInput:Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->getTransformationMethod()Landroid/text/method/TransformationMethod;

    move-result-object v0

    invoke-static {}, Landroid/text/method/HideReturnsTransformationMethod;->getInstance()Landroid/text/method/HideReturnsTransformationMethod;

    move-result-object v1

    if-ne v0, v1, :cond_4

    .line 874
    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->mLoginPasswordInput:Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 875
    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->mLoginPwdInputBox:Lcom/ali/user/mobile/ui/widget/AUInputBox;

    sget v1, Lcom/ali/user/mobile/security/ui/R$drawable;->eye_1:I

    invoke-virtual {v0, v1}, Lcom/ali/user/mobile/ui/widget/AUInputBox;->setSepciaFunBtn(I)V

    .line 876
    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->mLoginPasswordInput:Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;

    iget-object v1, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->mLoginPasswordInput:Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;

    invoke-virtual {v1}, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->getSafeText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->setSelection(I)V

    .line 877
    const-string/jumbo v0, "UC-ZC-150512-05"

    const-string/jumbo v1, "zcpwdyc"

    invoke-virtual {p0, v0, v1}, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->writeClickLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 878
    :cond_4
    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->mLoginPasswordInput:Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->getTransformationMethod()Landroid/text/method/TransformationMethod;

    move-result-object v0

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 879
    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->mLoginPasswordInput:Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;

    invoke-static {}, Landroid/text/method/HideReturnsTransformationMethod;->getInstance()Landroid/text/method/HideReturnsTransformationMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 880
    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->mLoginPwdInputBox:Lcom/ali/user/mobile/ui/widget/AUInputBox;

    sget v1, Lcom/ali/user/mobile/security/ui/R$drawable;->eye_2:I

    invoke-virtual {v0, v1}, Lcom/ali/user/mobile/ui/widget/AUInputBox;->setSepciaFunBtn(I)V

    .line 881
    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->mLoginPasswordInput:Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;

    iget-object v1, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->mLoginPasswordInput:Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;

    invoke-virtual {v1}, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->getSafeText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->setSelection(I)V

    goto/16 :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 153
    const-string/jumbo v0, "AliUserRegisterAvatarActivity"

    const-string/jumbo v1, "onCreate"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    invoke-super {p0, p1}, Lcom/ali/user/mobile/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 155
    invoke-virtual {p0}, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "regist_param"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/ali/user/mobile/register/RegistParam;

    iput-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->b:Lcom/ali/user/mobile/register/RegistParam;

    .line 157
    new-instance v0, Lcom/ali/user/mobile/ui/widget/EditTextHasNullChecker;

    invoke-direct {v0}, Lcom/ali/user/mobile/ui/widget/EditTextHasNullChecker;-><init>()V

    iput-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->mHasNullChecker:Lcom/ali/user/mobile/ui/widget/EditTextHasNullChecker;

    .line 158
    invoke-static {}, Lcom/ali/user/mobile/context/AliuserLoginContext;->getUserRegisterService()Lcom/ali/user/mobile/service/UserRegisterService;

    move-result-object v0

    iput-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->mRegisterService:Lcom/ali/user/mobile/service/UserRegisterService;

    .line 159
    new-instance v0, Lcom/ali/user/mobile/login/rds/RDSWraper;

    const-string/jumbo v1, "RegisterPage"

    invoke-direct {v0, v1}, Lcom/ali/user/mobile/login/rds/RDSWraper;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->mRdsWraper:Lcom/ali/user/mobile/login/rds/RDSWraper;

    .line 161
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    .line 162
    if-eqz v1, :cond_0

    .line 163
    const-class v0, Lcom/alipay/mobile/framework/service/common/ImageMemCacheService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/common/ImageMemCacheService;

    iput-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->g:Lcom/alipay/mobile/framework/service/common/ImageMemCacheService;

    .line 164
    const-class v0, Lcom/alipay/mobile/framework/service/common/GenericMemCacheService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/common/GenericMemCacheService;

    iput-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->h:Lcom/alipay/mobile/framework/service/common/GenericMemCacheService;

    .line 166
    :cond_0
    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->g:Lcom/alipay/mobile/framework/service/common/ImageMemCacheService;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->g:Lcom/alipay/mobile/framework/service/common/ImageMemCacheService;

    const-string/jumbo v1, "head_img_bitmap"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/common/ImageMemCacheService;->remove(Ljava/lang/String;)Landroid/graphics/Bitmap;

    :cond_1
    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->h:Lcom/alipay/mobile/framework/service/common/GenericMemCacheService;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->h:Lcom/alipay/mobile/framework/service/common/GenericMemCacheService;

    const-string/jumbo v1, "head_img_data"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/common/GenericMemCacheService;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 168
    :cond_2
    const-string/jumbo v0, "UC-ZC-150512-01"

    const-string/jumbo v1, "registerpage"

    invoke-virtual {p0, v0, v1}, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->writeOpenkLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 1003
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 1004
    invoke-direct {p0}, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->a()V

    .line 1005
    const/4 v0, 0x1

    .line 1007
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/ali/user/mobile/base/BaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 173
    invoke-super {p0, p1}, Lcom/ali/user/mobile/base/BaseActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 174
    invoke-virtual {p0, p1}, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->setIntent(Landroid/content/Intent;)V

    .line 175
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 190
    const-string/jumbo v0, "AliUserRegisterAvatarActivity"

    const-string/jumbo v1, "onResume"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    invoke-super {p0}, Lcom/ali/user/mobile/base/BaseActivity;->onResume()V

    .line 192
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->f:Ljava/lang/String;

    .line 194
    invoke-virtual {p0}, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "flag"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const/16 v1, 0xbf7

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->mPhoneInput:Landroid/widget/EditText;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->mLoginPasswordInput:Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->mAlipayNickInput:Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->requestFocus()Z

    invoke-virtual {p0}, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "flag"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 195
    :cond_0
    return-void
.end method

.method protected setAppId()V
    .locals 1

    .prologue
    .line 679
    const-string/jumbo v0, "20000009"

    iput-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->mAppId:Ljava/lang/String;

    .line 680
    return-void
.end method

.method public bridge synthetic startActivity(Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 1
    invoke-super {p0, p1}, Lcom/ali/user/mobile/base/BaseActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public bridge synthetic startActivityForResult(Landroid/content/Intent;I)V
    .locals 0

    .prologue
    .line 1
    invoke-super {p0, p1, p2}, Lcom/ali/user/mobile/base/BaseActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method protected writeClickLog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 1012
    const-string/jumbo v1, "register"

    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->mPhoneInputBox:Lcom/ali/user/mobile/ui/widget/AUInputBox;

    if-nez v0, :cond_0

    const-string/jumbo v0, ""

    :goto_0
    iget-object v2, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->f:Ljava/lang/String;

    invoke-static {p1, p2, v1, v0, v2}, Lcom/ali/user/mobile/utils/LogAgent;->logBehavorClick(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1013
    return-void

    .line 1012
    :cond_0
    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->mPhoneInputBox:Lcom/ali/user/mobile/ui/widget/AUInputBox;

    invoke-virtual {v0}, Lcom/ali/user/mobile/ui/widget/AUInputBox;->getInputedText()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected writeOpenkLog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 1016
    const-string/jumbo v1, "register"

    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->mPhoneInputBox:Lcom/ali/user/mobile/ui/widget/AUInputBox;

    if-nez v0, :cond_0

    const-string/jumbo v0, ""

    :goto_0
    iget-object v2, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->f:Ljava/lang/String;

    invoke-static {p1, p2, v1, v0, v2}, Lcom/ali/user/mobile/utils/LogAgent;->logBehavorOpen(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1017
    return-void

    .line 1016
    :cond_0
    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->mPhoneInputBox:Lcom/ali/user/mobile/ui/widget/AUInputBox;

    invoke-virtual {v0}, Lcom/ali/user/mobile/ui/widget/AUInputBox;->getInputedText()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
