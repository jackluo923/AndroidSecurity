.class public Lcom/adsdk/sdk/video/TrackerData;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final TYPE_COMPLETE:I = 0x1

.field public static final TYPE_FIRSTQUARTILE:I = 0x3

.field public static final TYPE_MIDPOINT:I = 0x2

.field public static final TYPE_MUTE:I = 0x8

.field public static final TYPE_PAUSE:I = 0x6

.field public static final TYPE_REPLAY:I = 0xb

.field public static final TYPE_SKIP:I = 0xa

.field public static final TYPE_START:I = 0x0

.field public static final TYPE_THIRDQUARTILE:I = 0x4

.field public static final TYPE_TIME:I = 0x5

.field public static final TYPE_UNMUTE:I = 0x9

.field public static final TYPE_UNPAUSE:I = 0x7

.field private static final serialVersionUID:J = -0x7cb5b83a81ddba16L


# instance fields
.field time:I

.field type:I

.field url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public reset()V
    .locals 2

    const/4 v1, -0x1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adsdk/sdk/video/TrackerData;->url:Ljava/lang/String;

    iput v1, p0, Lcom/adsdk/sdk/video/TrackerData;->type:I

    iput v1, p0, Lcom/adsdk/sdk/video/TrackerData;->time:I

    return-void
.end method
