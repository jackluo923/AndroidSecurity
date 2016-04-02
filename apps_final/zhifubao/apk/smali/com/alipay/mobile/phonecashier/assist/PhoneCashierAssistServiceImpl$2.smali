.class Lcom/alipay/mobile/phonecashier/assist/PhoneCashierAssistServiceImpl$2;
.super Lcom/alipay/mobile/framework/service/common/impl/DefaultConfig;
.source "PhoneCashierAssistServiceImpl.java"


# instance fields
.field final synthetic a:Lcom/alipay/mobile/phonecashier/assist/PhoneCashierAssistServiceImpl;

.field private final synthetic b:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/phonecashier/assist/PhoneCashierAssistServiceImpl;Ljava/util/Map;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/phonecashier/assist/PhoneCashierAssistServiceImpl$2;->a:Lcom/alipay/mobile/phonecashier/assist/PhoneCashierAssistServiceImpl;

    iput-object p2, p0, Lcom/alipay/mobile/phonecashier/assist/PhoneCashierAssistServiceImpl$2;->b:Ljava/util/Map;

    .line 155
    invoke-direct {p0}, Lcom/alipay/mobile/framework/service/common/impl/DefaultConfig;-><init>()V

    return-void
.end method


# virtual methods
.method public addExtHeaders(Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;)V
    .locals 4

    .prologue
    .line 158
    new-instance v1, Lorg/apache/http/message/BasicHeader;

    const-string/jumbo v2, "Msp-Param"

    .line 159
    iget-object v0, p0, Lcom/alipay/mobile/phonecashier/assist/PhoneCashierAssistServiceImpl$2;->b:Ljava/util/Map;

    const-string/jumbo v3, "mspParam"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v1, v2, v0}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    invoke-virtual {p1, v1}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->addHeader(Lorg/apache/http/Header;)V

    .line 162
    return-void
.end method

.method public giveResponseHeader(Ljava/lang/String;Lcom/alipay/mobile/common/transport/http/HttpUrlHeader;)V
    .locals 2

    .prologue
    .line 167
    iget-object v0, p0, Lcom/alipay/mobile/phonecashier/assist/PhoneCashierAssistServiceImpl$2;->a:Lcom/alipay/mobile/phonecashier/assist/PhoneCashierAssistServiceImpl;

    const-string/jumbo v1, "Msp-Param"

    invoke-virtual {p2, v1}, Lcom/alipay/mobile/common/transport/http/HttpUrlHeader;->getHead(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/phonecashier/assist/PhoneCashierAssistServiceImpl;->a(Lcom/alipay/mobile/phonecashier/assist/PhoneCashierAssistServiceImpl;Ljava/lang/String;)V

    .line 171
    return-void
.end method
