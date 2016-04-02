.class public Lcom/alipay/android/phone/discovery/o2ohome/share/SearchResultListAdapter;
.super Landroid/widget/BaseAdapter;
.source "SearchResultListAdapter.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "o2ohome.SearchAdapter"


# instance fields
.field private birdNestService:Lcom/alipay/android/app/template/service/DynamicTemplateService;

.field private clickParam:Ljava/lang/String;

.field private context:Landroid/app/Activity;

.field private convertViews:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private eventHandler:Lcom/alipay/android/app/template/event/TElementEventHandler;

.field private final handler:Landroid/os/Handler;

.field private hasPreGenerated:Z

.field private itemDataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/android/phone/discovery/o2ohome/HotRecommendItem;",
            ">;"
        }
    .end annotation
.end field

.field private shareParamUserId:Ljava/lang/String;

.field private shareParamUserType:Ljava/lang/String;

.field private viewItemsCreated:I


# direct methods
.method public constructor <init>(Ljava/util/List;Landroid/app/Activity;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/android/phone/discovery/o2ohome/HotRecommendItem;",
            ">;",
            "Landroid/app/Activity;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 90
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 48
    iput v2, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/SearchResultListAdapter;->viewItemsCreated:I

    .line 50
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/SearchResultListAdapter;->clickParam:Ljava/lang/String;

    .line 64
    new-instance v0, Lcom/alipay/android/phone/discovery/o2ohome/share/SearchResultListAdapter$1;

    invoke-direct {v0, p0}, Lcom/alipay/android/phone/discovery/o2ohome/share/SearchResultListAdapter$1;-><init>(Lcom/alipay/android/phone/discovery/o2ohome/share/SearchResultListAdapter;)V

    iput-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/SearchResultListAdapter;->eventHandler:Lcom/alipay/android/app/template/event/TElementEventHandler;

    .line 91
    iput-object p2, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/SearchResultListAdapter;->context:Landroid/app/Activity;

    .line 92
    iput-object p1, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/SearchResultListAdapter;->itemDataList:Ljava/util/List;

    .line 93
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/SearchResultListAdapter;->handler:Landroid/os/Handler;

    .line 94
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/SearchResultListAdapter;->convertViews:Ljava/util/Queue;

    .line 95
    iput-boolean v2, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/SearchResultListAdapter;->hasPreGenerated:Z

    .line 96
    const-class v0, Lcom/alipay/android/app/template/service/DynamicTemplateService;

    invoke-static {v0}, Lcom/alipay/android/phone/discovery/o2ohome/util/OpenPageHelper;->getExtServiceByInterface(Ljava/lang/Class;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/template/service/DynamicTemplateService;

    iput-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/SearchResultListAdapter;->birdNestService:Lcom/alipay/android/app/template/service/DynamicTemplateService;

    .line 97
    return-void
.end method

.method static synthetic access$0(Lcom/alipay/android/phone/discovery/o2ohome/share/SearchResultListAdapter;)Ljava/util/List;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/SearchResultListAdapter;->itemDataList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1(Lcom/alipay/android/phone/discovery/o2ohome/share/SearchResultListAdapter;Lcom/alipay/android/phone/discovery/o2ohome/HotRecommendItem;)V
    .locals 0

    .prologue
    .line 192
    invoke-direct {p0, p1}, Lcom/alipay/android/phone/discovery/o2ohome/share/SearchResultListAdapter;->startShare(Lcom/alipay/android/phone/discovery/o2ohome/HotRecommendItem;)V

    return-void
.end method

.method static synthetic access$2(Lcom/alipay/android/phone/discovery/o2ohome/share/SearchResultListAdapter;)I
    .locals 1

    .prologue
    .line 48
    iget v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/SearchResultListAdapter;->viewItemsCreated:I

    return v0
.end method

.method static synthetic access$3(Lcom/alipay/android/phone/discovery/o2ohome/share/SearchResultListAdapter;)Lcom/alipay/android/app/template/service/DynamicTemplateService;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/SearchResultListAdapter;->birdNestService:Lcom/alipay/android/app/template/service/DynamicTemplateService;

    return-object v0
.end method

.method static synthetic access$4(Lcom/alipay/android/phone/discovery/o2ohome/share/SearchResultListAdapter;)Lcom/alipay/android/app/template/event/TElementEventHandler;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/SearchResultListAdapter;->eventHandler:Lcom/alipay/android/app/template/event/TElementEventHandler;

    return-object v0
.end method

.method static synthetic access$5(Lcom/alipay/android/phone/discovery/o2ohome/share/SearchResultListAdapter;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/SearchResultListAdapter;->context:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$6(Lcom/alipay/android/phone/discovery/o2ohome/share/SearchResultListAdapter;)Ljava/util/Queue;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/SearchResultListAdapter;->convertViews:Ljava/util/Queue;

    return-object v0
.end method

.method static synthetic access$7(Lcom/alipay/android/phone/discovery/o2ohome/share/SearchResultListAdapter;Landroid/view/ViewGroup;I)V
    .locals 0

    .prologue
    .line 112
    invoke-direct {p0, p1, p2}, Lcom/alipay/android/phone/discovery/o2ohome/share/SearchResultListAdapter;->preGenerateView(Landroid/view/ViewGroup;I)V

    return-void
.end method

.method static synthetic access$8(Lcom/alipay/android/phone/discovery/o2ohome/share/SearchResultListAdapter;Lcom/alipay/android/phone/discovery/o2ohome/HotRecommendItem;Lcom/alipay/mobile/personalbase/model/ShareModel;Landroid/os/Bundle;)Lcom/alipay/mobilecsa/common/service/rpc/request/ShareInfoRequest;
    .locals 1

    .prologue
    .line 253
    invoke-direct {p0, p1, p2, p3}, Lcom/alipay/android/phone/discovery/o2ohome/share/SearchResultListAdapter;->buildShareRequest(Lcom/alipay/android/phone/discovery/o2ohome/HotRecommendItem;Lcom/alipay/mobile/personalbase/model/ShareModel;Landroid/os/Bundle;)Lcom/alipay/mobilecsa/common/service/rpc/request/ShareInfoRequest;

    move-result-object v0

    return-object v0
.end method

.method private buildShareRequest(Lcom/alipay/android/phone/discovery/o2ohome/HotRecommendItem;Lcom/alipay/mobile/personalbase/model/ShareModel;Landroid/os/Bundle;)Lcom/alipay/mobilecsa/common/service/rpc/request/ShareInfoRequest;
    .locals 2

    .prologue
    .line 254
    new-instance v0, Lcom/alipay/mobilecsa/common/service/rpc/request/ShareInfoRequest;

    invoke-direct {v0}, Lcom/alipay/mobilecsa/common/service/rpc/request/ShareInfoRequest;-><init>()V

    .line 256
    iget-object v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/SearchResultListAdapter;->shareParamUserId:Ljava/lang/String;

    iput-object v1, v0, Lcom/alipay/mobilecsa/common/service/rpc/request/ShareInfoRequest;->receiverId:Ljava/lang/String;

    .line 257
    iget-object v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/SearchResultListAdapter;->shareParamUserType:Ljava/lang/String;

    iput-object v1, v0, Lcom/alipay/mobilecsa/common/service/rpc/request/ShareInfoRequest;->receiverUserType:Ljava/lang/String;

    .line 260
    invoke-virtual {p2}, Lcom/alipay/mobile/personalbase/model/ShareModel;->getThumb()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 261
    invoke-virtual {p2}, Lcom/alipay/mobile/personalbase/model/ShareModel;->getThumb()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/mobilecsa/common/service/rpc/request/ShareInfoRequest;->image:Ljava/lang/String;

    .line 264
    :cond_0
    invoke-virtual {p2}, Lcom/alipay/mobile/personalbase/model/ShareModel;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 265
    invoke-virtual {p2}, Lcom/alipay/mobile/personalbase/model/ShareModel;->getDescription()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/mobilecsa/common/service/rpc/request/ShareInfoRequest;->info:Ljava/lang/String;

    .line 268
    :cond_1
    invoke-virtual {p2}, Lcom/alipay/mobile/personalbase/model/ShareModel;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 269
    invoke-virtual {p2}, Lcom/alipay/mobile/personalbase/model/ShareModel;->getUrl()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/mobilecsa/common/service/rpc/request/ShareInfoRequest;->link:Ljava/lang/String;

    .line 272
    :cond_2
    invoke-virtual {p2}, Lcom/alipay/mobile/personalbase/model/ShareModel;->getExtendData()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 273
    invoke-virtual {p2}, Lcom/alipay/mobile/personalbase/model/ShareModel;->getExtendData()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/mobilecsa/common/service/rpc/request/ShareInfoRequest;->score:Ljava/lang/String;

    .line 276
    :cond_3
    invoke-virtual {p2}, Lcom/alipay/mobile/personalbase/model/ShareModel;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 277
    invoke-virtual {p2}, Lcom/alipay/mobile/personalbase/model/ShareModel;->getTitle()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/mobilecsa/common/service/rpc/request/ShareInfoRequest;->title:Ljava/lang/String;

    .line 280
    :cond_4
    invoke-virtual {p2}, Lcom/alipay/mobile/personalbase/model/ShareModel;->getSubTitle()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 281
    invoke-virtual {p2}, Lcom/alipay/mobile/personalbase/model/ShareModel;->getSubTitle()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/mobilecsa/common/service/rpc/request/ShareInfoRequest;->subTitle:Ljava/lang/String;

    .line 284
    :cond_5
    return-object v0
.end method

.method private getShareModel(Lcom/alipay/android/phone/discovery/o2ohome/HotRecommendItem;)Lcom/alipay/mobile/personalbase/model/ShareModel;
    .locals 3

    .prologue
    .line 228
    new-instance v0, Lcom/alipay/mobile/personalbase/model/ShareModel;

    invoke-direct {v0}, Lcom/alipay/mobile/personalbase/model/ShareModel;-><init>()V

    .line 229
    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/personalbase/model/ShareModel;->setType(I)V

    .line 231
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/personalbase/model/ShareModel;->setShowExtraWord(Z)V

    .line 233
    iget-object v1, p1, Lcom/alipay/android/phone/discovery/o2ohome/HotRecommendItem;->jsonObj:Lcom/alibaba/fastjson/JSONObject;

    const-string/jumbo v2, "shopName"

    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 234
    iget-object v1, p1, Lcom/alipay/android/phone/discovery/o2ohome/HotRecommendItem;->jsonObj:Lcom/alibaba/fastjson/JSONObject;

    const-string/jumbo v2, "shopName"

    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/personalbase/model/ShareModel;->setTitle(Ljava/lang/String;)V

    .line 237
    :cond_0
    iget-object v1, p1, Lcom/alipay/android/phone/discovery/o2ohome/HotRecommendItem;->jsonObj:Lcom/alibaba/fastjson/JSONObject;

    const-string/jumbo v2, "priceAverage"

    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 238
    iget-object v1, p1, Lcom/alipay/android/phone/discovery/o2ohome/HotRecommendItem;->jsonObj:Lcom/alibaba/fastjson/JSONObject;

    const-string/jumbo v2, "priceAverage"

    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/personalbase/model/ShareModel;->setSubTitle(Ljava/lang/String;)V

    .line 241
    :cond_1
    iget-object v1, p1, Lcom/alipay/android/phone/discovery/o2ohome/HotRecommendItem;->jsonObj:Lcom/alibaba/fastjson/JSONObject;

    const-string/jumbo v2, "shopLogoUrl"

    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 242
    iget-object v1, p1, Lcom/alipay/android/phone/discovery/o2ohome/HotRecommendItem;->jsonObj:Lcom/alibaba/fastjson/JSONObject;

    const-string/jumbo v2, "shopLogoUrl"

    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/personalbase/model/ShareModel;->setThumb(Ljava/lang/String;)V

    .line 245
    :cond_2
    iget-object v1, p1, Lcom/alipay/android/phone/discovery/o2ohome/HotRecommendItem;->jsonObj:Lcom/alibaba/fastjson/JSONObject;

    const-string/jumbo v2, "url"

    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/personalbase/model/ShareModel;->setUrl(Ljava/lang/String;)V

    .line 247
    iget-object v1, p1, Lcom/alipay/android/phone/discovery/o2ohome/HotRecommendItem;->jsonObj:Lcom/alibaba/fastjson/JSONObject;

    const-string/jumbo v2, "rank"

    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 248
    iget-object v1, p1, Lcom/alipay/android/phone/discovery/o2ohome/HotRecommendItem;->jsonObj:Lcom/alibaba/fastjson/JSONObject;

    const-string/jumbo v2, "rank"

    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/personalbase/model/ShareModel;->setExtendData(Ljava/lang/String;)V

    .line 250
    :cond_3
    return-object v0
.end method

.method private preGenerateView(Landroid/view/ViewGroup;I)V
    .locals 4

    .prologue
    .line 113
    iget-boolean v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/SearchResultListAdapter;->hasPreGenerated:Z

    if-nez v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/SearchResultListAdapter;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/android/phone/discovery/o2ohome/share/SearchResultListAdapter$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/alipay/android/phone/discovery/o2ohome/share/SearchResultListAdapter$2;-><init>(Lcom/alipay/android/phone/discovery/o2ohome/share/SearchResultListAdapter;Landroid/view/ViewGroup;I)V

    .line 130
    const-wide/16 v2, 0x32

    .line 114
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 132
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/SearchResultListAdapter;->hasPreGenerated:Z

    .line 134
    :cond_0
    return-void
.end method

.method private startShare(Lcom/alipay/android/phone/discovery/o2ohome/HotRecommendItem;)V
    .locals 4

    .prologue
    .line 193
    invoke-direct {p0, p1}, Lcom/alipay/android/phone/discovery/o2ohome/share/SearchResultListAdapter;->getShareModel(Lcom/alipay/android/phone/discovery/o2ohome/HotRecommendItem;)Lcom/alipay/mobile/personalbase/model/ShareModel;

    move-result-object v1

    .line 196
    const-class v0, Lcom/alipay/mobile/personalbase/service/SocialSdkChatService;

    invoke-static {v0}, Lcom/alipay/android/phone/discovery/o2ohome/util/OpenPageHelper;->getExtServiceByInterface(Ljava/lang/Class;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/personalbase/service/SocialSdkChatService;

    .line 197
    const/4 v2, 0x0

    new-instance v3, Lcom/alipay/android/phone/discovery/o2ohome/share/SearchResultListAdapter$4;

    invoke-direct {v3, p0, p1, v1}, Lcom/alipay/android/phone/discovery/o2ohome/share/SearchResultListAdapter$4;-><init>(Lcom/alipay/android/phone/discovery/o2ohome/share/SearchResultListAdapter;Lcom/alipay/android/phone/discovery/o2ohome/HotRecommendItem;Lcom/alipay/mobile/personalbase/model/ShareModel;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/alipay/mobile/personalbase/service/SocialSdkChatService;->showShareDialog(Lcom/alipay/mobile/personalbase/model/ShareModel;ZLcom/alipay/mobile/framework/service/ext/contact/ShareSelectCallback;)V

    .line 225
    return-void
.end method


# virtual methods
.method public clearData()V
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/SearchResultListAdapter;->itemDataList:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/SearchResultListAdapter;->itemDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 103
    :cond_0
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/SearchResultListAdapter;->itemDataList:Ljava/util/List;

    if-nez v0, :cond_0

    .line 139
    const/4 v0, 0x0

    .line 141
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/SearchResultListAdapter;->itemDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/SearchResultListAdapter;->itemDataList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 151
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9

    .prologue
    .line 156
    if-nez p2, :cond_3

    .line 158
    iget-boolean v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/SearchResultListAdapter;->hasPreGenerated:Z

    if-nez v0, :cond_0

    add-int/lit8 v0, p1, 0x1

    iput v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/SearchResultListAdapter;->viewItemsCreated:I

    .line 159
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/SearchResultListAdapter;->convertViews:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 160
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/SearchResultListAdapter;->convertViews:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    move-object v6, v0

    .line 164
    :goto_0
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/SearchResultListAdapter;->itemDataList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/alipay/android/phone/discovery/o2ohome/HotRecommendItem;

    .line 165
    iget-object v0, v8, Lcom/alipay/android/phone/discovery/o2ohome/HotRecommendItem;->jsonObj:Lcom/alibaba/fastjson/JSONObject;

    const-string/jumbo v1, "positionInx"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/SearchResultListAdapter;->birdNestService:Lcom/alipay/android/app/template/service/DynamicTemplateService;

    iget-object v1, v8, Lcom/alipay/android/phone/discovery/o2ohome/HotRecommendItem;->id:Ljava/lang/String;

    iget-object v2, v8, Lcom/alipay/android/phone/discovery/o2ohome/HotRecommendItem;->jsonObj:Lcom/alibaba/fastjson/JSONObject;

    iget-object v3, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/SearchResultListAdapter;->eventHandler:Lcom/alipay/android/app/template/event/TElementEventHandler;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/SearchResultListAdapter;->context:Landroid/app/Activity;

    const/4 v7, 0x1

    invoke-virtual/range {v0 .. v7}, Lcom/alipay/android/app/template/service/DynamicTemplateService;->generateView(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;Lcom/alipay/android/app/template/event/TElementEventHandler;Ljava/lang/String;Landroid/app/Activity;Landroid/view/View;Z)Landroid/view/View;

    move-result-object v0

    .line 167
    if-nez v0, :cond_1

    .line 170
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "o2ohome.SearchAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "\u70ed\u95e8\u63a8\u8350 generateView failed"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v8, Lcom/alipay/android/phone/discovery/o2ohome/HotRecommendItem;->id:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    :cond_1
    if-nez p1, :cond_2

    iget-boolean v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/SearchResultListAdapter;->hasPreGenerated:Z

    if-nez v1, :cond_2

    if-eqz v0, :cond_2

    .line 177
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    new-instance v2, Lcom/alipay/android/phone/discovery/o2ohome/share/SearchResultListAdapter$3;

    invoke-direct {v2, p0, v0, p3}, Lcom/alipay/android/phone/discovery/o2ohome/share/SearchResultListAdapter$3;-><init>(Lcom/alipay/android/phone/discovery/o2ohome/share/SearchResultListAdapter;Landroid/view/View;Landroid/view/ViewGroup;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 187
    :cond_2
    return-object v0

    :cond_3
    move-object v6, p2

    goto :goto_0
.end method

.method public setShareParamUserId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 57
    iput-object p1, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/SearchResultListAdapter;->shareParamUserId:Ljava/lang/String;

    .line 58
    return-void
.end method

.method public setShareParamUserType(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 61
    iput-object p1, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/SearchResultListAdapter;->shareParamUserType:Ljava/lang/String;

    .line 62
    return-void
.end method

.method public setTemplates(Ljava/util/List;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/android/phone/discovery/o2ohome/HotRecommendItem;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 106
    iput-object p1, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/SearchResultListAdapter;->itemDataList:Ljava/util/List;

    .line 107
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/SearchResultListAdapter;->viewItemsCreated:I

    .line 108
    iput-object p2, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/SearchResultListAdapter;->clickParam:Ljava/lang/String;

    .line 109
    invoke-virtual {p0}, Lcom/alipay/android/phone/discovery/o2ohome/share/SearchResultListAdapter;->notifyDataSetChanged()V

    .line 110
    return-void
.end method
