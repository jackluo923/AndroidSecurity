.class public Lae/gov/mol/vo/ServiceGroupdata;
.super Ljava/lang/Object;
.source "ServiceGroupdata.java"

# interfaces
.implements Landroid/os/Parcelable;


# instance fields
.field public CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lae/gov/mol/vo/ServiceGroupdata;",
            ">;"
        }
    .end annotation
.end field

.field service_group_id:Ljava/lang/String;

.field service_group_name_arb:Ljava/lang/String;

.field service_group_name_eng:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/ServiceGroupdata;->service_group_id:Ljava/lang/String;

    .line 13
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/ServiceGroupdata;->service_group_name_arb:Ljava/lang/String;

    .line 14
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/ServiceGroupdata;->service_group_name_eng:Ljava/lang/String;

    .line 78
    new-instance v0, Lae/gov/mol/vo/ServiceGroupdata$1;

    invoke-direct {v0, p0}, Lae/gov/mol/vo/ServiceGroupdata$1;-><init>(Lae/gov/mol/vo/ServiceGroupdata;)V

    iput-object v0, p0, Lae/gov/mol/vo/ServiceGroupdata;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 20
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/ServiceGroupdata;->service_group_id:Ljava/lang/String;

    .line 13
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/ServiceGroupdata;->service_group_name_arb:Ljava/lang/String;

    .line 14
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/ServiceGroupdata;->service_group_name_eng:Ljava/lang/String;

    .line 78
    new-instance v0, Lae/gov/mol/vo/ServiceGroupdata$1;

    invoke-direct {v0, p0}, Lae/gov/mol/vo/ServiceGroupdata$1;-><init>(Lae/gov/mol/vo/ServiceGroupdata;)V

    iput-object v0, p0, Lae/gov/mol/vo/ServiceGroupdata;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 94
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/ServiceGroupdata;->service_group_id:Ljava/lang/String;

    .line 95
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/ServiceGroupdata;->service_group_name_arb:Ljava/lang/String;

    .line 96
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/ServiceGroupdata;->service_group_name_eng:Ljava/lang/String;

    .line 97
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 67
    const/4 v0, 0x0

    return v0
.end method

.method public getService_group_id()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lae/gov/mol/vo/ServiceGroupdata;->service_group_id:Ljava/lang/String;

    return-object v0
.end method

.method public getService_group_name_arb()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lae/gov/mol/vo/ServiceGroupdata;->service_group_name_arb:Ljava/lang/String;

    return-object v0
.end method

.method public getService_group_name_eng()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lae/gov/mol/vo/ServiceGroupdata;->service_group_name_eng:Ljava/lang/String;

    return-object v0
.end method

.method public setService_group_id(Ljava/lang/String;)V
    .locals 0
    .param p1, "service_group_id"    # Ljava/lang/String;

    .prologue
    .line 33
    iput-object p1, p0, Lae/gov/mol/vo/ServiceGroupdata;->service_group_id:Ljava/lang/String;

    .line 34
    return-void
.end method

.method public setService_group_name_arb(Ljava/lang/String;)V
    .locals 0
    .param p1, "service_group_name_arb"    # Ljava/lang/String;

    .prologue
    .line 47
    iput-object p1, p0, Lae/gov/mol/vo/ServiceGroupdata;->service_group_name_arb:Ljava/lang/String;

    .line 48
    return-void
.end method

.method public setService_group_name_eng(Ljava/lang/String;)V
    .locals 0
    .param p1, "service_group_name_eng"    # Ljava/lang/String;

    .prologue
    .line 61
    iput-object p1, p0, Lae/gov/mol/vo/ServiceGroupdata;->service_group_name_eng:Ljava/lang/String;

    .line 62
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 73
    iget-object v0, p0, Lae/gov/mol/vo/ServiceGroupdata;->service_group_id:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 74
    iget-object v0, p0, Lae/gov/mol/vo/ServiceGroupdata;->service_group_name_arb:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 75
    iget-object v0, p0, Lae/gov/mol/vo/ServiceGroupdata;->service_group_name_eng:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 76
    return-void
.end method
