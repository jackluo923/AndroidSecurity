.class Lcom/facebook/AppEventsLogger$SessionEventsState;
.super Ljava/lang/Object;
.source "AppEventsLogger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/AppEventsLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SessionEventsState"
.end annotation


# static fields
.field public static final ENCODED_EVENTS_KEY:Ljava/lang/String; = "encoded_events"

.field public static final EVENT_COUNT_KEY:Ljava/lang/String; = "event_count"

.field public static final NUM_SKIPPED_KEY:Ljava/lang/String; = "num_skipped"


# instance fields
.field private final MAX_ACCUMULATED_LOG_EVENTS:I

.field private accumulatedEvents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/facebook/AppEventsLogger$AppEvent;",
            ">;"
        }
    .end annotation
.end field

.field private attributionId:Ljava/lang/String;

.field private inFlightEvents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/facebook/AppEventsLogger$AppEvent;",
            ">;"
        }
    .end annotation
.end field

.field private numSkippedEventsDueToFullBuffer:I

.field private packageName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "attributionId"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 918
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 906
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/AppEventsLogger$SessionEventsState;->accumulatedEvents:Ljava/util/List;

    .line 907
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/AppEventsLogger$SessionEventsState;->inFlightEvents:Ljava/util/List;

    .line 916
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/facebook/AppEventsLogger$SessionEventsState;->MAX_ACCUMULATED_LOG_EVENTS:I

    .line 919
    iput-object p1, p0, Lcom/facebook/AppEventsLogger$SessionEventsState;->attributionId:Ljava/lang/String;

    .line 920
    iput-object p2, p0, Lcom/facebook/AppEventsLogger$SessionEventsState;->packageName:Ljava/lang/String;

    .line 921
    return-void
.end method

