.class public Lcom/alipay/asset/common/constant/Constant;
.super Ljava/lang/Object;
.source "Constant.java"


# static fields
.field public static final ALIPAY_FUND_OPEN_CACHE_KEY:Ljava/lang/String; = "ALIPAY_FUND_OPEN_CACHE_KEY"

.field public static final ALIPAY_PWD:Ljava/lang/String; = "1"

.field public static final AUTO_FILL:Ljava/lang/String; = "AUTO_FILL"

.field public static final BANK_CARD_EXPRESS_SIGN_MFUND_TRANSFER_OUT:Ljava/lang/String; = "BANK_CARD_EXPRESS_SIGN_MFUND_TRANSFER_OUT"

.field public static final BOLLYWOOD_ASSET_STATUS_ED:Ljava/lang/String; = "2"

.field public static final BOLLYWOOD_ASSET_STATUS_ING:Ljava/lang/String; = "1"

.field public static final BOLLYWOOD_ASSET_STATUS_RE:Ljava/lang/String; = "3"

.field public static final CELLPHONE_OWNER:Ljava/lang/String; = "CELLPHONE_OWNER"

.field public static final CELLPHONE_OWNER_CPU_KEY:Ljava/lang/String; = "CELLPHONE_OWNER_CPU_KEY"

.field public static final CELLPHONE_PWD:Ljava/lang/String; = "2"

.field public static final FUND_ADD_CARD_SUCCESS_MESSAGE:I = 0x6

.field public static final FUND_ADD_CARD_SUCCESS_RESULT:I = 0x7

.field public static final FUND_ADD_CARD_SUC_JUMP_MESSAGE:I = 0xb

.field public static final FUND_ADD_CARD_SUC_JUMP_RESULT:I = 0xa

.field public static final FUND_FROM_RECHARGE_WAP_URL:Ljava/lang/String;

.field public static final FUND_IDENTITY_VERIFY_RELOAD_MESSAGE:I = 0x8

.field public static final FUND_INDEX_WAP_URL:Ljava/lang/String;

.field public static final FUND_JUMP_IDENTITY_VERIFY_ERROR:Ljava/lang/String; = "1608"

.field public static final FUND_JUMP_SELECT_CARD_CALLBACK:Ljava/lang/String; = "card_callback"

.field public static final FUND_JUMP_SELECT_CARD_FROM:Ljava/lang/String; = "jump_from"

.field public static final FUND_JUMP_SELECT_CARD_FROM_TRADE_PAGE:Ljava/lang/String; = "3"

.field public static final FUND_JUMP_SELECT_CARD_FROM_TRANSFER_OUT_TO_CARD:Ljava/lang/String; = "4"

.field public static final FUND_JUMP_SELECT_CARD_LIST:Ljava/lang/String; = "card_list"

.field public static final FUND_JUMP_SELECT_CARD_NO:Ljava/lang/String; = "card_no"

.field public static final FUND_JUMP_SELECT_CARD_SHOW_BUTTON:Ljava/lang/String; = "show_button"

.field public static final FUND_JUMP_SELECT_CARD_SOURCE_CHANNEL:Ljava/lang/String; = "source_channel"

.field public static final FUND_MAINTAIN_NOTICE_CONTENT:Ljava/lang/String; = "fundMaintainNotice"

.field public static final FUND_MAINTAIN_NOTICE_TITLE:Ljava/lang/String; = "fundMaintainNoticeTitle"

.field public static final FUND_MAIN_PAGE_REQUEST_CODE:I = 0xc

.field public static final FUND_OPEN_ACCOUNT_SUCCESS_BROADCAST:Ljava/lang/String; = "fund_open_account_success_broadcast"

.field public static final FUND_OPEN_INFO_RESULT_EXTRA:Ljava/lang/String; = "FundOpenInfoResult"

.field public static final FUND_OPEN_SUCCESS_RETURN:Ljava/lang/String; = "fundOpenSuccessReturn"

.field public static final FUND_OPEN_UPGRADE_CERT_NO:Ljava/lang/String; = "upgradeCertNo"

.field public static final FUND_REFRESH_MAIN_PAGE_RESULT_CODE:I = 0xd

.field public static final FUND_SELECTED_BANKCARD_ID:Ljava/lang/String; = "fund_selected_bankcard_id"

.field public static final FUND_SELECT_CARD_PAGE_REQUEST:I = 0x5

.field public static final FUND_SELECT_CARD_PAGE_RESULT:I = 0x4

.field public static final FUND_SHAKE_PAGE_PRE_AMOUNT_EXTRA:Ljava/lang/String; = "pre_amount"

.field public static final IN_TWO_HOURS:Ljava/lang/String; = "IN_TWO_HOURS"

.field public static final MANUAL_FILL:Ljava/lang/String; = "MANUAL_FILL"

.field public static final NEXT_DAY:Ljava/lang/String; = "NEXT_DAY"

.field public static final NEXT_DAY_LESS:Ljava/lang/String; = "NEXT_DAY_LESS"

.field public static final NEXT_DAY_MORE:Ljava/lang/String; = "NEXT_DAY_MORE"

.field public static final NEXT_DAY_OVER:Ljava/lang/String; = "NEXT_DAY_OVER"

.field public static final PAGE_START:I = 0x1

.field public static final REAL_NAME_CERTIFY_MEMO:Ljava/lang/String; = "real_name_certify_memo"

.field public static final REAL_SUCCESS_PHONE_CASHIER:I = 0x2328

.field public static final REAL_TIME:Ljava/lang/String; = "REAL_TIME"

.field public static final REQUEST_FUND_IDENTITY_VERIFY:I = 0x3

.field public static final REQUEST_FUND_SELECT_CARD:I = 0x9

.field public static final REQUEST_FUND_SIGN:I = 0x1

.field public static final RESULT_FUND_SIGN_SUCCESS:I = 0x2


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 129
    invoke-static {}, Lcom/alipay/mobile/common/helper/ReadSettingServerUrl;->getInstance()Lcom/alipay/mobile/common/helper/ReadSettingServerUrl;

    move-result-object v0

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/AlipayApplication;->getApplicationContext()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/helper/ReadSettingServerUrl;->isOnline(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "http://d.alipay.com/fbbc/yeb.htm"

    .line 128
    :goto_0
    sput-object v0, Lcom/alipay/asset/common/constant/Constant;->FUND_INDEX_WAP_URL:Ljava/lang/String;

    .line 136
    invoke-static {}, Lcom/alipay/mobile/common/helper/ReadSettingServerUrl;->getInstance()Lcom/alipay/mobile/common/helper/ReadSettingServerUrl;

    move-result-object v0

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/AlipayApplication;->getApplicationContext()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/helper/ReadSettingServerUrl;->isOnline(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "http://d.alipay.com/fbbc/prcyeb.htm"

    .line 135
    :goto_1
    sput-object v0, Lcom/alipay/asset/common/constant/Constant;->FUND_FROM_RECHARGE_WAP_URL:Ljava/lang/String;

    .line 16
    return-void

    .line 130
    :cond_0
    const-string/jumbo v0, "http://d.alipay.net/fbbc/yeb.htm"

    goto :goto_0

    .line 137
    :cond_1
    const-string/jumbo v0, "http://d.alipay.net/fbbc/prcyeb.htm"

    goto :goto_1
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
