.class public Lcom/inmobi/re/controller/JSController$ResizeProperties;
.super Lcom/inmobi/re/controller/JSController$ReflectedParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/inmobi/re/controller/JSController$ResizeProperties;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public allowOffscreen:Z

.field public customClosePosition:Ljava/lang/String;

.field public height:I

.field public offsetX:I

.field public offsetY:I

.field public width:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/inmobi/re/controller/a;

    invoke-direct {v0}, Lcom/inmobi/re/controller/a;-><init>()V

    sput-object v0, Lcom/inmobi/re/controller/JSController$ResizeProperties;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/inmobi/re/controller/JSController$ReflectedParcelable;-><init>()V

    invoke-virtual {p0}, Lcom/inmobi/re/controller/JSController$ResizeProperties;->initializeResizeProperties()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/inmobi/re/controller/JSController$ReflectedParcelable;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public initializeResizeProperties()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/inmobi/re/controller/JSController$ResizeProperties;->offsetY:I

    iput v0, p0, Lcom/inmobi/re/controller/JSController$ResizeProperties;->offsetX:I

    iput v0, p0, Lcom/inmobi/re/controller/JSController$ResizeProperties;->height:I

    iput v0, p0, Lcom/inmobi/re/controller/JSController$ResizeProperties;->width:I

    iput-boolean v0, p0, Lcom/inmobi/re/controller/JSController$ResizeProperties;->allowOffscreen:Z

    const-string v0, "top-right"

    iput-object v0, p0, Lcom/inmobi/re/controller/JSController$ResizeProperties;->customClosePosition:Ljava/lang/String;

    return-void
.end method
