.class public Lcom/alipay/android/phone/messageboxstatic/biz/GlobalSearchBiz;
.super Ljava/lang/Object;
.source "GlobalSearchBiz.java"

# interfaces
.implements Lcom/alipay/android/phone/globalsearch/api/SearchInitialization;


# instance fields
.field private listener:Lcom/alipay/android/phone/globalsearch/api/QueryListener;

.field private userId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Lcom/alipay/android/phone/messageboxstatic/biz/a;

    invoke-direct {v0, p0}, Lcom/alipay/android/phone/messageboxstatic/biz/a;-><init>(Lcom/alipay/android/phone/messageboxstatic/biz/GlobalSearchBiz;)V

    iput-object v0, p0, Lcom/alipay/android/phone/messageboxstatic/biz/GlobalSearchBiz;->listener:Lcom/alipay/android/phone/globalsearch/api/QueryListener;

    .line 22
    return-void
.end method

.method static synthetic access$0(Lcom/alipay/android/phone/messageboxstatic/biz/GlobalSearchBiz;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/alipay/android/phone/messageboxstatic/biz/GlobalSearchBiz;->userId:Ljava/lang/String;

    return-object v0
.end method

.method private registerQureyer()V
    .locals 3

    .prologue
    .line 96
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 97
    const-class v1, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchService;

    .line 96
    iget-object v1, p0, Lcom/alipay/android/phone/messageboxstatic/biz/GlobalSearchBiz;->listener:Lcom/alipay/android/phone/globalsearch/api/QueryListener;

    const-string/jumbo v2, "message_box"

    invoke-virtual {v0, v1, v2}, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchService;->registerQueryListener(Lcom/alipay/android/phone/globalsearch/api/QueryListener;Ljava/lang/String;)V

    .line 99
    return-void
.end method


# virtual methods
.method public init(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 103
    iput-object p1, p0, Lcom/alipay/android/phone/messageboxstatic/biz/GlobalSearchBiz;->userId:Ljava/lang/String;

    .line 104
    invoke-direct {p0}, Lcom/alipay/android/phone/messageboxstatic/biz/GlobalSearchBiz;->registerQureyer()V

    .line 105
    invoke-static {}, Lcom/alipay/android/phone/messageboxstatic/biz/db/MessageboxDBHelper;->getHelperInstance()Lcom/alipay/android/phone/messageboxstatic/biz/db/MessageboxDBHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/phone/messageboxstatic/biz/db/MessageboxDBHelper;->getReadableDatabase()Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;

    .line 106
    return-void
.end method

.method public quit()V
    .locals 0

    .prologue
    .line 110
    return-void
.end method
