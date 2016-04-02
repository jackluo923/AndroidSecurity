.class public Lcom/alipay/mobile/common/lbs/LBSLocation;
.super Landroid/location/Location;
.source "LBSLocation.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Z

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:J


# direct methods
.method public constructor <init>(Landroid/location/Location;)V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0, p1}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    .line 12
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/common/lbs/LBSLocation;->f:Z

    .line 25
    return-void
.end method


# virtual methods
.method public getAdCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/alipay/mobile/common/lbs/LBSLocation;->e:Ljava/lang/String;

    return-object v0
.end method

.method public getCellInfo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/alipay/mobile/common/lbs/LBSLocation;->m:Ljava/lang/String;

    return-object v0
.end method

.method public getCellInfokey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/alipay/mobile/common/lbs/LBSLocation;->n:Ljava/lang/String;

    return-object v0
.end method

.method public getCity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/alipay/mobile/common/lbs/LBSLocation;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getCityCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/alipay/mobile/common/lbs/LBSLocation;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getCorseLocation()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/alipay/mobile/common/lbs/LBSLocation;->i:Ljava/lang/String;

    return-object v0
.end method

.method public getCorseLocationkey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/alipay/mobile/common/lbs/LBSLocation;->j:Ljava/lang/String;

    return-object v0
.end method

.method public getDistrict()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/alipay/mobile/common/lbs/LBSLocation;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getFineLocation()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/alipay/mobile/common/lbs/LBSLocation;->g:Ljava/lang/String;

    return-object v0
.end method

.method public getFineLocationkey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/alipay/mobile/common/lbs/LBSLocation;->h:Ljava/lang/String;

    return-object v0
.end method

.method public getIsGetAMapAPP()Z
    .locals 1

    .prologue
    .line 76
    iget-boolean v0, p0, Lcom/alipay/mobile/common/lbs/LBSLocation;->f:Z

    return v0
.end method

.method public getLocalTime()J
    .locals 2

    .prologue
    .line 28
    iget-wide v0, p0, Lcom/alipay/mobile/common/lbs/LBSLocation;->o:J

    return-wide v0
.end method

.method public getProvince()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/alipay/mobile/common/lbs/LBSLocation;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getWifiLocation()Ljava/lang/String;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/alipay/mobile/common/lbs/LBSLocation;->k:Ljava/lang/String;

    return-object v0
.end method

.method public getWifiLocationkey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/alipay/mobile/common/lbs/LBSLocation;->l:Ljava/lang/String;

    return-object v0
.end method

.method public setAdCode(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, Lcom/alipay/mobile/common/lbs/LBSLocation;->e:Ljava/lang/String;

    .line 73
    return-void
.end method

.method public setCellInfo(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 123
    iput-object p1, p0, Lcom/alipay/mobile/common/lbs/LBSLocation;->m:Ljava/lang/String;

    .line 124
    return-void
.end method

.method public setCellInfokey(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 129
    iput-object p1, p0, Lcom/alipay/mobile/common/lbs/LBSLocation;->n:Ljava/lang/String;

    .line 130
    return-void
.end method

.method public setCity(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, Lcom/alipay/mobile/common/lbs/LBSLocation;->b:Ljava/lang/String;

    .line 49
    return-void
.end method

.method public setCityCode(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lcom/alipay/mobile/common/lbs/LBSLocation;->d:Ljava/lang/String;

    .line 65
    return-void
.end method

.method public setCorseLocation(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 99
    iput-object p1, p0, Lcom/alipay/mobile/common/lbs/LBSLocation;->i:Ljava/lang/String;

    .line 100
    return-void
.end method

.method public setCorseLocationkey(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 105
    iput-object p1, p0, Lcom/alipay/mobile/common/lbs/LBSLocation;->j:Ljava/lang/String;

    .line 106
    return-void
.end method

.method public setDistrict(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, Lcom/alipay/mobile/common/lbs/LBSLocation;->c:Ljava/lang/String;

    .line 57
    return-void
.end method

.method public setFineLocation(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 87
    iput-object p1, p0, Lcom/alipay/mobile/common/lbs/LBSLocation;->g:Ljava/lang/String;

    .line 88
    return-void
.end method

.method public setFineLocationkey(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 93
    iput-object p1, p0, Lcom/alipay/mobile/common/lbs/LBSLocation;->h:Ljava/lang/String;

    .line 94
    return-void
.end method

.method public setIsGetAMapAPP(Z)V
    .locals 0

    .prologue
    .line 80
    iput-boolean p1, p0, Lcom/alipay/mobile/common/lbs/LBSLocation;->f:Z

    .line 81
    return-void
.end method

.method public setLocalTime(J)V
    .locals 0

    .prologue
    .line 32
    iput-wide p1, p0, Lcom/alipay/mobile/common/lbs/LBSLocation;->o:J

    .line 33
    return-void
.end method

.method public setProvince(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 40
    iput-object p1, p0, Lcom/alipay/mobile/common/lbs/LBSLocation;->a:Ljava/lang/String;

    .line 41
    return-void
.end method

.method public setWifiLocation(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 111
    iput-object p1, p0, Lcom/alipay/mobile/common/lbs/LBSLocation;->k:Ljava/lang/String;

    .line 112
    return-void
.end method

.method public setWifiLocationkey(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 117
    iput-object p1, p0, Lcom/alipay/mobile/common/lbs/LBSLocation;->l:Ljava/lang/String;

    .line 118
    return-void
.end method
