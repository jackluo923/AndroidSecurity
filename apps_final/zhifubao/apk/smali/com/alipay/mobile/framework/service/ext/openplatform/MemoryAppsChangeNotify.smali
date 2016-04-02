.class public Lcom/alipay/mobile/framework/service/ext/openplatform/MemoryAppsChangeNotify;
.super Ljava/lang/Object;
.source "MemoryAppsChangeNotify.java"


# static fields
.field public static final ACTION_MEMORY_APPS_CHANGE:I = 0x1


# instance fields
.field private action:I

.field private parentStageCode:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const/4 v0, 0x1

    iput v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/MemoryAppsChangeNotify;->action:I

    .line 17
    iput p1, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/MemoryAppsChangeNotify;->action:I

    .line 18
    iput-object p2, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/MemoryAppsChangeNotify;->parentStageCode:Ljava/lang/String;

    .line 19
    return-void
.end method


# virtual methods
.method public getParentStageCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/MemoryAppsChangeNotify;->parentStageCode:Ljava/lang/String;

    return-object v0
.end method
