.class public Lorg/apache/cordova/NativeToJsMessageQueue;
.super Ljava/lang/Object;
.source "NativeToJsMessageQueue.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/cordova/NativeToJsMessageQueue$1;,
        Lorg/apache/cordova/NativeToJsMessageQueue$JsMessage;,
        Lorg/apache/cordova/NativeToJsMessageQueue$PrivateApiBridgeMode;,
        Lorg/apache/cordova/NativeToJsMessageQueue$OnlineEventsBridgeMode;,
        Lorg/apache/cordova/NativeToJsMessageQueue$LoadUrlBridgeMode;,
        Lorg/apache/cordova/NativeToJsMessageQueue$BridgeMode;
    }
.end annotation


# static fields
.field private static final DEFAULT_BRIDGE_MODE:I = 0x2

.field static final DISABLE_EXEC_CHAINING:Z = false

.field static final ENABLE_LOCATION_CHANGE_EXEC_MODE:Z = false

.field private static final FORCE_ENCODE_USING_EVAL:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "JsMessageQueue"

.field private static MAX_PAYLOAD_SIZE:I


# instance fields
.field private activeListenerIndex:I

.field private final cordova:Lorg/apache/cordova/api/CordovaInterface;

.field private paused:Z

.field private final queue:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lorg/apache/cordova/NativeToJsMessageQueue$JsMessage;",
            ">;"
        }
    .end annotation
.end field

