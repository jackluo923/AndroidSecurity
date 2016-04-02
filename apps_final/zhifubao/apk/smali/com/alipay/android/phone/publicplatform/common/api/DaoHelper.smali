.class public Lcom/alipay/android/phone/publicplatform/common/api/DaoHelper;
.super Ljava/lang/Object;
.source "DaoHelper.java"


# static fields
.field private static final Tag:Ljava/lang/String; = "DaoHelper"

.field static followAccountInfoDaoReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/alipay/mobile/android/main/publichome/dao/FollowAccountInfoDao;",
            ">;"
        }
    .end annotation
.end field

.field static ppchatDaoReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/alipay/android/phone/publicplatform/common/api/PPChatDao;",
            ">;"
        }
    .end annotation
.end field

.field static publicRecommendDaoReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/alipay/mobile/publicrecom/dao/PublicRecommendDao;",
            ">;"
        }
    .end annotation
.end field

.field static searchDaoReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/alipay/android/phone/publicplatform/common/api/SearchDao;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 18
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 17
    sput-object v0, Lcom/alipay/android/phone/publicplatform/common/api/DaoHelper;->ppchatDaoReference:Ljava/lang/ref/WeakReference;

    .line 20
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 19
    sput-object v0, Lcom/alipay/android/phone/publicplatform/common/api/DaoHelper;->followAccountInfoDaoReference:Ljava/lang/ref/WeakReference;

    .line 21
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/alipay/android/phone/publicplatform/common/api/DaoHelper;->searchDaoReference:Ljava/lang/ref/WeakReference;

    .line 23
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 22
    sput-object v0, Lcom/alipay/android/phone/publicplatform/common/api/DaoHelper;->publicRecommendDaoReference:Ljava/lang/ref/WeakReference;

    .line 15
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getFollowAccountInfoDaoInstance()Lcom/alipay/mobile/android/main/publichome/dao/FollowAccountInfoDao;
    .locals 6

    .prologue
    .line 61
    sget-object v1, Lcom/alipay/android/phone/publicplatform/common/api/DaoHelper;->followAccountInfoDaoReference:Ljava/lang/ref/WeakReference;

    .line 62
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/android/main/publichome/dao/FollowAccountInfoDao;

    .line 63
    if-nez v1, :cond_0

    .line 67
    :try_start_0
    const-string/jumbo v2, "com.alipay.mobile.android.main.publichome.dao.impl.FollowAccountInfoDaoImpl"

    .line 66
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 69
    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/alipay/mobile/android/main/publichome/dao/FollowAccountInfoDao;

    move-object v1, v0

    .line 70
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v2, Lcom/alipay/android/phone/publicplatform/common/api/DaoHelper;->followAccountInfoDaoReference:Ljava/lang/ref/WeakReference;
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2

    .line 81
    :cond_0
    :goto_0
    return-object v1

    .line 72
    :catch_0
    move-exception v2

    .line 73
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v3

    const-string/jumbo v4, "DaoHelper"

    const-string/jumbo v5, "exception"

    invoke-interface {v3, v4, v5, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 74
    :catch_1
    move-exception v2

    .line 75
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v3

    const-string/jumbo v4, "DaoHelper"

    const-string/jumbo v5, "exception"

    invoke-interface {v3, v4, v5, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 76
    :catch_2
    move-exception v2

    .line 77
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v3

    const-string/jumbo v4, "DaoHelper"

    const-string/jumbo v5, "exception"

    invoke-interface {v3, v4, v5, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static getPpchatDaoInstance()Lcom/alipay/android/phone/publicplatform/common/api/PPChatDao;
    .locals 6

    .prologue
    .line 34
    sget-object v1, Lcom/alipay/android/phone/publicplatform/common/api/DaoHelper;->ppchatDaoReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/android/phone/publicplatform/common/api/PPChatDao;

    .line 35
    if-nez v1, :cond_0

    .line 38
    :try_start_0
    const-string/jumbo v2, "com.alipay.mobile.publicsvc.common.proguard.b.a"

    .line 37
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 39
    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/alipay/android/phone/publicplatform/common/api/PPChatDao;

    move-object v1, v0

    .line 40
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v2, Lcom/alipay/android/phone/publicplatform/common/api/DaoHelper;->ppchatDaoReference:Ljava/lang/ref/WeakReference;
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2

    .line 49
    :cond_0
    :goto_0
    return-object v1

    .line 41
    :catch_0
    move-exception v2

    .line 42
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v3

    const-string/jumbo v4, "DaoHelper"

    const-string/jumbo v5, "exception"

    invoke-interface {v3, v4, v5, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 43
    :catch_1
    move-exception v2

    .line 44
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v3

    const-string/jumbo v4, "DaoHelper"

    const-string/jumbo v5, "exception"

    invoke-interface {v3, v4, v5, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 45
    :catch_2
    move-exception v2

    .line 46
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v3

    const-string/jumbo v4, "DaoHelper"

    const-string/jumbo v5, "exception"

    invoke-interface {v3, v4, v5, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static getPublicRecommendDaoInstance()Lcom/alipay/mobile/publicrecom/dao/PublicRecommendDao;
    .locals 6

    .prologue
    .line 111
    sget-object v1, Lcom/alipay/android/phone/publicplatform/common/api/DaoHelper;->publicRecommendDaoReference:Ljava/lang/ref/WeakReference;

    .line 112
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/publicrecom/dao/PublicRecommendDao;

    .line 113
    if-nez v1, :cond_0

    .line 117
    :try_start_0
    const-string/jumbo v2, "com.alipay.mobile.publicrecom.dao.PublicRecommendDaoImpl"

    .line 116
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 118
    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/alipay/mobile/publicrecom/dao/PublicRecommendDao;

    move-object v1, v0

    .line 119
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v2, Lcom/alipay/android/phone/publicplatform/common/api/DaoHelper;->publicRecommendDaoReference:Ljava/lang/ref/WeakReference;
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2

    .line 129
    :cond_0
    :goto_0
    return-object v1

    .line 121
    :catch_0
    move-exception v2

    .line 122
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v3

    const-string/jumbo v4, "DaoHelper"

    const-string/jumbo v5, "exception"

    invoke-interface {v3, v4, v5, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 123
    :catch_1
    move-exception v2

    .line 124
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v3

    const-string/jumbo v4, "DaoHelper"

    const-string/jumbo v5, "exception"

    invoke-interface {v3, v4, v5, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 125
    :catch_2
    move-exception v2

    .line 126
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v3

    const-string/jumbo v4, "DaoHelper"

    const-string/jumbo v5, "exception"

    invoke-interface {v3, v4, v5, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static getSearchDaoInstance()Lcom/alipay/android/phone/publicplatform/common/api/SearchDao;
    .locals 6

    .prologue
    .line 90
    sget-object v1, Lcom/alipay/android/phone/publicplatform/common/api/DaoHelper;->searchDaoReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/android/phone/publicplatform/common/api/SearchDao;

    .line 91
    if-nez v1, :cond_0

    .line 95
    :try_start_0
    const-string/jumbo v2, "com.alipay.mobile.android.main.publichome.dao.impl.SearchDaoImpl"

    .line 94
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 96
    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/alipay/android/phone/publicplatform/common/api/SearchDao;

    move-object v1, v0

    .line 97
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v2, Lcom/alipay/android/phone/publicplatform/common/api/DaoHelper;->searchDaoReference:Ljava/lang/ref/WeakReference;
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2

    .line 106
    :cond_0
    :goto_0
    return-object v1

    .line 98
    :catch_0
    move-exception v2

    .line 99
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v3

    const-string/jumbo v4, "DaoHelper"

    const-string/jumbo v5, "exception"

    invoke-interface {v3, v4, v5, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 100
    :catch_1
    move-exception v2

    .line 101
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v3

    const-string/jumbo v4, "DaoHelper"

    const-string/jumbo v5, "exception"

    invoke-interface {v3, v4, v5, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 102
    :catch_2
    move-exception v2

    .line 103
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v3

    const-string/jumbo v4, "DaoHelper"

    const-string/jumbo v5, "exception"

    invoke-interface {v3, v4, v5, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
