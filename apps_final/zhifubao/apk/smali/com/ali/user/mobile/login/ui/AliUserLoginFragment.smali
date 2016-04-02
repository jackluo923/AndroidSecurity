.class public abstract Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;
.super Lcom/ali/user/mobile/login/ui/CommonLoginFragment;
.source "AliUserLoginFragment.java"


# instance fields
.field protected final HISTORY_MODE_LOAD:I

.field protected final HISTORY_MODE_SHOW:I

.field private final a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field protected clearPasswordListener:Landroid/content/DialogInterface$OnClickListener;

.field private d:Ljava/lang/String;

.field protected doneCrossGW:Z

.field private e:Landroid/content/DialogInterface$OnClickListener;

.field private f:Lcom/alipay/mobile/verifyidentity/callback/VerifyIdentityListener;

.field protected isFromRegist:Z

.field protected loginHistoryList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/ali/user/mobile/login/LoginHistory;",
            ">;"
        }
    .end annotation
.end field

.field protected mAttachedActivity:Lcom/ali/user/mobile/login/ui/UserLoginActivity;

.field protected mFragmentManager:Landroid/support/v4/app/FragmentManager;

.field protected mHandler:Landroid/os/Handler;

.field protected mHistoryManager:Lcom/ali/user/mobile/login/LoginHistoryManager;

.field protected mIsSecurityCore:Z

.field protected mLoginHistoryAdapter:Lcom/ali/user/mobile/login/ui/adapter/LoginHistoryAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ali/user/mobile/login/ui/adapter/LoginHistoryAdapter",
            "<",
            "Lcom/ali/user/mobile/login/LoginHistory;",
            ">;"
        }
    .end annotation
.end field

.field protected mLoginHistoryMode:I

.field protected mLoginParam:Lcom/ali/user/mobile/login/LoginParam;

.field mOnLoginHistoryItemClickListener:Landroid/view/View$OnClickListener;

.field protected mPortraitLoadCallback:Lcom/ali/user/mobile/ui/widget/ImageLoadCallback;

.field protected mRdsWraper:Lcom/ali/user/mobile/login/rds/RDSWraper;

.field protected mSecurityId:Ljava/lang/String;

.field protected mSmsH5url:Ljava/lang/String;

.field protected mSmsLoginMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mToken:Ljava/lang/String;

.field protected mUrlFetchService:Lcom/ali/user/mobile/service/UrlFetchService;

.field protected mUserFaceLoginService:Lcom/ali/user/mobile/service/UserFaceLoginService;

.field protected mUserLoginService:Lcom/ali/user/mobile/service/UserLoginService;

.field protected useridList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 97
    invoke-direct {p0}, Lcom/ali/user/mobile/login/ui/CommonLoginFragment;-><init>()V

    .line 99
    iput v1, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->HISTORY_MODE_SHOW:I

    .line 100
    const/4 v0, 0x1

    iput v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->HISTORY_MODE_LOAD:I

    .line 102
    const-string/jumbo v0, "AliUserLoginFragment"

    iput-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->a:Ljava/lang/String;

    .line 109
    iput v1, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->mLoginHistoryMode:I

    .line 114
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->mPortraitLoadCallback:Lcom/ali/user/mobile/ui/widget/ImageLoadCallback;

    .line 123
    iput-boolean v1, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->mIsSecurityCore:Z

    .line 124
    iput-boolean v1, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->isFromRegist:Z

    .line 125
    iput-boolean v1, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->doneCrossGW:Z

    .line 127
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->mSmsLoginMap:Ljava/util/Map;

    .line 129
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->mHandler:Landroid/os/Handler;

    .line 612
    new-instance v0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$1;

    invoke-direct {v0, p0}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$1;-><init>(Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;)V

    iput-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->mOnLoginHistoryItemClickListener:Landroid/view/View$OnClickListener;

    .line 1206
    new-instance v0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$2;

    invoke-direct {v0, p0}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$2;-><init>(Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;)V

    iput-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->f:Lcom/alipay/mobile/verifyidentity/callback/VerifyIdentityListener;

    .line 1918
    new-instance v0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$3;

    invoke-direct {v0, p0}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$3;-><init>(Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;)V

    iput-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->clearPasswordListener:Landroid/content/DialogInterface$OnClickListener;

    .line 97
    return-void
.end method

.method private a(Landroid/content/Intent;)V
    .locals 1

    .prologue
    .line 1797
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->mApplicationContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 1798
    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 421
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->isDropdownAccount:Z

    .line 422
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 423
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->mAccountInputView:Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->setText(Ljava/lang/CharSequence;)V

    .line 424
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->mAccountInputView:Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->setSelection(I)V

    .line 427
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->isDropdownAccount:Z

    .line 428
    return-void
.end method

