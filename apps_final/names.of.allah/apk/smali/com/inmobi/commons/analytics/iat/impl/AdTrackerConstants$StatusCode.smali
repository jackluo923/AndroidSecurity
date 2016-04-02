.class public final enum Lcom/inmobi/commons/analytics/iat/impl/AdTrackerConstants$StatusCode;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/inmobi/commons/analytics/iat/impl/AdTrackerConstants$StatusCode;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum APP_ANALYTICS_PREVIOUSLY_UPLOADED:Lcom/inmobi/commons/analytics/iat/impl/AdTrackerConstants$StatusCode;

.field public static final enum APP_ANALYTICS_UPLOAD_FAILURE:Lcom/inmobi/commons/analytics/iat/impl/AdTrackerConstants$StatusCode;

.field public static final enum APP_ANALYTICS_UPLOAD_SUCCESS:Lcom/inmobi/commons/analytics/iat/impl/AdTrackerConstants$StatusCode;

.field public static final enum APP_CONTEXT_NULL:Lcom/inmobi/commons/analytics/iat/impl/AdTrackerConstants$StatusCode;

.field public static final enum APP_NOT_CONNECTED:Lcom/inmobi/commons/analytics/iat/impl/AdTrackerConstants$StatusCode;

.field public static final enum ODIN1_NULL:Lcom/inmobi/commons/analytics/iat/impl/AdTrackerConstants$StatusCode;

.field public static final enum RELOAD_WEBVIEW_ERROR:Lcom/inmobi/commons/analytics/iat/impl/AdTrackerConstants$StatusCode;

