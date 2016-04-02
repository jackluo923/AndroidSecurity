.class public Lcom/alipay/android/phone/discovery/o2ohome/LocationCityMgr;
.super Ljava/lang/Object;
.source "LocationCityMgr.java"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private callback:Lcom/alipay/android/phone/discovery/o2ohome/LocationCallback;

.field private context:Landroid/app/Activity;

.field private locationView:Lcom/alipay/android/phone/discovery/o2ohome/view/LocationView;

.field private locationWrap:Lcom/alipay/android/phone/discovery/o2ohome/util/LBSLocationWrap;

.field private userSelCity:Lcom/alipay/android/phone/discovery/o2ohome/UserSelectCity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/alipay/android/phone/discovery/o2ohome/LocationCallback;)V
    .locals 1

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    const-string/jumbo v0, "LocationCityMgr"

    iput-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/LocationCityMgr;->TAG:Ljava/lang/String;

    .line 65
    iput-object p1, p0, Lcom/alipay/android/phone/discovery/o2ohome/LocationCityMgr;->context:Landroid/app/Activity;

    .line 66
    iput-object p2, p0, Lcom/alipay/android/phone/discovery/o2ohome/LocationCityMgr;->callback:Lcom/alipay/android/phone/discovery/o2ohome/LocationCallback;

    .line 67
    new-instance v0, Lcom/alipay/android/phone/discovery/o2ohome/UserSelectCity;

    invoke-direct {v0, p1}, Lcom/alipay/android/phone/discovery/o2ohome/UserSelectCity;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/LocationCityMgr;->userSelCity:Lcom/alipay/android/phone/discovery/o2ohome/UserSelectCity;

    .line 68
    invoke-static {}, Lcom/alipay/android/phone/discovery/o2ohome/util/LBSLocationWrap;->getInstance()Lcom/alipay/android/phone/discovery/o2ohome/util/LBSLocationWrap;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/LocationCityMgr;->locationWrap:Lcom/alipay/android/phone/discovery/o2ohome/util/LBSLocationWrap;

    .line 69
    return-void
.end method

