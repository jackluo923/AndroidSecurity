.class public Lcom/alipay/android/phone/nfd/nfdservice/api/model/log/LogItem;
.super Ljava/lang/Object;


# static fields
.field public static final AGREE:Ljava/lang/String; = "ag"

.field public static final ALIPAY_HOMEPAGE:Ljava/lang/String; = "ap"

.field public static final AUTO:Ljava/lang/String; = "au"

.field public static final CLICKED:Ljava/lang/String; = "clicked"

.field public static final CLICK_CANCEL:Ljava/lang/String; = "ca"

.field public static final CLICK_CONFIRM:Ljava/lang/String; = "co"

.field public static final CLICK_RETRY:Ljava/lang/String; = "re"

.field public static final CLICK_WHEN_CONNECTED:Ljava/lang/String; = "ne"

.field public static final CLICK_WHEN_CONNECTING:Ljava/lang/String; = "in"

.field public static final COMMON_STEP:I = 0x0

.field public static final CONNECTED:Ljava/lang/String; = "co"

.field public static final DEFAULT_PARAM:Ljava/lang/String; = ""

.field public static final DISAGREE:Ljava/lang/String; = "di"

.field public static final DISC_IN_FINISH_PAGE:Ljava/lang/String; = "co"

.field public static final DISC_IN_PUSH:Ljava/lang/String; = "pu"

.field public static final EVENT:Ljava/lang/String; = "event"

.field public static final FAIL:Ljava/lang/String; = "fa"

.field public static final KEY_AUTH_EXP:Ljava/lang/String; = "exp"

.field private static final KEY_MAC:Ljava/lang/String; = "ma"

.field private static final KEY_SHOP_ID:Ljava/lang/String; = "sh"

.field private static final KEY_SSID:Ljava/lang/String; = "ss"

.field private static final KEY_TIME_COST:Ljava/lang/String; = "tc"

.field public static final LIST_CONN_WITHOUT_CERT:Ljava/lang/String; = "L2"

.field public static final LIST_CONN_WITH_CERT:Ljava/lang/String; = "L3"

.field public static final LIST_DISCONNECTED:Ljava/lang/String; = "L1"

.field public static final LOG_AUTH_OTP_STEP_302:I = 0x1

.field public static final LOG_AUTH_OTP_STEP_AUCH_CHECK:I = 0x3

.field public static final LOG_AUTH_OTP_STEP_AUTH:I = 0x2

.field public static final LOG_AUTH_STEP_302:I = 0x1

.field public static final LOG_AUTH_ZJCU_STEP_AUTH:I = 0x4

.field public static final LOG_AUTH_ZJCU_STEP_GET_COUNT:I = 0x3

.field public static final LOG_AUTH_ZJCU_STEP_GET_LOGINURL:I = 0x2

.field public static final MANUAL:Ljava/lang/String; = "ma"

.field public static final NFD_WIFI_LIST:Ljava/lang/String; = "li"

.field public static final NORMAL_STEP_AUTH_RPC:I = 0x2

.field public static final NORMAL_STEP_AUTH_VERIFY:I = 0x4

.field public static final NORMAL_STEP_SEND_HTTP:I = 0x3

.field public static final OFF:Ljava/lang/String; = "of"

.field public static final ON:Ljava/lang/String; = "on"

.field public static final OPENPAGE:Ljava/lang/String; = "openPage"

.field public static final OPERATOR_CHINA_TELECOM:Ljava/lang/String; = "ne"

.field public static final OPERATOR_CHINA_UNICOM:Ljava/lang/String; = "un"

.field public static final P1:Ljava/lang/String; = "P1"

.field public static final P2:Ljava/lang/String; = "P2"

.field public static final P3:Ljava/lang/String; = "P3"

.field public static final POP_WINDOW_CLOSE:Ljava/lang/String; = "cl"

.field public static final POP_WINDOW_INTERNET:Ljava/lang/String; = "op"

.field public static final PORTAL:Ljava/lang/String; = "po"

.field public static final RC_GET_USER_INFO_DETAIL_INFO_MISS:I = 0x7

.field public static final RC_GET_USER_INFO_EXCEPTION:I = 0x1

.field public static final RC_GET_USER_INFO_OPEN_GPRS_FAIL:I = 0x4

.field public static final RC_GET_USER_INFO_RPC_FACADE_NOT_FOUND:I = 0x5

.field public static final RC_GET_USER_INFO_RPC_RET_CODE_EMPTY:I = 0x2

.field public static final RC_GET_USER_INFO_RPC_RET_CODE_PARSE_ERROR:I = 0x6

.field public static final RC_GET_USER_INFO_TIMEOUT:I = 0x3

.field public static final RC_LOAD_SW_RSP_NULL:Ljava/lang/String; = "1"

.field public static final RC_SUCCESS:I = 0x0

.field public static final SERVICE_WINDOW:Ljava/lang/String; = "sw"

.field public static final SHARED_STEP_GET_GO_TO_URL:I = 0x2

.field public static final SUCCESS:Ljava/lang/String; = "su"

.field private static final TAG:Ljava/lang/String; = "LogItem"

.field public static final TELECOM_STEP_SEND_HTTP:I = 0x2

.field public static final VERIFY:Ljava/lang/String; = "ve"

.field public static final WIFI_SETTING_POPUP:Ljava/lang/String; = "di"


# instance fields
.field private behaviorID:Ljava/lang/String;

.field private caseID:Ljava/lang/String;

.field private extParam1:Ljava/lang/String;

.field private extParam2:Ljava/lang/String;

.field private extParam3:Ljava/lang/String;

.field private extParams:Ljava/util/Map;
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

