.class public Lae/gov/mol/vo/ServiceGroupVo$ServiceGroupdetails;
.super Ljava/lang/Object;
.source "ServiceGroupVo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lae/gov/mol/vo/ServiceGroupVo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ServiceGroupdetails"
.end annotation


# instance fields
.field public final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lae/gov/mol/vo/ServiceGroupVo$ServiceGroupdetails;",
            ">;"
        }
    .end annotation
.end field

.field private service_group_id:Ljava/lang/String;

.field private service_group_name_eng:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/ServiceGroupVo$ServiceGroupdetails;->service_group_id:Ljava/lang/String;

    .line 73
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/ServiceGroupVo$ServiceGroupdetails;->service_group_name_eng:Ljava/lang/String;

    .line 127
    new-instance v0, Lae/gov/mol/vo/ServiceGroupVo$ServiceGroupdetails$1;

    invoke-direct {v0, p0}, Lae/gov/mol/vo/ServiceGroupVo$ServiceGroupdetails$1;-><init>(Lae/gov/mol/vo/ServiceGroupVo$ServiceGroupdetails;)V

    iput-object v0, p0, Lae/gov/mol/vo/ServiceGroupVo$ServiceGroupdetails;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 79
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/ServiceGroupVo$ServiceGroupdetails;->service_group_id:Ljava/lang/String;

    .line 73
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/ServiceGroupVo$ServiceGroupdetails;->service_group_name_eng:Ljava/lang/String;

    .line 127
    new-instance v0, Lae/gov/mol/vo/ServiceGroupVo$ServiceGroupdetails$1;

    invoke-direct {v0, p0}, Lae/gov/mol/vo/ServiceGroupVo$ServiceGroupdetails$1;-><init>(Lae/gov/mol/vo/ServiceGroupVo$ServiceGroupdetails;)V

    iput-object v0, p0, Lae/gov/mol/vo/ServiceGroupVo$ServiceGroupdetails;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 111
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/ServiceGroupVo$ServiceGroupdetails;->service_group_id:Ljava/lang/String;

    .line 112
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/ServiceGroupVo$ServiceGroupdetails;->service_group_name_eng:Ljava/lang/String;

    .line 113
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 117
    const/4 v0, 0x0

    return v0
.end method

.method public getService_group_id()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lae/gov/mol/vo/ServiceGroupVo$ServiceGroupdetails;->service_group_id:Ljava/lang/String;

    return-object v0
.end method

.method public getService_group_name_eng()Ljava/lang/String;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lae/gov/mol/vo/ServiceGroupVo$ServiceGroupdetails;->service_group_name_eng:Ljava/lang/String;

    return-object v0
.end method

.method public setService_group_id(Ljava/lang/String;)V
    .locals 0
    .param p1, "service_group_id"    # Ljava/lang/String;

    .prologue
    .line 92
    iput-object p1, p0, Lae/gov/mol/vo/ServiceGroupVo$ServiceGroupdetails;->service_group_id:Ljava/lang/String;

    .line 93
    return-void
.end method

.method public setService_group_name_eng(Ljava/lang/String;)V
    .locals 0
    .param p1, "service_group_name_eng"    # Ljava/lang/String;

    .prologue
    .line 106
    iput-object p1, p0, Lae/gov/mol/vo/ServiceGroupVo$ServiceGroupdetails;->service_group_name_eng:Ljava/lang/String;

    .line 107
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 122
    iget-object v0, p0, Lae/gov/mol/vo/ServiceGroupVo$ServiceGroupdetails;->service_group_id:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 123
    iget-object v0, p0, Lae/gov/mol/vo/ServiceGroupVo$ServiceGroupdetails;->service_group_name_eng:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 125
    return-void
.end method
