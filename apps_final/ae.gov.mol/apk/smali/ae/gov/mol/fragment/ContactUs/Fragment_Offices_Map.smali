.class public Lae/gov/mol/fragment/ContactUs/Fragment_Offices_Map;
.super Lae/gov/mol/helper/CustomFragmentActivity;
.source "Fragment_Offices_Map.java"

# interfaces
.implements Landroid/location/LocationListener;
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lae/gov/mol/fragment/ContactUs/Fragment_Offices_Map$BackProcess;
    }
.end annotation


# instance fields
.field CurrentLatitude:D

.field CurrentLongitude:D

.field criteria:Landroid/location/Criteria;

.field public latitude:D

.field location:Landroid/location/Location;

.field public locationManager:Landroid/location/LocationManager;

.field public longitude:D

.field mBuilderMain:Lcom/google/android/gms/maps/model/LatLngBounds$Builder;

.field mBundle:Landroid/os/Bundle;

.field private mContactUsVo:Lae/gov/mol/vo/ContactUsVo;

.field private mContactUsVoSearch:Lae/gov/mol/vo/ContactUsVo;

.field mCustomFragment:Lae/gov/mol/helper/CustomFragmentActivity;

.field mEditTextSearch:Landroid/widget/EditText;

.field mGoogleMap:Lcom/google/android/gms/maps/GoogleMap;

.field mImageViewHeaderHome:Landroid/widget/ImageView;

.field mLatLng:Lcom/google/android/gms/maps/model/LatLng;

.field mProgressDialog:Landroid/app/ProgressDialog;

.field mRelativeLayout:Landroid/widget/RelativeLayout;

.field mTags:Lae/gov/mol/helper/Tags;

.field mTextViewHeader:Landroid/widget/TextView;

.field mWebServiceResponse:Lae/gov/mol/webservices/WebServiceResponse;

.field markerCurrentLocation:Lcom/google/android/gms/maps/model/Marker;

.field myFragmentManager:Landroid/support/v4/app/FragmentManager;

.field mySupportMapFragment:Lcom/google/android/gms/maps/SupportMapFragment;

.field public provider:Ljava/lang/String;

.field service:Landroid/location/LocationManager;

.field view:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 55
    invoke-direct {p0}, Lae/gov/mol/helper/CustomFragmentActivity;-><init>()V

    .line 73
    const-wide v0, 0x403959df43c7d5edL    # 25.351063

    iput-wide v0, p0, Lae/gov/mol/fragment/ContactUs/Fragment_Offices_Map;->latitude:D

    .line 74
    const-wide v0, 0x404bb3e0bd44998dL    # 55.405296

    iput-wide v0, p0, Lae/gov/mol/fragment/ContactUs/Fragment_Offices_Map;->longitude:D

    .line 55
    return-void
.end method

