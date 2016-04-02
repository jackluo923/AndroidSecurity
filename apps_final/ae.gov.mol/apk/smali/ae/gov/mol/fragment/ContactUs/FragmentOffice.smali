.class public Lae/gov/mol/fragment/ContactUs/FragmentOffice;
.super Lae/gov/mol/helper/CustomFragment;
.source "FragmentOffice.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lae/gov/mol/fragment/ContactUs/FragmentOffice$ListBaseAdapter;,
        Lae/gov/mol/fragment/ContactUs/FragmentOffice$ViewHolder;
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

.field private mListBaseAdapter:Lae/gov/mol/fragment/ContactUs/FragmentOffice$ListBaseAdapter;

.field private mListView:Landroid/widget/ListView;

.field mLocationManager:Landroid/location/LocationManager;

.field mNetworkLocationListener:Landroid/location/LocationListener;

.field mProgressBar:Landroid/widget/ProgressBar;

.field mTags:Lae/gov/mol/helper/Tags;

.field private mViewLoading:Landroid/view/View;

.field myLat:D

.field myLon:D

.field objComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lae/gov/mol/vo/ContactUsVo$ContactUsData;",
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

    .line 44
    invoke-direct {p0}, Lae/gov/mol/helper/CustomFragment;-><init>()V

    .line 49
    const/4 v0, -0x1

    iput v0, p0, Lae/gov/mol/fragment/ContactUs/FragmentOffice;->FragmentType:I

    .line 62
    iput-wide v1, p0, Lae/gov/mol/fragment/ContactUs/FragmentOffice;->myLat:D

    .line 63
    iput-wide v1, p0, Lae/gov/mol/fragment/ContactUs/FragmentOffice;->myLon:D

    .line 65
    iput-boolean v3, p0, Lae/gov/mol/fragment/ContactUs/FragmentOffice;->ReceivedGPSLocation:Z

    .line 71
    iput-boolean v3, p0, Lae/gov/mol/fragment/ContactUs/FragmentOffice;->isFirstCall:Z

    .line 207
    new-instance v0, Lae/gov/mol/fragment/ContactUs/FragmentOffice$1;

    invoke-direct {v0, p0}, Lae/gov/mol/fragment/ContactUs/FragmentOffice$1;-><init>(Lae/gov/mol/fragment/ContactUs/FragmentOffice;)V

    iput-object v0, p0, Lae/gov/mol/fragment/ContactUs/FragmentOffice;->objComparator:Ljava/util/Comparator;

    .line 342
    new-instance v0, Lae/gov/mol/fragment/ContactUs/FragmentOffice$2;

    invoke-direct {v0, p0}, Lae/gov/mol/fragment/ContactUs/FragmentOffice$2;-><init>(Lae/gov/mol/fragment/ContactUs/FragmentOffice;)V

    iput-object v0, p0, Lae/gov/mol/fragment/ContactUs/FragmentOffice;->mGpsLocationListener:Landroid/location/LocationListener;

    .line 372
    new-instance v0, Lae/gov/mol/fragment/ContactUs/FragmentOffice$3;

    invoke-direct {v0, p0}, Lae/gov/mol/fragment/ContactUs/FragmentOffice$3;-><init>(Lae/gov/mol/fragment/ContactUs/FragmentOffice;)V

    iput-object v0, p0, Lae/gov/mol/fragment/ContactUs/FragmentOffice;->mNetworkLocationListener:Landroid/location/LocationListener;

    .line 44
    return-void
.end method

