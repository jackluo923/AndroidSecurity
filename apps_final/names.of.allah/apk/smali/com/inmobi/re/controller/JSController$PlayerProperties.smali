.class public Lcom/inmobi/re/controller/JSController$PlayerProperties;
.super Lcom/inmobi/re/controller/JSController$ReflectedParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/inmobi/re/controller/JSController$PlayerProperties;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public audioMuted:Z

.field public autoPlay:Z

.field public doLoop:Z

.field public id:Ljava/lang/String;

.field public showControl:Z

.field public startStyle:Ljava/lang/String;

.field public stopStyle:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/inmobi/re/controller/b;

    invoke-direct {v0}, Lcom/inmobi/re/controller/b;-><init>()V

    sput-object v0, Lcom/inmobi/re/controller/JSController$PlayerProperties;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/inmobi/re/controller/JSController$ReflectedParcelable;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/inmobi/re/controller/JSController$PlayerProperties;->showControl:Z

    iput-boolean v0, p0, Lcom/inmobi/re/controller/JSController$PlayerProperties;->autoPlay:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/inmobi/re/controller/JSController$PlayerProperties;->audioMuted:Z

    iput-boolean v0, p0, Lcom/inmobi/re/controller/JSController$PlayerProperties;->doLoop:Z

    const-string v0, "normal"

    iput-object v0, p0, Lcom/inmobi/re/controller/JSController$PlayerProperties;->stopStyle:Ljava/lang/String;

    iput-object v0, p0, Lcom/inmobi/re/controller/JSController$PlayerProperties;->startStyle:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/inmobi/re/controller/JSController$PlayerProperties;->id:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/inmobi/re/controller/JSController$ReflectedParcelable;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public doLoop()Z
    .locals 1

    iget-boolean v0, p0, Lcom/inmobi/re/controller/JSController$PlayerProperties;->doLoop:Z

    return v0
.end method

.method public doMute()Z
    .locals 1

    iget-boolean v0, p0, Lcom/inmobi/re/controller/JSController$PlayerProperties;->audioMuted:Z

    return v0
.end method

.method public exitOnComplete()Z
    .locals 2

    iget-object v0, p0, Lcom/inmobi/re/controller/JSController$PlayerProperties;->stopStyle:Ljava/lang/String;

    const-string v1, "exit"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isAutoPlay()Z
    .locals 2

    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/inmobi/re/controller/JSController$PlayerProperties;->autoPlay:Z

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFullScreen()Z
    .locals 2

    iget-object v0, p0, Lcom/inmobi/re/controller/JSController$PlayerProperties;->startStyle:Ljava/lang/String;

    const-string v1, "fullscreen"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setFullScreen()V
    .locals 1

    const-string v0, "fullscreen"

    iput-object v0, p0, Lcom/inmobi/re/controller/JSController$PlayerProperties;->startStyle:Ljava/lang/String;

    return-void
.end method

.method public setProperties(ZZZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-boolean p2, p0, Lcom/inmobi/re/controller/JSController$PlayerProperties;->autoPlay:Z

    iput-boolean p3, p0, Lcom/inmobi/re/controller/JSController$PlayerProperties;->showControl:Z

    iput-boolean p4, p0, Lcom/inmobi/re/controller/JSController$PlayerProperties;->doLoop:Z

    iput-boolean p1, p0, Lcom/inmobi/re/controller/JSController$PlayerProperties;->audioMuted:Z

    iput-object p5, p0, Lcom/inmobi/re/controller/JSController$PlayerProperties;->startStyle:Ljava/lang/String;

    iput-object p6, p0, Lcom/inmobi/re/controller/JSController$PlayerProperties;->stopStyle:Ljava/lang/String;

    iput-object p7, p0, Lcom/inmobi/re/controller/JSController$PlayerProperties;->id:Ljava/lang/String;

    return-void
.end method

.method public setStopStyle(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/inmobi/re/controller/JSController$PlayerProperties;->stopStyle:Ljava/lang/String;

    return-void
.end method

.method public showControl()Z
    .locals 1

    iget-boolean v0, p0, Lcom/inmobi/re/controller/JSController$PlayerProperties;->showControl:Z

    return v0
.end method
