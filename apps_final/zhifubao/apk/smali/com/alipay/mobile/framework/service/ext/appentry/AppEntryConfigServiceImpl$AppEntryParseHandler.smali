.class Lcom/alipay/mobile/framework/service/ext/appentry/AppEntryConfigServiceImpl$AppEntryParseHandler;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "AppEntryConfigServiceImpl.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/framework/service/ext/appentry/WidgetItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/alipay/mobile/framework/service/ext/appentry/AppEntryConfigServiceImpl;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/framework/service/ext/appentry/AppEntryConfigServiceImpl;)V
    .locals 1

    .prologue
    .line 191
    iput-object p1, p0, Lcom/alipay/mobile/framework/service/ext/appentry/AppEntryConfigServiceImpl$AppEntryParseHandler;->this$0:Lcom/alipay/mobile/framework/service/ext/appentry/AppEntryConfigServiceImpl;

    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 195
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/framework/service/ext/appentry/AppEntryConfigServiceImpl$AppEntryParseHandler;->b:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public characters([CII)V
    .locals 0

    .prologue
    .line 241
    invoke-super {p0, p1, p2, p3}, Lorg/xml/sax/helpers/DefaultHandler;->characters([CII)V

    .line 242
    return-void
.end method

.method public endDocument()V
    .locals 0

    .prologue
    .line 250
    invoke-super {p0}, Lorg/xml/sax/helpers/DefaultHandler;->endDocument()V

    .line 251
    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 245
    invoke-super {p0, p1, p2, p3}, Lorg/xml/sax/helpers/DefaultHandler;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    return-void
.end method

.method public getWidgetInfoList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/framework/service/ext/appentry/WidgetItemInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 198
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/appentry/AppEntryConfigServiceImpl$AppEntryParseHandler;->b:Ljava/util/List;

    return-object v0
.end method

.method public startDocument()V
    .locals 0

    .prologue
    .line 203
    invoke-super {p0}, Lorg/xml/sax/helpers/DefaultHandler;->startDocument()V

    .line 204
    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 5

    .prologue
    .line 207
    invoke-super {p0, p1, p2, p3, p4}, Lorg/xml/sax/helpers/DefaultHandler;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 218
    const-string/jumbo v0, "widgetGroupContainer"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 219
    const-string/jumbo v0, "id"

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/framework/service/ext/appentry/AppEntryConfigServiceImpl$AppEntryParseHandler;->a:Ljava/lang/String;

    .line 237
    :cond_0
    :goto_0
    return-void

    .line 220
    :cond_1
    const-string/jumbo v0, "widgetItem"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 221
    new-instance v0, Lcom/alipay/mobile/framework/service/ext/appentry/WidgetItemInfo;

    invoke-direct {v0}, Lcom/alipay/mobile/framework/service/ext/appentry/WidgetItemInfo;-><init>()V

    .line 222
    iget-object v1, p0, Lcom/alipay/mobile/framework/service/ext/appentry/AppEntryConfigServiceImpl$AppEntryParseHandler;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/appentry/WidgetItemInfo;->setContainerId(Ljava/lang/String;)V

    .line 223
    const-string/jumbo v1, "action"

    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/appentry/WidgetItemInfo;->setAction(Ljava/lang/String;)V

    .line 224
    const-string/jumbo v1, "appId"

    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/appentry/WidgetItemInfo;->setAppId(Ljava/lang/String;)V

    .line 225
    const-string/jumbo v1, "appType"

    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/appentry/WidgetItemInfo;->setAppType(Ljava/lang/String;)V

    .line 226
    const-string/jumbo v1, "index"

    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/appentry/WidgetItemInfo;->setIndex(Ljava/lang/String;)V

    .line 227
    const-string/jumbo v1, "group"

    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/appentry/WidgetItemInfo;->setGroup(Ljava/lang/String;)V

    .line 228
    const-string/jumbo v1, "name"

    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/appentry/WidgetItemInfo;->setName(Ljava/lang/String;)V

    .line 229
    const-string/jumbo v1, "icon"

    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/appentry/WidgetItemInfo;->setIcon(Ljava/lang/String;)V

    .line 230
    const-string/jumbo v1, "desc"

    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/appentry/WidgetItemInfo;->setDisc(Ljava/lang/String;)V

    .line 231
    const-string/jumbo v1, "tips"

    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/appentry/WidgetItemInfo;->setTips(Ljava/lang/String;)V

    .line 232
    const-string/jumbo v1, "widgetId"

    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/appentry/WidgetItemInfo;->setWidgetId(Ljava/lang/String;)V

    .line 234
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "WidgetContainerDataManager"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "saxParseXml:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/appentry/WidgetItemInfo;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    iget-object v1, p0, Lcom/alipay/mobile/framework/service/ext/appentry/AppEntryConfigServiceImpl$AppEntryParseHandler;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0
.end method