.method public static final CalculationByDistance(DDDD)D
    .locals 18
    .param p0, "lat1"    # D
    .param p2, "lon1"    # D
    .param p4, "lat2"    # D
    .param p6, "lon2"    # D

    .prologue
    .line 242
    const-wide v0, 0x40b8e30000000000L    # 6371.0

    .line 243
    .local v0, "R":D
    sub-double v12, p4, p0

    invoke-static {v12, v13}, Lae/gov/mol/fragment/ContactUs/FragmentOffice;->deg2rad(D)D

    move-result-wide v8

    .line 244
    .local v8, "dLat":D
    sub-double v12, p6, p2

    invoke-static {v12, v13}, Lae/gov/mol/fragment/ContactUs/FragmentOffice;->deg2rad(D)D

    move-result-wide v10

    .line 245
    .local v10, "dLon":D
    invoke-static/range {p0 .. p1}, Lae/gov/mol/fragment/ContactUs/FragmentOffice;->deg2rad(D)D

    move-result-wide p0

    .line 246
    invoke-static/range {p4 .. p5}, Lae/gov/mol/fragment/ContactUs/FragmentOffice;->deg2rad(D)D

    move-result-wide p4

    .line 248
    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    div-double v12, v8, v12

    invoke-static {v12, v13}, Ljava/lang/Math;->sin(D)D

    move-result-wide v12

    const-wide/high16 v14, 0x4000000000000000L    # 2.0

    div-double v14, v8, v14

    invoke-static {v14, v15}, Ljava/lang/Math;->sin(D)D

    move-result-wide v14

    mul-double/2addr v12, v14

    .line 249
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

    .line 248
    add-double v2, v12, v14

    .line 250
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

    .line 251
    .local v4, "c":D
    mul-double v6, v0, v4

    .line 253
    .local v6, "d":D
    return-wide v6
.end method

.method public static GetNewInstance()Lae/gov/mol/fragment/ContactUs/FragmentOffice;
    .locals 1

    .prologue
    .line 130
    new-instance v0, Lae/gov/mol/fragment/ContactUs/FragmentOffice;

    invoke-direct {v0}, Lae/gov/mol/fragment/ContactUs/FragmentOffice;-><init>()V

    .line 131
    .local v0, "mFragment":Lae/gov/mol/fragment/ContactUs/FragmentOffice;
    return-object v0
.end method

.method public static GetNewInstance(I)Lae/gov/mol/fragment/ContactUs/FragmentOffice;
    .locals 4
    .param p0, "Position"    # I

    .prologue
    .line 135
    new-instance v1, Lae/gov/mol/fragment/ContactUs/FragmentOffice;

    invoke-direct {v1}, Lae/gov/mol/fragment/ContactUs/FragmentOffice;-><init>()V

    .line 136
    .local v1, "mFragment":Lae/gov/mol/fragment/ContactUs/FragmentOffice;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 137
    .local v0, "b":Landroid/os/Bundle;
    const-string v2, "position"

    sget v3, Lae/gov/mol/fragment/ContactUs/FragmentOffice;->position:I

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 138
    invoke-virtual {v1, v0}, Lae/gov/mol/fragment/ContactUs/FragmentOffice;->setArguments(Landroid/os/Bundle;)V

    .line 139
    return-object v1
.end method

.method static synthetic access$0(Lae/gov/mol/fragment/ContactUs/FragmentOffice;Landroid/location/Location;)V
    .locals 0

    .prologue
    .line 421
    invoke-direct {p0, p1}, Lae/gov/mol/fragment/ContactUs/FragmentOffice;->locationChanged(Landroid/location/Location;)V

    return-void
.end method

.method private static final deg2rad(D)D
    .locals 4
    .param p0, "deg"    # D

    .prologue
    .line 264
    const-wide v0, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v0, p0

    const-wide v2, 0x4066800000000000L    # 180.0

    div-double/2addr v0, v2

    return-wide v0
.end method

.method private initLocationManager()V
    .locals 5

    .prologue
    .line 316
    iget-object v3, p0, Lae/gov/mol/fragment/ContactUs/FragmentOffice;->mCustomFragmentActivity:Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Pager;

    const-string v4, "location"

    invoke-virtual {v3, v4}, Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Pager;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/location/LocationManager;

    iput-object v3, p0, Lae/gov/mol/fragment/ContactUs/FragmentOffice;->locationManager:Landroid/location/LocationManager;

    .line 317
    new-instance v0, Landroid/location/Criteria;

    invoke-direct {v0}, Landroid/location/Criteria;-><init>()V

    .line 318
    .local v0, "criteria":Landroid/location/Criteria;
    iget-object v3, p0, Lae/gov/mol/fragment/ContactUs/FragmentOffice;->locationManager:Landroid/location/LocationManager;

    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4}, Landroid/location/LocationManager;->getBestProvider(Landroid/location/Criteria;Z)Ljava/lang/String;

    move-result-object v2

    .line 319
    .local v2, "provider":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 320
    iget-object v3, p0, Lae/gov/mol/fragment/ContactUs/FragmentOffice;->locationManager:Landroid/location/LocationManager;

    invoke-virtual {v3, v2}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v1

    .line 321
    .local v1, "location":Landroid/location/Location;
    if-eqz v1, :cond_0

    .line 322
    const-string v3, "gps"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 323
    iget-object v3, p0, Lae/gov/mol/fragment/ContactUs/FragmentOffice;->mGpsLocationListener:Landroid/location/LocationListener;

    invoke-interface {v3, v1}, Landroid/location/LocationListener;->onLocationChanged(Landroid/location/Location;)V

    .line 330
    .end local v1    # "location":Landroid/location/Location;
    :cond_0
    :goto_0
    return-void

    .line 324
    .restart local v1    # "location":Landroid/location/Location;
    :cond_1
    const-string v3, "network"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 325
    iget-object v3, p0, Lae/gov/mol/fragment/ContactUs/FragmentOffice;->mNetworkLocationListener:Landroid/location/LocationListener;

    invoke-interface {v3, v1}, Landroid/location/LocationListener;->onLocationChanged(Landroid/location/Location;)V

    goto :goto_0
