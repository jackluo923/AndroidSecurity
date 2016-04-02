.class public Lae/gov/mol/vo/ServiceCenterData;
.super Ljava/lang/Object;
.source "ServiceCenterData.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lae/gov/mol/vo/ServiceCenterData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private center_address_arb:Ljava/lang/String;

.field private center_address_eng:Ljava/lang/String;

.field private center_email:Ljava/lang/String;

.field private center_fax:Ljava/lang/String;

.field private center_name_arb:Ljava/lang/String;

.field private center_name_eng:Ljava/lang/String;

.field private center_office:Ljava/lang/String;

.field private center_phone:Ljava/lang/String;

.field private center_x:Ljava/lang/String;

.field private center_y:Ljava/lang/String;

.field private distance:D


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 204
    new-instance v0, Lae/gov/mol/vo/ServiceCenterData$1;

    invoke-direct {v0}, Lae/gov/mol/vo/ServiceCenterData$1;-><init>()V

    sput-object v0, Lae/gov/mol/vo/ServiceCenterData;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 217
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/ServiceCenterData;->center_name_eng:Ljava/lang/String;

    .line 13
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/ServiceCenterData;->center_name_arb:Ljava/lang/String;

    .line 14
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/ServiceCenterData;->center_address_eng:Ljava/lang/String;

    .line 15
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/ServiceCenterData;->center_address_arb:Ljava/lang/String;

    .line 16
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/ServiceCenterData;->center_phone:Ljava/lang/String;

    .line 17
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/ServiceCenterData;->center_fax:Ljava/lang/String;

    .line 18
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/ServiceCenterData;->center_email:Ljava/lang/String;

    .line 19
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/ServiceCenterData;->center_office:Ljava/lang/String;

    .line 20
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/ServiceCenterData;->center_x:Ljava/lang/String;

    .line 21
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/ServiceCenterData;->center_y:Ljava/lang/String;

    .line 22
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lae/gov/mol/vo/ServiceCenterData;->distance:D

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 219
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/ServiceCenterData;->center_name_eng:Ljava/lang/String;

    .line 13
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/ServiceCenterData;->center_name_arb:Ljava/lang/String;

    .line 14
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/ServiceCenterData;->center_address_eng:Ljava/lang/String;

    .line 15
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/ServiceCenterData;->center_address_arb:Ljava/lang/String;

    .line 16
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/ServiceCenterData;->center_phone:Ljava/lang/String;

    .line 17
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/ServiceCenterData;->center_fax:Ljava/lang/String;

    .line 18
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/ServiceCenterData;->center_email:Ljava/lang/String;

    .line 19
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/ServiceCenterData;->center_office:Ljava/lang/String;

    .line 20
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/ServiceCenterData;->center_x:Ljava/lang/String;

    .line 21
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/ServiceCenterData;->center_y:Ljava/lang/String;

    .line 22
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lae/gov/mol/vo/ServiceCenterData;->distance:D

    .line 221
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/ServiceCenterData;->center_name_eng:Ljava/lang/String;

    .line 222
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/ServiceCenterData;->center_name_arb:Ljava/lang/String;

    .line 223
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/ServiceCenterData;->center_address_eng:Ljava/lang/String;

    .line 224
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/ServiceCenterData;->center_address_arb:Ljava/lang/String;

    .line 225
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/ServiceCenterData;->center_phone:Ljava/lang/String;

    .line 226
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/ServiceCenterData;->center_fax:Ljava/lang/String;

    .line 227
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/ServiceCenterData;->center_email:Ljava/lang/String;

    .line 228
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/ServiceCenterData;->center_office:Ljava/lang/String;

    .line 229
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/ServiceCenterData;->center_x:Ljava/lang/String;

    .line 230
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/ServiceCenterData;->center_y:Ljava/lang/String;

    .line 231
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 186
    const/4 v0, 0x0

    return v0
.end method

.method public getCenter_address_arb()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lae/gov/mol/vo/ServiceCenterData;->center_address_arb:Ljava/lang/String;

    return-object v0
.end method

.method public getCenter_address_eng()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lae/gov/mol/vo/ServiceCenterData;->center_address_eng:Ljava/lang/String;

    return-object v0
.end method

.method public getCenter_email()Ljava/lang/String;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lae/gov/mol/vo/ServiceCenterData;->center_email:Ljava/lang/String;

    return-object v0
.end method

.method public getCenter_fax()Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lae/gov/mol/vo/ServiceCenterData;->center_fax:Ljava/lang/String;

    return-object v0
.end method

.method public getCenter_name_arb()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lae/gov/mol/vo/ServiceCenterData;->center_name_arb:Ljava/lang/String;

    return-object v0
.end method

.method public getCenter_name_eng()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lae/gov/mol/vo/ServiceCenterData;->center_name_eng:Ljava/lang/String;

    return-object v0
.end method

.method public getCenter_office()Ljava/lang/String;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lae/gov/mol/vo/ServiceCenterData;->center_office:Ljava/lang/String;

    return-object v0
.end method

.method public getCenter_phone()Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lae/gov/mol/vo/ServiceCenterData;->center_phone:Ljava/lang/String;

    return-object v0
.end method

