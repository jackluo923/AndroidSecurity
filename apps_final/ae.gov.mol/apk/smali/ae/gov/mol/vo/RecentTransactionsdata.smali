.class public Lae/gov/mol/vo/RecentTransactionsdata;
.super Ljava/lang/Object;
.source "RecentTransactionsdata.java"

# interfaces
.implements Landroid/os/Parcelable;


# instance fields
.field public CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lae/gov/mol/vo/RecentTransactionsdata;",
            ">;"
        }
    .end annotation
.end field

.field TransactionNo:Ljava/lang/String;

.field service_arabic_name:Ljava/lang/String;

.field service_name:Ljava/lang/String;

.field status:Ljava/lang/String;

.field tran_date:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/RecentTransactionsdata;->TransactionNo:Ljava/lang/String;

    .line 13
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/RecentTransactionsdata;->service_arabic_name:Ljava/lang/String;

    .line 14
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/RecentTransactionsdata;->service_name:Ljava/lang/String;

    .line 15
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/RecentTransactionsdata;->tran_date:Ljava/lang/String;

    .line 16
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/RecentTransactionsdata;->status:Ljava/lang/String;

    .line 110
    new-instance v0, Lae/gov/mol/vo/RecentTransactionsdata$1;

    invoke-direct {v0, p0}, Lae/gov/mol/vo/RecentTransactionsdata$1;-><init>(Lae/gov/mol/vo/RecentTransactionsdata;)V

    iput-object v0, p0, Lae/gov/mol/vo/RecentTransactionsdata;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/RecentTransactionsdata;->TransactionNo:Ljava/lang/String;

    .line 13
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/RecentTransactionsdata;->service_arabic_name:Ljava/lang/String;

    .line 14
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/RecentTransactionsdata;->service_name:Ljava/lang/String;

    .line 15
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/RecentTransactionsdata;->tran_date:Ljava/lang/String;

    .line 16
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/RecentTransactionsdata;->status:Ljava/lang/String;

    .line 110
    new-instance v0, Lae/gov/mol/vo/RecentTransactionsdata$1;

    invoke-direct {v0, p0}, Lae/gov/mol/vo/RecentTransactionsdata$1;-><init>(Lae/gov/mol/vo/RecentTransactionsdata;)V

    iput-object v0, p0, Lae/gov/mol/vo/RecentTransactionsdata;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 126
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/RecentTransactionsdata;->TransactionNo:Ljava/lang/String;

    .line 127
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/RecentTransactionsdata;->service_arabic_name:Ljava/lang/String;

    .line 128
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/RecentTransactionsdata;->tran_date:Ljava/lang/String;

    .line 129
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/RecentTransactionsdata;->status:Ljava/lang/String;

    .line 130
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/RecentTransactionsdata;->service_name:Ljava/lang/String;

    .line 131
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 97
    const/4 v0, 0x0

    return v0
.end method

.method public getService_arabic_name()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lae/gov/mol/vo/RecentTransactionsdata;->service_arabic_name:Ljava/lang/String;

    return-object v0
.end method

.method public getService_name()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lae/gov/mol/vo/RecentTransactionsdata;->service_name:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lae/gov/mol/vo/RecentTransactionsdata;->status:Ljava/lang/String;

    return-object v0
.end method

.method public getTran_date()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lae/gov/mol/vo/RecentTransactionsdata;->tran_date:Ljava/lang/String;

    return-object v0
.end method

.method public getTransactionNo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lae/gov/mol/vo/RecentTransactionsdata;->TransactionNo:Ljava/lang/String;

    return-object v0
.end method

.method public setService_arabic_name(Ljava/lang/String;)V
    .locals 0
    .param p1, "service_arabic_name"    # Ljava/lang/String;

    .prologue
    .line 49
    iput-object p1, p0, Lae/gov/mol/vo/RecentTransactionsdata;->service_arabic_name:Ljava/lang/String;

    .line 50
    return-void
.end method

.method public setService_name(Ljava/lang/String;)V
    .locals 0
    .param p1, "service_name"    # Ljava/lang/String;

    .prologue
    .line 63
    iput-object p1, p0, Lae/gov/mol/vo/RecentTransactionsdata;->service_name:Ljava/lang/String;

    .line 64
    return-void
.end method

.method public setStatus(Ljava/lang/String;)V
    .locals 0
    .param p1, "status"    # Ljava/lang/String;

    .prologue
    .line 91
    iput-object p1, p0, Lae/gov/mol/vo/RecentTransactionsdata;->status:Ljava/lang/String;

    .line 92
    return-void
.end method

.method public setTran_date(Ljava/lang/String;)V
    .locals 0
    .param p1, "tran_date"    # Ljava/lang/String;

    .prologue
    .line 77
    iput-object p1, p0, Lae/gov/mol/vo/RecentTransactionsdata;->tran_date:Ljava/lang/String;

    .line 78
    return-void
.end method

.method public setTransactionNo(Ljava/lang/String;)V
    .locals 0
    .param p1, "transactionNo"    # Ljava/lang/String;

    .prologue
    .line 35
    iput-object p1, p0, Lae/gov/mol/vo/RecentTransactionsdata;->TransactionNo:Ljava/lang/String;

    .line 36
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 103
    iget-object v0, p0, Lae/gov/mol/vo/RecentTransactionsdata;->TransactionNo:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 104
    iget-object v0, p0, Lae/gov/mol/vo/RecentTransactionsdata;->service_arabic_name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 105
    iget-object v0, p0, Lae/gov/mol/vo/RecentTransactionsdata;->tran_date:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 106
    iget-object v0, p0, Lae/gov/mol/vo/RecentTransactionsdata;->status:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 107
    iget-object v0, p0, Lae/gov/mol/vo/RecentTransactionsdata;->service_name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 108
    return-void
.end method
