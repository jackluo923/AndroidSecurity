.class public Lae/gov/mol/vo/PendingTransactionsdata;
.super Ljava/lang/Object;
.source "PendingTransactionsdata.java"

# interfaces
.implements Landroid/os/Parcelable;


# instance fields
.field public CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lae/gov/mol/vo/PendingTransactionsdata;",
            ">;"
        }
    .end annotation
.end field

.field PaymentPage:Ljava/lang/String;

.field add_date:Ljava/lang/String;

.field com_name:Ljava/lang/String;

.field company_code:Ljava/lang/String;

.field service_code:Ljava/lang/String;

.field service_name:Ljava/lang/String;

.field tranid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/PendingTransactionsdata;->tranid:Ljava/lang/String;

    .line 13
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/PendingTransactionsdata;->service_code:Ljava/lang/String;

    .line 14
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/PendingTransactionsdata;->company_code:Ljava/lang/String;

    .line 15
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/PendingTransactionsdata;->add_date:Ljava/lang/String;

    .line 16
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/PendingTransactionsdata;->service_name:Ljava/lang/String;

    .line 17
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/PendingTransactionsdata;->com_name:Ljava/lang/String;

    .line 18
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/PendingTransactionsdata;->PaymentPage:Ljava/lang/String;

    .line 143
    new-instance v0, Lae/gov/mol/vo/PendingTransactionsdata$1;

    invoke-direct {v0, p0}, Lae/gov/mol/vo/PendingTransactionsdata$1;-><init>(Lae/gov/mol/vo/PendingTransactionsdata;)V

    iput-object v0, p0, Lae/gov/mol/vo/PendingTransactionsdata;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/PendingTransactionsdata;->tranid:Ljava/lang/String;

    .line 13
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/PendingTransactionsdata;->service_code:Ljava/lang/String;

    .line 14
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/PendingTransactionsdata;->company_code:Ljava/lang/String;

    .line 15
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/PendingTransactionsdata;->add_date:Ljava/lang/String;

    .line 16
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/PendingTransactionsdata;->service_name:Ljava/lang/String;

    .line 17
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/PendingTransactionsdata;->com_name:Ljava/lang/String;

    .line 18
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/PendingTransactionsdata;->PaymentPage:Ljava/lang/String;

    .line 143
    new-instance v0, Lae/gov/mol/vo/PendingTransactionsdata$1;

    invoke-direct {v0, p0}, Lae/gov/mol/vo/PendingTransactionsdata$1;-><init>(Lae/gov/mol/vo/PendingTransactionsdata;)V

    iput-object v0, p0, Lae/gov/mol/vo/PendingTransactionsdata;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 160
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/PendingTransactionsdata;->tranid:Ljava/lang/String;

    .line 161
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/PendingTransactionsdata;->service_code:Ljava/lang/String;

    .line 162
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/PendingTransactionsdata;->company_code:Ljava/lang/String;

    .line 163
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/PendingTransactionsdata;->add_date:Ljava/lang/String;

    .line 164
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/PendingTransactionsdata;->service_name:Ljava/lang/String;

    .line 165
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/PendingTransactionsdata;->com_name:Ljava/lang/String;

    .line 166
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/PendingTransactionsdata;->PaymentPage:Ljava/lang/String;

    .line 168
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 127
    const/4 v0, 0x0

    return v0
.end method

.method public getAdd_date()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lae/gov/mol/vo/PendingTransactionsdata;->add_date:Ljava/lang/String;

    return-object v0
.end method

.method public getCom_name()Ljava/lang/String;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lae/gov/mol/vo/PendingTransactionsdata;->com_name:Ljava/lang/String;

    return-object v0
.end method

.method public getCompany_code()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lae/gov/mol/vo/PendingTransactionsdata;->company_code:Ljava/lang/String;

    return-object v0
.end method

.method public getPaymentPage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lae/gov/mol/vo/PendingTransactionsdata;->PaymentPage:Ljava/lang/String;

    return-object v0
.end method

.method public getService_code()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lae/gov/mol/vo/PendingTransactionsdata;->service_code:Ljava/lang/String;

    return-object v0
.end method

.method public getService_name()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lae/gov/mol/vo/PendingTransactionsdata;->service_name:Ljava/lang/String;

    return-object v0
.end method

.method public getTranid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lae/gov/mol/vo/PendingTransactionsdata;->tranid:Ljava/lang/String;

    return-object v0
.end method

.method public setAdd_date(Ljava/lang/String;)V
    .locals 0
    .param p1, "add_date"    # Ljava/lang/String;

    .prologue
    .line 79
    iput-object p1, p0, Lae/gov/mol/vo/PendingTransactionsdata;->add_date:Ljava/lang/String;

    .line 80
    return-void
.end method

.method public setCom_name(Ljava/lang/String;)V
    .locals 0
    .param p1, "com_name"    # Ljava/lang/String;

    .prologue
    .line 107
    iput-object p1, p0, Lae/gov/mol/vo/PendingTransactionsdata;->com_name:Ljava/lang/String;

    .line 108
    return-void
.end method

.method public setCompany_code(Ljava/lang/String;)V
    .locals 0
    .param p1, "company_code"    # Ljava/lang/String;

    .prologue
    .line 65
    iput-object p1, p0, Lae/gov/mol/vo/PendingTransactionsdata;->company_code:Ljava/lang/String;

    .line 66
    return-void
.end method

.method public setPaymentPage(Ljava/lang/String;)V
    .locals 0
    .param p1, "paymentPage"    # Ljava/lang/String;

    .prologue
    .line 121
    iput-object p1, p0, Lae/gov/mol/vo/PendingTransactionsdata;->PaymentPage:Ljava/lang/String;

    .line 122
    return-void
.end method

.method public setService_code(Ljava/lang/String;)V
    .locals 0
    .param p1, "service_code"    # Ljava/lang/String;

    .prologue
    .line 51
    iput-object p1, p0, Lae/gov/mol/vo/PendingTransactionsdata;->service_code:Ljava/lang/String;

    .line 52
    return-void
.end method

.method public setService_name(Ljava/lang/String;)V
    .locals 0
    .param p1, "service_name"    # Ljava/lang/String;

    .prologue
    .line 93
    iput-object p1, p0, Lae/gov/mol/vo/PendingTransactionsdata;->service_name:Ljava/lang/String;

    .line 94
    return-void
.end method

.method public setTranid(Ljava/lang/String;)V
    .locals 0
    .param p1, "tranid"    # Ljava/lang/String;

    .prologue
    .line 37
    iput-object p1, p0, Lae/gov/mol/vo/PendingTransactionsdata;->tranid:Ljava/lang/String;

    .line 38
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 133
    iget-object v0, p0, Lae/gov/mol/vo/PendingTransactionsdata;->tranid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 134
    iget-object v0, p0, Lae/gov/mol/vo/PendingTransactionsdata;->service_code:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 135
    iget-object v0, p0, Lae/gov/mol/vo/PendingTransactionsdata;->company_code:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 136
    iget-object v0, p0, Lae/gov/mol/vo/PendingTransactionsdata;->add_date:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 137
    iget-object v0, p0, Lae/gov/mol/vo/PendingTransactionsdata;->service_name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 138
    iget-object v0, p0, Lae/gov/mol/vo/PendingTransactionsdata;->com_name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 139
    iget-object v0, p0, Lae/gov/mol/vo/PendingTransactionsdata;->PaymentPage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 141
    return-void
.end method