.method public getCenter_x()Ljava/lang/String;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lae/gov/mol/vo/ServiceCenterData;->center_x:Ljava/lang/String;

    return-object v0
.end method

.method public getCenter_y()Ljava/lang/String;
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lae/gov/mol/vo/ServiceCenterData;->center_y:Ljava/lang/String;

    return-object v0
.end method

.method public getDistance()D
    .locals 2

    .prologue
    .line 174
    iget-wide v0, p0, Lae/gov/mol/vo/ServiceCenterData;->distance:D

    return-wide v0
.end method

.method public setCenter_address_arb(Ljava/lang/String;)V
    .locals 0
    .param p1, "center_address_arb"    # Ljava/lang/String;

    .prologue
    .line 83
    iput-object p1, p0, Lae/gov/mol/vo/ServiceCenterData;->center_address_arb:Ljava/lang/String;

    .line 84
    return-void
.end method

.method public setCenter_address_eng(Ljava/lang/String;)V
    .locals 0
    .param p1, "center_address_eng"    # Ljava/lang/String;

    .prologue
    .line 69
    iput-object p1, p0, Lae/gov/mol/vo/ServiceCenterData;->center_address_eng:Ljava/lang/String;

    .line 70
    return-void
.end method

.method public setCenter_email(Ljava/lang/String;)V
    .locals 0
    .param p1, "center_email"    # Ljava/lang/String;

    .prologue
    .line 125
    iput-object p1, p0, Lae/gov/mol/vo/ServiceCenterData;->center_email:Ljava/lang/String;

    .line 126
    return-void
.end method

.method public setCenter_fax(Ljava/lang/String;)V
    .locals 0
    .param p1, "center_fax"    # Ljava/lang/String;

    .prologue
    .line 111
    iput-object p1, p0, Lae/gov/mol/vo/ServiceCenterData;->center_fax:Ljava/lang/String;

    .line 112
    return-void
.end method

.method public setCenter_name_arb(Ljava/lang/String;)V
    .locals 0
    .param p1, "center_name_arb"    # Ljava/lang/String;

    .prologue
    .line 55
    iput-object p1, p0, Lae/gov/mol/vo/ServiceCenterData;->center_name_arb:Ljava/lang/String;

    .line 56
    return-void
.end method

.method public setCenter_name_eng(Ljava/lang/String;)V
    .locals 0
    .param p1, "center_name_eng"    # Ljava/lang/String;

    .prologue
    .line 41
    iput-object p1, p0, Lae/gov/mol/vo/ServiceCenterData;->center_name_eng:Ljava/lang/String;

    .line 42
    return-void
.end method

.method public setCenter_office(Ljava/lang/String;)V
    .locals 0
    .param p1, "center_office"    # Ljava/lang/String;

    .prologue
    .line 139
    iput-object p1, p0, Lae/gov/mol/vo/ServiceCenterData;->center_office:Ljava/lang/String;

    .line 140
    return-void
.end method

.method public setCenter_phone(Ljava/lang/String;)V
    .locals 0
    .param p1, "center_phone"    # Ljava/lang/String;

    .prologue
    .line 97
    iput-object p1, p0, Lae/gov/mol/vo/ServiceCenterData;->center_phone:Ljava/lang/String;

    .line 98
    return-void
.end method

.method public setCenter_x(Ljava/lang/String;)V
    .locals 0
    .param p1, "center_x"    # Ljava/lang/String;

    .prologue
    .line 153
    iput-object p1, p0, Lae/gov/mol/vo/ServiceCenterData;->center_x:Ljava/lang/String;

    .line 154
    return-void
.end method

.method public setCenter_y(Ljava/lang/String;)V
    .locals 0
    .param p1, "center_y"    # Ljava/lang/String;

    .prologue
    .line 167
    iput-object p1, p0, Lae/gov/mol/vo/ServiceCenterData;->center_y:Ljava/lang/String;

    .line 168
    return-void
.end method

.method public setDistance(D)V
    .locals 0
    .param p1, "distance"    # D

    .prologue
    .line 181
    iput-wide p1, p0, Lae/gov/mol/vo/ServiceCenterData;->distance:D

    .line 182
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 192
    iget-object v0, p0, Lae/gov/mol/vo/ServiceCenterData;->center_name_eng:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 193
    iget-object v0, p0, Lae/gov/mol/vo/ServiceCenterData;->center_name_arb:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 194
    iget-object v0, p0, Lae/gov/mol/vo/ServiceCenterData;->center_address_eng:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 195
    iget-object v0, p0, Lae/gov/mol/vo/ServiceCenterData;->center_address_arb:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 196
    iget-object v0, p0, Lae/gov/mol/vo/ServiceCenterData;->center_phone:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 197
    iget-object v0, p0, Lae/gov/mol/vo/ServiceCenterData;->center_fax:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 198
    iget-object v0, p0, Lae/gov/mol/vo/ServiceCenterData;->center_email:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 199
    iget-object v0, p0, Lae/gov/mol/vo/ServiceCenterData;->center_office:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 200
    iget-object v0, p0, Lae/gov/mol/vo/ServiceCenterData;->center_x:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 201
    iget-object v0, p0, Lae/gov/mol/vo/ServiceCenterData;->center_y:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 202
    return-void
.end method
