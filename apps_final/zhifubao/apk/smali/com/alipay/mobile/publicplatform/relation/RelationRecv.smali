.class public Lcom/alipay/mobile/publicplatform/relation/RelationRecv;
.super Ljava/lang/Object;
.source "RelationRecv.java"


# static fields
.field public static final INIT_CMD_RECEVIED_FLAG:Ljava/lang/String; = "pp_init_cmd_received_flag"

.field public static final PART_LOAD_FAILD_ITEMS:Ljava/lang/String; = "pp_part_load_faild_items"

.field public static final TAG:Ljava/lang/String; = "chatsdk_SyncProcessor"

.field public static final TOTAL_LOAD_FAILD_FLAG:Ljava/lang/String; = "pp_total_load_faild_flag"

.field private static instance:Lcom/alipay/mobile/publicplatform/relation/RelationRecv;


# instance fields
.field private final comparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/alipay/mobile/publicplatform/relation/model/FollowMessageModel;",
            ">;"
        }
    .end annotation
.end field

.field private followAccountBiz:Lcom/alipay/mobile/publicplatform/relation/biz/FollowAccountBiz;

.field private longLinkSyncService:Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/publicplatform/relation/RelationRecv;->followAccountBiz:Lcom/alipay/mobile/publicplatform/relation/biz/FollowAccountBiz;

    .line 49
    new-instance v0, Lcom/alipay/mobile/publicplatform/relation/RelationRecv$1;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/publicplatform/relation/RelationRecv$1;-><init>(Lcom/alipay/mobile/publicplatform/relation/RelationRecv;)V

    iput-object v0, p0, Lcom/alipay/mobile/publicplatform/relation/RelationRecv;->comparator:Ljava/util/Comparator;

    .line 67
    new-instance v0, Lcom/alipay/mobile/publicplatform/relation/biz/FollowAccountBiz;

    invoke-direct {v0}, Lcom/alipay/mobile/publicplatform/relation/biz/FollowAccountBiz;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/publicplatform/relation/RelationRecv;->followAccountBiz:Lcom/alipay/mobile/publicplatform/relation/biz/FollowAccountBiz;

    .line 68
    return-void
.end method

.method static synthetic access$0(Lcom/alipay/mobile/publicplatform/relation/RelationRecv;)Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;
    .locals 1

    .prologue
    .line 487
    invoke-direct {p0}, Lcom/alipay/mobile/publicplatform/relation/RelationRecv;->obtainLongLinkSyncService()Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1(Lcom/alipay/mobile/publicplatform/relation/RelationRecv;Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncCommand;)V
    .locals 0

    .prologue
    .line 94
    invoke-direct {p0, p1}, Lcom/alipay/mobile/publicplatform/relation/RelationRecv;->processInitCmd(Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncCommand;)V

    return-void
.end method

.method static synthetic access$2(Lcom/alipay/mobile/publicplatform/relation/RelationRecv;Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncCommand;)V
    .locals 0

    .prologue
    .line 109
    invoke-direct {p0, p1}, Lcom/alipay/mobile/publicplatform/relation/RelationRecv;->processFullUpdateCmd(Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncCommand;)V

    return-void
.end method