.field private static final synthetic a:[Lcom/inmobi/commons/analytics/iat/impl/AdTrackerConstants$StatusCode;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/inmobi/commons/analytics/iat/impl/AdTrackerConstants$StatusCode;

    const-string v1, "APP_ANALYTICS_UPLOAD_SUCCESS"

    invoke-direct {v0, v1, v3}, Lcom/inmobi/commons/analytics/iat/impl/AdTrackerConstants$StatusCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/inmobi/commons/analytics/iat/impl/AdTrackerConstants$StatusCode;->APP_ANALYTICS_UPLOAD_SUCCESS:Lcom/inmobi/commons/analytics/iat/impl/AdTrackerConstants$StatusCode;

    new-instance v0, Lcom/inmobi/commons/analytics/iat/impl/AdTrackerConstants$StatusCode;

    const-string v1, "APP_CONTEXT_NULL"

    invoke-direct {v0, v1, v4}, Lcom/inmobi/commons/analytics/iat/impl/AdTrackerConstants$StatusCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/inmobi/commons/analytics/iat/impl/AdTrackerConstants$StatusCode;->APP_CONTEXT_NULL:Lcom/inmobi/commons/analytics/iat/impl/AdTrackerConstants$StatusCode;

    new-instance v0, Lcom/inmobi/commons/analytics/iat/impl/AdTrackerConstants$StatusCode;

    const-string v1, "APP_ANALYTICS_PREVIOUSLY_UPLOADED"

    invoke-direct {v0, v1, v5}, Lcom/inmobi/commons/analytics/iat/impl/AdTrackerConstants$StatusCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/inmobi/commons/analytics/iat/impl/AdTrackerConstants$StatusCode;->APP_ANALYTICS_PREVIOUSLY_UPLOADED:Lcom/inmobi/commons/analytics/iat/impl/AdTrackerConstants$StatusCode;

    new-instance v0, Lcom/inmobi/commons/analytics/iat/impl/AdTrackerConstants$StatusCode;

    const-string v1, "ODIN1_NULL"

    invoke-direct {v0, v1, v6}, Lcom/inmobi/commons/analytics/iat/impl/AdTrackerConstants$StatusCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/inmobi/commons/analytics/iat/impl/AdTrackerConstants$StatusCode;->ODIN1_NULL:Lcom/inmobi/commons/analytics/iat/impl/AdTrackerConstants$StatusCode;

    new-instance v0, Lcom/inmobi/commons/analytics/iat/impl/AdTrackerConstants$StatusCode;

    const-string v1, "APP_ANALYTICS_UPLOAD_FAILURE"

    invoke-direct {v0, v1, v7}, Lcom/inmobi/commons/analytics/iat/impl/AdTrackerConstants$StatusCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/inmobi/commons/analytics/iat/impl/AdTrackerConstants$StatusCode;->APP_ANALYTICS_UPLOAD_FAILURE:Lcom/inmobi/commons/analytics/iat/impl/AdTrackerConstants$StatusCode;

    new-instance v0, Lcom/inmobi/commons/analytics/iat/impl/AdTrackerConstants$StatusCode;

    const-string v1, "APP_NOT_CONNECTED"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/inmobi/commons/analytics/iat/impl/AdTrackerConstants$StatusCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/inmobi/commons/analytics/iat/impl/AdTrackerConstants$StatusCode;->APP_NOT_CONNECTED:Lcom/inmobi/commons/analytics/iat/impl/AdTrackerConstants$StatusCode;

    new-instance v0, Lcom/inmobi/commons/analytics/iat/impl/AdTrackerConstants$StatusCode;

    const-string v1, "RELOAD_WEBVIEW_ERROR"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/inmobi/commons/analytics/iat/impl/AdTrackerConstants$StatusCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/inmobi/commons/analytics/iat/impl/AdTrackerConstants$StatusCode;->RELOAD_WEBVIEW_ERROR:Lcom/inmobi/commons/analytics/iat/impl/AdTrackerConstants$StatusCode;

    const/4 v0, 0x7

    new-array v0, v0, [Lcom/inmobi/commons/analytics/iat/impl/AdTrackerConstants$StatusCode;

    sget-object v1, Lcom/inmobi/commons/analytics/iat/impl/AdTrackerConstants$StatusCode;->APP_ANALYTICS_UPLOAD_SUCCESS:Lcom/inmobi/commons/analytics/iat/impl/AdTrackerConstants$StatusCode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/inmobi/commons/analytics/iat/impl/AdTrackerConstants$StatusCode;->APP_CONTEXT_NULL:Lcom/inmobi/commons/analytics/iat/impl/AdTrackerConstants$StatusCode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/inmobi/commons/analytics/iat/impl/AdTrackerConstants$StatusCode;->APP_ANALYTICS_PREVIOUSLY_UPLOADED:Lcom/inmobi/commons/analytics/iat/impl/AdTrackerConstants$StatusCode;

    aput-object v1, v0, v5

    sget-object v1, Lcom/inmobi/commons/analytics/iat/impl/AdTrackerConstants$StatusCode;->ODIN1_NULL:Lcom/inmobi/commons/analytics/iat/impl/AdTrackerConstants$StatusCode;

    aput-object v1, v0, v6

    sget-object v1, Lcom/inmobi/commons/analytics/iat/impl/AdTrackerConstants$StatusCode;->APP_ANALYTICS_UPLOAD_FAILURE:Lcom/inmobi/commons/analytics/iat/impl/AdTrackerConstants$StatusCode;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/inmobi/commons/analytics/iat/impl/AdTrackerConstants$StatusCode;->APP_NOT_CONNECTED:Lcom/inmobi/commons/analytics/iat/impl/AdTrackerConstants$StatusCode;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/inmobi/commons/analytics/iat/impl/AdTrackerConstants$StatusCode;->RELOAD_WEBVIEW_ERROR:Lcom/inmobi/commons/analytics/iat/impl/AdTrackerConstants$StatusCode;

    aput-object v2, v0, v1

    sput-object v0, Lcom/inmobi/commons/analytics/iat/impl/AdTrackerConstants$StatusCode;->a:[Lcom/inmobi/commons/analytics/iat/impl/AdTrackerConstants$StatusCode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/inmobi/commons/analytics/iat/impl/AdTrackerConstants$StatusCode;
    .locals 1

    const-class v0, Lcom/inmobi/commons/analytics/iat/impl/AdTrackerConstants$StatusCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/inmobi/commons/analytics/iat/impl/AdTrackerConstants$StatusCode;

    return-object v0
.end method

.method public static values()[Lcom/inmobi/commons/analytics/iat/impl/AdTrackerConstants$StatusCode;
    .locals 1

    sget-object v0, Lcom/inmobi/commons/analytics/iat/impl/AdTrackerConstants$StatusCode;->a:[Lcom/inmobi/commons/analytics/iat/impl/AdTrackerConstants$StatusCode;

    invoke-virtual {v0}, [Lcom/inmobi/commons/analytics/iat/impl/AdTrackerConstants$StatusCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/inmobi/commons/analytics/iat/impl/AdTrackerConstants$StatusCode;

    return-object v0
.end method
