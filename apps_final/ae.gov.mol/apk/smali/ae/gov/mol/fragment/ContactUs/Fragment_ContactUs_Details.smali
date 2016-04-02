.class public Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Details;
.super Lae/gov/mol/helper/CustomFragmentActivity;
.source "Fragment_ContactUs_Details.java"

# interfaces
.implements Landroid/location/LocationListener;


# instance fields
.field CurrentLatitude:D

.field CurrentLongitude:D

.field criteria:Landroid/location/Criteria;

.field private enabledGPS:Z

.field public latitude:D

.field location:Landroid/location/Location;

.field public locationManager:Landroid/location/LocationManager;

.field public longitude:D

.field mBundle:Landroid/os/Bundle;

.field mContactUsData:Lae/gov/mol/vo/ContactUsVo$ContactUsData;

.field mCurrentLat:D

.field mCurrentong:D

.field mCustomFragment:Lae/gov/mol/helper/CustomFragmentActivity;

.field mGoogleMap:Lcom/google/android/gms/maps/GoogleMap;

.field mImageViewCancelInfoWindow:Landroid/widget/ImageView;

.field mImageViewHeaderHome:Landroid/widget/ImageView;

.field mLatLng:Lcom/google/android/gms/maps/model/LatLng;

.field mLocationManager:Landroid/location/LocationManager;

.field mRelativeLayout:Landroid/widget/RelativeLayout;

.field mServiceCenterData:Lae/gov/mol/vo/ServiceCenterData;

.field mStringAddress:Ljava/lang/String;

.field mStringDepartment:Ljava/lang/String;

.field mStringFaxNumber:Ljava/lang/String;

.field mStringOfficeName:Ljava/lang/String;

.field mStringPhoneNumber:Ljava/lang/String;

.field mStringWorkingTime:Ljava/lang/String;

.field mTags:Lae/gov/mol/helper/Tags;

.field mTextViewAddress:Landroid/widget/TextView;

.field mTextViewDepartment:Landroid/widget/TextView;

.field mTextViewDirecction:Landroid/widget/TextView;

.field mTextViewHeader:Landroid/widget/TextView;

.field mTextViewOfficeName:Landroid/widget/TextView;

.field mTextViewWorkingTime:Landroid/widget/TextView;

.field mapWrapperLayout:Lae/gov/mol/helper/MapWrapperLayout;

.field markerCurrentLocation:Lcom/google/android/gms/maps/model/Marker;

.field myFragmentManager:Landroid/support/v4/app/FragmentManager;

.field mySupportMapFragment:Lcom/google/android/gms/maps/SupportMapFragment;

.field private newPolyline:Lcom/google/android/gms/maps/model/Polyline;

.field popup:Landroid/view/View;

.field public provider:Ljava/lang/String;

.field service:Landroid/location/LocationManager;

.field view:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 56
    invoke-direct {p0}, Lae/gov/mol/helper/CustomFragmentActivity;-><init>()V

    .line 74
    const-wide v0, 0x403959df43c7d5edL    # 25.351063

    iput-wide v0, p0, Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Details;->latitude:D

    .line 75
    const-wide v0, 0x404bb3e0bd44998dL    # 55.405296

    iput-wide v0, p0, Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Details;->longitude:D

    .line 89
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Details;->mStringOfficeName:Ljava/lang/String;

    .line 90
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Details;->mStringPhoneNumber:Ljava/lang/String;

    .line 91
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Details;->mStringFaxNumber:Ljava/lang/String;

    .line 92
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Details;->mStringAddress:Ljava/lang/String;

    .line 93
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Details;->mStringDepartment:Ljava/lang/String;

    .line 94
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Details;->mStringWorkingTime:Ljava/lang/String;

    .line 107
    const/4 v0, 0x0

    iput-boolean v0, p0, Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Details;->enabledGPS:Z

    .line 56
    return-void
.end method

