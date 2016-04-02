.class public Lae/gov/mol/vo/PublicNotificationVo;
.super Ljava/lang/Object;
.source "PublicNotificationVo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lae/gov/mol/vo/PublicNotificationVo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private Notification_Eng:Ljava/lang/String;

.field private Notification_arb:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 55
    new-instance v0, Lae/gov/mol/vo/PublicNotificationVo$1;

    invoke-direct {v0}, Lae/gov/mol/vo/PublicNotificationVo$1;-><init>()V

    sput-object v0, Lae/gov/mol/vo/PublicNotificationVo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 66
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/PublicNotificationVo;->Notification_Eng:Ljava/lang/String;

    .line 13
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/PublicNotificationVo;->Notification_arb:Ljava/lang/String;

    .line 19
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/PublicNotificationVo;->Notification_Eng:Ljava/lang/String;

    .line 13
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/PublicNotificationVo;->Notification_arb:Ljava/lang/String;

    .line 50
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/PublicNotificationVo;->Notification_arb:Ljava/lang/String;

    .line 51
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/PublicNotificationVo;->Notification_Eng:Ljava/lang/String;

    .line 53
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 71
    const/4 v0, 0x0

    return v0
.end method

.method public getNotification_Eng()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lae/gov/mol/vo/PublicNotificationVo;->Notification_Eng:Ljava/lang/String;

    return-object v0
.end method

.method public getNotification_arb()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lae/gov/mol/vo/PublicNotificationVo;->Notification_arb:Ljava/lang/String;

    return-object v0
.end method

.method public setNotification_Eng(Ljava/lang/String;)V
    .locals 0
    .param p1, "notification_Eng"    # Ljava/lang/String;

    .prologue
    .line 32
    iput-object p1, p0, Lae/gov/mol/vo/PublicNotificationVo;->Notification_Eng:Ljava/lang/String;

    .line 33
    return-void
.end method

.method public setNotification_arb(Ljava/lang/String;)V
    .locals 0
    .param p1, "notification_arb"    # Ljava/lang/String;

    .prologue
    .line 46
    iput-object p1, p0, Lae/gov/mol/vo/PublicNotificationVo;->Notification_arb:Ljava/lang/String;

    .line 47
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 77
    iget-object v0, p0, Lae/gov/mol/vo/PublicNotificationVo;->Notification_arb:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 78
    iget-object v0, p0, Lae/gov/mol/vo/PublicNotificationVo;->Notification_Eng:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 79
    return-void
.end method
