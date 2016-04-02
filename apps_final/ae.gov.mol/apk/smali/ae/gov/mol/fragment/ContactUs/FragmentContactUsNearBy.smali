.class public Lae/gov/mol/fragment/ContactUs/FragmentContactUsNearBy;
.super Lae/gov/mol/helper/CustomFragment;
.source "FragmentContactUsNearBy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lae/gov/mol/fragment/ContactUs/FragmentContactUsNearBy$ListBaseAdapter;,
        Lae/gov/mol/fragment/ContactUs/FragmentContactUsNearBy$ViewHolder;
    }
.end annotation


# static fields
.field static final ARG_POSITION:Ljava/lang/String; = "position"

.field public static final FRAGMENT_ALPHABETIC:I = 0x1

.field public static final FRAGMENT_NEAREST:I = 0x2

.field static position:I


# instance fields
.field public FragmentType:I

.field private ReceivedGPSLocation:Z

.field alert:Landroid/app/AlertDialog;

.field builder:Landroid/app/AlertDialog$Builder;

.field enabledGPS:Z

.field private isFirstCall:Z

.field private locationManager:Landroid/location/LocationManager;

.field mCustomFragmentActivity:Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Pager;

.field mGpsLocationListener:Landroid/location/LocationListener;

.field mIntent:Landroid/content/Intent;

.field private mListBaseAdapter:Lae/gov/mol/fragment/ContactUs/FragmentContactUsNearBy$ListBaseAdapter;

.field private mListView:Landroid/widget/ListView;

.field mLocationManager:Landroid/location/LocationManager;

.field mNetworkLocationListener:Landroid/location/LocationListener;

.field mProgressBar:Landroid/widget/ProgressBar;

.field mServiceCenterListHandler:Lae/gov/xmlhandler/ServiceCenterListHandler;

.field mTags:Lae/gov/mol/helper/Tags;

.field private mViewLoading:Landroid/view/View;

.field myLat:D

.field myLon:D

.field objComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lae/gov/mol/vo/ServiceCenterData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const-wide/16 v1, 0x0

    .line 46
    invoke-direct {p0}, Lae/gov/mol/helper/CustomFragment;-><init>()V

    .line 51
    const/4 v0, -0x1

    iput v0, p0, Lae/gov/mol/fragment/ContactUs/FragmentContactUsNearBy;->FragmentType:I

    .line 64
    iput-wide v1, p0, Lae/gov/mol/fragment/ContactUs/FragmentContactUsNearBy;->myLat:D

    .line 65
    iput-wide v1, p0, Lae/gov/mol/fragment/ContactUs/FragmentContactUsNearBy;->myLon:D

    .line 67
    iput-boolean v3, p0, Lae/gov/mol/fragment/ContactUs/FragmentContactUsNearBy;->ReceivedGPSLocation:Z

    .line 73
    iput-boolean v3, p0, Lae/gov/mol/fragment/ContactUs/FragmentContactUsNearBy;->isFirstCall:Z

    .line 221
    new-instance v0, Lae/gov/mol/fragment/ContactUs/FragmentContactUsNearBy$1;

    invoke-direct {v0, p0}, Lae/gov/mol/fragment/ContactUs/FragmentContactUsNearBy$1;-><init>(Lae/gov/mol/fragment/ContactUs/FragmentContactUsNearBy;)V

    iput-object v0, p0, Lae/gov/mol/fragment/ContactUs/FragmentContactUsNearBy;->objComparator:Ljava/util/Comparator;

    .line 356
    new-instance v0, Lae/gov/mol/fragment/ContactUs/FragmentContactUsNearBy$2;

    invoke-direct {v0, p0}, Lae/gov/mol/fragment/ContactUs/FragmentContactUsNearBy$2;-><init>(Lae/gov/mol/fragment/ContactUs/FragmentContactUsNearBy;)V

    iput-object v0, p0, Lae/gov/mol/fragment/ContactUs/FragmentContactUsNearBy;->mGpsLocationListener:Landroid/location/LocationListener;

    .line 387
    new-instance v0, Lae/gov/mol/fragment/ContactUs/FragmentContactUsNearBy$3;

    invoke-direct {v0, p0}, Lae/gov/mol/fragment/ContactUs/FragmentContactUsNearBy$3;-><init>(Lae/gov/mol/fragment/ContactUs/FragmentContactUsNearBy;)V

    iput-object v0, p0, Lae/gov/mol/fragment/ContactUs/FragmentContactUsNearBy;->mNetworkLocationListener:Landroid/location/LocationListener;

    .line 46
    return-void