.method static synthetic access$3(Lcom/alipay/mobile/publicplatform/relation/RelationRecv;Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncMessage;)Ljava/util/List;
    .locals 1

    .prologue
    .line 369
    invoke-direct {p0, p1}, Lcom/alipay/mobile/publicplatform/relation/RelationRecv;->extractMessage(Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncMessage;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4(Lcom/alipay/mobile/publicplatform/relation/RelationRecv;Ljava/lang/String;Lcom/alipay/mobile/publicplatform/relation/model/FollowMessageModel;)V
    .locals 0

    .prologue
    .line 166
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/publicplatform/relation/RelationRecv;->replayMessage(Ljava/lang/String;Lcom/alipay/mobile/publicplatform/relation/model/FollowMessageModel;)V

    return-void
.end method

.method private canMerge(Lcom/alipay/mobile/publicplatform/relation/model/FollowMessageModel;Lcom/alipay/mobile/publicplatform/relation/model/FollowMessageModel;)I
    .locals 3

    .prologue
    const/4 v0, 0x2

    .line 289
    iget-object v1, p1, Lcom/alipay/mobile/publicplatform/relation/model/FollowMessageModel;->publicId:Ljava/lang/String;

    iget-object v2, p2, Lcom/alipay/mobile/publicplatform/relation/model/FollowMessageModel;->publicId:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 290
    const/4 v0, 0x3

    .line 315
    :cond_0
    :goto_0
    return v0

    .line 293
    :cond_1
    invoke-direct {p0, p1}, Lcom/alipay/mobile/publicplatform/relation/RelationRecv;->isUpdateCmd(Lcom/alipay/mobile/publicplatform/relation/model/FollowMessageModel;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0, p2}, Lcom/alipay/mobile/publicplatform/relation/RelationRecv;->isUpdateCmd(Lcom/alipay/mobile/publicplatform/relation/model/FollowMessageModel;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 297
    :cond_2
    invoke-direct {p0, p2}, Lcom/alipay/mobile/publicplatform/relation/RelationRecv;->isDeleteCmd(Lcom/alipay/mobile/publicplatform/relation/model/FollowMessageModel;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 301
    invoke-direct {p0, p1}, Lcom/alipay/mobile/publicplatform/relation/RelationRecv;->isDeleteCmd(Lcom/alipay/mobile/publicplatform/relation/model/FollowMessageModel;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 303
    invoke-direct {p0, p2}, Lcom/alipay/mobile/publicplatform/relation/RelationRecv;->isDeleteCmd(Lcom/alipay/mobile/publicplatform/relation/model/FollowMessageModel;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 307
    invoke-direct {p0, p2}, Lcom/alipay/mobile/publicplatform/relation/RelationRecv;->isModifyCmd(Lcom/alipay/mobile/publicplatform/relation/model/FollowMessageModel;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 308
    const/4 v0, 0x1

    goto :goto_0

    .line 311
    :cond_3
    invoke-direct {p0, p2}, Lcom/alipay/mobile/publicplatform/relation/RelationRecv;->isAddCmd(Lcom/alipay/mobile/publicplatform/relation/model/FollowMessageModel;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 315
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private extractFollowAccountInfo(Ljava/lang/String;)Lcom/alipay/publiccore/client/model/FollowAccountInfo;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 397
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 398
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v2, "chatsdk_SyncProcessor"

    .line 399
    const-string/jumbo v3, "extractFollowAccountInfo faild  becouse data is empty"

    .line 398
    invoke-interface {v0, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    .line 412
    :goto_0
    return-object v0

    .line 404
    :cond_0
    :try_start_0
    const-class v0, Lcom/alipay/publiccore/client/model/FollowAccountInfo;

    invoke-static {p1, v0}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 408
    :goto_1
    if-eqz v0, :cond_1

    .line 409
    check-cast v0, Lcom/alipay/publiccore/client/model/FollowAccountInfo;

    goto :goto_0

    .line 405
    :catch_0
    move-exception v0

    .line 406
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string/jumbo v3, "chatsdk_SyncProcessor"

    const-string/jumbo v4, "extractFollowAccountInfo faild "

    invoke-interface {v2, v3, v4, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v1

    goto :goto_1

    .line 411
    :cond_1
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v2, "chatsdk_SyncProcessor"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "extractFollowAccountInfo faild "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    .line 412
    goto :goto_0
.end method

.method private extractMessage(Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncMessage;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncMessage;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/publicplatform/relation/model/FollowMessageModel;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 370
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 371
    iget-object v0, p1, Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncMessage;->msgData:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/alipay/mobile/publicplatform/relation/RelationRecv;->extractMsg(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 372
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 373
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v2, "chatsdk_SyncProcessor"

    const-string/jumbo v3, "message extract result is null"

    invoke-interface {v0, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    .line 387
    :goto_0
    return-object v0

    .line 376
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 380
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 381
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v2, "chatsdk_SyncProcessor"

    const-string/jumbo v3, "can process message is empty,exit"

    invoke-interface {v0, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    .line 382
    goto :goto_0

    .line 376
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/publicplatform/relation/model/FollowMessageModel;

    .line 377
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 384
    :cond_3
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_4

    .line 385
    iget-object v0, p0, Lcom/alipay/mobile/publicplatform/relation/RelationRecv;->comparator:Ljava/util/Comparator;

    invoke-static {v2, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_4
    move-object v0, v2

    .line 387
    goto :goto_0
.end method

.method private extractMsg(Ljava/lang/String;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/publicplatform/relation/model/FollowMessageModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 422
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 423
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "chatsdk_SyncProcessor"

    .line 424
    const-string/jumbo v2, "extract follow msg faild  becouse msgData is empty"

    .line 423
    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 425
    const/4 v0, 0x0

    .line 449
    :goto_0
    return-object v0

    .line 427
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 428
    :try_start_0
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 431
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v4

    .line 432
    const/4 v0, 0x0

    move v2, v0

    :goto_1
    if-lt v2, v4, :cond_1

    :goto_2
    move-object v0, v1

    .line 449
    goto :goto_0

    .line 434
    :cond_1
    :try_start_1
    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    const-string/jumbo v5, "pl"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 435
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v5

    const-string/jumbo v6, "chatsdk_SyncProcessor"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "pl string "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 436
    const-class v5, Lcom/alipay/mobile/publicplatform/relation/model/FollowMessageModel;

    invoke-static {v0, v5}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 437
    check-cast v0, Lcom/alipay/mobile/publicplatform/relation/model/FollowMessageModel;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 432
    :goto_3
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    .line 438
    :catch_0
    move-exception v0

    .line 439
    :try_start_2
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v5

    const-string/jumbo v6, "chatsdk_SyncProcessor"

    const-string/jumbo v7, "extract follow msg faild data faild "

    invoke-interface {v5, v6, v7, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    .line 444
    :catch_1
    move-exception v0

    .line 445
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string/jumbo v3, "chatsdk_SyncProcessor"

    const-string/jumbo v4, "extract follow msg faild data faild "

    invoke-interface {v2, v3, v4, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2
.end method

.method public static getInstance()Lcom/alipay/mobile/publicplatform/relation/RelationRecv;
    .locals 1

    .prologue
    .line 59
    sget-object v0, Lcom/alipay/mobile/publicplatform/relation/RelationRecv;->instance:Lcom/alipay/mobile/publicplatform/relation/RelationRecv;

    if-nez v0, :cond_0

    .line 60
    new-instance v0, Lcom/alipay/mobile/publicplatform/relation/RelationRecv;

    invoke-direct {v0}, Lcom/alipay/mobile/publicplatform/relation/RelationRecv;-><init>()V

    sput-object v0, Lcom/alipay/mobile/publicplatform/relation/RelationRecv;->instance:Lcom/alipay/mobile/publicplatform/relation/RelationRecv;

    .line 63
    :cond_0
    sget-object v0, Lcom/alipay/mobile/publicplatform/relation/RelationRecv;->instance:Lcom/alipay/mobile/publicplatform/relation/RelationRecv;

    return-object v0
.end method

.method private isAddCmd(Lcom/alipay/mobile/publicplatform/relation/model/FollowMessageModel;)Z
    .locals 2

    .prologue
    .line 325
    iget-object v0, p1, Lcom/alipay/mobile/publicplatform/relation/model/FollowMessageModel;->command:Ljava/lang/String;

    .line 326
    const-string/jumbo v1, "follow"

    .line 325
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method private isDeleteCmd(Lcom/alipay/mobile/publicplatform/relation/model/FollowMessageModel;)Z
    .locals 2

    .prologue
    .line 347
    iget-object v0, p1, Lcom/alipay/mobile/publicplatform/relation/model/FollowMessageModel;->command:Ljava/lang/String;

    .line 348
    const-string/jumbo v1, "unfollow"

    .line 347
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method private isModifyCmd(Lcom/alipay/mobile/publicplatform/relation/model/FollowMessageModel;)Z
    .locals 2

    .prologue
    .line 336
    iget-object v0, p1, Lcom/alipay/mobile/publicplatform/relation/model/FollowMessageModel;->command:Ljava/lang/String;

    .line 337
    const-string/jumbo v1, "modifyFollowInfo"

    .line 336
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method private isUpdateCmd(Lcom/alipay/mobile/publicplatform/relation/model/FollowMessageModel;)Z
    .locals 2

    .prologue
    .line 358
    iget-object v0, p1, Lcom/alipay/mobile/publicplatform/relation/model/FollowMessageModel;->command:Ljava/lang/String;

    .line 359
    const-string/jumbo v1, "follow"

    .line 358
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 360
    iget-object v0, p1, Lcom/alipay/mobile/publicplatform/relation/model/FollowMessageModel;->command:Ljava/lang/String;

    .line 361
    const-string/jumbo v1, "modifyFollowInfo"

    .line 360
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    .line 358
    goto :goto_0
.end method

.method private mergeFollowMessage(Ljava/util/List;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/publicplatform/relation/model/FollowMessageModel;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/publicplatform/relation/model/FollowMessageModel;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 248
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    .line 249
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 274
    return-object v3

    .line 249
    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/alipay/mobile/publicplatform/relation/model/FollowMessageModel;

    .line 250
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 251
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 256
    :cond_2
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_4

    move v0, v2

    .line 270
    :goto_1
    if-eqz v0, :cond_0

    .line 271
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 256
    :cond_4
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/publicplatform/relation/model/FollowMessageModel;

    .line 257
    invoke-direct {p0, v0, v1}, Lcom/alipay/mobile/publicplatform/relation/RelationRecv;->canMerge(Lcom/alipay/mobile/publicplatform/relation/model/FollowMessageModel;Lcom/alipay/mobile/publicplatform/relation/model/FollowMessageModel;)I

    move-result v6

    .line 258
    const/4 v7, 0x3

    if-eq v6, v7, :cond_3

    .line 259
    if-eqz v6, :cond_3

    .line 261
    if-ne v6, v2, :cond_5

    .line 263
    const/4 v0, 0x0

    .line 264
    goto :goto_1

    .line 265
    :cond_5
    const/4 v7, 0x2

    if-ne v6, v7, :cond_3

    .line 266
    invoke-interface {v3, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move v0, v2

    .line 267
    goto :goto_1
.end method

.method private obtainLongLinkSyncService()Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;
    .locals 2

    .prologue
    .line 488
    iget-object v0, p0, Lcom/alipay/mobile/publicplatform/relation/RelationRecv;->longLinkSyncService:Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;

    if-nez v0, :cond_0

    .line 490
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    .line 491
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 493
    const-class v1, Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 492
    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;

    .line 489
    iput-object v0, p0, Lcom/alipay/mobile/publicplatform/relation/RelationRecv;->longLinkSyncService:Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;

    .line 495
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/publicplatform/relation/RelationRecv;->longLinkSyncService:Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;

    return-object v0
.end method

.method private processFullUpdateCmd(Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncCommand;)V
    .locals 4

    .prologue
    .line 110
    if-nez p1, :cond_0

    .line 115
    :goto_0
    return-void

    .line 113
    :cond_0
    invoke-direct {p0}, Lcom/alipay/mobile/publicplatform/relation/RelationRecv;->obtainLongLinkSyncService()Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;

    move-result-object v0

    iget-object v1, p1, Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncCommand;->userId:Ljava/lang/String;

    iget-object v2, p1, Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncCommand;->biz:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncCommand;->id:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;->reportCommandHandled(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    iget-object v0, p1, Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncCommand;->userId:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/publicplatform/relation/RelationRecv;->initLoad(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private processInitCmd(Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncCommand;)V
    .locals 4

    .prologue
    .line 95
    if-nez p1, :cond_0

    .line 102
    :goto_0
    return-void

    .line 98
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "chatsdk_SyncProcessor"

    const-string/jumbo v2, "start processInitCmd"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getApplicationContext()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/common/utils/CacheSet;->getInstance(Landroid/content/Context;)Lcom/alipay/mobile/common/utils/CacheSet;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "pp_init_cmd_received_flag"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p1, Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncCommand;->userId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/common/utils/CacheSet;->putBoolean(Ljava/lang/String;Z)V

    .line 100
    invoke-direct {p0}, Lcom/alipay/mobile/publicplatform/relation/RelationRecv;->obtainLongLinkSyncService()Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;

    move-result-object v0

    iget-object v1, p1, Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncCommand;->userId:Ljava/lang/String;

    iget-object v2, p1, Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncCommand;->biz:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncCommand;->id:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;->reportCommandHandled(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    iget-object v0, p1, Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncCommand;->userId:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/publicplatform/relation/RelationRecv;->initLoad(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private replayDeleteCmd(Ljava/lang/String;Lcom/alipay/mobile/publicplatform/relation/model/FollowMessageModel;)V
    .locals 2

    .prologue
    .line 229
    invoke-direct {p0, p2}, Lcom/alipay/mobile/publicplatform/relation/RelationRecv;->isDeleteCmd(Lcom/alipay/mobile/publicplatform/relation/model/FollowMessageModel;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 237
    :cond_0
    :goto_0
    return-void

    .line 232
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/publicplatform/relation/RelationRecv;->followAccountBiz:Lcom/alipay/mobile/publicplatform/relation/biz/FollowAccountBiz;

    iget-object v1, p2, Lcom/alipay/mobile/publicplatform/relation/model/FollowMessageModel;->publicId:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Lcom/alipay/mobile/publicplatform/relation/biz/FollowAccountBiz;->deleteFollowAccountInfoByUserId(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 233
    if-eqz v0, :cond_0

    .line 234
    invoke-static {}, Lcom/alipay/mobile/chatsdk/msg/MsgEventDispatch;->getInstance()Lcom/alipay/mobile/chatsdk/msg/MsgEventDispatch;

    move-result-object v0

    iget-object v1, p2, Lcom/alipay/mobile/publicplatform/relation/model/FollowMessageModel;->publicId:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Lcom/alipay/mobile/chatsdk/msg/MsgEventDispatch;->dispatchDelete(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    invoke-static {}, Lcom/alipay/mobile/chatsdk/notify/NotifyCenter;->getInstance()Lcom/alipay/mobile/chatsdk/notify/NotifyCenter;

    move-result-object v0

    iget-object v1, p2, Lcom/alipay/mobile/publicplatform/relation/model/FollowMessageModel;->publicId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/chatsdk/notify/NotifyCenter;->deleteItem(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private replayMessage(Ljava/lang/String;Lcom/alipay/mobile/publicplatform/relation/model/FollowMessageModel;)V
    .locals 5

    .prologue
    .line 169
    :try_start_0
    invoke-direct {p0, p2}, Lcom/alipay/mobile/publicplatform/relation/RelationRecv;->isUpdateCmd(Lcom/alipay/mobile/publicplatform/relation/model/FollowMessageModel;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 170
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "chatsdk_SyncProcessor"

    const-string/jumbo v2, " replayUpdateCmd"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/publicplatform/relation/RelationRecv;->replayUpdateCmd(Ljava/lang/String;Lcom/alipay/mobile/publicplatform/relation/model/FollowMessageModel;)V

    .line 182
    :goto_0
    return-void

    .line 172
    :cond_0
    invoke-direct {p0, p2}, Lcom/alipay/mobile/publicplatform/relation/RelationRecv;->isDeleteCmd(Lcom/alipay/mobile/publicplatform/relation/model/FollowMessageModel;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 173
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "chatsdk_SyncProcessor"

    const-string/jumbo v2, " replayDeleteCmd"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/publicplatform/relation/RelationRecv;->replayDeleteCmd(Ljava/lang/String;Lcom/alipay/mobile/publicplatform/relation/model/FollowMessageModel;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 178
    :catch_0
    move-exception v0

    .line 179
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "chatsdk_SyncProcessor"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "replay faild"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p2, Lcom/alipay/mobile/publicplatform/relation/model/FollowMessageModel;->command:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 176
    :cond_1
    :try_start_1
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "chatsdk_SyncProcessor"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, " unknow command"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p2, Lcom/alipay/mobile/publicplatform/relation/model/FollowMessageModel;->command:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private replayUpdateCmd(Ljava/lang/String;Lcom/alipay/mobile/publicplatform/relation/model/FollowMessageModel;)V
    .locals 4

    .prologue
    .line 190
    invoke-direct {p0, p2}, Lcom/alipay/mobile/publicplatform/relation/RelationRecv;->isUpdateCmd(Lcom/alipay/mobile/publicplatform/relation/model/FollowMessageModel;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 219
    :cond_0
    :goto_0
    return-void

    .line 195
    :cond_1
    const-string/jumbo v0, "ALIPAY_MSG"

    iget-object v1, p2, Lcom/alipay/mobile/publicplatform/relation/model/FollowMessageModel;->publicId:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/utils/StringUtils;->equalsIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 198
    const-string/jumbo v0, "2014120100018252"

    iget-object v1, p2, Lcom/alipay/mobile/publicplatform/relation/model/FollowMessageModel;->publicId:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/utils/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 202
    iget-object v0, p2, Lcom/alipay/mobile/publicplatform/relation/model/FollowMessageModel;->data:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/alipay/mobile/publicplatform/relation/RelationRecv;->extractFollowAccountInfo(Ljava/lang/String;)Lcom/alipay/publiccore/client/model/FollowAccountInfo;

    move-result-object v0

    .line 203
    if-nez v0, :cond_2

    .line 204
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "chatsdk_SyncProcessor"

    const-string/jumbo v2, " followAccountInfo is null "

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 208
    :cond_2
    iget-object v1, p0, Lcom/alipay/mobile/publicplatform/relation/RelationRecv;->followAccountBiz:Lcom/alipay/mobile/publicplatform/relation/biz/FollowAccountBiz;

    invoke-virtual {v1, p1, v0}, Lcom/alipay/mobile/publicplatform/relation/biz/FollowAccountBiz;->updateFollowAccountInfo(Ljava/lang/String;Lcom/alipay/publiccore/client/model/FollowAccountInfo;)Lcom/alipay/mobile/publicplatform/relation/biz/FollowUpdateResult;

    move-result-object v1

    .line 209
    iget v2, v1, Lcom/alipay/mobile/publicplatform/relation/biz/FollowUpdateResult;->modifyCount:I

    if-lez v2, :cond_0

    .line 210
    iget-object v2, p0, Lcom/alipay/mobile/publicplatform/relation/RelationRecv;->followAccountBiz:Lcom/alipay/mobile/publicplatform/relation/biz/FollowAccountBiz;

    iget-object v3, v0, Lcom/alipay/publiccore/client/model/FollowAccountInfo;->followObjectId:Ljava/lang/String;

    invoke-virtual {v2, p1, v3}, Lcom/alipay/mobile/publicplatform/relation/biz/FollowAccountBiz;->getFollowAccountShowModel(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowModel;

    move-result-object v2

    .line 211
    if-eqz v2, :cond_3

    .line 212
    invoke-static {}, Lcom/alipay/mobile/chatsdk/msg/MsgEventDispatch;->getInstance()Lcom/alipay/mobile/chatsdk/msg/MsgEventDispatch;

    move-result-object v3

    invoke-virtual {v3, p1, v2}, Lcom/alipay/mobile/chatsdk/msg/MsgEventDispatch;->dispatchAddOrUpdate(Ljava/lang/String;Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowModel;)V

    .line 213
    invoke-static {}, Lcom/alipay/mobile/chatsdk/notify/NotifyCenter;->getInstance()Lcom/alipay/mobile/chatsdk/notify/NotifyCenter;

    move-result-object v2

    iget-object v0, v0, Lcom/alipay/publiccore/client/model/FollowAccountInfo;->followObjectId:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, p1, v3}, Lcom/alipay/mobile/chatsdk/notify/NotifyCenter;->notityShowModelFromNew(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 215
    :cond_3
    iget-boolean v0, v1, Lcom/alipay/mobile/publicplatform/relation/biz/FollowUpdateResult;->vip2NoVip:Z

    if-nez v0, :cond_4

    iget-boolean v0, v1, Lcom/alipay/mobile/publicplatform/relation/biz/FollowUpdateResult;->noVip2Vip:Z

    if-eqz v0, :cond_0

    .line 216
    :cond_4
    invoke-static {}, Lcom/alipay/mobile/chatsdk/notify/NotifyCenter;->getInstance()Lcom/alipay/mobile/chatsdk/notify/NotifyCenter;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/alipay/mobile/chatsdk/notify/NotifyCenter;->notifyMergeItem(Ljava/lang/String;Z)V

    goto :goto_0
.end method


# virtual methods
.method public initLoad(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 457
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "chatsdk_SyncProcessor"

    const-string/jumbo v2, "start initLoad whole public itmes  "

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 458
    const/4 v1, 0x0

    .line 460
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/publicplatform/relation/RelationRecv;->followAccountBiz:Lcom/alipay/mobile/publicplatform/relation/biz/FollowAccountBiz;

    invoke-virtual {v0}, Lcom/alipay/mobile/publicplatform/relation/biz/FollowAccountBiz;->queryUserFollowAccountFromRemote()Lcom/alipay/publiccore/client/result/OfficialHomeListResult;
    :try_end_0
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 464
    :goto_0
    if-eqz v0, :cond_1

    .line 465
    iget v1, v0, Lcom/alipay/publiccore/client/result/OfficialHomeListResult;->resultCode:I

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_1

    .line 466
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "chatsdk_SyncProcessor"

    const-string/jumbo v3, "load whole public itmes success ,start to save  "

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 467
    iget-object v1, p0, Lcom/alipay/mobile/publicplatform/relation/RelationRecv;->followAccountBiz:Lcom/alipay/mobile/publicplatform/relation/biz/FollowAccountBiz;

    iget-object v0, v0, Lcom/alipay/publiccore/client/result/OfficialHomeListResult;->followAccounts:Ljava/util/List;

    invoke-virtual {v1, p1, v0}, Lcom/alipay/mobile/publicplatform/relation/biz/FollowAccountBiz;->initFollowAccountInfos(Ljava/lang/String;Ljava/util/List;)Lcom/alipay/mobile/publicplatform/relation/biz/FollowUpdateResult;

    move-result-object v0

    .line 468
    iget v0, v0, Lcom/alipay/mobile/publicplatform/relation/biz/FollowUpdateResult;->modifyCount:I

    if-lez v0, :cond_0

    .line 469
    iget-object v0, p0, Lcom/alipay/mobile/publicplatform/relation/RelationRecv;->followAccountBiz:Lcom/alipay/mobile/publicplatform/relation/biz/FollowAccountBiz;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/publicplatform/relation/biz/FollowAccountBiz;->getFollowAccountShowModels(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 470
    if-eqz v0, :cond_0

    .line 471
    invoke-static {}, Lcom/alipay/mobile/chatsdk/msg/MsgEventDispatch;->getInstance()Lcom/alipay/mobile/chatsdk/msg/MsgEventDispatch;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/alipay/mobile/chatsdk/msg/MsgEventDispatch;->dispatchOnReload(Ljava/lang/String;Ljava/util/List;)V

    .line 472
    invoke-static {}, Lcom/alipay/mobile/chatsdk/notify/NotifyCenter;->getInstance()Lcom/alipay/mobile/chatsdk/notify/NotifyCenter;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/alipay/mobile/chatsdk/notify/NotifyCenter;->initTab(Ljava/lang/String;Z)V

    .line 475
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getApplicationContext()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/common/utils/CacheSet;->getInstance(Landroid/content/Context;)Lcom/alipay/mobile/common/utils/CacheSet;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "pp_total_load_faild_flag"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/utils/CacheSet;->remove(Ljava/lang/String;)V

    .line 479
    :goto_1
    return-void

    .line 461
    :catch_0
    move-exception v0

    .line 462
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string/jumbo v3, "StackTrace"

    invoke-interface {v2, v3, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v1

    goto :goto_0

    .line 477
    :cond_1
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getApplicationContext()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/common/utils/CacheSet;->getInstance(Landroid/content/Context;)Lcom/alipay/mobile/common/utils/CacheSet;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "pp_total_load_faild_flag"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/common/utils/CacheSet;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_1
.end method

.method public processSyncCmd(Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncCommand;)V
    .locals 1

    .prologue
    .line 71
    new-instance v0, Lcom/alipay/mobile/publicplatform/relation/RelationRecv$2;

    invoke-direct {v0, p0, p1}, Lcom/alipay/mobile/publicplatform/relation/RelationRecv$2;-><init>(Lcom/alipay/mobile/publicplatform/relation/RelationRecv;Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncCommand;)V

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Ljava/lang/Runnable;)V

    .line 89
    return-void
.end method

.method public processSyncMsg(Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncMessage;)V
    .locals 4

    .prologue
    .line 123
    if-nez p1, :cond_1

    .line 124
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "chatsdk_SyncProcessor"

    const-string/jumbo v2, "process syncMsg is empty"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    :cond_0
    :goto_0
    return-void

    .line 127
    :cond_1
    invoke-direct {p0}, Lcom/alipay/mobile/publicplatform/relation/RelationRecv;->obtainLongLinkSyncService()Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;

    move-result-object v0

    .line 128
    if-eqz v0, :cond_0

    .line 131
    iget-object v1, p1, Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncMessage;->userId:Ljava/lang/String;

    .line 132
    iget-object v2, p1, Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncMessage;->biz:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncMessage;->id:Ljava/lang/String;

    .line 131
    invoke-virtual {v0, v1, v2, v3}, Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;->reportMsgReceived(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    new-instance v0, Lcom/alipay/mobile/publicplatform/relation/RelationRecv$3;

    invoke-direct {v0, p0, p1}, Lcom/alipay/mobile/publicplatform/relation/RelationRecv$3;-><init>(Lcom/alipay/mobile/publicplatform/relation/RelationRecv;Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncMessage;)V

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