.field private final registeredListeners:[Lorg/apache/cordova/NativeToJsMessageQueue$BridgeMode;

.field private final webView:Lorg/apache/cordova/CordovaWebView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 56
    const/high16 v0, 0x1f400000

    sput v0, Lorg/apache/cordova/NativeToJsMessageQueue;->MAX_PAYLOAD_SIZE:I

    return-void
.end method

.method public constructor <init>(Lorg/apache/cordova/CordovaWebView;Lorg/apache/cordova/api/CordovaInterface;)V
    .locals 4
    .param p1, "webView"    # Lorg/apache/cordova/CordovaWebView;
    .param p2, "cordova"    # Lorg/apache/cordova/api/CordovaInterface;

    .prologue
    const/4 v3, 0x0

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/apache/cordova/NativeToJsMessageQueue;->queue:Ljava/util/LinkedList;

    .line 83
    iput-object p2, p0, Lorg/apache/cordova/NativeToJsMessageQueue;->cordova:Lorg/apache/cordova/api/CordovaInterface;

    .line 84
    iput-object p1, p0, Lorg/apache/cordova/NativeToJsMessageQueue;->webView:Lorg/apache/cordova/CordovaWebView;

    .line 85
    const/4 v0, 0x4

    new-array v0, v0, [Lorg/apache/cordova/NativeToJsMessageQueue$BridgeMode;

    iput-object v0, p0, Lorg/apache/cordova/NativeToJsMessageQueue;->registeredListeners:[Lorg/apache/cordova/NativeToJsMessageQueue$BridgeMode;

    .line 86
    iget-object v0, p0, Lorg/apache/cordova/NativeToJsMessageQueue;->registeredListeners:[Lorg/apache/cordova/NativeToJsMessageQueue$BridgeMode;

    const/4 v1, 0x0

    aput-object v3, v0, v1

    .line 87
    iget-object v0, p0, Lorg/apache/cordova/NativeToJsMessageQueue;->registeredListeners:[Lorg/apache/cordova/NativeToJsMessageQueue$BridgeMode;

    const/4 v1, 0x1

    new-instance v2, Lorg/apache/cordova/NativeToJsMessageQueue$LoadUrlBridgeMode;

    invoke-direct {v2, p0, v3}, Lorg/apache/cordova/NativeToJsMessageQueue$LoadUrlBridgeMode;-><init>(Lorg/apache/cordova/NativeToJsMessageQueue;Lorg/apache/cordova/NativeToJsMessageQueue$1;)V

    aput-object v2, v0, v1

    .line 88
    iget-object v0, p0, Lorg/apache/cordova/NativeToJsMessageQueue;->registeredListeners:[Lorg/apache/cordova/NativeToJsMessageQueue$BridgeMode;

    const/4 v1, 0x2

    new-instance v2, Lorg/apache/cordova/NativeToJsMessageQueue$OnlineEventsBridgeMode;

    invoke-direct {v2, p0}, Lorg/apache/cordova/NativeToJsMessageQueue$OnlineEventsBridgeMode;-><init>(Lorg/apache/cordova/NativeToJsMessageQueue;)V

    aput-object v2, v0, v1

    .line 89
    iget-object v0, p0, Lorg/apache/cordova/NativeToJsMessageQueue;->registeredListeners:[Lorg/apache/cordova/NativeToJsMessageQueue$BridgeMode;

    const/4 v1, 0x3

    new-instance v2, Lorg/apache/cordova/NativeToJsMessageQueue$PrivateApiBridgeMode;

    invoke-direct {v2, p0, v3}, Lorg/apache/cordova/NativeToJsMessageQueue$PrivateApiBridgeMode;-><init>(Lorg/apache/cordova/NativeToJsMessageQueue;Lorg/apache/cordova/NativeToJsMessageQueue$1;)V

    aput-object v2, v0, v1

    .line 90
    invoke-virtual {p0}, Lorg/apache/cordova/NativeToJsMessageQueue;->reset()V

    .line 91
    return-void
.end method

.method static synthetic access$300(Lorg/apache/cordova/NativeToJsMessageQueue;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/apache/cordova/NativeToJsMessageQueue;

    .prologue
    .line 35
    invoke-direct {p0}, Lorg/apache/cordova/NativeToJsMessageQueue;->popAndEncodeAsJs()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lorg/apache/cordova/NativeToJsMessageQueue;)Lorg/apache/cordova/CordovaWebView;
    .locals 1
    .param p0, "x0"    # Lorg/apache/cordova/NativeToJsMessageQueue;

    .prologue
    .line 35
    iget-object v0, p0, Lorg/apache/cordova/NativeToJsMessageQueue;->webView:Lorg/apache/cordova/CordovaWebView;

    return-object v0
.end method

.method static synthetic access$500(Lorg/apache/cordova/NativeToJsMessageQueue;)Lorg/apache/cordova/api/CordovaInterface;
    .locals 1
    .param p0, "x0"    # Lorg/apache/cordova/NativeToJsMessageQueue;

    .prologue
    .line 35
    iget-object v0, p0, Lorg/apache/cordova/NativeToJsMessageQueue;->cordova:Lorg/apache/cordova/api/CordovaInterface;

    return-object v0
.end method

.method static synthetic access$600(Lorg/apache/cordova/NativeToJsMessageQueue;)Ljava/util/LinkedList;
    .locals 1
    .param p0, "x0"    # Lorg/apache/cordova/NativeToJsMessageQueue;

    .prologue
    .line 35
    iget-object v0, p0, Lorg/apache/cordova/NativeToJsMessageQueue;->queue:Ljava/util/LinkedList;

    return-object v0
.end method

.method private calculatePackedMessageLength(Lorg/apache/cordova/NativeToJsMessageQueue$JsMessage;)I
    .locals 3
    .param p1, "message"    # Lorg/apache/cordova/NativeToJsMessageQueue$JsMessage;

    .prologue
    .line 124
    invoke-virtual {p1}, Lorg/apache/cordova/NativeToJsMessageQueue$JsMessage;->calculateEncodedLength()I

    move-result v0

    .line 125
    .local v0, "messageLen":I
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 126
    .local v1, "messageLenStr":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v2, v0

    add-int/lit8 v2, v2, 0x1

    return v2
.end method

.method private enqueueMessage(Lorg/apache/cordova/NativeToJsMessageQueue$JsMessage;)V
    .locals 2
    .param p1, "message"    # Lorg/apache/cordova/NativeToJsMessageQueue$JsMessage;

    .prologue
    .line 250
    monitor-enter p0

    .line 251
    :try_start_0
    iget-object v0, p0, Lorg/apache/cordova/NativeToJsMessageQueue;->queue:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 252
    iget-boolean v0, p0, Lorg/apache/cordova/NativeToJsMessageQueue;->paused:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/cordova/NativeToJsMessageQueue;->registeredListeners:[Lorg/apache/cordova/NativeToJsMessageQueue$BridgeMode;

    iget v1, p0, Lorg/apache/cordova/NativeToJsMessageQueue;->activeListenerIndex:I

    aget-object v0, v0, v1

    if-eqz v0, :cond_0

    .line 253
    iget-object v0, p0, Lorg/apache/cordova/NativeToJsMessageQueue;->registeredListeners:[Lorg/apache/cordova/NativeToJsMessageQueue$BridgeMode;

    iget v1, p0, Lorg/apache/cordova/NativeToJsMessageQueue;->activeListenerIndex:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lorg/apache/cordova/NativeToJsMessageQueue$BridgeMode;->onNativeToJsMessageAvailable()V

    .line 255
    :cond_0
    monitor-exit p0

    .line 256
    return-void

    .line 255
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private packMessage(Lorg/apache/cordova/NativeToJsMessageQueue$JsMessage;Ljava/lang/StringBuilder;)V
    .locals 3
    .param p1, "message"    # Lorg/apache/cordova/NativeToJsMessageQueue$JsMessage;
    .param p2, "sb"    # Ljava/lang/StringBuilder;

    .prologue
    .line 130
    invoke-virtual {p1}, Lorg/apache/cordova/NativeToJsMessageQueue$JsMessage;->calculateEncodedLength()I

    move-result v0

    .line 131
    .local v0, "len":I
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 133
    invoke-virtual {p1, p2}, Lorg/apache/cordova/NativeToJsMessageQueue$JsMessage;->encodeAsMessage(Ljava/lang/StringBuilder;)V

    .line 134
    return-void
.end method

.method private popAndEncodeAsJs()Ljava/lang/String;
    .locals 14

    .prologue
    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 177
    monitor-enter p0

    .line 178
    :try_start_0
    iget-object v12, p0, Lorg/apache/cordova/NativeToJsMessageQueue;->queue:Ljava/util/LinkedList;

    invoke-virtual {v12}, Ljava/util/LinkedList;->size()I

    move-result v2

    .line 179
    .local v2, "length":I
    if-nez v2, :cond_0

    .line 180
    const/4 v6, 0x0

    monitor-exit p0

    .line 213
    :goto_0
    return-object v6

    .line 182
    :cond_0
    const/4 v8, 0x0

    .line 183
    .local v8, "totalPayloadLen":I
    const/4 v5, 0x0

    .line 184
    .local v5, "numMessagesToSend":I
    iget-object v12, p0, Lorg/apache/cordova/NativeToJsMessageQueue;->queue:Ljava/util/LinkedList;

    invoke-virtual {v12}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/cordova/NativeToJsMessageQueue$JsMessage;

    .line 185
    .local v3, "message":Lorg/apache/cordova/NativeToJsMessageQueue$JsMessage;
    invoke-virtual {v3}, Lorg/apache/cordova/NativeToJsMessageQueue$JsMessage;->calculateEncodedLength()I

    move-result v12

    add-int/lit8 v4, v12, 0x32

    .line 186
    .local v4, "messageSize":I
    if-lez v5, :cond_2

    add-int v12, v8, v4

    sget v13, Lorg/apache/cordova/NativeToJsMessageQueue;->MAX_PAYLOAD_SIZE:I

    if-le v12, v13, :cond_2

    sget v12, Lorg/apache/cordova/NativeToJsMessageQueue;->MAX_PAYLOAD_SIZE:I

    if-lez v12, :cond_2

    .line 192
    .end local v3    # "message":Lorg/apache/cordova/NativeToJsMessageQueue$JsMessage;
    .end local v4    # "messageSize":I
    :cond_1
    iget-object v12, p0, Lorg/apache/cordova/NativeToJsMessageQueue;->queue:Ljava/util/LinkedList;

    invoke-virtual {v12}, Ljava/util/LinkedList;->size()I

    move-result v12

    if-ne v5, v12, :cond_3

    move v9, v10

    .line 193
    .local v9, "willSendAllMessages":Z
    :goto_2
    new-instance v7, Ljava/lang/StringBuilder;

    if-eqz v9, :cond_4

    move v12, v11

    :goto_3
    add-int/2addr v12, v8

    invoke-direct {v7, v12}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 196
    .local v7, "sb":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_4
    if-ge v0, v5, :cond_6

    .line 197
    iget-object v12, p0, Lorg/apache/cordova/NativeToJsMessageQueue;->queue:Ljava/util/LinkedList;

    invoke-virtual {v12}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/cordova/NativeToJsMessageQueue$JsMessage;

    .line 198
    .restart local v3    # "message":Lorg/apache/cordova/NativeToJsMessageQueue$JsMessage;
    if-eqz v9, :cond_5

    add-int/lit8 v12, v0, 0x1

    if-ne v12, v5, :cond_5

    .line 199
    invoke-virtual {v3, v7}, Lorg/apache/cordova/NativeToJsMessageQueue$JsMessage;->encodeAsJsMessage(Ljava/lang/StringBuilder;)V

    .line 196
    :goto_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 189
    .end local v0    # "i":I
    .end local v7    # "sb":Ljava/lang/StringBuilder;
    .end local v9    # "willSendAllMessages":Z
    .restart local v4    # "messageSize":I
    :cond_2
    add-int/2addr v8, v4

    .line 190
    add-int/lit8 v5, v5, 0x1

    .line 191
    goto :goto_1

    .end local v3    # "message":Lorg/apache/cordova/NativeToJsMessageQueue$JsMessage;
    .end local v4    # "messageSize":I
    :cond_3
    move v9, v11

    .line 192
    goto :goto_2

    .line 193
    .restart local v9    # "willSendAllMessages":Z
    :cond_4
    const/16 v12, 0x64

    goto :goto_3

    .line 201
    .restart local v0    # "i":I
    .restart local v3    # "message":Lorg/apache/cordova/NativeToJsMessageQueue$JsMessage;
    .restart local v7    # "sb":Ljava/lang/StringBuilder;
    :cond_5
    const-string v12, "try{"

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    invoke-virtual {v3, v7}, Lorg/apache/cordova/NativeToJsMessageQueue$JsMessage;->encodeAsJsMessage(Ljava/lang/StringBuilder;)V

    .line 203
    const-string v12, "}finally{"

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 214
    .end local v0    # "i":I
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "length":I
    .end local v3    # "message":Lorg/apache/cordova/NativeToJsMessageQueue$JsMessage;
    .end local v5    # "numMessagesToSend":I
    .end local v7    # "sb":Ljava/lang/StringBuilder;
    .end local v8    # "totalPayloadLen":I
    .end local v9    # "willSendAllMessages":Z
    :catchall_0
    move-exception v10

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v10

    .line 206
    .restart local v0    # "i":I
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v2    # "length":I
    .restart local v5    # "numMessagesToSend":I
    .restart local v7    # "sb":Ljava/lang/StringBuilder;
    .restart local v8    # "totalPayloadLen":I
    .restart local v9    # "willSendAllMessages":Z
    :cond_6
    if-nez v9, :cond_7

    .line 207
    :try_start_1
    const-string v12, "window.setTimeout(function(){cordova.require(\'cordova/plugin/android/polling\').pollOnce();},0);"

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    :cond_7
    if-eqz v9, :cond_8

    move v0, v10

    :goto_6
    if-ge v0, v5, :cond_9

    .line 210
    const/16 v10, 0x7d

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 209
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_8
    move v0, v11

    goto :goto_6

    .line 212
    :cond_9
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 213
    .local v6, "ret":Ljava/lang/String;
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0
.end method


# virtual methods
.method public addJavaScript(Ljava/lang/String;)V
    .locals 1
    .param p1, "statement"    # Ljava/lang/String;

    .prologue
    .line 221
    new-instance v0, Lorg/apache/cordova/NativeToJsMessageQueue$JsMessage;

    invoke-direct {v0, p1}, Lorg/apache/cordova/NativeToJsMessageQueue$JsMessage;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lorg/apache/cordova/NativeToJsMessageQueue;->enqueueMessage(Lorg/apache/cordova/NativeToJsMessageQueue$JsMessage;)V

    .line 222
    return-void
.end method

.method public addPluginResult(Lorg/apache/cordova/api/PluginResult;Ljava/lang/String;)V
    .locals 6
    .param p1, "result"    # Lorg/apache/cordova/api/PluginResult;
    .param p2, "callbackId"    # Ljava/lang/String;

    .prologue
    .line 228
    if-nez p2, :cond_1

    .line 229
    const-string v3, "JsMessageQueue"

    const-string v4, "Got plugin result with no callbackId"

    new-instance v5, Ljava/lang/Throwable;

    invoke-direct {v5}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v3, v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 247
    :cond_0
    :goto_0
    return-void

    .line 234
    :cond_1
    invoke-virtual {p1}, Lorg/apache/cordova/api/PluginResult;->getStatus()I

    move-result v3

    sget-object v4, Lorg/apache/cordova/api/PluginResult$Status;->NO_RESULT:Lorg/apache/cordova/api/PluginResult$Status;

    invoke-virtual {v4}, Lorg/apache/cordova/api/PluginResult$Status;->ordinal()I

    move-result v4

    if-ne v3, v4, :cond_3

    const/4 v2, 0x1

    .line 235
    .local v2, "noResult":Z
    :goto_1
    invoke-virtual {p1}, Lorg/apache/cordova/api/PluginResult;->getKeepCallback()Z

    move-result v0

    .line 236
    .local v0, "keepCallback":Z
    if-eqz v2, :cond_2

    if-nez v0, :cond_0

    .line 239
    :cond_2
    new-instance v1, Lorg/apache/cordova/NativeToJsMessageQueue$JsMessage;

    invoke-direct {v1, p1, p2}, Lorg/apache/cordova/NativeToJsMessageQueue$JsMessage;-><init>(Lorg/apache/cordova/api/PluginResult;Ljava/lang/String;)V

    .line 246
    .local v1, "message":Lorg/apache/cordova/NativeToJsMessageQueue$JsMessage;
    invoke-direct {p0, v1}, Lorg/apache/cordova/NativeToJsMessageQueue;->enqueueMessage(Lorg/apache/cordova/NativeToJsMessageQueue$JsMessage;)V

    goto :goto_0

    .line 234
    .end local v0    # "keepCallback":Z
    .end local v1    # "message":Lorg/apache/cordova/NativeToJsMessageQueue$JsMessage;
    .end local v2    # "noResult":Z
    :cond_3
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public getPaused()Z
    .locals 1

    .prologue
    .line 275
    iget-boolean v0, p0, Lorg/apache/cordova/NativeToJsMessageQueue;->paused:Z

    return v0
.end method

.method public popAndEncode(Z)Ljava/lang/String;
    .locals 10
    .param p1, "fromOnlineEvent"    # Z

    .prologue
    .line 142
    monitor-enter p0

    .line 143
    :try_start_0
    iget-object v8, p0, Lorg/apache/cordova/NativeToJsMessageQueue;->registeredListeners:[Lorg/apache/cordova/NativeToJsMessageQueue$BridgeMode;

    iget v9, p0, Lorg/apache/cordova/NativeToJsMessageQueue;->activeListenerIndex:I

    aget-object v8, v8, v9

    invoke-virtual {v8, p1}, Lorg/apache/cordova/NativeToJsMessageQueue$BridgeMode;->notifyOfFlush(Z)V

    .line 144
    iget-object v8, p0, Lorg/apache/cordova/NativeToJsMessageQueue;->queue:Ljava/util/LinkedList;

    invoke-virtual {v8}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 145
    const/4 v5, 0x0

    monitor-exit p0

    .line 169
    :goto_0
    return-object v5

    .line 147
    :cond_0
    const/4 v7, 0x0

    .line 148
    .local v7, "totalPayloadLen":I
    const/4 v4, 0x0

    .line 149
    .local v4, "numMessagesToSend":I
    iget-object v8, p0, Lorg/apache/cordova/NativeToJsMessageQueue;->queue:Ljava/util/LinkedList;

    invoke-virtual {v8}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/cordova/NativeToJsMessageQueue$JsMessage;

    .line 150
    .local v2, "message":Lorg/apache/cordova/NativeToJsMessageQueue$JsMessage;
    invoke-direct {p0, v2}, Lorg/apache/cordova/NativeToJsMessageQueue;->calculatePackedMessageLength(Lorg/apache/cordova/NativeToJsMessageQueue$JsMessage;)I

    move-result v3

    .line 151
    .local v3, "messageSize":I
    if-lez v4, :cond_2

    add-int v8, v7, v3

    sget v9, Lorg/apache/cordova/NativeToJsMessageQueue;->MAX_PAYLOAD_SIZE:I

    if-le v8, v9, :cond_2

    sget v8, Lorg/apache/cordova/NativeToJsMessageQueue;->MAX_PAYLOAD_SIZE:I

    if-lez v8, :cond_2

    .line 158
    .end local v2    # "message":Lorg/apache/cordova/NativeToJsMessageQueue$JsMessage;
    .end local v3    # "messageSize":I
    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 159
    .local v6, "sb":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    if-ge v0, v4, :cond_3

    .line 160
    iget-object v8, p0, Lorg/apache/cordova/NativeToJsMessageQueue;->queue:Ljava/util/LinkedList;

    invoke-virtual {v8}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/cordova/NativeToJsMessageQueue$JsMessage;

    .line 161
    .restart local v2    # "message":Lorg/apache/cordova/NativeToJsMessageQueue$JsMessage;
    invoke-direct {p0, v2, v6}, Lorg/apache/cordova/NativeToJsMessageQueue;->packMessage(Lorg/apache/cordova/NativeToJsMessageQueue$JsMessage;Ljava/lang/StringBuilder;)V

    .line 159
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 154
    .end local v0    # "i":I
    .end local v6    # "sb":Ljava/lang/StringBuilder;
    .restart local v3    # "messageSize":I
    :cond_2
    add-int/2addr v7, v3

    .line 155
    add-int/lit8 v4, v4, 0x1

    .line 156
    goto :goto_1

    .line 164
    .end local v2    # "message":Lorg/apache/cordova/NativeToJsMessageQueue$JsMessage;
    .end local v3    # "messageSize":I
    .restart local v0    # "i":I
    .restart local v6    # "sb":Ljava/lang/StringBuilder;
    :cond_3
    iget-object v8, p0, Lorg/apache/cordova/NativeToJsMessageQueue;->queue:Ljava/util/LinkedList;

    invoke-virtual {v8}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_4

    .line 166
    const/16 v8, 0x2a

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 168
    :cond_4
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 169
    .local v5, "ret":Ljava/lang/String;
    monitor-exit p0

    goto :goto_0

    .line 170
    .end local v0    # "i":I
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v4    # "numMessagesToSend":I
    .end local v5    # "ret":Ljava/lang/String;
    .end local v6    # "sb":Ljava/lang/StringBuilder;
    .end local v7    # "totalPayloadLen":I
    :catchall_0
    move-exception v8

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v8
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 117
    monitor-enter p0

    .line 118
    :try_start_0
    iget-object v0, p0, Lorg/apache/cordova/NativeToJsMessageQueue;->queue:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 119
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lorg/apache/cordova/NativeToJsMessageQueue;->setBridgeMode(I)V

    .line 120
    monitor-exit p0

    .line 121
    return-void

    .line 120
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setBridgeMode(I)V
    .locals 4
    .param p1, "value"    # I

    .prologue
    .line 97
    if-ltz p1, :cond_0

    iget-object v1, p0, Lorg/apache/cordova/NativeToJsMessageQueue;->registeredListeners:[Lorg/apache/cordova/NativeToJsMessageQueue$BridgeMode;

    array-length v1, v1

    if-lt p1, v1, :cond_2

    .line 98
    :cond_0
    const-string v1, "JsMessageQueue"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid NativeToJsBridgeMode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    :cond_1
    :goto_0
    return-void

    .line 100
    :cond_2
    iget v1, p0, Lorg/apache/cordova/NativeToJsMessageQueue;->activeListenerIndex:I

    if-eq p1, v1, :cond_1

    .line 101
    const-string v1, "JsMessageQueue"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Set native->JS mode to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    monitor-enter p0

    .line 103
    :try_start_0
    iput p1, p0, Lorg/apache/cordova/NativeToJsMessageQueue;->activeListenerIndex:I

    .line 104
    iget-object v1, p0, Lorg/apache/cordova/NativeToJsMessageQueue;->registeredListeners:[Lorg/apache/cordova/NativeToJsMessageQueue$BridgeMode;

    aget-object v0, v1, p1

    .line 105
    .local v0, "activeListener":Lorg/apache/cordova/NativeToJsMessageQueue$BridgeMode;
    iget-boolean v1, p0, Lorg/apache/cordova/NativeToJsMessageQueue;->paused:Z

    if-nez v1, :cond_3

    iget-object v1, p0, Lorg/apache/cordova/NativeToJsMessageQueue;->queue:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    if-eqz v0, :cond_3

    .line 106
    invoke-virtual {v0}, Lorg/apache/cordova/NativeToJsMessageQueue$BridgeMode;->onNativeToJsMessageAvailable()V

    .line 108
    :cond_3
    monitor-exit p0

    goto :goto_0

    .end local v0    # "activeListener":Lorg/apache/cordova/NativeToJsMessageQueue$BridgeMode;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setPaused(Z)V
    .locals 3
    .param p1, "value"    # Z

    .prologue
    .line 259
    iget-boolean v0, p0, Lorg/apache/cordova/NativeToJsMessageQueue;->paused:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 262
    const-string v0, "JsMessageQueue"

    const-string v1, "nested call to setPaused detected."

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 264
    :cond_0
    iput-boolean p1, p0, Lorg/apache/cordova/NativeToJsMessageQueue;->paused:Z

    .line 265
    if-nez p1, :cond_2

    .line 266
    monitor-enter p0

    .line 267
    :try_start_0
    iget-object v0, p0, Lorg/apache/cordova/NativeToJsMessageQueue;->queue:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/apache/cordova/NativeToJsMessageQueue;->registeredListeners:[Lorg/apache/cordova/NativeToJsMessageQueue$BridgeMode;

    iget v1, p0, Lorg/apache/cordova/NativeToJsMessageQueue;->activeListenerIndex:I

    aget-object v0, v0, v1

    if-eqz v0, :cond_1

    .line 268
    iget-object v0, p0, Lorg/apache/cordova/NativeToJsMessageQueue;->registeredListeners:[Lorg/apache/cordova/NativeToJsMessageQueue$BridgeMode;

    iget v1, p0, Lorg/apache/cordova/NativeToJsMessageQueue;->activeListenerIndex:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lorg/apache/cordova/NativeToJsMessageQueue$BridgeMode;->onNativeToJsMessageAvailable()V

    .line 270
    :cond_1
    monitor-exit p0

    .line 272
    :cond_2
    return-void

    .line 270
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