.field private seedID:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/alipay/android/phone/nfd/nfdservice/api/model/log/LogItem;->caseID:Ljava/lang/String;

    iput-object p2, p0, Lcom/alipay/android/phone/nfd/nfdservice/api/model/log/LogItem;->behaviorID:Ljava/lang/String;

    iput-object p3, p0, Lcom/alipay/android/phone/nfd/nfdservice/api/model/log/LogItem;->seedID:Ljava/lang/String;

    iput-object p4, p0, Lcom/alipay/android/phone/nfd/nfdservice/api/model/log/LogItem;->extParam1:Ljava/lang/String;

    iput-object p5, p0, Lcom/alipay/android/phone/nfd/nfdservice/api/model/log/LogItem;->extParam2:Ljava/lang/String;

    iput-object p6, p0, Lcom/alipay/android/phone/nfd/nfdservice/api/model/log/LogItem;->extParam3:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public addCommonExtParam(Lcom/alipay/android/phone/nfd/nfdservice/api/model/NfdWifiDetailInfo;)V
    .locals 2

    if-eqz p1, :cond_0

    const-string/jumbo v0, "sh"

    invoke-virtual {p1}, Lcom/alipay/android/phone/nfd/nfdservice/api/model/NfdWifiDetailInfo;->getSign()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/alipay/android/phone/nfd/nfdservice/api/model/log/LogItem;->addExtParam(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "ma"

    invoke-virtual {p1}, Lcom/alipay/android/phone/nfd/nfdservice/api/model/NfdWifiDetailInfo;->getMac()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/alipay/android/phone/nfd/nfdservice/api/model/log/LogItem;->addExtParam(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "ss"

    invoke-virtual {p1}, Lcom/alipay/android/phone/nfd/nfdservice/api/model/NfdWifiDetailInfo;->getSSID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/alipay/android/phone/nfd/nfdservice/api/model/log/LogItem;->addExtParam(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public addExtParam(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/api/model/log/LogItem;->extParams:Ljava/util/Map;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/api/model/log/LogItem;->extParams:Ljava/util/Map;

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/api/model/log/LogItem;->extParams:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public addTimeCostExtParam(I)V
    .locals 2

    const-string/jumbo v0, "tc"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/alipay/android/phone/nfd/nfdservice/api/model/log/LogItem;->addExtParam(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public log(Lcom/alipay/android/phone/nfd/nfdservice/api/model/log/LogItem;)V
    .locals 4

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v2, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;

    invoke-direct {v2}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;-><init>()V

    const-string/jumbo v0, "Wi-Fi"

    invoke-virtual {v2, v0}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setAppID(Ljava/lang/String;)V

    iget-object v0, p1, Lcom/alipay/android/phone/nfd/nfdservice/api/model/log/LogItem;->caseID:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setUserCaseID(Ljava/lang/String;)V

    iget-object v0, p1, Lcom/alipay/android/phone/nfd/nfdservice/api/model/log/LogItem;->seedID:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setSeedID(Ljava/lang/String;)V

    iget-object v0, p1, Lcom/alipay/android/phone/nfd/nfdservice/api/model/log/LogItem;->extParam1:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setParam1(Ljava/lang/String;)V

    iget-object v0, p1, Lcom/alipay/android/phone/nfd/nfdservice/api/model/log/LogItem;->extParam2:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setParam2(Ljava/lang/String;)V

    iget-object v0, p1, Lcom/alipay/android/phone/nfd/nfdservice/api/model/log/LogItem;->extParam3:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setParam3(Ljava/lang/String;)V

    iget-object v0, p1, Lcom/alipay/android/phone/nfd/nfdservice/api/model/log/LogItem;->extParams:Ljava/util/Map;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/alipay/android/phone/nfd/nfdservice/api/model/log/LogItem;->extParams:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    const-string/jumbo v0, "clicked"

    iget-object v1, p1, Lcom/alipay/android/phone/nfd/nfdservice/api/model/log/LogItem;->behaviorID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getBehavorLogger()Lcom/alipay/mobile/common/logging/api/behavor/BehavorLogger;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/alipay/mobile/common/logging/api/behavor/BehavorLogger;->click(Lcom/alipay/mobile/common/logging/api/behavor/Behavor;)V

    goto :goto_0

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p1, Lcom/alipay/android/phone/nfd/nfdservice/api/model/log/LogItem;->extParams:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->addExtParam(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    const-string/jumbo v0, "openPage"

    iget-object v1, p1, Lcom/alipay/android/phone/nfd/nfdservice/api/model/log/LogItem;->behaviorID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getBehavorLogger()Lcom/alipay/mobile/common/logging/api/behavor/BehavorLogger;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/alipay/mobile/common/logging/api/behavor/BehavorLogger;->openPage(Lcom/alipay/mobile/common/logging/api/behavor/Behavor;)V

    goto :goto_0

    :cond_4
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getBehavorLogger()Lcom/alipay/mobile/common/logging/api/behavor/BehavorLogger;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/behavor/BehavorLogger;->event(Ljava/lang/String;Lcom/alipay/mobile/common/logging/api/behavor/Behavor;)V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "caseId:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/android/phone/nfd/nfdservice/api/model/log/LogItem;->caseID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "behaviorID:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/android/phone/nfd/nfdservice/api/model/log/LogItem;->behaviorID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "seedId:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/android/phone/nfd/nfdservice/api/model/log/LogItem;->seedID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "extParam1:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/android/phone/nfd/nfdservice/api/model/log/LogItem;->extParam1:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "extParam2:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/android/phone/nfd/nfdservice/api/model/log/LogItem;->extParam2:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "extParam3:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/android/phone/nfd/nfdservice/api/model/log/LogItem;->extParam3:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "extParams:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/android/phone/nfd/nfdservice/api/model/log/LogItem;->extParams:Ljava/util/Map;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