.method static synthetic access$0(Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->closeInputMethod(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$1(Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;Ljava/lang/String;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v2, 0x0

    .line 430
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    move v1, v2

    :goto_0
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->loginHistoryList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v1, v0, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->loginHistoryList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ali/user/mobile/login/LoginHistory;

    if-eqz v0, :cond_5

    iget-object v3, v0, Lcom/ali/user/mobile/login/LoginHistory;->loginAccount:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->getLoginType()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v0, Lcom/ali/user/mobile/login/LoginHistory;->loginType:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->mCurrentSelectedAccount:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->mCurrentSelectedAccount:Ljava/lang/String;

    iget-object v4, v0, Lcom/ali/user/mobile/login/LoginHistory;->loginAccount:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    :cond_2
    iget-object v3, v0, Lcom/ali/user/mobile/login/LoginHistory;->loginAccount:Ljava/lang/String;

    iput-object v3, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->mCurrentSelectedAccount:Ljava/lang/String;

    iput-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->mCurrentSelectedHistory:Lcom/ali/user/mobile/login/LoginHistory;

    :cond_3
    iput-boolean v2, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->isDropdownAccount:Z

    iget-object v3, v0, Lcom/ali/user/mobile/login/LoginHistory;->loginAccount:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->mAccountInputView:Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;

    iget-object v4, v0, Lcom/ali/user/mobile/login/LoginHistory;->loginAccount:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->mAccountInputView:Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;

    iget-object v4, v0, Lcom/ali/user/mobile/login/LoginHistory;->loginAccount:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->setSelection(I)V

    :cond_4
    iget-object v0, v0, Lcom/ali/user/mobile/login/LoginHistory;->loginPortraitUrl:Ljava/lang/String;

    invoke-virtual {p0, v5, v0}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->setPortraitImage(ZLjava/lang/String;)V

    iput-boolean v5, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->isDropdownAccount:Z

    :cond_5
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method static synthetic access$2(Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->callPhoneNum(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3(Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 1796
    invoke-direct {p0, p1}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->a(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$4(Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;)V
    .locals 3

    .prologue
    .line 1667
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->mLoginParam:Lcom/ali/user/mobile/login/LoginParam;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->mLoginParam:Lcom/ali/user/mobile/login/LoginParam;

    iget-object v0, v0, Lcom/ali/user/mobile/login/LoginParam;->externParams:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->mLoginParam:Lcom/ali/user/mobile/login/LoginParam;

    iget-object v0, v0, Lcom/ali/user/mobile/login/LoginParam;->externParams:Ljava/util/Map;

    const-string/jumbo v1, "securityId"

    const-string/jumbo v2, ""

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->mLoginParam:Lcom/ali/user/mobile/login/LoginParam;

    const-string/jumbo v1, ""

    iput-object v1, v0, Lcom/ali/user/mobile/login/LoginParam;->checkCodeId:Ljava/lang/String;

    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->mLoginParam:Lcom/ali/user/mobile/login/LoginParam;

    const-string/jumbo v1, ""

    iput-object v1, v0, Lcom/ali/user/mobile/login/LoginParam;->checkCode:Ljava/lang/String;

    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;->MONITORPOINT_CLIENTSERR:Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;

    const-string/jumbo v1, "mLoginParam == null afterLogin"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/log/AliUserLog;->monitor(Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method protected addCurrentHistoryFailCount()V
    .locals 2

    .prologue
    .line 1107
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->mCurrentSelectedHistory:Lcom/ali/user/mobile/login/LoginHistory;

    if-nez v0, :cond_0

    .line 1116
    :goto_0
    return-void

    .line 1111
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->mCurrentSelectedHistory:Lcom/ali/user/mobile/login/LoginHistory;

    iget v1, v0, Lcom/ali/user/mobile/login/LoginHistory;->faceAuthFailCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/ali/user/mobile/login/LoginHistory;->faceAuthFailCount:I

    .line 1112
    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->getLoginHistoryManager()Lcom/ali/user/mobile/login/LoginHistoryManager;

    move-result-object v0

    iget-object v1, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->mCurrentSelectedHistory:Lcom/ali/user/mobile/login/LoginHistory;

    invoke-interface {v0, v1}, Lcom/ali/user/mobile/login/LoginHistoryManager;->saveHistory(Lcom/ali/user/mobile/login/LoginHistory;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1113
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected afterBindAlipayViaRpc(Lcom/alipay/mobileapp/biz/rpc/taobao/bind/facade/AccountBindRes;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 1327
    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->dismissProgress()V

    .line 1328
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$33;

    invoke-direct {v1, p0, p1, p2}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$33;-><init>(Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;Lcom/alipay/mobileapp/biz/rpc/taobao/bind/facade/AccountBindRes;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1344
    return-void
.end method

.method protected afterLogin(Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;)V
    .locals 2

    .prologue
    .line 1265
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$29;

    invoke-direct {v1, p0, p1}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$29;-><init>(Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1281
    return-void
.end method

.method protected afterViews()V
    .locals 0

    .prologue
    .line 149
    invoke-super {p0}, Lcom/ali/user/mobile/login/ui/CommonLoginFragment;->afterViews()V

    .line 151
    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->initViews()V

    .line 152
    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->initEvents()V

    .line 153
    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->initFaceLoginFailAlert()V

    .line 155
    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->preInit()V

    .line 156
    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->doInit()V

    .line 157
    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->postInit()V

    .line 158
    return-void
.end method

.method protected bindAlipayViaH5(Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;)V
    .locals 5

    .prologue
    .line 1347
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;->h5Url:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1348
    const-string/jumbo v1, "&imei="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/ali/user/mobile/info/DeviceInfo;->getInstance()Lcom/ali/user/mobile/info/DeviceInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ali/user/mobile/info/DeviceInfo;->getIMEI()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1349
    const-string/jumbo v1, "&imsi="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/ali/user/mobile/info/DeviceInfo;->getInstance()Lcom/ali/user/mobile/info/DeviceInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ali/user/mobile/info/DeviceInfo;->getIMSI()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1350
    const-string/jumbo v1, "&utdid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/ali/user/mobile/info/DeviceInfo;->getInstance()Lcom/ali/user/mobile/info/DeviceInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ali/user/mobile/info/DeviceInfo;->getUtDid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1351
    const-string/jumbo v1, "&apdid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/ali/user/mobile/info/AppInfo;->getInstance()Lcom/ali/user/mobile/info/AppInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ali/user/mobile/info/AppInfo;->getApdidAsync()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1352
    const-string/jumbo v1, "&appKey="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/ali/user/mobile/info/AppInfo;->getInstance()Lcom/ali/user/mobile/info/AppInfo;

    move-result-object v2

    iget-object v3, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/ali/user/mobile/info/AppInfo;->getAppKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1353
    const-string/jumbo v1, "&appId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/ali/user/mobile/AppIdDef;->currentAppId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1354
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1356
    new-instance v1, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$34;

    invoke-direct {v1, p0}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$34;-><init>(Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;)V

    .line 1370
    invoke-virtual {v1}, Lcom/ali/user/mobile/h5/AUH5Plugin;->getIntentExtra()Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "token"

    iget-object v4, p1, Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;->token:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1371
    invoke-static {v0, v1}, Lcom/ali/user/mobile/h5/H5Wrapper;->startPage(Ljava/lang/String;Lcom/ali/user/mobile/h5/AUH5Plugin;)V

    .line 1373
    const-string/jumbo v0, "YWUC-JTTYZH-C49"

    const-string/jumbo v1, ""

    const-string/jumbo v2, "taobaoBindingAlipayView"

    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->getAccount()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->mToken:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/ali/user/mobile/utils/LogAgent;->logBehavorOpen(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1374
    return-void
.end method

.method protected bindAlipayViaRpc(Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;)V
    .locals 2

    .prologue
    .line 1310
    const-string/jumbo v0, "bindToken"

    invoke-virtual {p0, p1, v0}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->getStringFromExtResAttrs(Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1311
    new-instance v1, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$32;

    invoke-direct {v1, p0, v0, p1}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$32;-><init>(Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;Ljava/lang/String;Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;)V

    invoke-static {v1}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Ljava/lang/Runnable;)V

    .line 1324
    return-void
.end method

.method protected checkAccountInputConfig()V
    .locals 2

    .prologue
    .line 1821
    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 1822
    if-eqz v0, :cond_0

    .line 1823
    const-string/jumbo v1, "CFG_ALIUSER_ACCOUNT_INPUT_TIP"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1824
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1825
    iget-object v1, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->mAccountInputView:Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->setHint(Ljava/lang/CharSequence;)V

    .line 1828
    :cond_0
    return-void
.end method

.method protected checkLoginResponseFail(Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;)V
    .locals 1

    .prologue
    .line 967
    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->enableBackButton()V

    .line 968
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->checkTaobaoLoginEntryConfig(I)V

    .line 969
    invoke-virtual {p0, p1}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->checkSupportSmsLogin(Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;)V

    .line 970
    return-void
.end method

.method protected checkSupportSmsLogin(Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;)V
    .locals 3

    .prologue
    .line 1869
    const-string/jumbo v0, "isAllowSMS"

    invoke-virtual {p0, p1, v0}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->getStringFromExtResAttrs(Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1870
    iget-object v1, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->mSmsLoginMap:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->getAccount()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1871
    return-void
.end method

.method protected checkTaobaoLoginEntryConfig(I)V
    .locals 5

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 1835
    if-nez p1, :cond_2

    .line 1836
    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 1837
    if-eqz v0, :cond_0

    .line 1838
    const-string/jumbo v1, "YES"

    const-string/jumbo v2, "CFG_ALIUSER_TAOBAO_LOGIN_ENABLE"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    .line 1839
    if-eqz v0, :cond_1

    .line 1840
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->mForgetPasswordCenter:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1841
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->mSwitchLoginAndForgetPassword:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1858
    :cond_0
    :goto_0
    return-void

    .line 1843
    :cond_1
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->mForgetPasswordCenter:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1844
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->mSwitchLoginAndForgetPassword:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 1848
    :cond_2
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/base/config/ConfigService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/base/config/ConfigService;

    .line 1849
    const-string/jumbo v1, "CFG_ALIUSER_TAOBAO_LOGIN_ENABLE"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/base/config/ConfigService;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1850
    const-string/jumbo v1, "YES"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1851
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->mForgetPasswordCenter:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1852
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->mSwitchLoginAndForgetPassword:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 1854
    :cond_3
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->mForgetPasswordCenter:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1855
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->mSwitchLoginAndForgetPassword:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method protected clearPassword()V
    .locals 2

    .prologue
    .line 1899
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$47;

    invoke-direct {v1, p0}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$47;-><init>(Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1905
    return-void
.end method

.method protected createSSOToken(Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;)V
    .locals 1

    .prologue
    .line 1681
    invoke-static {}, Lcom/ali/user/mobile/info/AppInfo;->getInstance()Lcom/ali/user/mobile/info/AppInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ali/user/mobile/info/AppInfo;->isUseSso()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1682
    new-instance v0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$43;

    invoke-direct {v0, p0, p1}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$43;-><init>(Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;)V

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Ljava/lang/Runnable;)V

    .line 1694
    :cond_0
    return-void
.end method

.method protected dealFailResultCode(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 1231
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1232
    const-string/jumbo v0, "AliUserLoginFragment"

    const-string/jumbo v1, "dealFailResultCode,result is null"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1261
    :cond_0
    :goto_0
    return-void

    .line 1235
    :cond_1
    const-string/jumbo v0, "1001"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1236
    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->addCurrentHistoryFailCount()V

    .line 1237
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1238
    const-string/jumbo v2, "\u9a8c\u8bc1\u5931\u8d25\u4e86"

    .line 1240
    :goto_1
    iget-object v3, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->c:Ljava/lang/String;

    iget-object v5, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->d:Ljava/lang/String;

    .line 1241
    iget-object v6, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->e:Landroid/content/DialogInterface$OnClickListener;

    move-object v0, p0

    move-object v4, v1

    .line 1240
    invoke-virtual/range {v0 .. v6}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0

    .line 1242
    :cond_2
    const-string/jumbo v0, "2"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1243
    const-string/jumbo v3, "\u786e\u5b9a"

    move-object v0, p0

    move-object v2, p2

    move-object v4, v1

    move-object v5, v1

    move-object v6, v1

    invoke-virtual/range {v0 .. v6}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0

    .line 1244
    :cond_3
    const-string/jumbo v0, "1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1245
    const-string/jumbo v3, "\u786e\u5b9a"

    const-string/jumbo v5, "\u5f00\u901a\u6743\u9650"

    new-instance v6, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$28;

    invoke-direct {v6, p0}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$28;-><init>(Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;)V

    move-object v0, p0

    move-object v2, p2

    move-object v4, v1

    invoke-virtual/range {v0 .. v6}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0

    .line 1252
    :cond_4
    const-string/jumbo v0, "3"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1253
    const-string/jumbo v3, "\u786e\u5b9a"

    move-object v0, p0

    move-object v2, p2

    move-object v4, v1

    move-object v5, v1

    move-object v6, v1

    invoke-virtual/range {v0 .. v6}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0

    .line 1254
    :cond_5
    const-string/jumbo v0, "4"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1255
    const-string/jumbo v3, "\u786e\u5b9a"

    move-object v0, p0

    move-object v2, p2

    move-object v4, v1

    move-object v5, v1

    move-object v6, v1

    invoke-virtual/range {v0 .. v6}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0

    .line 1256
    :cond_6
    const-string/jumbo v0, "3004"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1258
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1259
    const-string/jumbo v3, "\u786e\u5b9a"

    move-object v0, p0

    move-object v2, p2

    move-object v4, v1

    move-object v5, v1

    move-object v6, v1

    invoke-virtual/range {v0 .. v6}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    goto/16 :goto_0

    :cond_7
    move-object v2, p2

    goto/16 :goto_1
.end method

.method protected dealQueryFaceRes(Lcom/alipay/mobileapp/biz/rpc/unifylogin/vo/QueryFaceLoginRes;)V
    .locals 2

    .prologue
    .line 1140
    iget-boolean v0, p1, Lcom/alipay/mobileapp/biz/rpc/unifylogin/vo/QueryFaceLoginRes;->success:Z

    if-eqz v0, :cond_0

    .line 1141
    iget-object v0, p1, Lcom/alipay/mobileapp/biz/rpc/unifylogin/vo/QueryFaceLoginRes;->resultInfos:Ljava/util/List;

    .line 1142
    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->fillFaceLoginStates(Ljava/util/List;)V

    .line 1143
    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->refreshFaceEntry()V

    .line 1144
    const-string/jumbo v0, "AliUserLoginFragment"

    const-string/jumbo v1, "queryFaceLoginEntry success"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1148
    :goto_0
    return-void

    .line 1146
    :cond_0
    const-string/jumbo v0, "AliUserLoginFragment"

    const-string/jumbo v1, "queryFaceLoginEntry fail (success is false)"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected deleteAccount(Lcom/ali/user/mobile/login/LoginHistory;)V
    .locals 1

    .prologue
    .line 645
    new-instance v0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$15;

    invoke-direct {v0, p0, p1}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$15;-><init>(Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;Lcom/ali/user/mobile/login/LoginHistory;)V

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Ljava/lang/Runnable;)V

    .line 655
    return-void
.end method

.method protected disableBackButton()V
    .locals 2

    .prologue
    .line 1890
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$46;

    invoke-direct {v1, p0}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$46;-><init>(Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1896
    return-void
.end method

.method protected doFaceLogin()V
    .locals 1

    .prologue
    .line 1036
    const-string/jumbo v0, ""

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->showProgress(Ljava/lang/String;)V

    .line 1037
    new-instance v0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$27;

    invoke-direct {v0, p0}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$27;-><init>(Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;)V

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Ljava/lang/Runnable;)V

    .line 1085
    return-void
.end method

.method protected doFetchH5Url(Ljava/lang/String;Lcom/ali/user/mobile/service/UrlFetchService$UrlFetchCallback;)V
    .locals 1

    .prologue
    .line 1649
    const-string/jumbo v0, ""

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->showProgress(Ljava/lang/String;)V

    .line 1650
    new-instance v0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$42;

    invoke-direct {v0, p0, p1, p2}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$42;-><init>(Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;Ljava/lang/String;Lcom/ali/user/mobile/service/UrlFetchService$UrlFetchCallback;)V

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Ljava/lang/Runnable;)V

    .line 1665
    return-void
.end method

.method protected doInit()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 173
    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 174
    if-eqz v0, :cond_3

    .line 175
    const-string/jumbo v3, "from_register"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->isFromRegist:Z

    .line 176
    const-string/jumbo v3, "source_accountSelectAccount"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    .line 177
    const-string/jumbo v4, "login_param"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ali/user/mobile/login/LoginParam;

    .line 179
    if-nez v0, :cond_1

    .line 180
    const-string/jumbo v0, "AliUserLoginFragment"

    const-string/jumbo v4, "\u65e0\u8d26\u6237\u4fe1\u606f"

    invoke-static {v0, v4}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    if-eqz v3, :cond_0

    .line 182
    const-string/jumbo v0, "AliUserLoginFragment"

    const-string/jumbo v1, "\u6765\u81ea\u8d26\u6237\u7ba1\u7406\uff0c\u589e\u52a0\u8d26\u6237"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    invoke-virtual {p0, v2}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->readRecentHistory(I)V

    .line 197
    :goto_0
    return-void

    .line 185
    :cond_0
    const-string/jumbo v0, "AliUserLoginFragment"

    const-string/jumbo v2, "\u52a0\u8f7d\u5386\u53f2\u8d26\u6237"

    invoke-static {v0, v2}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    invoke-virtual {p0, v1}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->readRecentHistory(I)V

    goto :goto_0

    .line 189
    :cond_1
    const-string/jumbo v3, "AliUserLoginFragment"

    const-string/jumbo v4, "\u6709\u8d26\u6237\u4fe1\u606f"

    invoke-static {v3, v4}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    iget-boolean v3, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->isFromRegist:Z

    if-eqz v3, :cond_2

    :goto_1
    invoke-virtual {p0, v0, v1}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->initLoginParam(Lcom/ali/user/mobile/login/LoginParam;Z)V

    .line 191
    invoke-virtual {p0, v2}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->readRecentHistory(I)V

    goto :goto_0

    :cond_2
    move v1, v2

    .line 190
    goto :goto_1

    .line 194
    :cond_3
    const-string/jumbo v0, "AliUserLoginFragment"

    const-string/jumbo v2, "\u65e0\u5916\u90e8\u53c2\u6570\uff0c\u52a0\u8f7d\u5386\u53f2\u8d26\u6237"

    invoke-static {v0, v2}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    invoke-virtual {p0, v1}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->readRecentHistory(I)V

    goto :goto_0
.end method

.method protected enableBackButton()V
    .locals 2

    .prologue
    .line 1886
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->mTitleBar:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->getBackButton()Lcom/alipay/mobile/commonui/widget/APButton;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APButton;->setEnabled(Z)V

    .line 1887
    return-void
.end method

.method protected fillFaceLoginStates(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobileapp/biz/rpc/unifylogin/vo/FaceLoginSwitchResult;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 1151
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 1177
    :cond_0
    return-void

    :cond_1
    move v2, v3

    .line 1154
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_0

    .line 1155
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobileapp/biz/rpc/unifylogin/vo/FaceLoginSwitchResult;

    .line 1156
    if-eqz v0, :cond_2

    iget-object v1, v0, Lcom/alipay/mobileapp/biz/rpc/unifylogin/vo/FaceLoginSwitchResult;->userId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    move v4, v3

    .line 1159
    :goto_1
    iget-object v1, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->loginHistoryList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v4, v1, :cond_3

    .line 1154
    :cond_2
    :goto_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 1160
    :cond_3
    iget-object v1, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->loginHistoryList:Ljava/util/List;

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ali/user/mobile/login/LoginHistory;

    .line 1161
    iget-object v5, v1, Lcom/ali/user/mobile/login/LoginHistory;->userId:Ljava/lang/String;

    if-eqz v5, :cond_5

    .line 1162
    iget-object v5, v1, Lcom/ali/user/mobile/login/LoginHistory;->userId:Ljava/lang/String;

    iget-object v6, v0, Lcom/alipay/mobileapp/biz/rpc/unifylogin/vo/FaceLoginSwitchResult;->userId:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1163
    iget-boolean v4, v0, Lcom/alipay/mobileapp/biz/rpc/unifylogin/vo/FaceLoginSwitchResult;->opened:Z

    iput-boolean v4, v1, Lcom/ali/user/mobile/login/LoginHistory;->faceAuth:Z

    .line 1164
    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->getLoginHistoryManager()Lcom/ali/user/mobile/login/LoginHistoryManager;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 1165
    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->getLoginHistoryManager()Lcom/ali/user/mobile/login/LoginHistoryManager;

    move-result-object v4

    invoke-interface {v4, v1}, Lcom/ali/user/mobile/login/LoginHistoryManager;->saveHistory(Lcom/ali/user/mobile/login/LoginHistory;)V

    .line 1168
    :cond_4
    iget-object v1, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->mCurrentSelectedHistory:Lcom/ali/user/mobile/login/LoginHistory;

    if-eqz v1, :cond_2

    .line 1169
    iget-object v1, v0, Lcom/alipay/mobileapp/biz/rpc/unifylogin/vo/FaceLoginSwitchResult;->userId:Ljava/lang/String;

    .line 1170
    iget-object v4, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->mCurrentSelectedHistory:Lcom/ali/user/mobile/login/LoginHistory;

    iget-object v4, v4, Lcom/ali/user/mobile/login/LoginHistory;->userId:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1171
    iget-object v1, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->mCurrentSelectedHistory:Lcom/ali/user/mobile/login/LoginHistory;

    iget-boolean v0, v0, Lcom/alipay/mobileapp/biz/rpc/unifylogin/vo/FaceLoginSwitchResult;->opened:Z

    iput-boolean v0, v1, Lcom/ali/user/mobile/login/LoginHistory;->faceAuth:Z

    goto :goto_2

    .line 1159
    :cond_5
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_1
.end method

.method protected formatInputBox(Landroid/widget/EditText;)V
    .locals 5

    .prologue
    .line 1926
    invoke-virtual {p1}, Landroid/widget/EditText;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 1927
    const/16 v1, 0x9

    sget v2, Lcom/ali/user/mobile/security/ui/R$id;->aliuser_register:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1928
    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/ali/user/mobile/security/ui/R$dimen;->inputbox_edit_margin_top:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    .line 1929
    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/ali/user/mobile/security/ui/R$dimen;->inputbox_edit_margin_left:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    .line 1930
    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/ali/user/mobile/security/ui/R$dimen;->inputbox_edit_margin_right:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    .line 1931
    const/4 v4, 0x0

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 1932
    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1933
    return-void
.end method

.method protected getAccount()Ljava/lang/String;
    .locals 3

    .prologue
    .line 599
    iget-boolean v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->isDropdownAccount:Z

    if-eqz v0, :cond_1

    .line 600
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->mCurrentSelectedAccount:Ljava/lang/String;

    .line 608
    :cond_0
    :goto_0
    return-object v0

    .line 602
    :cond_1
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->mAccountInputView:Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    .line 604
    const-string/jumbo v1, "\uff0d"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 605
    const-string/jumbo v1, "\uff0d"

    const-string/jumbo v2, "-"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 606
    iget-object v1, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->mAccountInputView:Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method protected getLoginHistoryManager()Lcom/ali/user/mobile/login/LoginHistoryManager;
    .locals 1

    .prologue
    .line 1865
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->mApplicationContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/ali/user/mobile/db/LoginHistoryDao;->get(Landroid/content/Context;)Lcom/ali/user/mobile/db/LoginHistoryDao;

    move-result-object v0

    return-object v0
.end method

.method protected getLoginParams(Lcom/ali/user/mobile/login/LoginParam;)V
    .locals 3

    .prologue
    .line 570
    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->getAccount()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/ali/user/mobile/login/LoginParam;->loginAccount:Ljava/lang/String;

    .line 571
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->mPasswordInput:Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->getSafeText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/ali/user/mobile/login/LoginParam;->loginPassword:Ljava/lang/String;

    .line 572
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->mRdsWraper:Lcom/ali/user/mobile/login/rds/RDSWraper;

    iget-object v1, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->mApplicationContext:Landroid/content/Context;

    iget-object v2, p1, Lcom/ali/user/mobile/login/LoginParam;->loginAccount:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/ali/user/mobile/login/rds/RDSWraper;->getRdsData(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/ali/user/mobile/login/LoginParam;->alipayEnvJson:Ljava/lang/String;

    .line 574
    iget-object v0, p1, Lcom/ali/user/mobile/login/LoginParam;->token:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 575
    const-string/jumbo v0, "withsndpwd"

    iput-object v0, p1, Lcom/ali/user/mobile/login/LoginParam;->validateTpye:Ljava/lang/String;

    .line 577
    :cond_0
    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->getLoginType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/ali/user/mobile/login/LoginParam;->loginType:Ljava/lang/String;

    .line 580
    iget-boolean v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->mIsSecurityCore:Z

    if-eqz v0, :cond_2

    .line 581
    const-string/jumbo v0, "AliUserLoginFragment"

    const-string/jumbo v1, "\u98ce\u9669\u91ca\u653e\u6210\u529f\u540e\u7684\u767b\u9646"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 582
    iget-object v0, p1, Lcom/ali/user/mobile/login/LoginParam;->externParams:Ljava/util/Map;

    if-nez v0, :cond_1

    .line 583
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p1, Lcom/ali/user/mobile/login/LoginParam;->externParams:Ljava/util/Map;

    .line 585
    :cond_1
    iget-object v0, p1, Lcom/ali/user/mobile/login/LoginParam;->externParams:Ljava/util/Map;

    const-string/jumbo v1, "securityId"

    iget-object v2, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->mSecurityId:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 586
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->mIsSecurityCore:Z

    .line 587
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->mSecurityId:Ljava/lang/String;

    .line 590
    :cond_2
    iput-object p1, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->mLoginParam:Lcom/ali/user/mobile/login/LoginParam;

    .line 591
    return-void
.end method

.method protected abstract getLoginType()Ljava/lang/String;
.end method

.method protected getStringFromExtResAttrs(Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 1909
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    iget-object v1, p1, Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;->data:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1910
    const-string/jumbo v1, "extResAttrs"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 1911
    invoke-virtual {v0, p2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1914
    :goto_0
    return-object v0

    .line 1913
    :catch_0
    move-exception v0

    const-string/jumbo v0, "AliUserLoginFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "extResAttrs\u4e2d\u6ca1\u6709"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ali/user/mobile/log/AliUserLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1914
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method protected handleLoginException(Lcom/alipay/mobile/common/rpc/RpcException;)Z
    .locals 1

    .prologue
    .line 1285
    const/4 v0, 0x0

    return v0
.end method

.method protected hideLoginHistory()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 508
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->mArrowDownView:Landroid/widget/ImageButton;

    sget v1, Lcom/ali/user/mobile/security/ui/R$drawable;->arrow_down:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 509
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->mLoginHistoryList:Lcom/alipay/mobile/commonui/widget/APListView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APListView;->setVisibility(I)V

    .line 510
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->mPasswordInputBox:Lcom/ali/user/mobile/ui/widget/AUInputBox;

    invoke-virtual {v0, v2}, Lcom/ali/user/mobile/ui/widget/AUInputBox;->setVisibility(I)V

    .line 511
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->mLoginButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 512
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->mForgetPasswordCenter:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 513
    iget-object v1, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->mForgetPasswordCenter:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->mForgetPasswordCenter:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 515
    :cond_0
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->mSwitchLoginAndForgetPassword:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 516
    iget-object v1, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->mSwitchLoginAndForgetPassword:Landroid/view/View;

    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->mSwitchLoginAndForgetPassword:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 518
    :cond_1
    return-void
.end method

.method protected initEvents()V
    .locals 2

    .prologue
    .line 260
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->mAccountInputView:Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;

    new-instance v1, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$6;

    invoke-direct {v1, p0}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$6;-><init>(Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 282
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->mArrowDownView:Landroid/widget/ImageButton;

    new-instance v1, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$7;

    invoke-direct {v1, p0}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$7;-><init>(Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 294
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->mPasswordChangeView:Landroid/widget/ImageButton;

    new-instance v1, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$8;

    invoke-direct {v1, p0}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$8;-><init>(Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 311
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->subviewContainer:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$9;

    invoke-direct {v1, p0}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$9;-><init>(Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 329
    return-void
.end method

.method protected initFaceLoginFailAlert()V
    .locals 2

    .prologue
    .line 200
    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/ali/user/mobile/security/ui/R$string;->try_face_login:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->b:Ljava/lang/String;

    .line 201
    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/ali/user/mobile/security/ui/R$string;->try_face_login_fail:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->c:Ljava/lang/String;

    .line 202
    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/ali/user/mobile/security/ui/R$string;->try_face_login_retry:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->d:Ljava/lang/String;

    .line 204
    new-instance v0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$4;

    invoke-direct {v0, p0}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$4;-><init>(Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;)V

    iput-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->e:Landroid/content/DialogInterface$OnClickListener;

    .line 210
    return-void
.end method

.method protected initLoginParam(Lcom/ali/user/mobile/login/LoginParam;Z)V
    .locals 3

    .prologue
    .line 233
    const-string/jumbo v0, "AliUserLoginFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "initLoginParam:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p1, Lcom/ali/user/mobile/login/LoginParam;->loginAccount:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->isDropdownAccount:Z

    .line 235
    iget-object v0, p1, Lcom/ali/user/mobile/login/LoginParam;->loginAccount:Ljava/lang/String;

    iput-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->mCurrentSelectedAccount:Ljava/lang/String;

    .line 236
    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->mCurrentSelectedAccount:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->getLoginType()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ali/user/mobile/utils/StringUtil;->hideAccount(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 237
    :goto_0
    invoke-direct {p0, v0}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->a(Ljava/lang/String;)V

    .line 239
    iget-object v0, p1, Lcom/ali/user/mobile/login/LoginParam;->token:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 240
    const-string/jumbo v0, "AliUserLoginFragment"

    const-string/jumbo v1, "token\u4e3a\u7a7a\uff0c\u8f93\u5165\u5bc6\u7801"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    :goto_1
    return-void

    .line 236
    :cond_0
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->mCurrentSelectedAccount:Ljava/lang/String;

    goto :goto_0

    .line 242
    :cond_1
    const-string/jumbo v0, "AliUserLoginFragment"

    const-string/jumbo v1, "\u5e26token\uff0c\u6ce8\u518c\u6210\u529f\u540e\u76f4\u63a5\u767b\u5f55"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    invoke-virtual {p0, p1}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->getLoginParams(Lcom/ali/user/mobile/login/LoginParam;)V

    .line 244
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->login(Lcom/ali/user/mobile/login/LoginParam;Z)V

    goto :goto_1
.end method

.method protected initRdsInfo()V
    .locals 4

    .prologue
    .line 1810
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->mRdsWraper:Lcom/ali/user/mobile/login/rds/RDSWraper;

    iget-object v1, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->mApplicationContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->mCurrentSelectedAccount:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->getLoginType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/ali/user/mobile/login/rds/RDSWraper;->initPage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 1812
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->mRdsWraper:Lcom/ali/user/mobile/login/rds/RDSWraper;

    iget-object v1, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->mAccountInputView:Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;

    const-string/jumbo v2, "UsernameET"

    invoke-virtual {v0, v1, v2}, Lcom/ali/user/mobile/login/rds/RDSWraper;->initTextChange(Landroid/widget/EditText;Ljava/lang/String;)V

    .line 1813
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->mRdsWraper:Lcom/ali/user/mobile/login/rds/RDSWraper;

    iget-object v1, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->mAccountInputView:Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;

    const-string/jumbo v2, "UsernameET"

    invoke-virtual {v0, v1, v2}, Lcom/ali/user/mobile/login/rds/RDSWraper;->initFocusChange(Landroid/view/View;Ljava/lang/String;)V

    .line 1814
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->mRdsWraper:Lcom/ali/user/mobile/login/rds/RDSWraper;

    iget-object v1, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->mPasswordInput:Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;

    const-string/jumbo v2, "PwdET"

    invoke-virtual {v0, v1, v2}, Lcom/ali/user/mobile/login/rds/RDSWraper;->initFocusChange(Landroid/view/View;Ljava/lang/String;)V

    .line 1815
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->mRdsWraper:Lcom/ali/user/mobile/login/rds/RDSWraper;

    iget-object v1, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->mForgetPasswordCenter:Landroid/widget/TextView;

    const-string/jumbo v2, "GetPwdBtn"

    invoke-virtual {v0, v1, v2}, Lcom/ali/user/mobile/login/rds/RDSWraper;->initFocusChange(Landroid/view/View;Ljava/lang/String;)V

    .line 1816
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->mRdsWraper:Lcom/ali/user/mobile/login/rds/RDSWraper;

    iget-object v1, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->mLoginButton:Landroid/widget/Button;

    const-string/jumbo v2, "LoginBtn"

    invoke-virtual {v0, v1, v2}, Lcom/ali/user/mobile/login/rds/RDSWraper;->initFocusChange(Landroid/view/View;Ljava/lang/String;)V

    .line 1817
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->mRdsWraper:Lcom/ali/user/mobile/login/rds/RDSWraper;

    iget-object v1, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->mViewContainers:Landroid/view/View;

    const-string/jumbo v2, "LoginViewContainers"

    invoke-virtual {v0, v1, v2}, Lcom/ali/user/mobile/login/rds/RDSWraper;->initScreenTouch(Landroid/view/View;Ljava/lang/String;)V

    .line 1818
    return-void
.end method

.method protected initViews()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 249
    const/4 v0, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->setPortraitImage(ZLjava/lang/String;)V

    .line 251
    iput-boolean v1, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->isDropdownAccount:Z

    .line 253
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->mAccountCompleteTextView:Lcom/ali/user/mobile/ui/widget/AUInputBox;

    iget-object v1, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->mAccountInputView:Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;

    invoke-static {v0, v1}, Lcom/ali/user/mobile/utils/WidgetVisualStyleSetting;->initFocusChangeBackground(Landroid/view/View;Landroid/widget/EditText;)V

    .line 254
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->mPasswordInputBox:Lcom/ali/user/mobile/ui/widget/AUInputBox;

    iget-object v1, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->mPasswordInput:Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;

    invoke-static {v0, v1}, Lcom/ali/user/mobile/utils/WidgetVisualStyleSetting;->initFocusChangeBackground(Landroid/view/View;Landroid/widget/EditText;)V

    .line 255
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->mAccountInputView:Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->formatInputBox(Landroid/widget/EditText;)V

    .line 256
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->mPasswordInput:Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->formatInputBox(Landroid/widget/EditText;)V

    .line 257
    return-void
.end method

.method protected invokeFaceLogin(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 1185
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1186
    const-string/jumbo v0, "AliUserLoginFragment"

    const-string/jumbo v1, "invokeFaceLogin fail,token is null"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1204
    :cond_0
    :goto_0
    return-void

    .line 1189
    :cond_1
    const-string/jumbo v0, "AliUserLoginFragment"

    const-string/jumbo v1, "invokeFaceLogin..."

    invoke-static {v0, v1}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1192
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v0

    .line 1193
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 1194
    const-class v1, Lcom/alipay/mobile/verifyidentity/alipay/service/VerifyIdentityService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/verifyidentity/alipay/service/VerifyIdentityService;

    .line 1195
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1196
    iget-object v2, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->mCurrentSelectedHistory:Lcom/ali/user/mobile/login/LoginHistory;

    if-eqz v2, :cond_2

    .line 1197
    const-string/jumbo v2, "headurl"

    .line 1198
    iget-object v3, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->mCurrentSelectedHistory:Lcom/ali/user/mobile/login/LoginHistory;

    iget-object v3, v3, Lcom/ali/user/mobile/login/LoginHistory;->loginPortraitUrl:Ljava/lang/String;

    .line 1197
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1200
    :cond_2
    if-eqz v0, :cond_0

    .line 1201
    const-string/jumbo v2, "FACE_LOGIN"

    .line 1202
    iget-object v3, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->f:Lcom/alipay/mobile/verifyidentity/callback/VerifyIdentityListener;

    .line 1201
    invoke-virtual {v0, p1, v2, v1, v3}, Lcom/alipay/mobile/verifyidentity/alipay/service/VerifyIdentityService;->startVerifyByToken(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/alipay/mobile/verifyidentity/callback/VerifyIdentityListener;)V

    goto :goto_0
.end method

.method protected isSupportSmsLogin()Z
    .locals 3

    .prologue
    .line 1874
    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->getAccount()Ljava/lang/String;

    move-result-object v0

    .line 1875
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1876
    const/4 v0, 0x0

    .line 1878
    :goto_0
    return v0

    :cond_0
    const-string/jumbo v1, "true"

    iget-object v2, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->mSmsLoginMap:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public login(Lcom/ali/user/mobile/login/LoginParam;Z)V
    .locals 1

    .prologue
    .line 973
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->mApplicationContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/ali/user/mobile/login/ui/TaobaoSsoLoginBiz;->disableTaobaoSsoLogin(Landroid/content/Context;)V

    .line 975
    new-instance v0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$25;

    invoke-direct {v0, p0, p1}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$25;-><init>(Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;Lcom/ali/user/mobile/login/LoginParam;)V

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Ljava/lang/Runnable;)V

    .line 994
    return-void
.end method

.method protected loginInCurrentEnv()V
    .locals 2

    .prologue
    .line 768
    const-string/jumbo v0, "AliUserLoginFragment"

    const-string/jumbo v1, "loginInCurrentEnv"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 769
    new-instance v0, Lcom/ali/user/mobile/login/LoginParam;

    invoke-direct {v0}, Lcom/ali/user/mobile/login/LoginParam;-><init>()V

    .line 770
    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->getLoginParams(Lcom/ali/user/mobile/login/LoginParam;)V

    .line 771
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->login(Lcom/ali/user/mobile/login/LoginParam;Z)V

    .line 772
    return-void
.end method

.method protected loginInCurrentEnvWithToken(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 784
    const-string/jumbo v0, "withchecktoken"

    invoke-virtual {p0, p1, v0}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->loginInCurrentEnvWithToken(Ljava/lang/String;Ljava/lang/String;)V

    .line 785
    return-void
.end method

.method protected loginInCurrentEnvWithToken(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 775
    const-string/jumbo v0, "AliUserLoginFragment"

    const-string/jumbo v1, "loginInCurrentEnvWithToken"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 776
    new-instance v0, Lcom/ali/user/mobile/login/LoginParam;

    invoke-direct {v0}, Lcom/ali/user/mobile/login/LoginParam;-><init>()V

    .line 777
    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->getLoginParams(Lcom/ali/user/mobile/login/LoginParam;)V

    .line 778
    iput-object p1, v0, Lcom/ali/user/mobile/login/LoginParam;->token:Ljava/lang/String;

    .line 779
    iput-object p2, v0, Lcom/ali/user/mobile/login/LoginParam;->validateTpye:Ljava/lang/String;

    .line 780
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->login(Lcom/ali/user/mobile/login/LoginParam;Z)V

    .line 781
    return-void
.end method

.method protected notifyChange(Lcom/ali/user/mobile/login/LoginHistory;)V
    .locals 2

    .prologue
    .line 661
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$16;

    invoke-direct {v1, p0}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$16;-><init>(Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 669
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/16 v5, 0x5001

    .line 673
    const-string/jumbo v2, "AliUserLoginFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "onActivityResult, requestCode:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ",resultCode:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ",data:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 675
    const/16 v2, 0x3e8

    if-ne p2, v2, :cond_0

    .line 676
    const-string/jumbo v0, "login_response"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;

    .line 677
    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->onLoginPreFinish(Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;)V

    .line 762
    :goto_0
    return-void

    .line 679
    :cond_0
    const/16 v2, 0x7ce

    if-ne p2, v2, :cond_2

    .line 680
    const-string/jumbo v0, "login_response"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;

    .line 681
    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->onLoginResponse(Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;)Z

    .line 761
    :cond_1
    :goto_1
    invoke-super {p0, p1, p2, p3}, Lcom/ali/user/mobile/login/ui/CommonLoginFragment;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0

    .line 682
    :cond_2
    if-eqz p2, :cond_7

    .line 683
    const/16 v2, 0x2000

    if-ne p1, v2, :cond_5

    .line 687
    const/16 v0, 0x2006

    if-ne p2, v0, :cond_3

    .line 688
    const-string/jumbo v0, "AliUserLoginFragment"

    const-string/jumbo v1, "\u77ed\u4fe1\u9a8c\u8bc1\u901a\u8fc7\uff0c\u6dd8\u5b9d\u767b\u9646"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 689
    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->loginInCurrentEnv()V

    goto :goto_1

    .line 690
    :cond_3
    const/16 v0, 0x2008

    if-ne p2, v0, :cond_4

    .line 691
    const-string/jumbo v0, "AliUserLoginFragment"

    const-string/jumbo v1, "\u6362\u7ed1\u624b\u673a\u53f7"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 692
    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->clearPassword()V

    .line 693
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->mSmsH5url:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->toChangeBindPhone(Ljava/lang/String;)V

    goto :goto_1

    .line 695
    :cond_4
    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->clearPassword()V

    goto :goto_1

    .line 697
    :cond_5
    const/16 v2, 0x5000

    if-ne p1, v2, :cond_8

    .line 698
    if-ne p2, v5, :cond_6

    .line 699
    const-string/jumbo v0, "AliUserLoginFragment"

    const-string/jumbo v1, "\u7ed1\u5b9a\u652f\u4ed8\u5b9d\u6210\u529f"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 700
    const-string/jumbo v0, "token"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 701
    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->loginInCurrentEnvWithToken(Ljava/lang/String;)V

    goto :goto_1

    .line 703
    :cond_6
    const-string/jumbo v0, "AliUserLoginFragment"

    const-string/jumbo v1, "\u7ed1\u5b9a\u652f\u4ed8\u5b9d\u5931\u8d25"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 757
    :cond_7
    :goto_2
    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->clearPassword()V

    goto :goto_1

    .line 706
    :cond_8
    const/16 v2, 0x6003

    if-ne p1, v2, :cond_a

    .line 708
    if-ne p2, v5, :cond_9

    .line 709
    const-string/jumbo v1, "AliUserLoginFragment"

    const-string/jumbo v2, "\u6362\u7ed1\u624b\u673a\u6210\u529f"

    invoke-static {v1, v2}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 710
    const-string/jumbo v1, "loginId"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 711
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 712
    new-instance v2, Lcom/ali/user/mobile/login/LoginParam;

    invoke-direct {v2}, Lcom/ali/user/mobile/login/LoginParam;-><init>()V

    .line 713
    iput-object v1, v2, Lcom/ali/user/mobile/login/LoginParam;->loginAccount:Ljava/lang/String;

    .line 714
    invoke-virtual {p0, v2, v0}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->initLoginParam(Lcom/ali/user/mobile/login/LoginParam;Z)V

    goto/16 :goto_1

    .line 717
    :cond_9
    const-string/jumbo v0, "AliUserLoginFragment"

    const-string/jumbo v1, "\u6362\u7ed1\u624b\u673a\u5931\u8d25"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 719
    :cond_a
    const/16 v2, 0x6000

    if-ne p1, v2, :cond_c

    .line 720
    if-ne p2, v5, :cond_b

    .line 721
    const-string/jumbo v0, "AliUserLoginFragment"

    const-string/jumbo v1, "\u7ed1\u5b9a\u624b\u673a\u6210\u529f"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 723
    const-string/jumbo v0, "token"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 724
    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->loginInCurrentEnvWithToken(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 726
    :cond_b
    const-string/jumbo v0, "AliUserLoginFragment"

    const-string/jumbo v1, "\u7ed1\u5b9a\u624b\u673a\u5931\u8d25"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 729
    :cond_c
    const/16 v2, 0x101

    if-ne p1, v2, :cond_10

    .line 730
    const/16 v2, 0x102

    if-eq p2, v2, :cond_d

    if-nez p2, :cond_10

    .line 731
    :cond_d
    const-string/jumbo v0, "AliUserLoginFragment"

    const-string/jumbo v1, "webview\u8fd4\u56de"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 732
    if-eqz p3, :cond_e

    const-string/jumbo v0, "quit"

    const-string/jumbo v1, "action"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 733
    :cond_e
    if-nez p2, :cond_1

    .line 734
    :cond_f
    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->clearPassword()V

    goto/16 :goto_0

    .line 737
    :cond_10
    const/16 v2, 0x7000

    if-ne p1, v2, :cond_15

    .line 738
    if-eqz p3, :cond_11

    const-string/jumbo v2, "quit"

    const-string/jumbo v3, "action"

    invoke-virtual {p3, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_12

    .line 739
    :cond_11
    if-nez p2, :cond_13

    .line 740
    :cond_12
    const-string/jumbo v0, "AliUserLoginFragment"

    const-string/jumbo v2, "\u98ce\u9669\u91ca\u653e\u5931\u8d25"

    invoke-static {v0, v2}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 741
    iput-boolean v1, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->mIsSecurityCore:Z

    goto/16 :goto_2

    .line 744
    :cond_13
    if-eqz p3, :cond_14

    :goto_3
    iput-boolean v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->mIsSecurityCore:Z

    .line 745
    iget-boolean v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->mIsSecurityCore:Z

    if-eqz v0, :cond_1

    .line 746
    const-string/jumbo v0, "AliUserLoginFragment"

    const-string/jumbo v1, "\u98ce\u9669\u91ca\u653e\u6210\u529f"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 747
    const-string/jumbo v0, "securityId"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->mSecurityId:Ljava/lang/String;

    .line 748
    const-string/jumbo v0, "token"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 749
    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->loginInCurrentEnvWithToken(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_14
    move v0, v1

    .line 744
    goto :goto_3

    .line 752
    :cond_15
    const v0, 0xc000

    if-ne p1, v0, :cond_1

    .line 753
    const/4 v0, -0x1

    if-ne p2, v0, :cond_7

    .line 754
    const-string/jumbo v0, "token"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 755
    const-string/jumbo v1, "withmsg"

    invoke-virtual {p0, v0, v1}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->loginInCurrentEnvWithToken(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 2

    .prologue
    .line 137
    invoke-super {p0, p1}, Lcom/ali/user/mobile/login/ui/CommonLoginFragment;->onAttach(Landroid/app/Activity;)V

    .line 138
    check-cast p1, Lcom/ali/user/mobile/login/ui/UserLoginActivity;

    iput-object p1, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->mAttachedActivity:Lcom/ali/user/mobile/login/ui/UserLoginActivity;

    .line 139
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->mAttachedActivity:Lcom/ali/user/mobile/login/ui/UserLoginActivity;

    invoke-virtual {v0}, Lcom/ali/user/mobile/login/ui/UserLoginActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    iput-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->mFragmentManager:Landroid/support/v4/app/FragmentManager;

    .line 140
    invoke-static {}, Lcom/ali/user/mobile/context/AliuserLoginContext;->getUserLoginService()Lcom/ali/user/mobile/service/UserLoginService;

    move-result-object v0

    iput-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->mUserLoginService:Lcom/ali/user/mobile/service/UserLoginService;

    .line 141
    invoke-static {}, Lcom/ali/user/mobile/context/AliuserLoginContext;->getUserFaceLoginService()Lcom/ali/user/mobile/service/UserFaceLoginService;

    move-result-object v0

    iput-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->mUserFaceLoginService:Lcom/ali/user/mobile/service/UserFaceLoginService;

    .line 142
    invoke-static {}, Lcom/ali/user/mobile/context/AliuserLoginContext;->getUrlFetchService()Lcom/ali/user/mobile/service/UrlFetchService;

    move-result-object v0

    iput-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->mUrlFetchService:Lcom/ali/user/mobile/service/UrlFetchService;

    .line 143
    new-instance v0, Lcom/ali/user/mobile/login/rds/RDSWraper;

    const-string/jumbo v1, "LoginPage"

    invoke-direct {v0, v1}, Lcom/ali/user/mobile/login/rds/RDSWraper;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->mRdsWraper:Lcom/ali/user/mobile/login/rds/RDSWraper;

    .line 144
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->useridList:Ljava/util/List;

    .line 145
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5

    .prologue
    .line 461
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 462
    sget v1, Lcom/ali/user/mobile/security/ui/R$id;->forgetPassword:I

    if-eq v0, v1, :cond_0

    sget v1, Lcom/ali/user/mobile/security/ui/R$id;->forgetPasswordCenter:I

    if-ne v0, v1, :cond_2

    .line 463
    :cond_0
    const-string/jumbo v0, "UC-LOG-150512-01"

    const-string/jumbo v1, "loginquestion"

    invoke-virtual {p0, v0, v1}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->writeClickLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 464
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->mRdsWraper:Lcom/ali/user/mobile/login/rds/RDSWraper;

    const-string/jumbo v1, "GetPwdBtn"

    invoke-virtual {v0, v1}, Lcom/ali/user/mobile/login/rds/RDSWraper;->onControlClick(Ljava/lang/String;)V

    .line 465
    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->showLoginProblemsPopup()V

    .line 494
    :cond_1
    :goto_0
    return-void

    .line 466
    :cond_2
    sget v1, Lcom/ali/user/mobile/security/ui/R$id;->registNewUser:I

    if-ne v0, v1, :cond_3

    .line 467
    const-string/jumbo v0, "YWUC-JTTYZH-C12"

    const-string/jumbo v1, "register"

    const-string/jumbo v2, "loginAccountInputView"

    invoke-virtual {p0, v0, v1, v2}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->writeClickLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 468
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->mRdsWraper:Lcom/ali/user/mobile/login/rds/RDSWraper;

    const-string/jumbo v1, "RegisterBtn"

    invoke-virtual {v0, v1}, Lcom/ali/user/mobile/login/rds/RDSWraper;->onControlClick(Ljava/lang/String;)V

    .line 469
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->toRegist(Lcom/ali/user/mobile/register/RegistParam;)V

    goto :goto_0

    .line 470
    :cond_3
    sget v1, Lcom/ali/user/mobile/security/ui/R$id;->loginButton:I

    if-ne v0, v1, :cond_4

    .line 471
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->mRdsWraper:Lcom/ali/user/mobile/login/rds/RDSWraper;

    const-string/jumbo v1, "LoginBtn"

    invoke-virtual {v0, v1}, Lcom/ali/user/mobile/login/rds/RDSWraper;->onControlClick(Ljava/lang/String;)V

    .line 472
    const-string/jumbo v0, "AliUserLoginFragment"

    const-string/jumbo v1, "onLoginClicked"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "YWUC-JTTYZH-C57"

    const-string/jumbo v1, ""

    const-string/jumbo v2, "loginAccountInputView"

    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->getAccount()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->mPasswordInputType:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/ali/user/mobile/utils/LogAgent;->logBehavorClick(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "YWUC-JTTYZH-C09"

    const-string/jumbo v1, "login"

    const-string/jumbo v2, "loginAccountInputView"

    invoke-virtual {p0, v0, v1, v2}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->writeClickLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->mLoginButton:Landroid/widget/Button;

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->closeInputMethod(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->closeSafeKeyboard()V

    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->loginInCurrentEnv()V

    goto :goto_0

    .line 489
    :cond_4
    sget v1, Lcom/ali/user/mobile/security/ui/R$id;->facelogin_btn:I

    if-ne v0, v1, :cond_1

    .line 490
    const-string/jumbo v0, "AliUserLoginFragment"

    const-string/jumbo v1, "click face login"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/log/AliUserLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 491
    const-string/jumbo v0, "UC-RLSB-150511-15"

    const-string/jumbo v1, "faceshowin"

    invoke-virtual {p0, v0, v1}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->writeClickLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 492
    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->doFaceLogin()V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 1698
    invoke-super {p0}, Lcom/ali/user/mobile/login/ui/CommonLoginFragment;->onDestroy()V

    .line 1699
    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->dismissProgress()V

    .line 1700
    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->getLoginHistoryManager()Lcom/ali/user/mobile/login/LoginHistoryManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/ali/user/mobile/login/LoginHistoryManager;->close()V

    .line 1701
    return-void
.end method

.method public onLoginFail()V
    .locals 2

    .prologue
    .line 1759
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.ali.user.sdk.login.FAIL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->a(Landroid/content/Intent;)V

    .line 1761
    invoke-static {}, Lcom/ali/user/mobile/context/AliuserLoginContext;->getLoginCaller()Lcom/ali/user/mobile/login/OnLoginCaller;

    move-result-object v0

    .line 1762
    if-eqz v0, :cond_0

    .line 1763
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/ali/user/mobile/login/OnLoginCaller;->failLogin(Lcom/ali/user/mobile/login/AbsNotifyFinishCaller;)V

    .line 1765
    :cond_0
    return-void
.end method

.method public onLoginPostFinish(Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;)V
    .locals 4

    .prologue
    .line 1734
    const-string/jumbo v0, "AliUserLoginFragment"

    const-string/jumbo v1, "onLoginPostFinish"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1735
    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->dismissProgress()V

    .line 1737
    invoke-static {}, Lcom/ali/user/mobile/context/AliuserLoginContext;->isBizFinish()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1738
    const-string/jumbo v0, "AliUserLoginFragment"

    const-string/jumbo v1, "app\u8fd8\u672a\u5904\u7406\u5b8c\u6210\uff0c\u4ec5\u505c\u6b62\u83ca\u82b1"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1755
    :goto_0
    return-void

    .line 1746
    :cond_0
    invoke-virtual {p0, p1}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->saveLoginHistory(Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;)V

    .line 1748
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.ali.user.sdk.login.SUCCESS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1749
    const-string/jumbo v1, "from_register"

    iget-boolean v2, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->isFromRegist:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1750
    const-string/jumbo v1, "havanaId"

    iget-wide v2, p1, Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;->hid:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1751
    invoke-direct {p0, v0}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->a(Landroid/content/Intent;)V

    .line 1753
    invoke-static {}, Lcom/ali/user/mobile/login/LoginActivityCollections;->getInstance()Lcom/ali/user/mobile/login/LoginActivityCollections;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ali/user/mobile/login/LoginActivityCollections;->destroy()V

    .line 1754
    invoke-static {}, Lcom/ali/user/mobile/context/AliuserLoginContext;->destroy()V

    goto :goto_0
.end method

.method public onLoginPreFinish(Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;)V
    .locals 3

    .prologue
    .line 1706
    const-string/jumbo v0, "AliUserLoginFragment"

    const-string/jumbo v1, "onLoginPreFinish"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1707
    if-nez p1, :cond_0

    .line 1708
    new-instance v0, Lcom/alipay/mobile/common/rpc/RpcException;

    const-string/jumbo v1, "\u767b\u5f55\u5f02\u5e38"

    invoke-direct {v0, v1}, Lcom/alipay/mobile/common/rpc/RpcException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1711
    :cond_0
    invoke-static {}, Lcom/ali/user/mobile/context/AliuserLoginContext;->getLoginCaller()Lcom/ali/user/mobile/login/OnLoginCaller;

    move-result-object v0

    .line 1712
    invoke-virtual {p0, p1}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->onLoginResponse(Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1713
    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->resetCurrentHistoryFailCount()V

    .line 1714
    if-nez v0, :cond_1

    .line 1715
    invoke-virtual {p0, p1}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->onLoginPostFinish(Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;)V

    .line 1730
    :goto_0
    return-void

    .line 1717
    :cond_1
    const-string/jumbo v1, "YWUC-JTTYZH-C101"

    const-string/jumbo v2, ""

    invoke-virtual {p0, v1, v2}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->writeClickLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1718
    new-instance v1, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$44;

    invoke-direct {v1, p0, p1}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$44;-><init>(Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;)V

    invoke-interface {v0, p1, v1}, Lcom/ali/user/mobile/login/OnLoginCaller;->postFinishLogin(Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;Lcom/ali/user/mobile/login/AbsNotifyFinishCaller;)V

    goto :goto_0

    .line 1728
    :cond_2
    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->onLoginFail()V

    goto :goto_0
.end method

.method public onLoginResponse(Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;)Z
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v1, 0x0

    .line 797
    const-string/jumbo v0, "AliUserLoginFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "\u767b\u5f55\u7ed3\u675f,code:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p1, Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;->code:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ",msg:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;->msg:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 799
    iget-object v0, p1, Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;->token:Ljava/lang/String;

    iput-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->mToken:Ljava/lang/String;

    .line 800
    iget-object v0, p1, Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;->code:Ljava/lang/String;

    .line 802
    const-string/jumbo v2, "200"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 803
    const-string/jumbo v2, "1000"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 804
    :cond_0
    iget-object v0, p1, Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;->extMap:Ljava/util/Map;

    if-nez v0, :cond_1

    .line 805
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p1, Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;->extMap:Ljava/util/Map;

    .line 807
    :cond_1
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->mLoginParam:Lcom/ali/user/mobile/login/LoginParam;

    if-eqz v0, :cond_2

    const-string/jumbo v0, "withsndpwd"

    iget-object v1, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->mLoginParam:Lcom/ali/user/mobile/login/LoginParam;

    iget-object v1, v1, Lcom/ali/user/mobile/login/LoginParam;->validateTpye:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 808
    :cond_2
    iget-object v0, p1, Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;->extMap:Ljava/util/Map;

    const-string/jumbo v1, "validateTpye"

    const-string/jumbo v2, "withpwd"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 812
    :goto_0
    iget-object v0, p1, Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;->extMap:Ljava/util/Map;

    const-string/jumbo v1, "lp"

    iget-object v2, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->mPasswordInput:Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;

    invoke-virtual {v2}, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->getSafeText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 813
    iget-object v0, p1, Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;->extMap:Ljava/util/Map;

    const-string/jumbo v1, "loginType"

    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->getLoginType()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 814
    iget-object v0, p1, Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;->extMap:Ljava/util/Map;

    const-string/jumbo v1, "from_register"

    iget-boolean v2, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->isFromRegist:Z

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 815
    const/4 v0, 0x1

    .line 963
    :goto_1
    return v0

    .line 810
    :cond_3
    iget-object v0, p1, Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;->extMap:Ljava/util/Map;

    const-string/jumbo v1, "validateTpye"

    iget-object v2, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->mLoginParam:Lcom/ali/user/mobile/login/LoginParam;

    iget-object v2, v2, Lcom/ali/user/mobile/login/LoginParam;->validateTpye:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 818
    :cond_4
    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->dismissProgress()V

    .line 819
    invoke-virtual {p0, p1}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->checkLoginResponseFail(Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;)V

    .line 821
    const-string/jumbo v2, "6203"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 822
    invoke-virtual {p0, p1}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->toLoginSmsVerify(Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;)V

    :cond_5
    :goto_2
    move v0, v9

    .line 963
    goto :goto_1

    .line 823
    :cond_6
    const-string/jumbo v2, "5007"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 824
    const-string/jumbo v2, "1019"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 825
    :cond_7
    iget-object v2, p1, Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;->msg:Ljava/lang/String;

    const-string/jumbo v3, "\u786e\u5b9a"

    move-object v0, p0

    move-object v4, v1

    move-object v5, v1

    move-object v6, v1

    invoke-virtual/range {v0 .. v6}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_2

    .line 826
    :cond_8
    const-string/jumbo v2, "5016"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 827
    iget-object v0, p1, Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;->msg:Ljava/lang/String;

    invoke-virtual {p0, v0, v9}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->toast(Ljava/lang/String;I)V

    goto :goto_2

    .line 828
    :cond_9
    const-string/jumbo v2, "5008"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 829
    const-string/jumbo v2, "1024"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 830
    :cond_a
    iget-object v0, p1, Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;->msg:Ljava/lang/String;

    invoke-virtual {p0, v0, v9}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->toast(Ljava/lang/String;I)V

    goto :goto_2

    .line 831
    :cond_b
    const-string/jumbo v2, "5012"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    .line 832
    const-string/jumbo v2, "5011"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    .line 833
    const-string/jumbo v2, "5014"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    .line 834
    const-string/jumbo v2, "5010"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    .line 835
    const-string/jumbo v2, "5009"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    .line 836
    const-string/jumbo v2, "5043"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 837
    :cond_c
    iget-object v0, p1, Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;->h5Url:Ljava/lang/String;

    .line 838
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->mApplicationContext:Landroid/content/Context;

    const-class v3, Lcom/ali/user/mobile/webview/WebViewActivity_;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 839
    const-string/jumbo v2, "UrlKey"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 840
    const/16 v0, 0x101

    invoke-virtual {p0, v1, v0}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_2

    .line 841
    :cond_d
    const-string/jumbo v2, "5137"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 842
    iget-object v2, p1, Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;->msg:Ljava/lang/String;

    const-string/jumbo v3, "\u53d6\u6d88"

    const-string/jumbo v5, "\u627e\u56de\u5bc6\u7801"

    .line 843
    new-instance v6, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$17;

    invoke-direct {v6, p0}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$17;-><init>(Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;)V

    move-object v0, p0

    move-object v4, v1

    .line 842
    invoke-virtual/range {v0 .. v6}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    goto/16 :goto_2

    .line 850
    :cond_e
    const-string/jumbo v2, "208"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 851
    iget-object v2, p1, Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;->msg:Ljava/lang/String;

    const-string/jumbo v3, "\u62e8\u6253"

    .line 852
    new-instance v4, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$18;

    invoke-direct {v4, p0}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$18;-><init>(Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;)V

    .line 857
    const-string/jumbo v5, "\u53d6\u6d88"

    move-object v0, p0

    move-object v6, v1

    .line 851
    invoke-virtual/range {v0 .. v6}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    goto/16 :goto_2

    .line 858
    :cond_f
    const-string/jumbo v2, "5136"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_10

    .line 859
    const-string/jumbo v2, "6303"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 860
    :cond_10
    iget-object v2, p1, Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;->msg:Ljava/lang/String;

    const-string/jumbo v3, "\u786e\u5b9a"

    iget-object v4, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->clearPasswordListener:Landroid/content/DialogInterface$OnClickListener;

    move-object v0, p0

    move-object v5, v1

    move-object v6, v1

    invoke-virtual/range {v0 .. v6}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    goto/16 :goto_2

    .line 861
    :cond_11
    const-string/jumbo v2, "5144"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 862
    iget-object v2, p1, Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;->msg:Ljava/lang/String;

    const-string/jumbo v3, "\u53d6\u6d88"

    const-string/jumbo v5, "\u62e8\u6253"

    new-instance v6, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$19;

    invoke-direct {v6, p0}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$19;-><init>(Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;)V

    move-object v0, p0

    move-object v4, v1

    invoke-virtual/range {v0 .. v6}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    goto/16 :goto_2

    .line 868
    :cond_12
    const-string/jumbo v2, "5134"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 869
    iget-object v2, p1, Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;->msg:Ljava/lang/String;

    const-string/jumbo v3, "\u77e5\u9053\u4e86"

    const-string/jumbo v5, "\u6211\u8981\u6ce8\u518c"

    .line 870
    new-instance v6, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$20;

    invoke-direct {v6, p0}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$20;-><init>(Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;)V

    move-object v0, p0

    move-object v4, v1

    .line 869
    invoke-virtual/range {v0 .. v6}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    goto/16 :goto_2

    .line 877
    :cond_13
    const-string/jumbo v2, "6201"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 878
    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->clearPassword()V

    .line 879
    iget-object v2, p1, Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;->msg:Ljava/lang/String;

    const-string/jumbo v3, "\u786e\u5b9a"

    new-instance v4, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$21;

    invoke-direct {v4, p0, p1}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$21;-><init>(Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;)V

    move-object v0, p0

    move-object v5, v1

    move-object v6, v1

    invoke-virtual/range {v0 .. v6}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    goto/16 :goto_2

    .line 885
    :cond_14
    const-string/jumbo v2, "6271"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 886
    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->clearPassword()V

    .line 887
    iget-object v2, p1, Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;->msg:Ljava/lang/String;

    const-string/jumbo v3, "\u786e\u5b9a"

    new-instance v4, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$22;

    invoke-direct {v4, p0, p1}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$22;-><init>(Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;)V

    move-object v0, p0

    move-object v5, v1

    move-object v6, v1

    invoke-virtual/range {v0 .. v6}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    goto/16 :goto_2

    .line 893
    :cond_15
    const-string/jumbo v2, "6272"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 894
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->mApplicationContext:Landroid/content/Context;

    const-class v2, Lcom/ali/user/mobile/login/ui/AliUserLoginSetSixPasswordActivity_;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 895
    const-string/jumbo v1, "login_param"

    iget-object v2, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->mLoginParam:Lcom/ali/user/mobile/login/LoginParam;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 896
    const-string/jumbo v1, "token"

    iget-object v2, p1, Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;->token:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 897
    const-string/jumbo v1, "showOptionalInfo"

    const-string/jumbo v2, "showOptionalInfo"

    invoke-virtual {p0, p1, v2}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->getStringFromExtResAttrs(Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 898
    const-string/jumbo v1, "agreementURL"

    const-string/jumbo v2, "agreementURL"

    invoke-virtual {p0, p1, v2}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->getStringFromExtResAttrs(Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 899
    const-string/jumbo v1, "optionStatus"

    const-string/jumbo v2, "true"

    const-string/jumbo v3, "optionStatus"

    invoke-virtual {p0, p1, v3}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->getStringFromExtResAttrs(Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 900
    const v1, 0x9000

    invoke-virtual {p0, v0, v1}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 901
    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->clearPassword()V

    goto/16 :goto_2

    .line 902
    :cond_16
    const-string/jumbo v2, "6205"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 903
    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->clearPassword()V

    .line 904
    const-class v0, Lcom/ali/user/mobile/login/ui/AliUserLoginSetPayPasswordActivity_;

    const/16 v1, 0x4000

    invoke-virtual {p0, v0, v1, p1}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->startActivityForResult(Ljava/lang/Class;ILcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;)V

    goto/16 :goto_2

    .line 905
    :cond_17
    const-string/jumbo v2, "6273"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 906
    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->clearPassword()V

    .line 907
    const-class v0, Lcom/ali/user/mobile/login/ui/AliUserLoginSetPayPasswordExActivity_;

    const v1, 0xa000

    invoke-virtual {p0, v0, v1, p1}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->startActivityForResult(Ljava/lang/Class;ILcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;)V

    goto/16 :goto_2

    .line 908
    :cond_18
    const-string/jumbo v2, "6207"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 909
    invoke-virtual {p0, p1}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->toSecurityCore(Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;)V

    goto/16 :goto_2

    .line 910
    :cond_19
    const-string/jumbo v2, "6210"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 911
    iget-object v2, p1, Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;->msg:Ljava/lang/String;

    const-string/jumbo v3, "\u53d6\u6d88"

    const-string/jumbo v5, "\u7ee7\u7eed\u6ce8\u518c"

    .line 912
    new-instance v6, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$23;

    invoke-direct {v6, p0, p1}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$23;-><init>(Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;)V

    move-object v0, p0

    move-object v4, v1

    .line 911
    invoke-virtual/range {v0 .. v6}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    goto/16 :goto_2

    .line 922
    :cond_1a
    const-string/jumbo v2, "6211"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 923
    iget-object v2, p1, Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;->msg:Ljava/lang/String;

    const-string/jumbo v3, "\u77e5\u9053\u4e86"

    const-string/jumbo v5, "\u6211\u8981\u6ce8\u518c"

    .line 924
    new-instance v6, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$24;

    invoke-direct {v6, p0}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$24;-><init>(Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;)V

    move-object v0, p0

    move-object v4, v1

    .line 923
    invoke-virtual/range {v0 .. v6}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    goto/16 :goto_2

    .line 931
    :cond_1b
    const-string/jumbo v2, "6202"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 932
    invoke-virtual {p0, p1}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->toBindPhone(Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;)V

    goto/16 :goto_2

    .line 933
    :cond_1c
    const-string/jumbo v2, "6301"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 934
    invoke-virtual {p0, p1}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->toChangeBindPhoneWhenLogging(Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;)V

    goto/16 :goto_2

    .line 935
    :cond_1d
    const-string/jumbo v2, "6302"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 936
    invoke-virtual {p0, p1}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->toVerifyIdentity(Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;)V

    goto/16 :goto_2

    .line 937
    :cond_1e
    const-string/jumbo v2, "6232"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 938
    invoke-virtual {p0, p1}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->toBindAlipay(Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;)V

    goto/16 :goto_2

    .line 939
    :cond_1f
    const-string/jumbo v2, "5018"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_20

    .line 940
    const-string/jumbo v2, "5019"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_20

    .line 941
    const-string/jumbo v2, "5037"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_20

    .line 942
    const-string/jumbo v2, "5141"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_20

    .line 943
    const-string/jumbo v2, "6306"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_20

    .line 944
    const-string/jumbo v2, "1026"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_20

    .line 945
    const-string/jumbo v2, "5133"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_20

    .line 946
    const-string/jumbo v2, "6232"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_20

    .line 947
    const-string/jumbo v2, "6291"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_20

    .line 948
    const-string/jumbo v2, "6262"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_20

    .line 949
    const-string/jumbo v2, "6292"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_20

    .line 950
    const-string/jumbo v2, "6293"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_20

    .line 951
    const-string/jumbo v2, "6294"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_20

    .line 952
    const-string/jumbo v2, "6295"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_20

    .line 953
    const-string/jumbo v2, "6296"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 954
    :cond_20
    const-string/jumbo v3, ""

    iget-object v4, p1, Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;->msg:Ljava/lang/String;

    const-string/jumbo v5, "\u786e\u5b9a"

    iget-object v6, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->clearPasswordListener:Landroid/content/DialogInterface$OnClickListener;

    move-object v2, p0

    move-object v7, v1

    move-object v8, v1

    invoke-virtual/range {v2 .. v8}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    goto/16 :goto_2

    .line 956
    :cond_21
    iget-object v0, p1, Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;->msg:Ljava/lang/String;

    if-eqz v0, :cond_5

    const-string/jumbo v0, ""

    iget-object v1, p1, Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;->msg:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 959
    iget-object v0, p1, Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;->msg:Ljava/lang/String;

    invoke-virtual {p0, v0, v9}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->toast(Ljava/lang/String;I)V

    goto/16 :goto_2
.end method

.method public onNewLoginParam(Lcom/ali/user/mobile/login/LoginParam;)V
    .locals 1

    .prologue
    .line 789
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->initLoginParam(Lcom/ali/user/mobile/login/LoginParam;Z)V

    .line 790
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 162
    invoke-super {p0}, Lcom/ali/user/mobile/login/ui/CommonLoginFragment;->onResume()V

    .line 163
    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v1, "come_back"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "AliUserLoginFragment"

    const-string/jumbo v1, "\u5141\u8bb8\u9000\u51fa\u767b\u9646\uff0c\u663e\u793a\u6807\u9898\u680f"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/ali/user/mobile/context/AliuserLoginContext;->setComeBack(Z)V

    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->mTitleBar:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->mTitleBar:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    new-instance v1, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$5;

    invoke-direct {v1, p0}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$5;-><init>(Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->setBackButtonListener(Landroid/view/View$OnClickListener;)V

    .line 164
    :goto_0
    return-void

    .line 163
    :cond_0
    const-string/jumbo v0, "AliUserLoginFragment"

    const-string/jumbo v1, "\u4e0d\u5141\u8bb8\u9000\u51fa\u767b\u9646\uff0c\u9690\u85cf\u6807\u9898\u680f"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lcom/ali/user/mobile/context/AliuserLoginContext;->setComeBack(Z)V

    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->mTitleBar:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->setVisibility(I)V

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 1803
    return-void
.end method

.method protected postInit()V
    .locals 0

    .prologue
    .line 1807
    return-void
.end method

.method protected preInit()V
    .locals 1

    .prologue
    .line 167
    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->initRdsInfo()V

    .line 168
    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->checkAccountInputConfig()V

    .line 169
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->checkTaobaoLoginEntryConfig(I)V

    .line 170
    return-void
.end method

.method public queryFaceLoginEntry()V
    .locals 1

    .prologue
    .line 997
    new-instance v0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$26;

    invoke-direct {v0, p0}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$26;-><init>(Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;)V

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Ljava/lang/Runnable;)V

    .line 1029
    return-void
.end method

.method protected readRecentHistory(I)V
    .locals 1

    .prologue
    .line 332
    new-instance v0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$10;

    invoke-direct {v0, p0, p1}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$10;-><init>(Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;I)V

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Ljava/lang/Runnable;)V

    .line 342
    return-void
.end method

.method protected refreshFaceEntry()V
    .locals 2

    .prologue
    .line 1181
    const-string/jumbo v0, "AliUserLoginFragment"

    const-string/jumbo v1, "refreshFaceEntry"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1182
    return-void
.end method

.method protected resetCurrentHistoryFailCount()V
    .locals 2

    .prologue
    .line 1095
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->mCurrentSelectedHistory:Lcom/ali/user/mobile/login/LoginHistory;

    if-nez v0, :cond_0

    .line 1104
    :goto_0
    return-void

    .line 1099
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->mCurrentSelectedHistory:Lcom/ali/user/mobile/login/LoginHistory;

    const/4 v1, 0x0

    iput v1, v0, Lcom/ali/user/mobile/login/LoginHistory;->faceAuthFailCount:I

    .line 1100
    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->getLoginHistoryManager()Lcom/ali/user/mobile/login/LoginHistoryManager;

    move-result-object v0

    iget-object v1, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->mCurrentSelectedHistory:Lcom/ali/user/mobile/login/LoginHistory;

    invoke-interface {v0, v1}, Lcom/ali/user/mobile/login/LoginHistoryManager;->saveHistory(Lcom/ali/user/mobile/login/LoginHistory;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1101
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected saveLoginHistory(Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;)V
    .locals 2

    .prologue
    .line 1768
    invoke-static {}, Lcom/ali/user/mobile/context/AliuserLoginContext;->isSaveHistory()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1769
    const-string/jumbo v0, "AliUserLoginFragment"

    const-string/jumbo v1, "\u767b\u5f55\u9875\u9762\u4e0d\u518d\u4fdd\u5b58\u5386\u53f2\u8d26\u6237"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1791
    :goto_0
    return-void

    .line 1772
    :cond_0
    new-instance v0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$45;

    invoke-direct {v0, p0, p1}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$45;-><init>(Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;)V

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method protected setRecentList()V
    .locals 2

    .prologue
    .line 348
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$11;

    invoke-direct {v1, p0}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$11;-><init>(Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 389
    return-void
.end method

.method protected showLoginHistory()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 497
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->mArrowDownView:Landroid/widget/ImageButton;

    sget v1, Lcom/ali/user/mobile/security/ui/R$drawable;->arrow_up:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 498
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->mLoginHistoryList:Lcom/alipay/mobile/commonui/widget/APListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APListView;->setVisibility(I)V

    .line 499
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->mPasswordInputBox:Lcom/ali/user/mobile/ui/widget/AUInputBox;

    invoke-virtual {v0, v2}, Lcom/ali/user/mobile/ui/widget/AUInputBox;->setVisibility(I)V

    .line 500
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->mLoginButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 501
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->mForgetPasswordCenter:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->mForgetPasswordCenter:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getVisibility()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 502
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->mForgetPasswordCenter:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 503
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->mSwitchLoginAndForgetPassword:Landroid/view/View;

    iget-object v1, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->mSwitchLoginAndForgetPassword:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 504
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->mSwitchLoginAndForgetPassword:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 505
    return-void
.end method

.method protected showLoginProblemsPopup()V
    .locals 3

    .prologue
    .line 521
    new-instance v0, Lcom/alipay/mobile/common/dialog/BottomPopupActionDialog;

    iget-object v1, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->mAttachedActivity:Lcom/ali/user/mobile/login/ui/UserLoginActivity;

    invoke-direct {v0, v1}, Lcom/alipay/mobile/common/dialog/BottomPopupActionDialog;-><init>(Landroid/content/Context;)V

    .line 522
    const-string/jumbo v1, "\u5e38\u89c1\u95ee\u9898"

    new-instance v2, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$12;

    invoke-direct {v2, p0, v0}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$12;-><init>(Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;Lcom/alipay/mobile/common/dialog/BottomPopupActionDialog;)V

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/common/dialog/BottomPopupActionDialog;->addAction(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 530
    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->isSupportSmsLogin()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 531
    const-string/jumbo v1, "\u901a\u8fc7\u77ed\u4fe1\u6821\u9a8c\u7801\u767b\u5f55"

    new-instance v2, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$13;

    invoke-direct {v2, p0, v0}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$13;-><init>(Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;Lcom/alipay/mobile/common/dialog/BottomPopupActionDialog;)V

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/common/dialog/BottomPopupActionDialog;->addAction(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 540
    :cond_0
    const-string/jumbo v1, "\u627e\u56de\u767b\u5f55\u5bc6\u7801"

    new-instance v2, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$14;

    invoke-direct {v2, p0, v0}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$14;-><init>(Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;Lcom/alipay/mobile/common/dialog/BottomPopupActionDialog;)V

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/common/dialog/BottomPopupActionDialog;->addAction(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 548
    invoke-virtual {v0}, Lcom/alipay/mobile/common/dialog/BottomPopupActionDialog;->show()V

    .line 549
    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->clearPassword()V

    .line 550
    return-void
.end method

.method protected showOverFailDialog(Ljava/lang/String;)V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 1088
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1089
    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/ali/user/mobile/security/ui/R$string;->try_face_login_over_default:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1091
    :goto_0
    const-string/jumbo v3, "\u8f93\u5165\u5bc6\u7801"

    move-object v0, p0

    move-object v4, v1

    move-object v5, v1

    move-object v6, v1

    invoke-virtual/range {v0 .. v6}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    .line 1092
    return-void

    :cond_0
    move-object v2, p1

    goto :goto_0
.end method

.method public startActivityForResult(Ljava/lang/Class;ILcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;I",
            "Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1553
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->mApplicationContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1554
    const-string/jumbo v1, "login_param"

    iget-object v2, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->mLoginParam:Lcom/ali/user/mobile/login/LoginParam;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1555
    const-string/jumbo v1, "token"

    iget-object v2, p3, Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;->token:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1556
    invoke-virtual {p0, v0, p2}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1557
    return-void
.end method

.method public toBindAlipay(Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;)V
    .locals 7

    .prologue
    .line 1291
    const-string/jumbo v0, "upGlobal"

    invoke-virtual {p0, p1, v0}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->getStringFromExtResAttrs(Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1292
    const-string/jumbo v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1293
    const-string/jumbo v1, "\u7ed1\u5b9a\u652f\u4ed8\u5b9d\u8d26\u6237"

    iget-object v2, p1, Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;->msg:Ljava/lang/String;

    const-string/jumbo v3, "\u540c\u610f"

    new-instance v4, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$30;

    invoke-direct {v4, p0, p1}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$30;-><init>(Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;)V

    .line 1298
    const-string/jumbo v5, "\u4e0d\u540c\u610f"

    new-instance v6, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$31;

    invoke-direct {v6, p0, p1}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$31;-><init>(Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;)V

    move-object v0, p0

    .line 1293
    invoke-virtual/range {v0 .. v6}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    .line 1307
    :goto_0
    return-void

    .line 1305
    :cond_0
    invoke-virtual {p0, p1}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->bindAlipayViaH5(Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;)V

    goto :goto_0
.end method

.method public toBindPhone(Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;)V
    .locals 4

    .prologue
    .line 1377
    new-instance v0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$35;

    invoke-direct {v0, p0}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$35;-><init>(Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;)V

    .line 1402
    invoke-virtual {v0}, Lcom/ali/user/mobile/h5/AUH5Plugin;->getIntentExtra()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "token"

    iget-object v3, p1, Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;->token:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1403
    iget-object v1, p1, Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;->h5Url:Ljava/lang/String;

    const-string/jumbo v2, "%3Faction%3DcontinueLogin"

    invoke-static {v1, v2}, Lcom/ali/user/mobile/utils/StringUtil;->addCallbackToUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/ali/user/mobile/h5/H5Wrapper;->startPage(Ljava/lang/String;Lcom/ali/user/mobile/h5/AUH5Plugin;)V

    .line 1404
    return-void
.end method

.method public toChangeBindPhone(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 1407
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1445
    :goto_0
    return-void

    .line 1411
    :cond_0
    new-instance v0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$36;

    invoke-direct {v0, p0}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$36;-><init>(Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;)V

    .line 1444
    const-string/jumbo v1, "%3Faction%3DcontinueLogin"

    invoke-static {p1, v1}, Lcom/ali/user/mobile/utils/StringUtil;->addCallbackToUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/ali/user/mobile/h5/H5Wrapper;->startPage(Ljava/lang/String;Lcom/ali/user/mobile/h5/AUH5Plugin;)V

    goto :goto_0
.end method

.method public toChangeBindPhoneWhenLogging(Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;)V
    .locals 4

    .prologue
    .line 1448
    new-instance v0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$37;

    invoke-direct {v0, p0}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$37;-><init>(Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;)V

    .line 1483
    invoke-virtual {v0}, Lcom/ali/user/mobile/h5/AUH5Plugin;->getIntentExtra()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "token"

    iget-object v3, p1, Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;->token:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1484
    iget-object v1, p1, Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;->h5Url:Ljava/lang/String;

    const-string/jumbo v2, "%3Faction%3DcontinueLogin"

    invoke-static {v1, v2}, Lcom/ali/user/mobile/utils/StringUtil;->addCallbackToUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/ali/user/mobile/h5/H5Wrapper;->startPage(Ljava/lang/String;Lcom/ali/user/mobile/h5/AUH5Plugin;)V

    .line 1485
    return-void
.end method

.method public toForgetPassword()V
    .locals 2

    .prologue
    .line 1583
    const-string/jumbo v0, "foundpassword"

    new-instance v1, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$40;

    invoke-direct {v1, p0}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$40;-><init>(Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;)V

    invoke-virtual {p0, v0, v1}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->doFetchH5Url(Ljava/lang/String;Lcom/ali/user/mobile/service/UrlFetchService$UrlFetchCallback;)V

    .line 1607
    return-void
.end method

.method public toLoginSmsVerify(Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;)V
    .locals 3

    .prologue
    .line 1561
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->mApplicationContext:Landroid/content/Context;

    const-class v2, Lcom/ali/user/mobile/login/ui/AliUserLoginSMSActivity_;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1562
    const-string/jumbo v1, "login_param"

    iget-object v2, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->mLoginParam:Lcom/ali/user/mobile/login/LoginParam;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1563
    const-string/jumbo v1, "token"

    iget-object v2, p1, Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;->token:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1564
    const-string/jumbo v1, "aliuser_h5url"

    iget-object v2, p1, Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;->h5Url:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1565
    iget-object v1, p1, Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;->h5Url:Ljava/lang/String;

    iput-object v1, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->mSmsH5url:Ljava/lang/String;

    .line 1566
    new-instance v1, Lorg/json/JSONObject;

    iget-object v2, p1, Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;->data:Ljava/lang/String;

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1567
    const-string/jumbo v2, "mobileNo"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1568
    const-string/jumbo v2, "mobile_for_sms"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1570
    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1571
    const/16 v1, 0x2000

    invoke-virtual {p0, v0, v1}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1580
    :cond_0
    :goto_0
    return-void

    .line 1572
    :cond_1
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->mAttachedActivity:Lcom/ali/user/mobile/login/ui/UserLoginActivity;

    if-eqz v0, :cond_0

    .line 1573
    const-string/jumbo v0, "AliUserLoginFragment"

    const-string/jumbo v1, "isAdded() = false when toLoginSmsVerify, can not startActivityForResult"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1574
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->mAttachedActivity:Lcom/ali/user/mobile/login/ui/UserLoginActivity;

    const-string/jumbo v1, "\u7f51\u7edc\u5f02\u5e38\uff0c\u8bf7\u7a0d\u540e\u518d\u8bd5"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 1575
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1577
    :catch_0
    move-exception v0

    .line 1578
    const-string/jumbo v1, "AliUserLoginFragment"

    invoke-static {v1, v0}, Lcom/ali/user/mobile/log/AliUserLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public toRegist(Lcom/ali/user/mobile/register/RegistParam;)V
    .locals 3

    .prologue
    .line 1636
    const-string/jumbo v0, "yhzc-1227-01"

    const-string/jumbo v1, "djzc"

    invoke-virtual {p0, v0, v1}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->writeClickLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1638
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->mApplicationContext:Landroid/content/Context;

    const-class v2, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity_;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1639
    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1640
    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1642
    :cond_0
    if-eqz p1, :cond_1

    .line 1643
    const-string/jumbo v1, "regist_param"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1645
    :cond_1
    iget-object v1, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->mAttachedActivity:Lcom/ali/user/mobile/login/ui/UserLoginActivity;

    invoke-virtual {v1, v0}, Lcom/ali/user/mobile/login/ui/UserLoginActivity;->startActivity(Landroid/content/Intent;)V

    .line 1646
    return-void
.end method

.method public toSecurityCore(Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;)V
    .locals 5

    .prologue
    .line 1524
    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1525
    new-instance v0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$39;

    invoke-direct {v0, p0}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$39;-><init>(Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;)V

    .line 1542
    const-string/jumbo v1, "securityId"

    invoke-virtual {p0, p1, v1}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->getStringFromExtResAttrs(Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1543
    invoke-virtual {v0}, Lcom/ali/user/mobile/h5/AUH5Plugin;->getIntentExtra()Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "securityId"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1544
    invoke-virtual {v0}, Lcom/ali/user/mobile/h5/AUH5Plugin;->getIntentExtra()Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "token"

    iget-object v4, p1, Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;->token:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1545
    iget-object v2, p1, Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;->h5Url:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "%3FsecurityId%3D"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/ali/user/mobile/utils/StringUtil;->addSecurityCallbackToUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/ali/user/mobile/h5/H5Wrapper;->startPage(Ljava/lang/String;Lcom/ali/user/mobile/h5/AUH5Plugin;)V

    .line 1550
    :cond_0
    :goto_0
    return-void

    .line 1546
    :cond_1
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->mAttachedActivity:Lcom/ali/user/mobile/login/ui/UserLoginActivity;

    if-eqz v0, :cond_0

    .line 1547
    const-string/jumbo v0, "AliUserLoginFragment"

    const-string/jumbo v1, "isAdded() = false when toSecurityCore, can not startActivityForResult"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1548
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->mAttachedActivity:Lcom/ali/user/mobile/login/ui/UserLoginActivity;

    const-string/jumbo v1, "\u7f51\u7edc\u5f02\u5e38\uff0c\u8bf7\u7a0d\u540e\u518d\u8bd5"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public toSmsLogin()V
    .locals 2

    .prologue
    .line 1610
    const-string/jumbo v0, "msglogin"

    new-instance v1, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$41;

    invoke-direct {v1, p0}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$41;-><init>(Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;)V

    invoke-virtual {p0, v0, v1}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->doFetchH5Url(Ljava/lang/String;Lcom/ali/user/mobile/service/UrlFetchService$UrlFetchCallback;)V

    .line 1632
    return-void
.end method

.method public toVerifyIdentity(Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;)V
    .locals 6

    .prologue
    .line 1488
    iget-object v1, p1, Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;->token:Ljava/lang/String;

    .line 1489
    const-string/jumbo v0, "tokenId"

    invoke-virtual {p0, p1, v0}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->getStringFromExtResAttrs(Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1490
    const-string/jumbo v0, "AliUserLoginFragment"

    const-string/jumbo v3, "\u5f00\u59cb\u540a\u8d77\u6838\u8eab\u5e73\u53f0"

    invoke-static {v0, v3}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1491
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v3, Lcom/alipay/mobile/verifyidentity/alipay/service/VerifyIdentityService;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/verifyidentity/alipay/service/VerifyIdentityService;

    .line 1492
    if-eqz v0, :cond_0

    .line 1493
    const-string/jumbo v3, "Aliuser.Login.VerifyIdentity"

    const/4 v4, 0x0

    new-instance v5, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$38;

    invoke-direct {v5, p0, v1}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$38;-><init>(Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;Ljava/lang/String;)V

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/alipay/mobile/verifyidentity/alipay/service/VerifyIdentityService;->startVerifyByToken(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/alipay/mobile/verifyidentity/callback/VerifyIdentityListener;)V

    .line 1516
    :goto_0
    return-void

    .line 1513
    :cond_0
    const-string/jumbo v0, "AliUserLoginFragment"

    const-string/jumbo v1, "verifyIdentityService=null"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1514
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->mAttachedActivity:Lcom/ali/user/mobile/login/ui/UserLoginActivity;

    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/ali/user/mobile/security/ui/R$string;->system_error_try_later:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method updateRecentList()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 395
    const-string/jumbo v0, "AliUserLoginFragment"

    const-string/jumbo v2, "updateRecentList"

    invoke-static {v0, v2}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 396
    iget-object v2, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->mArrowDownView:Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->loginHistoryList:Ljava/util/List;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->loginHistoryList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    move v0, v1

    :goto_0
    invoke-virtual {v2, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 397
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->mAccountInputView:Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    .line 398
    iget-boolean v2, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->isDropdownAccount:Z

    if-nez v2, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 399
    :cond_0
    iput-boolean v1, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->isDropdownAccount:Z

    .line 400
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->loginHistoryList:Ljava/util/List;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->loginHistoryList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 401
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->loginHistoryList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ali/user/mobile/login/LoginHistory;

    .line 402
    if-eqz v0, :cond_1

    .line 403
    iget-object v1, v0, Lcom/ali/user/mobile/login/LoginHistory;->loginAccount:Ljava/lang/String;

    iput-object v1, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->mCurrentSelectedAccount:Ljava/lang/String;

    .line 404
    iput-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->mCurrentSelectedHistory:Lcom/ali/user/mobile/login/LoginHistory;

    .line 405
    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->refreshFaceEntry()V

    .line 406
    iget-object v1, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->mCurrentSelectedAccount:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->getLoginType()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ali/user/mobile/utils/StringUtil;->hideAccount(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 407
    invoke-direct {p0, v1}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->a(Ljava/lang/String;)V

    .line 408
    iget-object v0, v0, Lcom/ali/user/mobile/login/LoginHistory;->loginPortraitUrl:Ljava/lang/String;

    invoke-virtual {p0, v3, v0}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->setPortraitImage(ZLjava/lang/String;)V

    .line 409
    iput-boolean v3, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->isDropdownAccount:Z

    .line 415
    :cond_1
    :goto_1
    return-void

    .line 396
    :cond_2
    const/16 v0, 0x8

    goto :goto_0

    .line 412
    :cond_3
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->mAccountInputView:Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method protected writeClickLog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 1936
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->getLoginType()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "Login"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->writeClickLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1937
    return-void
.end method

.method protected writeClickLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 1940
    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->getAccount()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->mToken:Ljava/lang/String;

    invoke-static {p1, p2, p3, v0, v1}, Lcom/ali/user/mobile/utils/LogAgent;->logBehavorClick(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1941
    return-void
.end method

.method protected writeOpenkLog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 1944
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->getLoginType()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "Login"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->getAccount()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->mToken:Ljava/lang/String;

    invoke-static {p1, p2, v0, v1, v2}, Lcom/ali/user/mobile/utils/LogAgent;->logBehavorOpen(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1945
    return-void
.end method