.method private getStringAsByteArray(Ljava/lang/String;)[B
    .locals 3
    .param p1, "jsonString"    # Ljava/lang/String;

    .prologue
    .line 1020
    const/4 v1, 0x0

    .line 1022
    .local v1, "jsonUtf8":[B
    :try_start_0
    const-string v2, "UTF-8"

    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1027
    :goto_0
    return-object v1

    .line 1023
    :catch_0
    move-exception v0

    .line 1025
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    const-string v2, "Encoding exception: "

    invoke-static {v2, v0}, Lcom/facebook/internal/Utility;->logd(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method private populateRequest(Lcom/facebook/Request;ILorg/json/JSONArray;ZZ)V
    .locals 5
    .param p1, "request"    # Lcom/facebook/Request;
    .param p2, "numSkipped"    # I
    .param p3, "events"    # Lorg/json/JSONArray;
    .param p4, "includeAttribution"    # Z
    .param p5, "limitEventUsage"    # Z

    .prologue
    .line 990
    invoke-static {}, Lcom/facebook/model/GraphObject$Factory;->create()Lcom/facebook/model/GraphObject;

    move-result-object v1

    .line 991
    .local v1, "publishParams":Lcom/facebook/model/GraphObject;
    const-string v3, "event"

    const-string v4, "CUSTOM_APP_EVENTS"

    invoke-interface {v1, v3, v4}, Lcom/facebook/model/GraphObject;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 993
    iget v3, p0, Lcom/facebook/AppEventsLogger$SessionEventsState;->numSkippedEventsDueToFullBuffer:I

    if-lez v3, :cond_0

    .line 994
    const-string v3, "num_skipped_events"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Lcom/facebook/model/GraphObject;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 997
    :cond_0
    if-eqz p4, :cond_1

    iget-object v3, p0, Lcom/facebook/AppEventsLogger$SessionEventsState;->attributionId:Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 998
    const-string v3, "attribution"

    iget-object v4, p0, Lcom/facebook/AppEventsLogger$SessionEventsState;->attributionId:Ljava/lang/String;

    invoke-interface {v1, v3, v4}, Lcom/facebook/model/GraphObject;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1001
    :cond_1
    const-string v4, "application_tracking_enabled"

    if-eqz p5, :cond_4

    const/4 v3, 0x0

    :goto_0
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v1, v4, v3}, Lcom/facebook/model/GraphObject;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1002
    const-string v3, "application_package_name"

    iget-object v4, p0, Lcom/facebook/AppEventsLogger$SessionEventsState;->packageName:Ljava/lang/String;

    invoke-interface {v1, v3, v4}, Lcom/facebook/model/GraphObject;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1004
    invoke-virtual {p1, v1}, Lcom/facebook/Request;->setGraphObject(Lcom/facebook/model/GraphObject;)V

    .line 1006
    invoke-virtual {p1}, Lcom/facebook/Request;->getParameters()Landroid/os/Bundle;

    move-result-object v2

    .line 1007
    .local v2, "requestParameters":Landroid/os/Bundle;
    if-nez v2, :cond_2

    .line 1008
    new-instance v2, Landroid/os/Bundle;

    .end local v2    # "requestParameters":Landroid/os/Bundle;
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 1011
    .restart local v2    # "requestParameters":Landroid/os/Bundle;
    :cond_2
    invoke-virtual {p3}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1012
    .local v0, "jsonString":Ljava/lang/String;
    if-eqz v0, :cond_3

    .line 1013
    const-string v3, "custom_events_file"

    invoke-direct {p0, v0}, Lcom/facebook/AppEventsLogger$SessionEventsState;->getStringAsByteArray(Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 1014
    invoke-virtual {p1, v0}, Lcom/facebook/Request;->setTag(Ljava/lang/Object;)V

    .line 1016
    :cond_3
    invoke-virtual {p1, v2}, Lcom/facebook/Request;->setParameters(Landroid/os/Bundle;)V

    .line 1017
    return-void

    .line 1001
    .end local v0    # "jsonString":Ljava/lang/String;
    .end local v2    # "requestParameters":Landroid/os/Bundle;
    :cond_4
    const/4 v3, 0x1

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized accumulatePersistedEvents(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/AppEventsLogger$AppEvent;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 985
    .local p1, "events":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/AppEventsLogger$AppEvent;>;"
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/AppEventsLogger$SessionEventsState;->accumulatedEvents:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 986
    monitor-exit p0

    return-void

    .line 985
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized addEvent(Lcom/facebook/AppEventsLogger$AppEvent;)V
    .locals 2
    .param p1, "event"    # Lcom/facebook/AppEventsLogger$AppEvent;

    .prologue
    .line 926
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/AppEventsLogger$SessionEventsState;->accumulatedEvents:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/facebook/AppEventsLogger$SessionEventsState;->inFlightEvents:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v0, v1

    const/16 v1, 0x3e8

    if-lt v0, v1, :cond_0

    .line 927
    iget v0, p0, Lcom/facebook/AppEventsLogger$SessionEventsState;->numSkippedEventsDueToFullBuffer:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/facebook/AppEventsLogger$SessionEventsState;->numSkippedEventsDueToFullBuffer:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 931
    :goto_0
    monitor-exit p0

    return-void

    .line 929
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/facebook/AppEventsLogger$SessionEventsState;->accumulatedEvents:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 926
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized clearInFlightAndStats(Z)V
    .locals 2
    .param p1, "moveToAccumulated"    # Z

    .prologue
    .line 938
    monitor-enter p0

    if-eqz p1, :cond_0

    .line 939
    :try_start_0
    iget-object v0, p0, Lcom/facebook/AppEventsLogger$SessionEventsState;->accumulatedEvents:Ljava/util/List;

    iget-object v1, p0, Lcom/facebook/AppEventsLogger$SessionEventsState;->inFlightEvents:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 941
    :cond_0
    iget-object v0, p0, Lcom/facebook/AppEventsLogger$SessionEventsState;->inFlightEvents:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 942
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/AppEventsLogger$SessionEventsState;->numSkippedEventsDueToFullBuffer:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 943
    monitor-exit p0

    return-void

    .line 938
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getAccumulatedEventCount()I
    .locals 1

    .prologue
    .line 934
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/AppEventsLogger$SessionEventsState;->accumulatedEvents:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getEventsToPersist()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/AppEventsLogger$AppEvent;",
            ">;"
        }
    .end annotation

    .prologue
    .line 977
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/AppEventsLogger$SessionEventsState;->accumulatedEvents:Ljava/util/List;

    .line 978
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/AppEventsLogger$AppEvent;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/facebook/AppEventsLogger$SessionEventsState;->accumulatedEvents:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 979
    monitor-exit p0

    return-object v0

    .line 977
    .end local v0    # "result":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/AppEventsLogger$AppEvent;>;"
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public populateRequest(Lcom/facebook/Request;ZZZ)I
    .locals 7
    .param p1, "request"    # Lcom/facebook/Request;
    .param p2, "includeImplicitEvents"    # Z
    .param p3, "includeAttribution"    # Z
    .param p4, "limitEventUsage"    # Z

    .prologue
    .line 950
    monitor-enter p0

    .line 951
    :try_start_0
    iget v2, p0, Lcom/facebook/AppEventsLogger$SessionEventsState;->numSkippedEventsDueToFullBuffer:I

    .line 954
    .local v2, "numSkipped":I
    iget-object v0, p0, Lcom/facebook/AppEventsLogger$SessionEventsState;->inFlightEvents:Ljava/util/List;

    iget-object v1, p0, Lcom/facebook/AppEventsLogger$SessionEventsState;->accumulatedEvents:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 955
    iget-object v0, p0, Lcom/facebook/AppEventsLogger$SessionEventsState;->accumulatedEvents:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 957
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 958
    .local v3, "jsonArray":Lorg/json/JSONArray;
    iget-object v0, p0, Lcom/facebook/AppEventsLogger$SessionEventsState;->inFlightEvents:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_1

    .line 964
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-nez v0, :cond_3

    .line 965
    monitor-exit p0

    const/4 v0, 0x0

    .line 970
    :goto_1
    return v0

    .line 958
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/facebook/AppEventsLogger$AppEvent;

    .line 959
    .local v6, "event":Lcom/facebook/AppEventsLogger$AppEvent;
    if-nez p2, :cond_2

    invoke-virtual {v6}, Lcom/facebook/AppEventsLogger$AppEvent;->getIsImplicit()Z

    move-result v1

    if-nez v1, :cond_0

    .line 960
    :cond_2
    invoke-virtual {v6}, Lcom/facebook/AppEventsLogger$AppEvent;->getJSONObject()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v3, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    .line 950
    .end local v2    # "numSkipped":I
    .end local v3    # "jsonArray":Lorg/json/JSONArray;
    .end local v6    # "event":Lcom/facebook/AppEventsLogger$AppEvent;
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .restart local v2    # "numSkipped":I
    .restart local v3    # "jsonArray":Lorg/json/JSONArray;
    :cond_3
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, p0

    move-object v1, p1

    move v4, p3

    move v5, p4

    .line 969
    invoke-direct/range {v0 .. v5}, Lcom/facebook/AppEventsLogger$SessionEventsState;->populateRequest(Lcom/facebook/Request;ILorg/json/JSONArray;ZZ)V

    .line 970
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v0

    goto :goto_1
.end method
