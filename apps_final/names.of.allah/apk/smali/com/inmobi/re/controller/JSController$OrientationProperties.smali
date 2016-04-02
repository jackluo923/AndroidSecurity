.class public Lcom/inmobi/re/controller/JSController$OrientationProperties;
.super Lcom/inmobi/re/controller/JSController$ReflectedParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/inmobi/re/controller/JSController$OrientationProperties;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public allowOrientationChange:Z

.field public forceOrientation:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/inmobi/re/controller/g;

    invoke-direct {v0}, Lcom/inmobi/re/controller/g;-><init>()V

    sput-object v0, Lcom/inmobi/re/controller/JSController$OrientationProperties;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/inmobi/re/controller/JSController$ReflectedParcelable;-><init>()V

    invoke-virtual {p0}, Lcom/inmobi/re/controller/JSController$OrientationProperties;->initializeOrientationProperties()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/inmobi/re/controller/JSController$ReflectedParcelable;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public initializeOrientationProperties()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/inmobi/re/controller/JSController$OrientationProperties;->allowOrientationChange:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/inmobi/re/controller/JSController$OrientationProperties;->forceOrientation:Ljava/lang/String;

    return-void
.end method