.method static synthetic access$0(Lcom/alipay/android/phone/discovery/o2ohome/LocationCityMgr;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/LocationCityMgr;->context:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$1(Lcom/alipay/android/phone/discovery/o2ohome/LocationCityMgr;)Lcom/alipay/android/phone/discovery/o2ohome/LocationCallback;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/LocationCityMgr;->callback:Lcom/alipay/android/phone/discovery/o2ohome/LocationCallback;

    return-object v0
.end method

.method static synthetic access$2(Lcom/alipay/android/phone/discovery/o2ohome/LocationCityMgr;)Lcom/alipay/android/phone/discovery/o2ohome/view/LocationView;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/LocationCityMgr;->locationView:Lcom/alipay/android/phone/discovery/o2ohome/view/LocationView;

    return-object v0
.end method


# virtual methods
.method public buildLbsString(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 189
    const-string/jumbo v0, ""

    .line 190
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 191
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v0, "&ext_adCode="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 194
    :cond_0
    invoke-virtual {p0}, Lcom/alipay/android/phone/discovery/o2ohome/LocationCityMgr;->getLastLocation()Lcom/alipay/mobile/common/lbs/LBSLocation;

    move-result-object v1

    .line 195
    if-eqz v1, :cond_1

    .line 196
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v0, "&ext_longitude="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Lcom/alipay/mobile/common/lbs/LBSLocation;->getLongitude()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 197
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v0, "&ext_latitude="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Lcom/alipay/mobile/common/lbs/LBSLocation;->getLatitude()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 203
    :goto_0
    return-object v0

    .line 199
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v0, "&ext_longitude=-360"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 200
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v0, "&ext_latitude=-360"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getCoordinate()Lcom/alipay/android/phone/discovery/o2ohome/LocationCityMgr$Coordinate;
    .locals 4

    .prologue
    .line 145
    new-instance v0, Lcom/alipay/android/phone/discovery/o2ohome/LocationCityMgr$Coordinate;

    invoke-direct {v0, p0}, Lcom/alipay/android/phone/discovery/o2ohome/LocationCityMgr$Coordinate;-><init>(Lcom/alipay/android/phone/discovery/o2ohome/LocationCityMgr;)V

    .line 146
    invoke-virtual {p0}, Lcom/alipay/android/phone/discovery/o2ohome/LocationCityMgr;->getLastLocation()Lcom/alipay/mobile/common/lbs/LBSLocation;

    move-result-object v1

    .line 147
    if-eqz v1, :cond_0

    .line 148
    invoke-virtual {v1}, Lcom/alipay/mobile/common/lbs/LBSLocation;->getLongitude()D

    move-result-wide v2

    iput-wide v2, v0, Lcom/alipay/android/phone/discovery/o2ohome/LocationCityMgr$Coordinate;->longitude:D

    .line 149
    invoke-virtual {v1}, Lcom/alipay/mobile/common/lbs/LBSLocation;->getLatitude()D

    move-result-wide v1

    iput-wide v1, v0, Lcom/alipay/android/phone/discovery/o2ohome/LocationCityMgr$Coordinate;->latitude:D

    .line 152
    :cond_0
    return-object v0
.end method

.method public getHomeRpcParam(Lcom/alipay/mobile/common/lbs/LBSLocation;)Lcom/alipay/android/phone/discovery/o2ohome/LocationCityMgr$Location;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 101
    if-nez p1, :cond_0

    .line 102
    invoke-virtual {p0}, Lcom/alipay/android/phone/discovery/o2ohome/LocationCityMgr;->getLastLocation()Lcom/alipay/mobile/common/lbs/LBSLocation;

    move-result-object p1

    .line 105
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/LocationCityMgr;->userSelCity:Lcom/alipay/android/phone/discovery/o2ohome/UserSelectCity;

    invoke-virtual {v0}, Lcom/alipay/android/phone/discovery/o2ohome/UserSelectCity;->getSelectCity()Landroid/util/Pair;

    move-result-object v3

    .line 106
    if-nez p1, :cond_1

    if-nez v3, :cond_1

    move-object v0, v1

    .line 126
    :goto_0
    return-object v0

    .line 111
    :cond_1
    new-instance v2, Lcom/alipay/android/phone/discovery/o2ohome/LocationCityMgr$Location;

    invoke-direct {v2, p0}, Lcom/alipay/android/phone/discovery/o2ohome/LocationCityMgr$Location;-><init>(Lcom/alipay/android/phone/discovery/o2ohome/LocationCityMgr;)V

    .line 112
    if-eqz v3, :cond_2

    .line 113
    iget-object v0, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iput-object v0, v2, Lcom/alipay/android/phone/discovery/o2ohome/LocationCityMgr$Location;->adCode:Ljava/lang/String;

    .line 114
    iget-object v0, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iput-object v0, v2, Lcom/alipay/android/phone/discovery/o2ohome/LocationCityMgr$Location;->cityName:Ljava/lang/String;

    .line 117
    :cond_2
    if-eqz p1, :cond_3

    .line 118
    invoke-virtual {p1}, Lcom/alipay/mobile/common/lbs/LBSLocation;->getLongitude()D

    move-result-wide v3

    iput-wide v3, v2, Lcom/alipay/android/phone/discovery/o2ohome/LocationCityMgr$Location;->longitude:D

    .line 119
    invoke-virtual {p1}, Lcom/alipay/mobile/common/lbs/LBSLocation;->getLatitude()D

    move-result-wide v3

    iput-wide v3, v2, Lcom/alipay/android/phone/discovery/o2ohome/LocationCityMgr$Location;->latitude:D

    .line 120
    invoke-virtual {v2}, Lcom/alipay/android/phone/discovery/o2ohome/LocationCityMgr$Location;->isInvalid()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 121
    invoke-virtual {p1}, Lcom/alipay/mobile/common/lbs/LBSLocation;->getAdCode()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/alipay/android/phone/discovery/o2ohome/LocationCityMgr$Location;->adCode:Ljava/lang/String;

    .line 122
    invoke-virtual {p1}, Lcom/alipay/mobile/common/lbs/LBSLocation;->getCity()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/alipay/android/phone/discovery/o2ohome/LocationCityMgr$Location;->cityName:Ljava/lang/String;

    .line 126
    :cond_3
    invoke-virtual {v2}, Lcom/alipay/android/phone/discovery/o2ohome/LocationCityMgr$Location;->isInvalid()Z

    move-result v0

    if-eqz v0, :cond_4

    move-object v0, v1

    goto :goto_0

    :cond_4
    move-object v0, v2

    goto :goto_0
.end method

.method public getHomeRpcParam(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/android/phone/discovery/o2ohome/LocationCityMgr$Location;
    .locals 4

    .prologue
    .line 131
    new-instance v0, Lcom/alipay/android/phone/discovery/o2ohome/LocationCityMgr$Location;

    invoke-direct {v0, p0}, Lcom/alipay/android/phone/discovery/o2ohome/LocationCityMgr$Location;-><init>(Lcom/alipay/android/phone/discovery/o2ohome/LocationCityMgr;)V

    .line 132
    iput-object p1, v0, Lcom/alipay/android/phone/discovery/o2ohome/LocationCityMgr$Location;->adCode:Ljava/lang/String;

    .line 133
    iput-object p2, v0, Lcom/alipay/android/phone/discovery/o2ohome/LocationCityMgr$Location;->cityName:Ljava/lang/String;

    .line 135
    iget-object v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/LocationCityMgr;->locationWrap:Lcom/alipay/android/phone/discovery/o2ohome/util/LBSLocationWrap;

    invoke-virtual {v1}, Lcom/alipay/android/phone/discovery/o2ohome/util/LBSLocationWrap;->getLastLocation()Lcom/alipay/mobile/common/lbs/LBSLocation;

    move-result-object v1

    .line 136
    if-eqz v1, :cond_0

    .line 137
    invoke-virtual {v1}, Lcom/alipay/mobile/common/lbs/LBSLocation;->getLongitude()D

    move-result-wide v2

    iput-wide v2, v0, Lcom/alipay/android/phone/discovery/o2ohome/LocationCityMgr$Location;->longitude:D

    .line 138
    invoke-virtual {v1}, Lcom/alipay/mobile/common/lbs/LBSLocation;->getLatitude()D

    move-result-wide v1

    iput-wide v1, v0, Lcom/alipay/android/phone/discovery/o2ohome/LocationCityMgr$Location;->latitude:D

    .line 141
    :cond_0
    invoke-virtual {v0}, Lcom/alipay/android/phone/discovery/o2ohome/LocationCityMgr$Location;->isInvalid()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    :cond_1
    return-object v0
.end method

.method public getLastLocation()Lcom/alipay/mobile/common/lbs/LBSLocation;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 73
    .line 74
    iget-object v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/LocationCityMgr;->locationWrap:Lcom/alipay/android/phone/discovery/o2ohome/util/LBSLocationWrap;

    if-eqz v1, :cond_0

    .line 75
    iget-object v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/LocationCityMgr;->locationWrap:Lcom/alipay/android/phone/discovery/o2ohome/util/LBSLocationWrap;

    invoke-virtual {v1}, Lcom/alipay/android/phone/discovery/o2ohome/util/LBSLocationWrap;->getExpiresTwoMinutes()Lcom/alipay/mobile/common/lbs/LBSLocation;

    move-result-object v1

    .line 76
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/alipay/mobile/common/lbs/LBSLocation;->getAdCode()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 81
    :cond_0
    :goto_0
    return-object v0

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public saveSelectCityInfo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/LocationCityMgr;->userSelCity:Lcom/alipay/android/phone/discovery/o2ohome/UserSelectCity;

    invoke-virtual {v0, p1, p2}, Lcom/alipay/android/phone/discovery/o2ohome/UserSelectCity;->saveSelectCityInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    return-void
.end method

.method public showLocationView(Lcom/alipay/android/phone/discovery/o2ohome/view/LocationView$emStyleType;)V
    .locals 4

    .prologue
    const/4 v2, -0x1

    .line 161
    sget-object v0, Lcom/alipay/android/phone/discovery/o2ohome/view/LocationView$emStyleType;->EM_STYLE_HIDE:Lcom/alipay/android/phone/discovery/o2ohome/view/LocationView$emStyleType;

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/LocationCityMgr;->locationView:Lcom/alipay/android/phone/discovery/o2ohome/view/LocationView;

    if-nez v0, :cond_0

    .line 186
    :goto_0
    return-void

    .line 165
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/LocationCityMgr;->locationView:Lcom/alipay/android/phone/discovery/o2ohome/view/LocationView;

    if-nez v0, :cond_1

    .line 166
    new-instance v0, Lcom/alipay/android/phone/discovery/o2ohome/view/LocationView;

    iget-object v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/LocationCityMgr;->context:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/alipay/android/phone/discovery/o2ohome/view/LocationView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/LocationCityMgr;->locationView:Lcom/alipay/android/phone/discovery/o2ohome/view/LocationView;

    .line 167
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/LocationCityMgr;->locationView:Lcom/alipay/android/phone/discovery/o2ohome/view/LocationView;

    new-instance v1, Lcom/alipay/android/phone/discovery/o2ohome/LocationCityMgr$2;

    invoke-direct {v1, p0}, Lcom/alipay/android/phone/discovery/o2ohome/LocationCityMgr$2;-><init>(Lcom/alipay/android/phone/discovery/o2ohome/LocationCityMgr;)V

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/discovery/o2ohome/view/LocationView;->setBtnAction(Landroid/view/View$OnClickListener;)V

    .line 175
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/LocationCityMgr;->callback:Lcom/alipay/android/phone/discovery/o2ohome/LocationCallback;

    invoke-interface {v0}, Lcom/alipay/android/phone/discovery/o2ohome/LocationCallback;->getLocationViewParent()Landroid/widget/RelativeLayout;

    move-result-object v0

    .line 176
    if-eqz v0, :cond_1

    .line 177
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 179
    const/4 v2, 0x3

    sget v3, Lcom/alipay/android/phone/discovery/o2ohome/R$id;->action_bar:I

    invoke-virtual {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 180
    iget-object v2, p0, Lcom/alipay/android/phone/discovery/o2ohome/LocationCityMgr;->locationView:Lcom/alipay/android/phone/discovery/o2ohome/view/LocationView;

    invoke-virtual {v2, v1}, Lcom/alipay/android/phone/discovery/o2ohome/view/LocationView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 181
    iget-object v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/LocationCityMgr;->locationView:Lcom/alipay/android/phone/discovery/o2ohome/view/LocationView;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 185
    :cond_1
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/LocationCityMgr;->locationView:Lcom/alipay/android/phone/discovery/o2ohome/view/LocationView;

    invoke-virtual {v0, p1}, Lcom/alipay/android/phone/discovery/o2ohome/view/LocationView;->changeStyleType(Lcom/alipay/android/phone/discovery/o2ohome/view/LocationView$emStyleType;)V

    goto :goto_0
.end method

.method public startLocationTaskWithListener()V
    .locals 2

    .prologue
    .line 85
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/LocationCityMgr;->locationWrap:Lcom/alipay/android/phone/discovery/o2ohome/util/LBSLocationWrap;

    new-instance v1, Lcom/alipay/android/phone/discovery/o2ohome/LocationCityMgr$1;

    invoke-direct {v1, p0}, Lcom/alipay/android/phone/discovery/o2ohome/LocationCityMgr$1;-><init>(Lcom/alipay/android/phone/discovery/o2ohome/LocationCityMgr;)V

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/discovery/o2ohome/util/LBSLocationWrap;->startLocationTask(Lcom/alipay/android/phone/discovery/o2ohome/util/LBSWrapListener;)V

    .line 96
    return-void
.end method