.method private ShowCurrentLocation()V
    .locals 3

    .prologue
    .line 276
    const-string v0, "location"

    invoke-virtual {p0, v0}, Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Details;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Details;->service:Landroid/location/LocationManager;

    .line 278
    const-string v0, "location"

    invoke-virtual {p0, v0}, Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Details;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Details;->locationManager:Landroid/location/LocationManager;

    .line 279
    new-instance v0, Landroid/location/Criteria;

    invoke-direct {v0}, Landroid/location/Criteria;-><init>()V

    iput-object v0, p0, Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Details;->criteria:Landroid/location/Criteria;

    .line 280
    iget-object v0, p0, Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Details;->locationManager:Landroid/location/LocationManager;

    iget-object v1, p0, Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Details;->criteria:Landroid/location/Criteria;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/location/LocationManager;->getBestProvider(Landroid/location/Criteria;Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Details;->provider:Ljava/lang/String;

    .line 282
    :try_start_0
    iget-object v0, p0, Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Details;->provider:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 283
    iget-object v0, p0, Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Details;->locationManager:Landroid/location/LocationManager;

    iget-object v1, p0, Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Details;->provider:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Details;->location:Landroid/location/Location;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 288
    :cond_0
    :goto_0
    iget-object v0, p0, Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Details;->location:Landroid/location/Location;

    if-eqz v0, :cond_1

    .line 290
    iget-object v0, p0, Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Details;->location:Landroid/location/Location;

    invoke-virtual {p0, v0}, Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Details;->onLocationChanged(Landroid/location/Location;)V

    .line 292
    :cond_1
    return-void

    .line 284
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static getPixelsFromDp(Landroid/content/Context;F)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "dp"    # F

    .prologue
    .line 295
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    .line 296
    .local v0, "scale":F
    mul-float v1, p1, v0

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    return v1
.end method

.method private initMap()V
    .locals 10

    .prologue
    const/4 v1, 0x1

    .line 302
    invoke-virtual {p0}, Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Details;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v7

    .line 303
    .local v7, "fmanager":Landroid/support/v4/app/FragmentManager;
    const v0, 0x7f0601c3

    invoke-virtual {v7, v0}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v8

    .local v8, "fragment":Landroid/support/v4/app/Fragment;
    move-object v9, v8

    .line 304
    check-cast v9, Lcom/google/android/gms/maps/SupportMapFragment;

    .line 305
    .local v9, "supportmapfragment":Lcom/google/android/gms/maps/SupportMapFragment;
    invoke-virtual {v9}, Lcom/google/android/gms/maps/SupportMapFragment;->getMap()Lcom/google/android/gms/maps/GoogleMap;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Details;->mGoogleMap:Lcom/google/android/gms/maps/GoogleMap;

    .line 307
    iget-object v0, p0, Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Details;->mGoogleMap:Lcom/google/android/gms/maps/GoogleMap;

    if-eqz v0, :cond_0

    .line 309
    invoke-virtual {p0}, Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Details;->getlocation()[D

    .line 310
    iget-object v0, p0, Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Details;->mGoogleMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/GoogleMap;->setMyLocationEnabled(Z)V

    .line 311
    iget-object v0, p0, Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Details;->mGoogleMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/GoogleMap;->getUiSettings()Lcom/google/android/gms/maps/UiSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/UiSettings;->setZoomControlsEnabled(Z)V

    .line 312
    iget-object v0, p0, Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Details;->mGoogleMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/GoogleMap;->getUiSettings()Lcom/google/android/gms/maps/UiSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/UiSettings;->setCompassEnabled(Z)V

    .line 313
    iget-object v0, p0, Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Details;->mGoogleMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/GoogleMap;->getUiSettings()Lcom/google/android/gms/maps/UiSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/UiSettings;->setMyLocationButtonEnabled(Z)V

    .line 314
    iget-object v0, p0, Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Details;->mGoogleMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/GoogleMap;->setMapType(I)V

    .line 316
    iget-object v1, p0, Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Details;->mStringOfficeName:Ljava/lang/String;

    iget-object v2, p0, Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Details;->mStringAddress:Ljava/lang/String;

    iget-wide v3, p0, Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Details;->latitude:D

    iget-wide v5, p0, Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Details;->longitude:D

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Details;->addMarker(Ljava/lang/String;Ljava/lang/String;DD)V

    .line 322
    :cond_0
    return-void
.end method


# virtual methods
.method public addMarker(Ljava/lang/String;Ljava/lang/String;DD)V
    .locals 5
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "snippet"    # Ljava/lang/String;
    .param p3, "lat"    # D
    .param p5, "lon"    # D

    .prologue
    .line 210
    iget-object v2, p0, Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Details;->mGoogleMap:Lcom/google/android/gms/maps/GoogleMap;

    if-eqz v2, :cond_0

    .line 212
    new-instance v0, Lcom/google/android/gms/maps/model/LatLng;

    invoke-direct {v0, p3, p4, p5, p6}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    .line 214
    .local v0, "mLatLng":Lcom/google/android/gms/maps/model/LatLng;
    iget-object v2, p0, Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Details;->mGoogleMap:Lcom/google/android/gms/maps/GoogleMap;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/google/android/gms/maps/GoogleMap;->setMapType(I)V

    .line 215
    iget-object v2, p0, Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Details;->mGoogleMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v2}, Lcom/google/android/gms/maps/GoogleMap;->clear()V

    .line 216
    new-instance v1, Lcom/google/android/gms/maps/model/MarkerOptions;

    invoke-direct {v1}, Lcom/google/android/gms/maps/model/MarkerOptions;-><init>()V

    .line 217
    .local v1, "mMarkerOptions":Lcom/google/android/gms/maps/model/MarkerOptions;
    invoke-virtual {v1, v0}, Lcom/google/android/gms/maps/model/MarkerOptions;->position(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/MarkerOptions;

    .line 218
    invoke-virtual {v1, p1}, Lcom/google/android/gms/maps/model/MarkerOptions;->title(Ljava/lang/String;)Lcom/google/android/gms/maps/model/MarkerOptions;

    .line 219
    const v2, 0x7f020136

    invoke-static {v2}, Lcom/google/android/gms/maps/model/BitmapDescriptorFactory;->fromResource(I)Lcom/google/android/gms/maps/model/BitmapDescriptor;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/maps/model/MarkerOptions;->icon(Lcom/google/android/gms/maps/model/BitmapDescriptor;)Lcom/google/android/gms/maps/model/MarkerOptions;

    .line 220
    iget-object v2, p0, Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Details;->mapWrapperLayout:Lae/gov/mol/helper/MapWrapperLayout;

    iget-object v3, p0, Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Details;->mGoogleMap:Lcom/google/android/gms/maps/GoogleMap;

    const/high16 v4, 0x426c0000    # 59.0f

    invoke-static {p0, v4}, Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Details;->getPixelsFromDp(Landroid/content/Context;F)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lae/gov/mol/helper/MapWrapperLayout;->init(Lcom/google/android/gms/maps/GoogleMap;I)V

    .line 223
    iget-object v2, p0, Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Details;->mGoogleMap:Lcom/google/android/gms/maps/GoogleMap;

    new-instance v3, Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Details$2;

    invoke-direct {v3, p0}, Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Details$2;-><init>(Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Details;)V

    invoke-virtual {v2, v3}, Lcom/google/android/gms/maps/GoogleMap;->setInfoWindowAdapter(Lcom/google/android/gms/maps/GoogleMap$InfoWindowAdapter;)V

    .line 255
    iget-object v2, p0, Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Details;->mGoogleMap:Lcom/google/android/gms/maps/GoogleMap;

    new-instance v3, Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Details$3;

    invoke-direct {v3, p0}, Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Details$3;-><init>(Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Details;)V

    invoke-virtual {v2, v3}, Lcom/google/android/gms/maps/GoogleMap;->setOnInfoWindowClickListener(Lcom/google/android/gms/maps/GoogleMap$OnInfoWindowClickListener;)V

    .line 267
    iget-object v2, p0, Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Details;->mGoogleMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v2, v1}, Lcom/google/android/gms/maps/GoogleMap;->addMarker(Lcom/google/android/gms/maps/model/MarkerOptions;)Lcom/google/android/gms/maps/model/Marker;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/maps/model/Marker;->showInfoWindow()V

    .line 268
    iget-object v2, p0, Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Details;->mGoogleMap:Lcom/google/android/gms/maps/GoogleMap;

    const/high16 v3, 0x41200000    # 10.0f

    invoke-static {v0, v3}, Lcom/google/android/gms/maps/CameraUpdateFactory;->newLatLngZoom(Lcom/google/android/gms/maps/model/LatLng;F)Lcom/google/android/gms/maps/CameraUpdate;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/maps/GoogleMap;->animateCamera(Lcom/google/android/gms/maps/CameraUpdate;)V

    .line 270
    .end local v0    # "mLatLng":Lcom/google/android/gms/maps/model/LatLng;
    .end local v1    # "mMarkerOptions":Lcom/google/android/gms/maps/model/MarkerOptions;
    :cond_0
    return-void
.end method

.method public findDirections(DDDDLjava/lang/String;)V
    .locals 4
    .param p1, "fromPositionDoubleLat"    # D
    .param p3, "fromPositionDoubleLong"    # D
    .param p5, "toPositionDoubleLat"    # D
    .param p7, "toPositionDoubleLong"    # D
    .param p9, "mode"    # Ljava/lang/String;

    .prologue
    .line 391
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 392
    .local v1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "user_current_lat"

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 393
    const-string v2, "user_current_long"

    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 394
    const-string v2, "destination_lat"

    invoke-static {p5, p6}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 395
    const-string v2, "destination_long"

    invoke-static {p7, p8}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 396
    const-string v2, "directions_mode"

    invoke-interface {v1, v2, p9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 398
    new-instance v0, Lae/gov/mol/ContactUS/Direction/GetDirectionsAsyncTask;

    invoke-direct {v0, p0}, Lae/gov/mol/ContactUS/Direction/GetDirectionsAsyncTask;-><init>(Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Details;)V

    .line 399
    .local v0, "asyncTask":Lae/gov/mol/ContactUS/Direction/GetDirectionsAsyncTask;
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/util/Map;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    invoke-virtual {v0, v2}, Lae/gov/mol/ContactUS/Direction/GetDirectionsAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 400
    return-void
.end method

.method public finishFragmentOrActivity(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 358
    return-void
.end method

.method public getlocation()[D
    .locals 7

    .prologue
    .line 403
    const-string v5, "location"

    invoke-virtual {p0, v5}, Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Details;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/location/LocationManager;

    .line 404
    .local v3, "lm":Landroid/location/LocationManager;
    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Landroid/location/LocationManager;->getProviders(Z)Ljava/util/List;

    move-result-object v4

    .line 406
    .local v4, "providers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .line 407
    .local v2, "l":Landroid/location/Location;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-lt v1, v5, :cond_2

    .line 412
    :cond_0
    const/4 v5, 0x2

    new-array v0, v5, [D

    .line 414
    .local v0, "gps":[D
    if-eqz v2, :cond_1

    .line 415
    invoke-virtual {v2}, Landroid/location/Location;->getLatitude()D

    move-result-wide v5

    iput-wide v5, p0, Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Details;->mCurrentLat:D

    .line 416
    invoke-virtual {v2}, Landroid/location/Location;->getLongitude()D

    move-result-wide v5

    iput-wide v5, p0, Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Details;->mCurrentong:D

    .line 418
    :cond_1
    return-object v0

    .line 408
    .end local v0    # "gps":[D
    :cond_2
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v3, v5}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v2

    .line 409
    if-nez v2, :cond_0

    .line 407
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public handleGetDirectionsResult(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/maps/model/LatLng;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 361
    .local p1, "directionPoints":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/gms/maps/model/LatLng;>;"
    new-instance v2, Lcom/google/android/gms/maps/model/PolylineOptions;

    invoke-direct {v2}, Lcom/google/android/gms/maps/model/PolylineOptions;-><init>()V

    const/high16 v3, 0x40a00000    # 5.0f

    invoke-virtual {v2, v3}, Lcom/google/android/gms/maps/model/PolylineOptions;->width(F)Lcom/google/android/gms/maps/model/PolylineOptions;

    move-result-object v2

    const/high16 v3, -0x10000

    invoke-virtual {v2, v3}, Lcom/google/android/gms/maps/model/PolylineOptions;->color(I)Lcom/google/android/gms/maps/model/PolylineOptions;

    move-result-object v1

    .line 363
    .local v1, "rectLine":Lcom/google/android/gms/maps/model/PolylineOptions;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v0, v2, :cond_1

    .line 367
    iget-object v2, p0, Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Details;->newPolyline:Lcom/google/android/gms/maps/model/Polyline;

    if-eqz v2, :cond_0

    .line 369
    iget-object v2, p0, Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Details;->newPolyline:Lcom/google/android/gms/maps/model/Polyline;

    invoke-virtual {v2}, Lcom/google/android/gms/maps/model/Polyline;->remove()V

    .line 371
    :cond_0
    iget-object v2, p0, Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Details;->mGoogleMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v2, v1}, Lcom/google/android/gms/maps/GoogleMap;->addPolyline(Lcom/google/android/gms/maps/model/PolylineOptions;)Lcom/google/android/gms/maps/model/Polyline;

    move-result-object v2

    iput-object v2, p0, Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Details;->newPolyline:Lcom/google/android/gms/maps/model/Polyline;

    .line 383
    return-void

    .line 365
    :cond_1
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/maps/model/PolylineOptions;->add(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/PolylineOptions;

    .line 363
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedinstance"    # Landroid/os/Bundle;

    .prologue
    const/4 v7, 0x0

    .line 112
    invoke-super {p0, p1}, Lae/gov/mol/helper/CustomFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 113
    const v0, 0x7f03004a

    invoke-virtual {p0, v0}, Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Details;->setContentView(I)V

    .line 114
    invoke-virtual {p0}, Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Details;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0300e3

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Details;->popup:Landroid/view/View;

    .line 116
    const-string v0, "location"

    invoke-virtual {p0, v0}, Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Details;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Details;->mLocationManager:Landroid/location/LocationManager;

    .line 117
    iget-object v0, p0, Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Details;->mLocationManager:Landroid/location/LocationManager;

    const-string v1, "gps"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Details;->enabledGPS:Z

    .line 118
    iget-object v0, p0, Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Details;->location:Landroid/location/Location;

    if-nez v0, :cond_0

    .line 123
    iget-boolean v0, p0, Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Details;->enabledGPS:Z

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Details;->mLocationManager:Landroid/location/LocationManager;

    const-string v1, "gps"

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 126
    :cond_0
    iget-object v0, p0, Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Details;->popup:Landroid/view/View;

    const v1, 0x7f060772

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Details;->mTextViewOfficeName:Landroid/widget/TextView;

    .line 127
    iget-object v0, p0, Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Details;->popup:Landroid/view/View;

    const v1, 0x7f060774

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Details;->mTextViewAddress:Landroid/widget/TextView;

    .line 128
    iget-object v0, p0, Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Details;->popup:Landroid/view/View;

    const v1, 0x7f060775

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Details;->mTextViewDepartment:Landroid/widget/TextView;

    .line 131
    iget-object v0, p0, Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Details;->popup:Landroid/view/View;

    const v1, 0x7f060776

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Details;->mTextViewWorkingTime:Landroid/widget/TextView;

    .line 132
    iget-object v0, p0, Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Details;->popup:Landroid/view/View;

    const v1, 0x7f060777

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Details;->mTextViewDirecction:Landroid/widget/TextView;

    .line 133
    iget-object v0, p0, Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Details;->popup:Landroid/view/View;

    const v1, 0x7f060773

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Details;->mImageViewCancelInfoWindow:Landroid/widget/ImageView;

    .line 135
    invoke-static {}, Lae/gov/mol/MolApplication;->getLanguage()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 150
    :goto_0
    :pswitch_0
    invoke-static {}, Lae/gov/mol/MolApplication;->getmTags()Lae/gov/mol/helper/Tags;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Details;->mTags:Lae/gov/mol/helper/Tags;

    .line 151
    invoke-virtual {p0}, Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Details;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    iget-object v1, p0, Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Details;->mTags:Lae/gov/mol/helper/Tags;

    iget-object v1, v1, Lae/gov/mol/helper/Tags;->mContactUsVo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lae/gov/mol/vo/ContactUsVo$ContactUsData;

    iput-object v0, p0, Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Details;->mContactUsData:Lae/gov/mol/vo/ContactUsVo$ContactUsData;

    .line 152
    invoke-virtual {p0}, Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Details;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    iget-object v1, p0, Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Details;->mTags:Lae/gov/mol/helper/Tags;

    iget-object v1, v1, Lae/gov/mol/helper/Tags;->mServiceListData:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lae/gov/mol/vo/ServiceCenterData;

    iput-object v0, p0, Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Details;->mServiceCenterData:Lae/gov/mol/vo/ServiceCenterData;

    .line 153
    const v0, 0x7f060757

    invoke-virtual {p0, v0}, Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Details;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Details;->mImageViewHeaderHome:Landroid/widget/ImageView;

    .line 154
    const v0, 0x7f0601c1

    invoke-virtual {p0, v0}, Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Details;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lae/gov/mol/helper/MapWrapperLayout;

    iput-object v0, p0, Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Details;->mapWrapperLayout:Lae/gov/mol/helper/MapWrapperLayout;

    .line 155
    iget-object v0, p0, Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Details;->mImageViewHeaderHome:Landroid/widget/ImageView;

    new-instance v1, Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Details$1;

    invoke-direct {v1, p0}, Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Details$1;-><init>(Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Details;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 163
    iget-object v0, p0, Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Details;->mContactUsData:Lae/gov/mol/vo/ContactUsVo$ContactUsData;

    if-eqz v0, :cond_1

    .line 164
    iget-object v0, p0, Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Details;->mContactUsData:Lae/gov/mol/vo/ContactUsVo$ContactUsData;

    invoke-virtual {v0}, Lae/gov/mol/vo/ContactUsVo$ContactUsData;->getLattitude()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Details;->latitude:D

    .line 165
    iget-object v0, p0, Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Details;->mContactUsData:Lae/gov/mol/vo/ContactUsVo$ContactUsData;

    invoke-virtual {v0}, Lae/gov/mol/vo/ContactUsVo$ContactUsData;->getLongtitude()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Details;->longitude:D

    .line 166
    iget-object v0, p0, Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Details;->mContactUsData:Lae/gov/mol/vo/ContactUsVo$ContactUsData;

    invoke-virtual {v0}, Lae/gov/mol/vo/ContactUsVo$ContactUsData;->getOfficeName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Details;->mStringOfficeName:Ljava/lang/String;

    .line 167
    iget-object v0, p0, Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Details;->mContactUsData:Lae/gov/mol/vo/ContactUsVo$ContactUsData;

    invoke-virtual {v0}, Lae/gov/mol/vo/ContactUsVo$ContactUsData;->getPhone()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Details;->mStringPhoneNumber:Ljava/lang/String;

    .line 168
    iget-object v0, p0, Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Details;->mContactUsData:Lae/gov/mol/vo/ContactUsVo$ContactUsData;

    invoke-virtual {v0}, Lae/gov/mol/vo/ContactUsVo$ContactUsData;->getFax()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Details;->mStringFaxNumber:Ljava/lang/String;

    .line 169
    iget-object v0, p0, Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Details;->mContactUsData:Lae/gov/mol/vo/ContactUsVo$ContactUsData;

    invoke-virtual {v0}, Lae/gov/mol/vo/ContactUsVo$ContactUsData;->getAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Details;->mStringAddress:Ljava/lang/String;

    .line 170
    iget-object v0, p0, Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Details;->mContactUsData:Lae/gov/mol/vo/ContactUsVo$ContactUsData;

    invoke-virtual {v0}, Lae/gov/mol/vo/ContactUsVo$ContactUsData;->getWorkingTime()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Details;->mStringWorkingTime:Ljava/lang/String;

    .line 171
    iget-object v0, p0, Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Details;->mContactUsData:Lae/gov/mol/vo/ContactUsVo$ContactUsData;

    invoke-virtual {v0}, Lae/gov/mol/vo/ContactUsVo$ContactUsData;->getDepartment()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Details;->mStringDepartment:Ljava/lang/String;

    .line 173
    :cond_1
    iget-object v0, p0, Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Details;->mServiceCenterData:Lae/gov/mol/vo/ServiceCenterData;

    if-eqz v0, :cond_2

    .line 174
    iget-object v0, p0, Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Details;->mServiceCenterData:Lae/gov/mol/vo/ServiceCenterData;

    invoke-virtual {v0}, Lae/gov/mol/vo/ServiceCenterData;->getCenter_x()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Details;->latitude:D

    .line 175
    iget-object v0, p0, Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Details;->mServiceCenterData:Lae/gov/mol/vo/ServiceCenterData;

    invoke-virtual {v0}, Lae/gov/mol/vo/ServiceCenterData;->getCenter_y()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Details;->longitude:D

    .line 177
    invoke-static {}, Lae/gov/mol/MolApplication;->getLanguage()I

    move-result v0

    packed-switch v0, :pswitch_data_1

    .line 190
    :goto_1
    iget-object v0, p0, Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Details;->mServiceCenterData:Lae/gov/mol/vo/ServiceCenterData;

    invoke-virtual {v0}, Lae/gov/mol/vo/ServiceCenterData;->getCenter_phone()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Details;->mStringPhoneNumber:Ljava/lang/String;

    .line 191
    iget-object v0, p0, Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Details;->mServiceCenterData:Lae/gov/mol/vo/ServiceCenterData;

    invoke-virtual {v0}, Lae/gov/mol/vo/ServiceCenterData;->getCenter_fax()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Details;->mStringFaxNumber:Ljava/lang/String;

    .line 194
    :cond_2
    new-instance v0, Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v1, p0, Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Details;->latitude:D

    iget-wide v3, p0, Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Details;->longitude:D

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    iput-object v0, p0, Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Details;->mLatLng:Lcom/google/android/gms/maps/model/LatLng;

    .line 196
    const v0, 0x7f0601c2

    invoke-virtual {p0, v0}, Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Details;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Details;->mRelativeLayout:Landroid/widget/RelativeLayout;

    .line 197
    iget-object v0, p0, Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Details;->mRelativeLayout:Landroid/widget/RelativeLayout;

    const v1, 0x7f060758

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Details;->mTextViewHeader:Landroid/widget/TextView;

    .line 199
    iget-object v0, p0, Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Details;->mTextViewHeader:Landroid/widget/TextView;

    const v1, 0x7f0900a3

    invoke-virtual {p0, v1}, Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Details;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 201
    invoke-direct {p0}, Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Details;->initMap()V

    .line 202
    invoke-direct {p0}, Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Details;->ShowCurrentLocation()V

    .line 203
    return-void

    .line 137
    :pswitch_1
    new-instance v6, Landroid/text/SpannableString;

    const v0, 0x7f090241

    invoke-virtual {p0, v0}, Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Details;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 138
    .local v6, "mySpannableString":Landroid/text/SpannableString;
    new-instance v0, Landroid/text/style/UnderlineSpan;

    invoke-direct {v0}, Landroid/text/style/UnderlineSpan;-><init>()V

    invoke-virtual {v6}, Landroid/text/SpannableString;->length()I

    move-result v1

    invoke-virtual {v6, v0, v7, v1, v7}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 139
    iget-object v0, p0, Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Details;->mTextViewDirecction:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 179
    .end local v6    # "mySpannableString":Landroid/text/SpannableString;
    :pswitch_2
    iget-object v0, p0, Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Details;->mServiceCenterData:Lae/gov/mol/vo/ServiceCenterData;

    invoke-virtual {v0}, Lae/gov/mol/vo/ServiceCenterData;->getCenter_name_eng()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Details;->mStringOfficeName:Ljava/lang/String;

    .line 180
    iget-object v0, p0, Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Details;->mServiceCenterData:Lae/gov/mol/vo/ServiceCenterData;

    invoke-virtual {v0}, Lae/gov/mol/vo/ServiceCenterData;->getCenter_address_eng()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Details;->mStringAddress:Ljava/lang/String;

    goto :goto_1

    .line 183
    :pswitch_3
    iget-object v0, p0, Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Details;->mServiceCenterData:Lae/gov/mol/vo/ServiceCenterData;

    invoke-virtual {v0}, Lae/gov/mol/vo/ServiceCenterData;->getCenter_name_arb()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Details;->mStringOfficeName:Ljava/lang/String;

    .line 184
    iget-object v0, p0, Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Details;->mServiceCenterData:Lae/gov/mol/vo/ServiceCenterData;

    invoke-virtual {v0}, Lae/gov/mol/vo/ServiceCenterData;->getCenter_address_arb()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Details;->mStringAddress:Ljava/lang/String;

    goto/16 :goto_1

    .line 135
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 177
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public onLocationChanged(Landroid/location/Location;)V
    .locals 2
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    .line 326
    if-eqz p1, :cond_0

    .line 327
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    iput-wide v0, p0, Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Details;->mCurrentLat:D

    .line 328
    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v0

    iput-wide v0, p0, Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Details;->mCurrentong:D

    .line 331
    :cond_0
    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 0
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    .line 336
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 0
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    .line 341
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "status"    # I
    .param p3, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 346
    return-void
.end method

.method public replaceFragment(Landroid/support/v4/app/Fragment;ZI)V
    .locals 0
    .param p1, "fragment"    # Landroid/support/v4/app/Fragment;
    .param p2, "addToBackStack"    # Z
    .param p3, "transition"    # I

    .prologue
    .line 353
    return-void
.end method
