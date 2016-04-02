.class public Lcom/alipay/mobile/chatsdk/api/ChatMessage;
.super Lcom/alipay/mobile/chatsdk/api/MessagePayload;
.source "ChatMessage.java"


# static fields
.field private static final serialVersionUID:J = 0x14fe1aea4d782fcaL


# instance fields
.field public appId:Ljava/lang/String;

.field public ext:Ljava/lang/String;

.field public hasMore:Z

.field public isExt:Ljava/lang/String;

.field public isRead:Ljava/lang/String;

.field public isSc:Ljava/lang/String;

.field public localTime:Ljava/util/Date;

.field public mId:I

.field public mct:Ljava/util/Date;

.field public mk:Ljava/lang/String;

.field public msgDirection:Ljava/lang/String;

.field public msgStatus:Ljava/lang/String;

.field public pluginType:Ljava/lang/String;

.field public reserv1:Ljava/lang/String;

.field public reserv2:Ljava/lang/String;

.field public shopId:Ljava/lang/String;

.field public st:Ljava/lang/String;

.field public toId:Ljava/lang/String;

.field public userId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/alipay/mobile/chatsdk/api/MessagePayload;-><init>()V

    return-void
.end method