.method private ShowCurrentLocation()V
    .locals 3

    .prologue
    .line 175
    const-string v0, "location"

    invoke-virtual {p0, v0}, Lae/gov/mol/fragment/ContactUs/Fragment_Offices_Map;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lae/gov/mol/fragment/ContactUs/Fragment_Offices_Map;->service:Landroid/location/LocationManager;

    .line 177
    const-string v0, "location"

    invoke-virtual {p0, v0}, Lae/gov/mol/fragment/ContactUs/Fragment_Offices_Map;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lae/gov/mol/fragment/ContactUs/Fragment_Offices_Map;->locationManager:Landroid/location/LocationManager;

    .line 178
    new-instance v0, Landroid/location/Criteria;

    invoke-direct {v0}, Landroid/location/Criteria;-><init>()V

    iput-object v0, p0, Lae/gov/mol/fragment/ContactUs/Fragment_Offices_Map;->criteria:Landroid/location/Criteria;

    .line 179
    iget-object v0, p0, Lae/gov/mol/fragment/ContactUs/Fragment_Offices_Map;->locationManager:Landroid/location/LocationManager;

    iget-object v1, p0, Lae/gov/mol/fragment/ContactUs/Fragment_Offices_Map;->criteria:Landroid/location/Criteria;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/location/LocationManager;->getBestProvider(Landroid/location/Criteria;Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/fragment/ContactUs/Fragment_Offices_Map;->provider:Ljava/lang/String;

    .line 181
    :try_start_0
    iget-object v0, p0, Lae/gov/mol/fragment/ContactUs/Fragment_Offices_Map;->provider:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 182
    iget-object v0, p0, Lae/gov/mol/fragment/ContactUs/Fragment_Offices_Map;->locationManager:Landroid/location/LocationManager;

    iget-object v1, p0, Lae/gov/mol/fragment/ContactUs/Fragment_Offices_Map;->provider:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/fragment/ContactUs/Fragment_Offices_Map;->location:Landroid/location/Location;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 187
    :cond_0
    :goto_0
    iget-object v0, p0, Lae/gov/mol/fragment/ContactUs/Fragment_Offices_Map;->location:Landroid/location/Location;

    if-eqz v0, :cond_1

    .line 189
    iget-object v0, p0, Lae/gov/mol/fragment/ContactUs/Fragment_Offices_Map;->location:Landroid/location/Location;

    invoke-virtual {p0, v0}, Lae/gov/mol/fragment/ContactUs/Fragment_Offices_Map;->onLocationChanged(Landroid/location/Location;)V

    .line 194
    :cond_1
    return-void

    .line 183
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static synthetic access$0(Lae/gov/mol/fragment/ContactUs/Fragment_Offices_Map;)Lae/gov/mol/vo/ContactUsVo;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lae/gov/mol/fragment/ContactUs/Fragment_Offices_Map;->mContactUsVo:Lae/gov/mol/vo/ContactUsVo;

    return-object v0
.end method

.method static synthetic access$1(Lae/gov/mol/fragment/ContactUs/Fragment_Offices_Map;Lae/gov/mol/vo/ContactUsVo;)V
    .locals 0

    .prologue
    .line 83
    iput-object p1, p0, Lae/gov/mol/fragment/ContactUs/Fragment_Offices_Map;->mContactUsVo:Lae/gov/mol/vo/ContactUsVo;

    return-void
.end method

.method static synthetic access$2(Lae/gov/mol/fragment/ContactUs/Fragment_Offices_Map;Lae/gov/mol/vo/ContactUsVo;)V
    .locals 0

    .prologue
    .line 84
    iput-object p1, p0, Lae/gov/mol/fragment/ContactUs/Fragment_Offices_Map;->mContactUsVoSearch:Lae/gov/mol/vo/ContactUsVo;

    return-void
.end method

.method static synthetic access$3(Lae/gov/mol/fragment/ContactUs/Fragment_Offices_Map;)V
    .locals 0

    .prologue
    .line 196
    invoke-direct {p0}, Lae/gov/mol/fragment/ContactUs/Fragment_Offices_Map;->initMap()V

    return-void
.end method

.method static synthetic access$4(Lae/gov/mol/fragment/ContactUs/Fragment_Offices_Map;)V
    .locals 0

    .prologue
    .line 174
    invoke-direct {p0}, Lae/gov/mol/fragment/ContactUs/Fragment_Offices_Map;->ShowCurrentLocation()V

    return-void
.end method

.method static synthetic access$5(Lae/gov/mol/fragment/ContactUs/Fragment_Offices_Map;)Lae/gov/mol/vo/ContactUsVo;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lae/gov/mol/fragment/ContactUs/Fragment_Offices_Map;->mContactUsVoSearch:Lae/gov/mol/vo/ContactUsVo;

    return-object v0
.end method

.method private initMap()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 198
    invoke-virtual {p0}, Lae/gov/mol/fragment/ContactUs/Fragment_Offices_Map;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 199
    .local v0, "fmanager":Landroid/support/v4/app/FragmentManager;
    const v3, 0x7f060596

    invoke-virtual {v0, v3}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v1

    .local v1, "fragment":Landroid/support/v4/app/Fragment;
    move-object v2, v1

    .line 200
    check-cast v2, Lcom/google/android/gms/maps/SupportMapFragment;

    .line 201
    .local v2, "supportmapfragment":Lcom/google/android/gms/maps/SupportMapFragment;
    invoke-virtual {v2}, Lcom/google/android/gms/maps/SupportMapFragment;->getMap()Lcom/google/android/gms/maps/GoogleMap;

    move-result-object v3

    iput-object v3, p0, Lae/gov/mol/fragment/ContactUs/Fragment_Offices_Map;->mGoogleMap:Lcom/google/android/gms/maps/GoogleMap;

    .line 203
    iget-object v3, p0, Lae/gov/mol/fragment/ContactUs/Fragment_Offices_Map;->mGoogleMap:Lcom/google/android/gms/maps/GoogleMap;

    if-eqz v3, :cond_0

    .line 206
    iget-object v3, p0, Lae/gov/mol/fragment/ContactUs/Fragment_Offices_Map;->mGoogleMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v3, v4}, Lcom/google/android/gms/maps/GoogleMap;->setMyLocationEnabled(Z)V

    .line 207
    iget-object v3, p0, Lae/gov/mol/fragment/ContactUs/Fragment_Offices_Map;->mGoogleMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v3}, Lcom/google/android/gms/maps/GoogleMap;->getUiSettings()Lcom/google/android/gms/maps/UiSettings;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/google/android/gms/maps/UiSettings;->setZoomControlsEnabled(Z)V

    .line 208
    iget-object v3, p0, Lae/gov/mol/fragment/ContactUs/Fragment_Offices_Map;->mGoogleMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v3}, Lcom/google/android/gms/maps/GoogleMap;->getUiSettings()Lcom/google/android/gms/maps/UiSettings;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/google/android/gms/maps/UiSettings;->setCompassEnabled(Z)V

    .line 209
    iget-object v3, p0, Lae/gov/mol/fragment/ContactUs/Fragment_Offices_Map;->mGoogleMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v3}, Lcom/google/android/gms/maps/GoogleMap;->getUiSettings()Lcom/google/android/gms/maps/UiSettings;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/google/android/gms/maps/UiSettings;->setMyLocationButtonEnabled(Z)V

    .line 210
    iget-object v3, p0, Lae/gov/mol/fragment/ContactUs/Fragment_Offices_Map;->mGoogleMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v3, v4}, Lcom/google/android/gms/maps/GoogleMap;->setMapType(I)V

    .line 211
    invoke-virtual {p0}, Lae/gov/mol/fragment/ContactUs/Fragment_Offices_Map;->addMarker()V

    .line 219
    :goto_0
    return-void

    .line 216
    :cond_0
    const-string v3, "Null Value"

    invoke-static {v3}, Lae/gov/mol/helper/CommonMethods;->Log(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public addMarker()V
    .locals 12

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 130
    iget-object v6, p0, Lae/gov/mol/fragment/ContactUs/Fragment_Offices_Map;->mGoogleMap:Lcom/google/android/gms/maps/GoogleMap;

    if-eqz v6, :cond_0

    .line 132
    const-string v6, "if(mGoogleMap!=null)"

    invoke-static {v6}, Lae/gov/mol/helper/CommonMethods;->Log(Ljava/lang/String;)V

    .line 133
    iget-object v6, p0, Lae/gov/mol/fragment/ContactUs/Fragment_Offices_Map;->mGoogleMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v6, v11}, Lcom/google/android/gms/maps/GoogleMap;->setMapType(I)V

    .line 134
    iget-object v6, p0, Lae/gov/mol/fragment/ContactUs/Fragment_Offices_Map;->mGoogleMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v6}, Lcom/google/android/gms/maps/GoogleMap;->clear()V

    .line 135
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 136
    .local v1, "mArrayListMarkersMain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/gms/maps/model/Marker;>;"
    iget-object v6, p0, Lae/gov/mol/fragment/ContactUs/Fragment_Offices_Map;->mContactUsVoSearch:Lae/gov/mol/vo/ContactUsVo;

    invoke-virtual {v6}, Lae/gov/mol/vo/ContactUsVo;->getResources()Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 138
    const-string v6, "if(mContactUsVo!=null){"

    invoke-static {v6}, Lae/gov/mol/helper/CommonMethods;->Log(Ljava/lang/String;)V

    .line 140
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v6, p0, Lae/gov/mol/fragment/ContactUs/Fragment_Offices_Map;->mContactUsVoSearch:Lae/gov/mol/vo/ContactUsVo;

    invoke-virtual {v6}, Lae/gov/mol/vo/ContactUsVo;->getResources()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-lt v0, v6, :cond_1

    .line 155
    invoke-virtual {p0, v1}, Lae/gov/mol/fragment/ContactUs/Fragment_Offices_Map;->zoomMainMarker(Ljava/util/ArrayList;)V

    .line 158
    .end local v0    # "i":I
    .end local v1    # "mArrayListMarkersMain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/gms/maps/model/Marker;>;"
    :cond_0
    iget-object v6, p0, Lae/gov/mol/fragment/ContactUs/Fragment_Offices_Map;->mGoogleMap:Lcom/google/android/gms/maps/GoogleMap;

    new-instance v7, Lae/gov/mol/fragment/ContactUs/Fragment_Offices_Map$2;

    invoke-direct {v7, p0}, Lae/gov/mol/fragment/ContactUs/Fragment_Offices_Map$2;-><init>(Lae/gov/mol/fragment/ContactUs/Fragment_Offices_Map;)V

    invoke-virtual {v6, v7}, Lcom/google/android/gms/maps/GoogleMap;->setOnInfoWindowClickListener(Lcom/google/android/gms/maps/GoogleMap$OnInfoWindowClickListener;)V

    .line 169
    return-void

    .line 141
    .restart local v0    # "i":I
    .restart local v1    # "mArrayListMarkersMain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/gms/maps/model/Marker;>;"
    :cond_1
    new-array v4, v11, [Ljava/lang/String;

    .line 142
    .local v4, "mStringsLat":[Ljava/lang/String;
    new-array v5, v11, [Ljava/lang/String;

    .line 143
    .local v5, "mStringsLong":[Ljava/lang/String;
    iget-object v6, p0, Lae/gov/mol/fragment/ContactUs/Fragment_Offices_Map;->mContactUsVoSearch:Lae/gov/mol/vo/ContactUsVo;

    invoke-virtual {v6}, Lae/gov/mol/vo/ContactUsVo;->getResources()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lae/gov/mol/vo/ContactUsVo$ContactUsData;

    invoke-virtual {v6}, Lae/gov/mol/vo/ContactUsVo$ContactUsData;->getLattitude()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v10

    .line 144
    iget-object v6, p0, Lae/gov/mol/fragment/ContactUs/Fragment_Offices_Map;->mContactUsVoSearch:Lae/gov/mol/vo/ContactUsVo;

    invoke-virtual {v6}, Lae/gov/mol/vo/ContactUsVo;->getResources()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lae/gov/mol/vo/ContactUsVo$ContactUsData;

    invoke-virtual {v6}, Lae/gov/mol/vo/ContactUsVo$ContactUsData;->getLongtitude()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v10

    .line 145
    new-instance v2, Lcom/google/android/gms/maps/model/LatLng;

    aget-object v6, v4, v10

    invoke-static {v6}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    aget-object v8, v5, v10

    invoke-static {v8}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v8

    invoke-direct {v2, v6, v7, v8, v9}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    .line 146
    .local v2, "mLatLng":Lcom/google/android/gms/maps/model/LatLng;
    new-instance v3, Lcom/google/android/gms/maps/model/MarkerOptions;

    invoke-direct {v3}, Lcom/google/android/gms/maps/model/MarkerOptions;-><init>()V

    .line 147
    .local v3, "mMarkerOptions":Lcom/google/android/gms/maps/model/MarkerOptions;
    invoke-virtual {v3, v2}, Lcom/google/android/gms/maps/model/MarkerOptions;->position(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/MarkerOptions;

    .line 148
    iget-object v6, p0, Lae/gov/mol/fragment/ContactUs/Fragment_Offices_Map;->mGoogleMap:Lcom/google/android/gms/maps/GoogleMap;

    new-instance v7, Lae/gov/mol/helper/PopupAdapterResult;

    invoke-virtual {p0}, Lae/gov/mol/fragment/ContactUs/Fragment_Offices_Map;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v8

    const/4 v9, 0x0

    invoke-direct {v7, v8, v9}, Lae/gov/mol/helper/PopupAdapterResult;-><init>(Landroid/view/LayoutInflater;Lae/gov/mol/vo/ContactUsVo$ContactUsData;)V

    invoke-virtual {v6, v7}, Lcom/google/android/gms/maps/GoogleMap;->setInfoWindowAdapter(Lcom/google/android/gms/maps/GoogleMap$InfoWindowAdapter;)V

    .line 149
    new-instance v7, Ljava/lang/StringBuilder;

    iget-object v6, p0, Lae/gov/mol/fragment/ContactUs/Fragment_Offices_Map;->mContactUsVoSearch:Lae/gov/mol/vo/ContactUsVo;

    invoke-virtual {v6}, Lae/gov/mol/vo/ContactUsVo;->getResources()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lae/gov/mol/vo/ContactUsVo$ContactUsData;

    invoke-virtual {v6}, Lae/gov/mol/vo/ContactUsVo$ContactUsData;->getOfficeName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v7, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "\n"

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v6, p0, Lae/gov/mol/fragment/ContactUs/Fragment_Offices_Map;->mContactUsVoSearch:Lae/gov/mol/vo/ContactUsVo;

    invoke-virtual {v6}, Lae/gov/mol/vo/ContactUsVo;->getResources()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lae/gov/mol/vo/ContactUsVo$ContactUsData;

    invoke-virtual {v6}, Lae/gov/mol/vo/ContactUsVo$ContactUsData;->getAddress()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/google/android/gms/maps/model/MarkerOptions;->title(Ljava/lang/String;)Lcom/google/android/gms/maps/model/MarkerOptions;

    .line 150
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/google/android/gms/maps/model/MarkerOptions;->snippet(Ljava/lang/String;)Lcom/google/android/gms/maps/model/MarkerOptions;

    .line 151
    const v6, 0x7f020136

    invoke-static {v6}, Lcom/google/android/gms/maps/model/BitmapDescriptorFactory;->fromResource(I)Lcom/google/android/gms/maps/model/BitmapDescriptor;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/google/android/gms/maps/model/MarkerOptions;->icon(Lcom/google/android/gms/maps/model/BitmapDescriptor;)Lcom/google/android/gms/maps/model/MarkerOptions;

    .line 152
    iget-object v6, p0, Lae/gov/mol/fragment/ContactUs/Fragment_Offices_Map;->mGoogleMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v6, v3}, Lcom/google/android/gms/maps/GoogleMap;->addMarker(Lcom/google/android/gms/maps/model/MarkerOptions;)Lcom/google/android/gms/maps/model/Marker;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 140
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0
.end method

.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 288
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 294
    return-void
.end method

.method public finishFragmentOrActivity(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 352
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedinstance"    # Landroid/os/Bundle;

    .prologue
    .line 92
    invoke-super {p0, p1}, Lae/gov/mol/helper/CustomFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 93
    const v0, 0x7f0300a1

    invoke-virtual {p0, v0}, Lae/gov/mol/fragment/ContactUs/Fragment_Offices_Map;->setContentView(I)V

    .line 94
    const v0, 0x7f060597

    invoke-virtual {p0, v0}, Lae/gov/mol/fragment/ContactUs/Fragment_Offices_Map;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lae/gov/mol/fragment/ContactUs/Fragment_Offices_Map;->mEditTextSearch:Landroid/widget/EditText;

    .line 95
    iget-object v0, p0, Lae/gov/mol/fragment/ContactUs/Fragment_Offices_Map;->mEditTextSearch:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 96
    invoke-static {}, Lae/gov/mol/MolApplication;->getmTags()Lae/gov/mol/helper/Tags;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/fragment/ContactUs/Fragment_Offices_Map;->mTags:Lae/gov/mol/helper/Tags;

    .line 97
    new-instance v0, Lae/gov/mol/webservices/WebServiceResponse;

    invoke-virtual {p0}, Lae/gov/mol/fragment/ContactUs/Fragment_Offices_Map;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lae/gov/mol/webservices/WebServiceResponse;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lae/gov/mol/fragment/ContactUs/Fragment_Offices_Map;->mWebServiceResponse:Lae/gov/mol/webservices/WebServiceResponse;

    .line 98
    iget-object v0, p0, Lae/gov/mol/fragment/ContactUs/Fragment_Offices_Map;->mContactUsVo:Lae/gov/mol/vo/ContactUsVo;

    if-nez v0, :cond_0

    .line 100
    new-instance v0, Lae/gov/mol/vo/ContactUsVo;

    invoke-direct {v0}, Lae/gov/mol/vo/ContactUsVo;-><init>()V

    iput-object v0, p0, Lae/gov/mol/fragment/ContactUs/Fragment_Offices_Map;->mContactUsVo:Lae/gov/mol/vo/ContactUsVo;

    .line 101
    new-instance v0, Lae/gov/mol/vo/ContactUsVo;

    invoke-direct {v0}, Lae/gov/mol/vo/ContactUsVo;-><init>()V

    iput-object v0, p0, Lae/gov/mol/fragment/ContactUs/Fragment_Offices_Map;->mContactUsVoSearch:Lae/gov/mol/vo/ContactUsVo;

    .line 102
    new-instance v0, Lae/gov/mol/fragment/ContactUs/Fragment_Offices_Map$BackProcess;

    invoke-direct {v0, p0}, Lae/gov/mol/fragment/ContactUs/Fragment_Offices_Map$BackProcess;-><init>(Lae/gov/mol/fragment/ContactUs/Fragment_Offices_Map;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lae/gov/mol/fragment/ContactUs/Fragment_Offices_Map$BackProcess;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 106
    :cond_0
    const v0, 0x7f060758

    invoke-virtual {p0, v0}, Lae/gov/mol/fragment/ContactUs/Fragment_Offices_Map;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lae/gov/mol/fragment/ContactUs/Fragment_Offices_Map;->mTextViewHeader:Landroid/widget/TextView;

    .line 108
    const v0, 0x7f060757

    invoke-virtual {p0, v0}, Lae/gov/mol/fragment/ContactUs/Fragment_Offices_Map;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lae/gov/mol/fragment/ContactUs/Fragment_Offices_Map;->mImageViewHeaderHome:Landroid/widget/ImageView;

    .line 109
    iget-object v0, p0, Lae/gov/mol/fragment/ContactUs/Fragment_Offices_Map;->mImageViewHeaderHome:Landroid/widget/ImageView;

    new-instance v1, Lae/gov/mol/fragment/ContactUs/Fragment_Offices_Map$1;

    invoke-direct {v1, p0}, Lae/gov/mol/fragment/ContactUs/Fragment_Offices_Map$1;-><init>(Lae/gov/mol/fragment/ContactUs/Fragment_Offices_Map;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 117
    iget-object v0, p0, Lae/gov/mol/fragment/ContactUs/Fragment_Offices_Map;->mTextViewHeader:Landroid/widget/TextView;

    const v1, 0x7f09006a

    invoke-virtual {p0, v1}, Lae/gov/mol/fragment/ContactUs/Fragment_Offices_Map;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 119
    new-instance v0, Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v1, p0, Lae/gov/mol/fragment/ContactUs/Fragment_Offices_Map;->latitude:D

    iget-wide v3, p0, Lae/gov/mol/fragment/ContactUs/Fragment_Offices_Map;->longitude:D

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    iput-object v0, p0, Lae/gov/mol/fragment/ContactUs/Fragment_Offices_Map;->mLatLng:Lcom/google/android/gms/maps/model/LatLng;

    .line 121
    return-void
.end method

.method public onLocationChanged(Landroid/location/Location;)V
    .locals 0
    .param p1, "arg0"    # Landroid/location/Location;

    .prologue
    .line 224
    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 0
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    .line 229
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 0
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    .line 234
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "status"    # I
    .param p3, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 239
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 4
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 298
    iget-object v2, p0, Lae/gov/mol/fragment/ContactUs/Fragment_Offices_Map;->mEditTextSearch:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    .line 300
    .local v1, "searchString":Ljava/lang/String;
    new-instance v2, Lae/gov/mol/vo/ContactUsVo;

    invoke-direct {v2}, Lae/gov/mol/vo/ContactUsVo;-><init>()V

    iput-object v2, p0, Lae/gov/mol/fragment/ContactUs/Fragment_Offices_Map;->mContactUsVoSearch:Lae/gov/mol/vo/ContactUsVo;

    .line 302
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lae/gov/mol/fragment/ContactUs/Fragment_Offices_Map;->mContactUsVo:Lae/gov/mol/vo/ContactUsVo;

    invoke-virtual {v2}, Lae/gov/mol/vo/ContactUsVo;->getResources()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v0, v2, :cond_0

    .line 311
    invoke-direct {p0}, Lae/gov/mol/fragment/ContactUs/Fragment_Offices_Map;->initMap()V

    .line 312
    invoke-direct {p0}, Lae/gov/mol/fragment/ContactUs/Fragment_Offices_Map;->ShowCurrentLocation()V

    .line 314
    return-void

    .line 304
    :cond_0
    iget-object v2, p0, Lae/gov/mol/fragment/ContactUs/Fragment_Offices_Map;->mContactUsVo:Lae/gov/mol/vo/ContactUsVo;

    invoke-virtual {v2}, Lae/gov/mol/vo/ContactUsVo;->getResources()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lae/gov/mol/vo/ContactUsVo$ContactUsData;

    invoke-virtual {v2}, Lae/gov/mol/vo/ContactUsVo$ContactUsData;->getOfficeName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 305
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "searchString......"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lae/gov/mol/helper/CommonMethods;->Log(Ljava/lang/String;)V

    .line 306
    iget-object v3, p0, Lae/gov/mol/fragment/ContactUs/Fragment_Offices_Map;->mContactUsVoSearch:Lae/gov/mol/vo/ContactUsVo;

    iget-object v2, p0, Lae/gov/mol/fragment/ContactUs/Fragment_Offices_Map;->mContactUsVo:Lae/gov/mol/vo/ContactUsVo;

    invoke-virtual {v2}, Lae/gov/mol/vo/ContactUsVo;->getResources()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lae/gov/mol/vo/ContactUsVo$ContactUsData;

    invoke-virtual {v3, v2}, Lae/gov/mol/vo/ContactUsVo;->AddContactUsData(Lae/gov/mol/vo/ContactUsVo$ContactUsData;)V

    .line 302
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public replaceFragment(Landroid/support/v4/app/Fragment;ZI)V
    .locals 0
    .param p1, "fragment"    # Landroid/support/v4/app/Fragment;
    .param p2, "addToBackStack"    # Z
    .param p3, "transition"    # I

    .prologue
    .line 347
    return-void
.end method

.method public zoomMainMarker(Ljava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/maps/model/Marker;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 318
    .local p1, "mArrayListMarkersMain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/gms/maps/model/Marker;>;"
    new-instance v3, Lcom/google/android/gms/maps/model/LatLngBounds$Builder;

    invoke-direct {v3}, Lcom/google/android/gms/maps/model/LatLngBounds$Builder;-><init>()V

    iput-object v3, p0, Lae/gov/mol/fragment/ContactUs/Fragment_Offices_Map;->mBuilderMain:Lcom/google/android/gms/maps/model/LatLngBounds$Builder;

    .line 319
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1

    .line 324
    :try_start_0
    iget-object v3, p0, Lae/gov/mol/fragment/ContactUs/Fragment_Offices_Map;->mBuilderMain:Lcom/google/android/gms/maps/model/LatLngBounds$Builder;

    invoke-virtual {v3}, Lcom/google/android/gms/maps/model/LatLngBounds$Builder;->build()Lcom/google/android/gms/maps/model/LatLngBounds;

    move-result-object v3

    sget v4, Lae/gov/mol/helper/Tags;->CAMERA_PADDING:I

    invoke-static {v3, v4}, Lcom/google/android/gms/maps/CameraUpdateFactory;->newLatLngBounds(Lcom/google/android/gms/maps/model/LatLngBounds;I)Lcom/google/android/gms/maps/CameraUpdate;

    move-result-object v0

    .line 326
    .local v0, "mCameraUpdateMain":Lcom/google/android/gms/maps/CameraUpdate;
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 328
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_2

    .line 329
    iget-object v3, p0, Lae/gov/mol/fragment/ContactUs/Fragment_Offices_Map;->mGoogleMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v3, v0}, Lcom/google/android/gms/maps/GoogleMap;->moveCamera(Lcom/google/android/gms/maps/CameraUpdate;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 341
    .end local v0    # "mCameraUpdateMain":Lcom/google/android/gms/maps/CameraUpdate;
    :cond_0
    :goto_1
    return-void

    .line 319
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/maps/model/Marker;

    .line 320
    .local v1, "marker":Lcom/google/android/gms/maps/model/Marker;
    iget-object v4, p0, Lae/gov/mol/fragment/ContactUs/Fragment_Offices_Map;->mBuilderMain:Lcom/google/android/gms/maps/model/LatLngBounds$Builder;

    invoke-virtual {v1}, Lcom/google/android/gms/maps/model/Marker;->getPosition()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/android/gms/maps/model/LatLngBounds$Builder;->include(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/LatLngBounds$Builder;

    goto :goto_0

    .line 332
    .end local v1    # "marker":Lcom/google/android/gms/maps/model/Marker;
    .restart local v0    # "mCameraUpdateMain":Lcom/google/android/gms/maps/CameraUpdate;
    :cond_2
    :try_start_1
    iget-object v3, p0, Lae/gov/mol/fragment/ContactUs/Fragment_Offices_Map;->mGoogleMap:Lcom/google/android/gms/maps/GoogleMap;

    if-eqz v3, :cond_0

    .line 333
    const/high16 v3, 0x41700000    # 15.0f

    invoke-static {v3}, Lcom/google/android/gms/maps/CameraUpdateFactory;->zoomTo(F)Lcom/google/android/gms/maps/CameraUpdate;

    move-result-object v2

    .line 334
    .local v2, "zoom":Lcom/google/android/gms/maps/CameraUpdate;
    iget-object v3, p0, Lae/gov/mol/fragment/ContactUs/Fragment_Offices_Map;->mGoogleMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v3, v0}, Lcom/google/android/gms/maps/GoogleMap;->moveCamera(Lcom/google/android/gms/maps/CameraUpdate;)V

    .line 335
    iget-object v3, p0, Lae/gov/mol/fragment/ContactUs/Fragment_Offices_Map;->mGoogleMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v3, v2}, Lcom/google/android/gms/maps/GoogleMap;->animateCamera(Lcom/google/android/gms/maps/CameraUpdate;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 338
    .end local v0    # "mCameraUpdateMain":Lcom/google/android/gms/maps/CameraUpdate;
    .end local v2    # "zoom":Lcom/google/android/gms/maps/CameraUpdate;
    :catch_0
    move-exception v3

    goto :goto_1
.end method