.end method

.method public static final CalculationByDistance(DDDD)D
    .locals 18
    .param p0, "lat1"    # D
    .param p2, "lon1"    # D
    .param p4, "lat2"    # D
    .param p6, "lon2"    # D

    .prologue
    .line 255
    const-wide v0, 0x40b8e30000000000L    # 6371.0

    .line 256
    .local v0, "R":D
    sub-double v12, p4, p0

    invoke-static {v12, v13}, Lae/gov/mol/fragment/ContactUs/FragmentContactUsNearBy;->deg2rad(D)D

    move-result-wide v8

    .line 257
    .local v8, "dLat":D
    sub-double v12, p6, p2

    invoke-static {v12, v13}, Lae/gov/mol/fragment/ContactUs/FragmentContactUsNearBy;->deg2rad(D)D

    move-result-wide v10

    .line 258
    .local v10, "dLon":D
    invoke-static/range {p0 .. p1}, Lae/gov/mol/fragment/ContactUs/FragmentContactUsNearBy;->deg2rad(D)D

    move-result-wide p0

    .line 259
    invoke-static/range {p4 .. p5}, Lae/gov/mol/fragment/ContactUs/FragmentContactUsNearBy;->deg2rad(D)D

    move-result-wide p4

    .line 261
    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    div-double v12, v8, v12

    invoke-static {v12, v13}, Ljava/lang/Math;->sin(D)D

    move-result-wide v12

    const-wide/high16 v14, 0x4000000000000000L    # 2.0

    div-double v14, v8, v14

    invoke-static {v14, v15}, Ljava/lang/Math;->sin(D)D

    move-result-wide v14

    mul-double/2addr v12, v14

    .line 262
    const-wide/high16 v14, 0x4000000000000000L    # 2.0

    div-double v14, v10, v14

    invoke-static {v14, v15}, Ljava/lang/Math;->sin(D)D

    move-result-wide v14

    const-wide/high16 v16, 0x4000000000000000L    # 2.0

    div-double v16, v10, v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->sin(D)D

    move-result-wide v16

    mul-double v14, v14, v16

    invoke-static/range {p0 .. p1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v16

    mul-double v14, v14, v16

    invoke-static/range {p4 .. p5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v16

    mul-double v14, v14, v16

    .line 261
    add-double v2, v12, v14

    .line 263
    .local v2, "a":D
    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v14

    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    sub-double v16, v16, v2

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v16

    invoke-static/range {v14 .. v17}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v14

    mul-double v4, v12, v14

    .line 264
    .local v4, "c":D
    mul-double v6, v0, v4

    .line 266
    .local v6, "d":D
    return-wide v6
.end method

.method public static GetNewInstance()Lae/gov/mol/fragment/ContactUs/FragmentContactUsNearBy;
    .locals 1

    .prologue
    .line 131
    new-instance v0, Lae/gov/mol/fragment/ContactUs/FragmentContactUsNearBy;

    invoke-direct {v0}, Lae/gov/mol/fragment/ContactUs/FragmentContactUsNearBy;-><init>()V

    .line 132
    .local v0, "mFragment":Lae/gov/mol/fragment/ContactUs/FragmentContactUsNearBy;
    return-object v0
.end method

.method public static GetNewInstance(I)Lae/gov/mol/fragment/ContactUs/FragmentContactUsNearBy;
    .locals 4
    .param p0, "Position"    # I

    .prologue
    .line 136
    new-instance v1, Lae/gov/mol/fragment/ContactUs/FragmentContactUsNearBy;

    invoke-direct {v1}, Lae/gov/mol/fragment/ContactUs/FragmentContactUsNearBy;-><init>()V

    .line 137
    .local v1, "mFragment":Lae/gov/mol/fragment/ContactUs/FragmentContactUsNearBy;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 138
    .local v0, "b":Landroid/os/Bundle;
    const-string v2, "position"

    sget v3, Lae/gov/mol/fragment/ContactUs/FragmentContactUsNearBy;->position:I

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 139
    invoke-virtual {v1, v0}, Lae/gov/mol/fragment/ContactUs/FragmentContactUsNearBy;->setArguments(Landroid/os/Bundle;)V

    .line 140
    return-object v1
.end method

.method static synthetic access$0(Lae/gov/mol/fragment/ContactUs/FragmentContactUsNearBy;Landroid/location/Location;)V
    .locals 0

    .prologue
    .line 434
    invoke-direct {p0, p1}, Lae/gov/mol/fragment/ContactUs/FragmentContactUsNearBy;->locationChanged(Landroid/location/Location;)V

    return-void
.end method

.method private static final deg2rad(D)D
    .locals 4
    .param p0, "deg"    # D

    .prologue
    .line 277
    const-wide v0, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v0, p0

    const-wide v2, 0x4066800000000000L    # 180.0

    div-double/2addr v0, v2

    return-wide v0
.end method

.method private initLocationManager()V
    .locals 5

    .prologue
    .line 332
    iget-object v3, p0, Lae/gov/mol/fragment/ContactUs/FragmentContactUsNearBy;->mCustomFragmentActivity:Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Pager;

    const-string v4, "location"

    invoke-virtual {v3, v4}, Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Pager;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/location/LocationManager;

    iput-object v3, p0, Lae/gov/mol/fragment/ContactUs/FragmentContactUsNearBy;->locationManager:Landroid/location/LocationManager;

    .line 333
    new-instance v0, Landroid/location/Criteria;

    invoke-direct {v0}, Landroid/location/Criteria;-><init>()V

    .line 334
    .local v0, "criteria":Landroid/location/Criteria;
    iget-object v3, p0, Lae/gov/mol/fragment/ContactUs/FragmentContactUsNearBy;->locationManager:Landroid/location/LocationManager;

    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4}, Landroid/location/LocationManager;->getBestProvider(Landroid/location/Criteria;Z)Ljava/lang/String;

    move-result-object v2

    .line 335
    .local v2, "provider":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 336
    iget-object v3, p0, Lae/gov/mol/fragment/ContactUs/FragmentContactUsNearBy;->locationManager:Landroid/location/LocationManager;

    invoke-virtual {v3, v2}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v1

    .line 337
    .local v1, "location":Landroid/location/Location;
    if-eqz v1, :cond_0

    .line 338
    const-string v3, "gps"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 339
    iget-object v3, p0, Lae/gov/mol/fragment/ContactUs/FragmentContactUsNearBy;->mGpsLocationListener:Landroid/location/LocationListener;

    invoke-interface {v3, v1}, Landroid/location/LocationListener;->onLocationChanged(Landroid/location/Location;)V

    .line 346
    .end local v1    # "location":Landroid/location/Location;
    :cond_0
    :goto_0
    return-void

    .line 340
    .restart local v1    # "location":Landroid/location/Location;
    :cond_1
    const-string v3, "network"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 341
    iget-object v3, p0, Lae/gov/mol/fragment/ContactUs/FragmentContactUsNearBy;->mNetworkLocationListener:Landroid/location/LocationListener;

    invoke-interface {v3, v1}, Landroid/location/LocationListener;->onLocationChanged(Landroid/location/Location;)V

    goto :goto_0
.end method

.method private locationChanged(Landroid/location/Location;)V
    .locals 3
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    .line 436
    :try_start_0
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    iput-wide v0, p0, Lae/gov/mol/fragment/ContactUs/FragmentContactUsNearBy;->myLat:D

    .line 437
    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v0

    iput-wide v0, p0, Lae/gov/mol/fragment/ContactUs/FragmentContactUsNearBy;->myLon:D

    .line 438
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Location mNetworkLocationListener : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lae/gov/mol/fragment/ContactUs/FragmentContactUsNearBy;->myLat:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lae/gov/mol/fragment/ContactUs/FragmentContactUsNearBy;->myLon:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lae/gov/mol/helper/CommonMethods;->Log(Ljava/lang/String;)V

    .line 439
    sget-object v0, Lae/gov/mol/MolApplication;->mServiceCenterList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 440
    sget-object v0, Lae/gov/mol/MolApplication;->mServiceCenterList:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Lae/gov/mol/fragment/ContactUs/FragmentContactUsNearBy;->UpdateListFromLocationService(Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 446
    :cond_0
    :goto_0
    return-void

    .line 443
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private removeLocationListner()V
    .locals 2

    .prologue
    .line 350
    :try_start_0
    iget-object v0, p0, Lae/gov/mol/fragment/ContactUs/FragmentContactUsNearBy;->locationManager:Landroid/location/LocationManager;

    iget-object v1, p0, Lae/gov/mol/fragment/ContactUs/FragmentContactUsNearBy;->mGpsLocationListener:Landroid/location/LocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 351
    iget-object v0, p0, Lae/gov/mol/fragment/ContactUs/FragmentContactUsNearBy;->locationManager:Landroid/location/LocationManager;

    iget-object v1, p0, Lae/gov/mol/fragment/ContactUs/FragmentContactUsNearBy;->mNetworkLocationListener:Landroid/location/LocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 354
    :goto_0
    return-void

    .line 352
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private requestLocation()V
    .locals 6

    .prologue
    .line 422
    :try_start_0
    iget-object v0, p0, Lae/gov/mol/fragment/ContactUs/FragmentContactUsNearBy;->locationManager:Landroid/location/LocationManager;

    const-string v1, "network"

    const-wide/16 v2, 0x7d0

    const/4 v4, 0x0

    iget-object v5, p0, Lae/gov/mol/fragment/ContactUs/FragmentContactUsNearBy;->mNetworkLocationListener:Landroid/location/LocationListener;

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 423
    iget-object v0, p0, Lae/gov/mol/fragment/ContactUs/FragmentContactUsNearBy;->locationManager:Landroid/location/LocationManager;

    const-string v1, "gps"

    const-wide/16 v2, 0x3e8

    const/4 v4, 0x0

    iget-object v5, p0, Lae/gov/mol/fragment/ContactUs/FragmentContactUsNearBy;->mGpsLocationListener:Landroid/location/LocationListener;

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 425
    iget-object v0, p0, Lae/gov/mol/fragment/ContactUs/FragmentContactUsNearBy;->locationManager:Landroid/location/LocationManager;

    const-string v1, "network"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lae/gov/mol/fragment/ContactUs/FragmentContactUsNearBy;->locationManager:Landroid/location/LocationManager;

    const-string v1, "gps"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 426
    sget-boolean v0, Lae/gov/mol/MolApplication;->shouldNotifyGPS:Z

    if-eqz v0, :cond_1

    .line 427
    :cond_0
    iget-object v0, p0, Lae/gov/mol/fragment/ContactUs/FragmentContactUsNearBy;->mCustomFragmentActivity:Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Pager;

    invoke-virtual {p0, v0}, Lae/gov/mol/fragment/ContactUs/FragmentContactUsNearBy;->buildAlertMessageNoGps(Landroid/support/v4/app/FragmentActivity;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 432
    :cond_1
    :goto_0
    return-void

    .line 430
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public DismissLoading()V
    .locals 2

    .prologue
    .line 455
    iget-object v0, p0, Lae/gov/mol/fragment/ContactUs/FragmentContactUsNearBy;->mViewLoading:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 456
    iget-object v0, p0, Lae/gov/mol/fragment/ContactUs/FragmentContactUsNearBy;->mViewLoading:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 458
    :cond_0
    return-void
.end method

.method public UpdateListFromLocationService(Ljava/util/ArrayList;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lae/gov/mol/vo/ServiceCenterData;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "mList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lae/gov/mol/vo/ServiceCenterData;>;"
    const/4 v12, 0x0

    const-wide/16 v2, 0x0

    .line 281
    iget-object v0, p0, Lae/gov/mol/fragment/ContactUs/FragmentContactUsNearBy;->mServiceCenterListHandler:Lae/gov/xmlhandler/ServiceCenterListHandler;

    invoke-virtual {v0, p1}, Lae/gov/xmlhandler/ServiceCenterListHandler;->setmServiceCenterDatas(Ljava/util/ArrayList;)V

    .line 282
    iget-boolean v0, p0, Lae/gov/mol/fragment/ContactUs/FragmentContactUsNearBy;->isFirstCall:Z

    if-eqz v0, :cond_0

    .line 284
    invoke-direct {p0}, Lae/gov/mol/fragment/ContactUs/FragmentContactUsNearBy;->requestLocation()V

    .line 286
    :cond_0
    const-string v0, "In UpdateListFromLocationService"

    invoke-static {v0}, Lae/gov/mol/helper/CommonMethods;->Log(Ljava/lang/String;)V

    .line 287
    const/4 v9, 0x0

    .line 288
    .local v9, "mNearByIndex":I
    invoke-static {}, Lae/gov/mol/MolApplication;->getApplicationLanguageAR_EN()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ar"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 289
    const/4 v9, 0x1

    .line 291
    :cond_1
    iget-boolean v0, p0, Lae/gov/mol/fragment/ContactUs/FragmentContactUsNearBy;->ReceivedGPSLocation:Z

    if-eqz v0, :cond_2

    sget v0, Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Pager;->CurrentPage:I

    if-ne v0, v9, :cond_2

    .line 294
    iget-object v0, p0, Lae/gov/mol/fragment/ContactUs/FragmentContactUsNearBy;->mServiceCenterListHandler:Lae/gov/xmlhandler/ServiceCenterListHandler;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lae/gov/mol/fragment/ContactUs/FragmentContactUsNearBy;->mServiceCenterListHandler:Lae/gov/xmlhandler/ServiceCenterListHandler;

    invoke-virtual {v0}, Lae/gov/xmlhandler/ServiceCenterListHandler;->getmServiceCenterDatas()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 296
    iget-object v0, p0, Lae/gov/mol/fragment/ContactUs/FragmentContactUsNearBy;->mServiceCenterListHandler:Lae/gov/xmlhandler/ServiceCenterListHandler;

    invoke-virtual {v0}, Lae/gov/xmlhandler/ServiceCenterListHandler;->getmServiceCenterDatas()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 298
    iget-object v0, p0, Lae/gov/mol/fragment/ContactUs/FragmentContactUsNearBy;->mListView:Landroid/widget/ListView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lae/gov/mol/fragment/ContactUs/FragmentContactUsNearBy;->mListBaseAdapter:Lae/gov/mol/fragment/ContactUs/FragmentContactUsNearBy$ListBaseAdapter;

    if-eqz v0, :cond_2

    .line 300
    const-string v0, "In UpdateListFromLocationService fired"

    invoke-static {v0}, Lae/gov/mol/helper/CommonMethods;->Log(Ljava/lang/String;)V

    .line 301
    iget-wide v0, p0, Lae/gov/mol/fragment/ContactUs/FragmentContactUsNearBy;->myLat:D

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_5

    iget-wide v0, p0, Lae/gov/mol/fragment/ContactUs/FragmentContactUsNearBy;->myLon:D

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_5

    .line 302
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    iget-object v0, p0, Lae/gov/mol/fragment/ContactUs/FragmentContactUsNearBy;->mServiceCenterListHandler:Lae/gov/xmlhandler/ServiceCenterListHandler;

    invoke-virtual {v0}, Lae/gov/xmlhandler/ServiceCenterListHandler;->getmServiceCenterDatas()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v8, v0, :cond_3

    .line 307
    iget-object v0, p0, Lae/gov/mol/fragment/ContactUs/FragmentContactUsNearBy;->mServiceCenterListHandler:Lae/gov/xmlhandler/ServiceCenterListHandler;

    invoke-virtual {v0}, Lae/gov/xmlhandler/ServiceCenterListHandler;->getmServiceCenterDatas()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lae/gov/mol/fragment/ContactUs/FragmentContactUsNearBy;->sort(Ljava/util/List;)V

    .line 308
    new-instance v0, Lae/gov/mol/fragment/ContactUs/FragmentContactUsNearBy$ListBaseAdapter;

    invoke-direct {v0, p0}, Lae/gov/mol/fragment/ContactUs/FragmentContactUsNearBy$ListBaseAdapter;-><init>(Lae/gov/mol/fragment/ContactUs/FragmentContactUsNearBy;)V

    iput-object v0, p0, Lae/gov/mol/fragment/ContactUs/FragmentContactUsNearBy;->mListBaseAdapter:Lae/gov/mol/fragment/ContactUs/FragmentContactUsNearBy$ListBaseAdapter;

    .line 309
    iget-object v0, p0, Lae/gov/mol/fragment/ContactUs/FragmentContactUsNearBy;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lae/gov/mol/fragment/ContactUs/FragmentContactUsNearBy;->mListBaseAdapter:Lae/gov/mol/fragment/ContactUs/FragmentContactUsNearBy$ListBaseAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 310
    invoke-virtual {p0}, Lae/gov/mol/fragment/ContactUs/FragmentContactUsNearBy;->DismissLoading()V

    .line 311
    iget-boolean v0, p0, Lae/gov/mol/fragment/ContactUs/FragmentContactUsNearBy;->ReceivedGPSLocation:Z

    if-eqz v0, :cond_4

    move v0, v12

    :goto_1
    iput-boolean v0, p0, Lae/gov/mol/fragment/ContactUs/FragmentContactUsNearBy;->ReceivedGPSLocation:Z

    .line 312
    iput-boolean v12, p0, Lae/gov/mol/fragment/ContactUs/FragmentContactUsNearBy;->isFirstCall:Z

    .line 321
    .end local v8    # "i":I
    :cond_2
    :goto_2
    return-void

    .line 303
    .restart local v8    # "i":I
    :cond_3
    iget-object v0, p0, Lae/gov/mol/fragment/ContactUs/FragmentContactUsNearBy;->mServiceCenterListHandler:Lae/gov/xmlhandler/ServiceCenterListHandler;

    invoke-virtual {v0}, Lae/gov/xmlhandler/ServiceCenterListHandler;->getmServiceCenterDatas()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lae/gov/mol/vo/ServiceCenterData;

    .line 304
    .local v10, "mServiceCenterData":Lae/gov/mol/vo/ServiceCenterData;
    iget-object v0, p0, Lae/gov/mol/fragment/ContactUs/FragmentContactUsNearBy;->mServiceCenterListHandler:Lae/gov/xmlhandler/ServiceCenterListHandler;

    invoke-virtual {v0}, Lae/gov/xmlhandler/ServiceCenterListHandler;->getmServiceCenterDatas()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Lae/gov/mol/vo/ServiceCenterData;

    .line 305
    iget-wide v0, p0, Lae/gov/mol/fragment/ContactUs/FragmentContactUsNearBy;->myLat:D

    iget-wide v2, p0, Lae/gov/mol/fragment/ContactUs/FragmentContactUsNearBy;->myLon:D

    invoke-virtual {v10}, Lae/gov/mol/vo/ServiceCenterData;->getCenter_x()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    invoke-virtual {v10}, Lae/gov/mol/vo/ServiceCenterData;->getCenter_y()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    invoke-static/range {v0 .. v7}, Lae/gov/mol/fragment/ContactUs/FragmentContactUsNearBy;->CalculationByDistance(DDDD)D

    move-result-wide v0

    .line 304
    invoke-virtual {v11, v0, v1}, Lae/gov/mol/vo/ServiceCenterData;->setDistance(D)V

    .line 302
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 311
    .end local v10    # "mServiceCenterData":Lae/gov/mol/vo/ServiceCenterData;
    :cond_4
    const/4 v0, 0x1

    goto :goto_1

    .line 315
    .end local v8    # "i":I
    :cond_5
    invoke-virtual {p0}, Lae/gov/mol/fragment/ContactUs/FragmentContactUsNearBy;->showLoading()V

    goto :goto_2
.end method

.method public getDistanceInMiles(Lcom/google/android/maps/GeoPoint;Lcom/google/android/maps/GeoPoint;)F
    .locals 13
    .param p1, "p1"    # Lcom/google/android/maps/GeoPoint;
    .param p2, "p2"    # Lcom/google/android/maps/GeoPoint;

    .prologue
    const-wide v11, 0x412e848000000000L    # 1000000.0

    .line 244
    invoke-virtual {p1}, Lcom/google/android/maps/GeoPoint;->getLatitudeE6()I

    move-result v9

    int-to-double v9, v9

    div-double v0, v9, v11

    .line 245
    .local v0, "lat1":D
    invoke-virtual {p1}, Lcom/google/android/maps/GeoPoint;->getLongitudeE6()I

    move-result v9

    int-to-double v9, v9

    div-double v2, v9, v11

    .line 246
    .local v2, "lng1":D
    invoke-virtual {p2}, Lcom/google/android/maps/GeoPoint;->getLatitudeE6()I

    move-result v9

    int-to-double v9, v9

    div-double v4, v9, v11

    .line 247
    .local v4, "lat2":D
    invoke-virtual {p2}, Lcom/google/android/maps/GeoPoint;->getLongitudeE6()I

    move-result v9

    int-to-double v9, v9

    div-double v6, v9, v11

    .line 248
    .local v6, "lng2":D
    const/4 v9, 0x1

    new-array v8, v9, [F

    .line 249
    .local v8, "dist":[F
    invoke-static/range {v0 .. v8}, Landroid/location/Location;->distanceBetween(DDDD[F)V

    .line 250
    const/4 v9, 0x0

    aget v9, v8, v9

    const v10, 0x3a22e384

    mul-float/2addr v9, v10

    return v9
.end method

.method public getInstance(I)Lae/gov/mol/fragment/ContactUs/FragmentContactUsNearBy;
    .locals 0
    .param p1, "FragmentType"    # I

    .prologue
    .line 126
    iput p1, p0, Lae/gov/mol/fragment/ContactUs/FragmentContactUsNearBy;->FragmentType:I

    .line 127
    return-object p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "arg0"    # Landroid/os/Bundle;

    .prologue
    .line 80
    invoke-super {p0, p1}, Lae/gov/mol/helper/CustomFragment;->onCreate(Landroid/os/Bundle;)V

    .line 81
    const/4 v0, 0x1

    iput v0, p0, Lae/gov/mol/fragment/ContactUs/FragmentContactUsNearBy;->FragmentType:I

    .line 82
    invoke-virtual {p0}, Lae/gov/mol/fragment/ContactUs/FragmentContactUsNearBy;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Pager;

    iput-object v0, p0, Lae/gov/mol/fragment/ContactUs/FragmentContactUsNearBy;->mCustomFragmentActivity:Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Pager;

    .line 83
    invoke-static {}, Lae/gov/mol/MolApplication;->getmTags()Lae/gov/mol/helper/Tags;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/fragment/ContactUs/FragmentContactUsNearBy;->mTags:Lae/gov/mol/helper/Tags;

    .line 84
    new-instance v0, Lae/gov/xmlhandler/ServiceCenterListHandler;

    invoke-direct {v0}, Lae/gov/xmlhandler/ServiceCenterListHandler;-><init>()V

    iput-object v0, p0, Lae/gov/mol/fragment/ContactUs/FragmentContactUsNearBy;->mServiceCenterListHandler:Lae/gov/xmlhandler/ServiceCenterListHandler;

    .line 86
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "minInflater"    # Landroid/view/LayoutInflater;
    .param p2, "mViewGroup"    # Landroid/view/ViewGroup;
    .param p3, "mBundle"    # Landroid/os/Bundle;

    .prologue
    .line 90
    const v1, 0x7f03004b

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 91
    .local v0, "mView":Landroid/view/View;
    const v1, 0x7f0601c5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lae/gov/mol/fragment/ContactUs/FragmentContactUsNearBy;->mListView:Landroid/widget/ListView;

    .line 92
    const v1, 0x7f060762

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Lae/gov/mol/fragment/ContactUs/FragmentContactUsNearBy;->mProgressBar:Landroid/widget/ProgressBar;

    .line 93
    const v1, 0x7f0601c4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lae/gov/mol/fragment/ContactUs/FragmentContactUsNearBy;->mViewLoading:Landroid/view/View;

    .line 94
    invoke-virtual {p0}, Lae/gov/mol/fragment/ContactUs/FragmentContactUsNearBy;->showLoading()V

    .line 95
    new-instance v1, Lae/gov/mol/fragment/ContactUs/FragmentContactUsNearBy$ListBaseAdapter;

    invoke-direct {v1, p0}, Lae/gov/mol/fragment/ContactUs/FragmentContactUsNearBy$ListBaseAdapter;-><init>(Lae/gov/mol/fragment/ContactUs/FragmentContactUsNearBy;)V

    iput-object v1, p0, Lae/gov/mol/fragment/ContactUs/FragmentContactUsNearBy;->mListBaseAdapter:Lae/gov/mol/fragment/ContactUs/FragmentContactUsNearBy$ListBaseAdapter;

    .line 96
    iget-object v1, p0, Lae/gov/mol/fragment/ContactUs/FragmentContactUsNearBy;->mListView:Landroid/widget/ListView;

    new-instance v2, Lae/gov/mol/fragment/ContactUs/FragmentContactUsNearBy$4;

    invoke-direct {v2, p0}, Lae/gov/mol/fragment/ContactUs/FragmentContactUsNearBy$4;-><init>(Lae/gov/mol/fragment/ContactUs/FragmentContactUsNearBy;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 105
    return-object v0
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 216
    invoke-direct {p0}, Lae/gov/mol/fragment/ContactUs/FragmentContactUsNearBy;->removeLocationListner()V

    .line 217
    invoke-super {p0}, Lae/gov/mol/helper/CustomFragment;->onPause()V

    .line 219
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 208
    iget-boolean v0, p0, Lae/gov/mol/fragment/ContactUs/FragmentContactUsNearBy;->isFirstCall:Z

    if-nez v0, :cond_0

    .line 209
    invoke-direct {p0}, Lae/gov/mol/fragment/ContactUs/FragmentContactUsNearBy;->requestLocation()V

    .line 210
    :cond_0
    invoke-super {p0}, Lae/gov/mol/helper/CustomFragment;->onResume()V

    .line 212
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 326
    iget-object v0, p0, Lae/gov/mol/fragment/ContactUs/FragmentContactUsNearBy;->alert:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 327
    iget-object v0, p0, Lae/gov/mol/fragment/ContactUs/FragmentContactUsNearBy;->alert:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 328
    :cond_0
    invoke-super {p0}, Lae/gov/mol/helper/CustomFragment;->onStop()V

    .line 329
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 110
    iget-object v0, p0, Lae/gov/mol/fragment/ContactUs/FragmentContactUsNearBy;->mCustomFragmentActivity:Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Pager;

    const-string v1, "location"

    invoke-virtual {v0, v1}, Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Pager;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lae/gov/mol/fragment/ContactUs/FragmentContactUsNearBy;->locationManager:Landroid/location/LocationManager;

    .line 111
    iget-object v0, p0, Lae/gov/mol/fragment/ContactUs/FragmentContactUsNearBy;->locationManager:Landroid/location/LocationManager;

    invoke-virtual {v0}, Landroid/location/LocationManager;->getAllProviders()Ljava/util/List;

    .line 112
    invoke-virtual {p0}, Lae/gov/mol/fragment/ContactUs/FragmentContactUsNearBy;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lae/gov/mol/fragment/ContactUs/FragmentContactUsNearBy;->mLocationManager:Landroid/location/LocationManager;

    .line 113
    iget-object v0, p0, Lae/gov/mol/fragment/ContactUs/FragmentContactUsNearBy;->mLocationManager:Landroid/location/LocationManager;

    const-string v1, "gps"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lae/gov/mol/fragment/ContactUs/FragmentContactUsNearBy;->enabledGPS:Z

    .line 114
    invoke-direct {p0}, Lae/gov/mol/fragment/ContactUs/FragmentContactUsNearBy;->initLocationManager()V

    .line 115
    invoke-super {p0, p1, p2}, Lae/gov/mol/helper/CustomFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 116
    return-void
.end method

.method public showLoading()V
    .locals 2

    .prologue
    .line 449
    iget-object v0, p0, Lae/gov/mol/fragment/ContactUs/FragmentContactUsNearBy;->mViewLoading:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 450
    iget-object v0, p0, Lae/gov/mol/fragment/ContactUs/FragmentContactUsNearBy;->mViewLoading:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 452
    :cond_0
    return-void
.end method

.method public sort(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lae/gov/mol/vo/ServiceCenterData;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 235
    .local p1, "itemLocationList":Ljava/util/List;, "Ljava/util/List<Lae/gov/mol/vo/ServiceCenterData;>;"
    if-eqz p1, :cond_0

    .line 236
    iget-object v0, p0, Lae/gov/mol/fragment/ContactUs/FragmentContactUsNearBy;->objComparator:Ljava/util/Comparator;

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 238
    :cond_0
    return-void
.end method

.method public updateView(Lae/gov/mol/vo/ServiceCenterData;)V
    .locals 0
    .param p1, "mServiceCenterVo"    # Lae/gov/mol/vo/ServiceCenterData;

    .prologue
    .line 461
    return-void
.end method
