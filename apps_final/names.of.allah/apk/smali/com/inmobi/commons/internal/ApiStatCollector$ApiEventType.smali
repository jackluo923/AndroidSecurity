.class public Lcom/inmobi/commons/internal/ApiStatCollector$ApiEventType;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/inmobi/commons/metric/EventType;


# static fields
.field public static final API_IMAI_OPEN_EMBEDDED:I = 0x3e9

.field public static final API_IMAI_OPEN_EXTERNAL:I = 0x3ea

.field public static final API_IMAI_PING:I = 0x3eb

.field public static final API_IMAI_PING_IN_WEB_VIEW:I = 0x3ec

.field public static final API_MRAID_ASYNC_PING:I = 0x1f

.field public static final API_MRAID_CLOSE:I = 0xd

.field public static final API_MRAID_CLOSE_VIDEO:I = 0x32

.field public static final API_MRAID_CREATE_CALENDAR_EVENT:I = 0x1e

.field public static final API_MRAID_EXPAND:I = 0xb

.field public static final API_MRAID_GET_AUDIO_VOLUME:I = 0x25

.field public static final API_MRAID_GET_CURRENT_POSITION:I = 0x12

.field public static final API_MRAID_GET_DEFAULT_POSITION:I = 0x13

.field public static final API_MRAID_GET_EXPAND_PROPERTIES:I = 0x4

.field public static final API_MRAID_GET_GALLERY_IMAGE:I = 0x19

.field public static final API_MRAID_GET_MAX_SIZE:I = 0x14

.field public static final API_MRAID_GET_MIC_INTENSITY:I = 0x33

.field public static final API_MRAID_GET_ORIENTATION:I = 0x10

.field public static final API_MRAID_GET_ORIENTATION_PROPERTIES:I = 0x5

.field public static final API_MRAID_GET_PLACEMENT_TYPE:I = 0xf

.field public static final API_MRAID_GET_RESIZE_PROPERTIES:I = 0x6

.field public static final API_MRAID_GET_SCREEN_SIZE:I = 0x11

.field public static final API_MRAID_GET_STATE:I = 0x3

.field public static final API_MRAID_GET_VIDEO_VOLUME:I = 0x2d

.field public static final API_MRAID_HIDE_VIDEO:I = 0x30

.field public static final API_MRAID_IS_AUDIO_MUTED:I = 0x23

.field public static final API_MRAID_IS_VIDEO_MUTED:I = 0x2b

.field public static final API_MRAID_IS_VIEWABLE:I = 0xe

.field public static final API_MRAID_MAKE_CALL:I = 0x1d

.field public static final API_MRAID_MUTE_AUDIO:I = 0x21

.field public static final API_MRAID_MUTE_VIDEO:I = 0x29

.field public static final API_MRAID_OPEN:I = 0x1

.field public static final API_MRAID_OPEN_EXTERNAL:I = 0x2

.field public static final API_MRAID_PAUSE_AUDIO:I = 0x27

.field public static final API_MRAID_PAUSE_VIDEO:I = 0x2f

.field public static final API_MRAID_PLAY_AUDIO:I = 0x20

.field public static final API_MRAID_PLAY_VIDEO:I = 0x28

.field public static final API_MRAID_POST_TO_SOCIAL:I = 0x15

.field public static final API_MRAID_RESIZE:I = 0xc

.field public static final API_MRAID_SEEK_AUDIO:I = 0x26

.field public static final API_MRAID_SEEK_VIDEO:I = 0x2e

.field public static final API_MRAID_SEND_MAIL:I = 0x1c

.field public static final API_MRAID_SEND_SMS:I = 0x1b

.field public static final API_MRAID_SET_AUDIO_VOLUME:I = 0x24

.field public static final API_MRAID_SET_EXPAND_PROPERTIES:I = 0x7

.field public static final API_MRAID_SET_ORIENTATION_PROPERTIES:I = 0x8

.field public static final API_MRAID_SET_RESIZE_PROPERTIES:I = 0x9

.field public static final API_MRAID_SET_VIDEO_VOLUME:I = 0x2c

.field public static final API_MRAID_SHOW_VIDEO:I = 0x31

.field public static final API_MRAID_STORE_PICTURE:I = 0x17

.field public static final API_MRAID_SUPPORTS:I = 0x16

.field public static final API_MRAID_TAKE_CAMERA_PICTURE:I = 0x18

.field public static final API_MRAID_UNMUTE_AUDIO:I = 0x22

.field public static final API_MRAID_UNMUTE_VIDEO:I = 0x2a

.field public static final API_MRAID_USE_CUSTOM_CLOSE:I = 0xa

.field public static final API_MRAID_VIBRATE:I = 0x1a


# instance fields
.field a:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/inmobi/commons/internal/ApiStatCollector$ApiEventType;->a:I

    return-void
.end method


# virtual methods
.method public getValue()I
    .locals 1

    iget v0, p0, Lcom/inmobi/commons/internal/ApiStatCollector$ApiEventType;->a:I

    return v0
.end method