.end method

.method private locationChanged(Landroid/location/Location;)V
    .locals 3
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    .line 423
    :try_start_0
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    iput-wide v0, p0, Lae/gov/mol/fragment/ContactUs/FragmentOffice;->myLat:D

    .line 424
    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v0

    iput-wide v0, p0, Lae/gov/mol/fragment/ContactUs/FragmentOffice;->myLon:D

    .line 425
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Location mNetworkLocationListener : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lae/gov/mol/fragment/ContactUs/FragmentOffice;->myLat:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lae/gov/mol/fragment/ContactUs/FragmentOffice;->myLon:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lae/gov/mol/helper/CommonMethods;->Log(Ljava/lang/String;)V

    .line 426
    invoke-virtual {p0}, Lae/gov/mol/fragment/ContactUs/FragmentOffice;->UpdateListFromLocationService()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 430
    :goto_0
    return-void

    .line 427
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private removeLocationListner()V
    .locals 2

    .prologue
    .line 334
    :try_start_0
    iget-object v0, p0, Lae/gov/mol/fragment/ContactUs/FragmentOffice;->locationManager:Landroid/location/LocationManager;

    iget-object v1, p0, Lae/gov/mol/fragment/ContactUs/FragmentOffice;->mGpsLocationListener:Landroid/location/LocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 335
    iget-object v0, p0, Lae/gov/mol/fragment/ContactUs/FragmentOffice;->locationManager:Landroid/location/LocationManager;

    iget-object v1, p0, Lae/gov/mol/fragment/ContactUs/FragmentOffice;->mNetworkLocationListener:Landroid/location/LocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 340
    :goto_0
    return-void

    .line 337
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private requestLocation()V
    .locals 6

    .prologue
    .line 408
    :try_start_0
    iget-object v0, p0, Lae/gov/mol/fragment/ContactUs/FragmentOffice;->locationManager:Landroid/location/LocationManager;

    const-string v1, "network"

    const-wide/16 v2, 0x7d0

    const/4 v4, 0x0

    iget-object v5, p0, Lae/gov/mol/fragment/ContactUs/FragmentOffice;->mNetworkLocationListener:Landroid/location/LocationListener;

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 409
    iget-object v0, p0, Lae/gov/mol/fragment/ContactUs/FragmentOffice;->locationManager:Landroid/location/LocationManager;

    const-string v1, "gps"

    const-wide/16 v2, 0x3e8

    const/4 v4, 0x0

    iget-object v5, p0, Lae/gov/mol/fragment/ContactUs/FragmentOffice;->mGpsLocationListener:Landroid/location/LocationListener;

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 411
    iget-object v0, p0, Lae/gov/mol/fragment/ContactUs/FragmentOffice;->locationManager:Landroid/location/LocationManager;

    const-string v1, "network"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lae/gov/mol/fragment/ContactUs/FragmentOffice;->locationManager:Landroid/location/LocationManager;

    const-string v1, "gps"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 412
    sget-boolean v0, Lae/gov/mol/MolApplication;->shouldNotifyGPS:Z

    if-eqz v0, :cond_1

    .line 413
    :cond_0
    iget-object v0, p0, Lae/gov/mol/fragment/ContactUs/FragmentOffice;->mCustomFragmentActivity:Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Pager;

    invoke-virtual {p0, v0}, Lae/gov/mol/fragment/ContactUs/FragmentOffice;->buildAlertMessageNoGps(Landroid/support/v4/app/FragmentActivity;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 419
    :cond_1
    :goto_0
    return-void

    .line 416
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public DismissLoading()V
    .locals 2

    .prologue
    .line 439
    iget-object v0, p0, Lae/gov/mol/fragment/ContactUs/FragmentOffice;->mViewLoading:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 440
    iget-object v0, p0, Lae/gov/mol/fragment/ContactUs/FragmentOffice;->mViewLoading:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 442
    :cond_0
    return-void
.end method

.method public UpdateListFromLocationService()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    const-wide/16 v2, 0x0

    .line 268
    iget-boolean v0, p0, Lae/gov/mol/fragment/ContactUs/FragmentOffice;->isFirstCall:Z

    if-eqz v0, :cond_0

    .line 270
    invoke-direct {p0}, Lae/gov/mol/fragment/ContactUs/FragmentOffice;->requestLocation()V

    .line 272
    :cond_0
    const-string v0, "In UpdateListFromLocationService"

    invoke-static {v0}, Lae/gov/mol/helper/CommonMethods;->Log(Ljava/lang/String;)V

    .line 273
    const/4 v10, 0x0

    .line 274
    .local v10, "mNearByIndex":I
    invoke-static {}, Lae/gov/mol/MolApplication;->getApplicationLanguageAR_EN()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ar"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 275
    const/4 v10, 0x1

    .line 277
    :cond_1
    iget-boolean v0, p0, Lae/gov/mol/fragment/ContactUs/FragmentOffice;->ReceivedGPSLocation:Z

    if-eqz v0, :cond_2

    sget v0, Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Pager;->CurrentPage:I

    if-ne v0, v10, :cond_2

    .line 278
    iget-object v0, p0, Lae/gov/mol/fragment/ContactUs/FragmentOffice;->mCustomFragmentActivity:Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Pager;

    iget-object v0, v0, Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Pager;->mContactUsVo:Lae/gov/mol/vo/ContactUsVo;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lae/gov/mol/fragment/ContactUs/FragmentOffice;->mCustomFragmentActivity:Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Pager;

    iget-object v0, v0, Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Pager;->mContactUsVo:Lae/gov/mol/vo/ContactUsVo;

    invoke-virtual {v0}, Lae/gov/mol/vo/ContactUsVo;->getResources()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 280
    iget-object v0, p0, Lae/gov/mol/fragment/ContactUs/FragmentOffice;->mCustomFragmentActivity:Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Pager;

    iget-object v0, v0, Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Pager;->mContactUsVo:Lae/gov/mol/vo/ContactUsVo;

    invoke-virtual {v0}, Lae/gov/mol/vo/ContactUsVo;->getResources()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 282
    iget-object v0, p0, Lae/gov/mol/fragment/ContactUs/FragmentOffice;->mListView:Landroid/widget/ListView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lae/gov/mol/fragment/ContactUs/FragmentOffice;->mListBaseAdapter:Lae/gov/mol/fragment/ContactUs/FragmentOffice$ListBaseAdapter;

    if-eqz v0, :cond_2

    .line 284
    const-string v0, "In UpdateListFromLocationService fired"

    invoke-static {v0}, Lae/gov/mol/helper/CommonMethods;->Log(Ljava/lang/String;)V

    .line 285
    iget-wide v0, p0, Lae/gov/mol/fragment/ContactUs/FragmentOffice;->myLat:D

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_5

    iget-wide v0, p0, Lae/gov/mol/fragment/ContactUs/FragmentOffice;->myLon:D

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_5

    .line 286
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    iget-object v0, p0, Lae/gov/mol/fragment/ContactUs/FragmentOffice;->mCustomFragmentActivity:Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Pager;

    iget-object v0, v0, Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Pager;->mContactUsVo:Lae/gov/mol/vo/ContactUsVo;

    invoke-virtual {v0}, Lae/gov/mol/vo/ContactUsVo;->getResources()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v8, v0, :cond_3

    .line 291
    iget-object v0, p0, Lae/gov/mol/fragment/ContactUs/FragmentOffice;->mCustomFragmentActivity:Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Pager;

    iget-object v0, v0, Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Pager;->mContactUsVo:Lae/gov/mol/vo/ContactUsVo;

    invoke-virtual {v0}, Lae/gov/mol/vo/ContactUsVo;->getResources()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lae/gov/mol/fragment/ContactUs/FragmentOffice;->sort(Ljava/util/List;)V

    .line 292
    new-instance v0, Lae/gov/mol/fragment/ContactUs/FragmentOffice$ListBaseAdapter;

    invoke-direct {v0, p0}, Lae/gov/mol/fragment/ContactUs/FragmentOffice$ListBaseAdapter;-><init>(Lae/gov/mol/fragment/ContactUs/FragmentOffice;)V

    iput-object v0, p0, Lae/gov/mol/fragment/ContactUs/FragmentOffice;->mListBaseAdapter:Lae/gov/mol/fragment/ContactUs/FragmentOffice$ListBaseAdapter;

    .line 293
    iget-object v0, p0, Lae/gov/mol/fragment/ContactUs/FragmentOffice;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lae/gov/mol/fragment/ContactUs/FragmentOffice;->mListBaseAdapter:Lae/gov/mol/fragment/ContactUs/FragmentOffice$ListBaseAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 294
    invoke-virtual {p0}, Lae/gov/mol/fragment/ContactUs/FragmentOffice;->DismissLoading()V

    .line 295
    iget-boolean v0, p0, Lae/gov/mol/fragment/ContactUs/FragmentOffice;->ReceivedGPSLocation:Z

    if-eqz v0, :cond_4

    move v0, v12

    :goto_1
    iput-boolean v0, p0, Lae/gov/mol/fragment/ContactUs/FragmentOffice;->ReceivedGPSLocation:Z

    .line 296
    iput-boolean v12, p0, Lae/gov/mol/fragment/ContactUs/FragmentOffice;->isFirstCall:Z

    .line 305
    .end local v8    # "i":I
    :cond_2
    :goto_2
    return-void

    .line 287
    .restart local v8    # "i":I
    :cond_3
    iget-object v0, p0, Lae/gov/mol/fragment/ContactUs/FragmentOffice;->mCustomFragmentActivity:Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Pager;

    iget-object v0, v0, Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Pager;->mContactUsVo:Lae/gov/mol/vo/ContactUsVo;

    invoke-virtual {v0}, Lae/gov/mol/vo/ContactUsVo;->getResources()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lae/gov/mol/vo/ContactUsVo$ContactUsData;

    .line 288
    .local v9, "mContacUsData":Lae/gov/mol/vo/ContactUsVo$ContactUsData;
    iget-object v0, p0, Lae/gov/mol/fragment/ContactUs/FragmentOffice;->mCustomFragmentActivity:Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Pager;

    iget-object v0, v0, Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Pager;->mContactUsVo:Lae/gov/mol/vo/ContactUsVo;

    invoke-virtual {v0}, Lae/gov/mol/vo/ContactUsVo;->getResources()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Lae/gov/mol/vo/ContactUsVo$ContactUsData;

    .line 289
    iget-wide v0, p0, Lae/gov/mol/fragment/ContactUs/FragmentOffice;->myLat:D

    iget-wide v2, p0, Lae/gov/mol/fragment/ContactUs/FragmentOffice;->myLon:D

    invoke-virtual {v9}, Lae/gov/mol/vo/ContactUsVo$ContactUsData;->getLattitude()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    invoke-virtual {v9}, Lae/gov/mol/vo/ContactUsVo$ContactUsData;->getLongtitude()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    invoke-static/range {v0 .. v7}, Lae/gov/mol/fragment/ContactUs/FragmentOffice;->CalculationByDistance(DDDD)D

    move-result-wide v0

    .line 288
    invoke-virtual {v11, v0, v1}, Lae/gov/mol/vo/ContactUsVo$ContactUsData;->setDistance(D)V

    .line 286
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 295
    .end local v9    # "mContacUsData":Lae/gov/mol/vo/ContactUsVo$ContactUsData;
    :cond_4
    const/4 v0, 0x1

    goto :goto_1

    .line 299
    .end local v8    # "i":I
    :cond_5
    invoke-virtual {p0}, Lae/gov/mol/fragment/ContactUs/FragmentOffice;->showLoading()V

    goto :goto_2
.end method

.method public getDistanceInMiles(Lcom/google/android/maps/GeoPoint;Lcom/google/android/maps/GeoPoint;)F
    .locals 13
    .param p1, "p1"    # Lcom/google/android/maps/GeoPoint;
    .param p2, "p2"    # Lcom/google/android/maps/GeoPoint;

    .prologue
    const-wide v11, 0x412e848000000000L    # 1000000.0

    .line 230
    invoke-virtual {p1}, Lcom/google/android/maps/GeoPoint;->getLatitudeE6()I

    move-result v9

    int-to-double v9, v9

    div-double v0, v9, v11

    .line 231
    .local v0, "lat1":D
    invoke-virtual {p1}, Lcom/google/android/maps/GeoPoint;->getLongitudeE6()I

    move-result v9

    int-to-double v9, v9

    div-double v2, v9, v11

    .line 232
    .local v2, "lng1":D
    invoke-virtual {p2}, Lcom/google/android/maps/GeoPoint;->getLatitudeE6()I

    move-result v9

    int-to-double v9, v9

    div-double v4, v9, v11

    .line 233
    .local v4, "lat2":D
    invoke-virtual {p2}, Lcom/google/android/maps/GeoPoint;->getLongitudeE6()I

    move-result v9

    int-to-double v9, v9

    div-double v6, v9, v11

    .line 234
    .local v6, "lng2":D
    const/4 v9, 0x1

    new-array v8, v9, [F

    .line 235
    .local v8, "dist":[F
    invoke-static/range {v0 .. v8}, Landroid/location/Location;->distanceBetween(DDDD[F)V

    .line 236
    const/4 v9, 0x0

    aget v9, v8, v9

    const v10, 0x3a22e384

    mul-float/2addr v9, v10

    return v9
.end method

.method public getInstance(I)Lae/gov/mol/fragment/ContactUs/FragmentOffice;
    .locals 0
    .param p1, "FragmentType"    # I

    .prologue
    .line 125
    iput p1, p0, Lae/gov/mol/fragment/ContactUs/FragmentOffice;->FragmentType:I

    .line 126
    return-object p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "arg0"    # Landroid/os/Bundle;

    .prologue
    .line 77
    invoke-super {p0, p1}, Lae/gov/mol/helper/CustomFragment;->onCreate(Landroid/os/Bundle;)V

    .line 78
    const/4 v0, 0x1

    iput v0, p0, Lae/gov/mol/fragment/ContactUs/FragmentOffice;->FragmentType:I

    .line 79
    invoke-virtual {p0}, Lae/gov/mol/fragment/ContactUs/FragmentOffice;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Pager;

    iput-object v0, p0, Lae/gov/mol/fragment/ContactUs/FragmentOffice;->mCustomFragmentActivity:Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Pager;

    .line 80
    invoke-static {}, Lae/gov/mol/MolApplication;->getmTags()Lae/gov/mol/helper/Tags;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/fragment/ContactUs/FragmentOffice;->mTags:Lae/gov/mol/helper/Tags;

    .line 82
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "minInflater"    # Landroid/view/LayoutInflater;
    .param p2, "mViewGroup"    # Landroid/view/ViewGroup;
    .param p3, "mBundle"    # Landroid/os/Bundle;

    .prologue
    .line 86
    const v1, 0x7f03004b

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 88
    .local v0, "mView":Landroid/view/View;
    const v1, 0x7f0601c5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lae/gov/mol/fragment/ContactUs/FragmentOffice;->mListView:Landroid/widget/ListView;

    .line 89
    const v1, 0x7f060762

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Lae/gov/mol/fragment/ContactUs/FragmentOffice;->mProgressBar:Landroid/widget/ProgressBar;

    .line 90
    const v1, 0x7f0601c4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lae/gov/mol/fragment/ContactUs/FragmentOffice;->mViewLoading:Landroid/view/View;

    .line 92
    invoke-virtual {p0}, Lae/gov/mol/fragment/ContactUs/FragmentOffice;->showLoading()V

    .line 94
    new-instance v1, Lae/gov/mol/fragment/ContactUs/FragmentOffice$ListBaseAdapter;

    invoke-direct {v1, p0}, Lae/gov/mol/fragment/ContactUs/FragmentOffice$ListBaseAdapter;-><init>(Lae/gov/mol/fragment/ContactUs/FragmentOffice;)V

    iput-object v1, p0, Lae/gov/mol/fragment/ContactUs/FragmentOffice;->mListBaseAdapter:Lae/gov/mol/fragment/ContactUs/FragmentOffice$ListBaseAdapter;

    .line 95
    iget-object v1, p0, Lae/gov/mol/fragment/ContactUs/FragmentOffice;->mListView:Landroid/widget/ListView;

    new-instance v2, Lae/gov/mol/fragment/ContactUs/FragmentOffice$4;

    invoke-direct {v2, p0}, Lae/gov/mol/fragment/ContactUs/FragmentOffice$4;-><init>(Lae/gov/mol/fragment/ContactUs/FragmentOffice;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 104
    return-object v0
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 203
    invoke-direct {p0}, Lae/gov/mol/fragment/ContactUs/FragmentOffice;->removeLocationListner()V

    .line 204
    invoke-super {p0}, Lae/gov/mol/helper/CustomFragment;->onPause()V

    .line 205
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 196
    iget-boolean v0, p0, Lae/gov/mol/fragment/ContactUs/FragmentOffice;->isFirstCall:Z

    if-nez v0, :cond_0

    .line 197
    invoke-direct {p0}, Lae/gov/mol/fragment/ContactUs/FragmentOffice;->requestLocation()V

    .line 198
    :cond_0
    invoke-super {p0}, Lae/gov/mol/helper/CustomFragment;->onResume()V

    .line 199
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 310
    iget-object v0, p0, Lae/gov/mol/fragment/ContactUs/FragmentOffice;->alert:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 311
    iget-object v0, p0, Lae/gov/mol/fragment/ContactUs/FragmentOffice;->alert:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 312
    :cond_0
    invoke-super {p0}, Lae/gov/mol/helper/CustomFragment;->onStop()V

    .line 313
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 109
    iget-object v0, p0, Lae/gov/mol/fragment/ContactUs/FragmentOffice;->mCustomFragmentActivity:Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Pager;

    const-string v1, "location"

    invoke-virtual {v0, v1}, Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Pager;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lae/gov/mol/fragment/ContactUs/FragmentOffice;->locationManager:Landroid/location/LocationManager;

    .line 110
    iget-object v0, p0, Lae/gov/mol/fragment/ContactUs/FragmentOffice;->locationManager:Landroid/location/LocationManager;

    invoke-virtual {v0}, Landroid/location/LocationManager;->getAllProviders()Ljava/util/List;

    .line 111
    invoke-virtual {p0}, Lae/gov/mol/fragment/ContactUs/FragmentOffice;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lae/gov/mol/fragment/ContactUs/FragmentOffice;->mLocationManager:Landroid/location/LocationManager;

    .line 112
    iget-object v0, p0, Lae/gov/mol/fragment/ContactUs/FragmentOffice;->mLocationManager:Landroid/location/LocationManager;

    const-string v1, "gps"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lae/gov/mol/fragment/ContactUs/FragmentOffice;->enabledGPS:Z

    .line 113
    invoke-direct {p0}, Lae/gov/mol/fragment/ContactUs/FragmentOffice;->initLocationManager()V

    .line 114
    invoke-super {p0, p1, p2}, Lae/gov/mol/helper/CustomFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 115
    return-void
.end method

.method public showLoading()V
    .locals 2

    .prologue
    .line 433
    iget-object v0, p0, Lae/gov/mol/fragment/ContactUs/FragmentOffice;->mViewLoading:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 434
    iget-object v0, p0, Lae/gov/mol/fragment/ContactUs/FragmentOffice;->mViewLoading:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 436
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
            "Lae/gov/mol/vo/ContactUsVo$ContactUsData;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 221
    .local p1, "itemLocationList":Ljava/util/List;, "Ljava/util/List<Lae/gov/mol/vo/ContactUsVo$ContactUsData;>;"
    if-eqz p1, :cond_0

    .line 222
    iget-object v0, p0, Lae/gov/mol/fragment/ContactUs/FragmentOffice;->objComparator:Ljava/util/Comparator;

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 224
    :cond_0
    return-void
.end method

.method public updateView(Lae/gov/mol/vo/ContactUsVo;)V
    .locals 0
    .param p1, "mContactUsVo"    # Lae/gov/mol/vo/ContactUsVo;

    .prologue
    .line 468
    return-void
.end method
