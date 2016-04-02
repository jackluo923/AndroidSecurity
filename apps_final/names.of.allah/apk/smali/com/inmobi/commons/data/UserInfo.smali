.class public final Lcom/inmobi/commons/data/UserInfo;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/inmobi/commons/data/UserInfo;

.field private static c:I


# instance fields
.field private b:Z

.field private d:Landroid/location/Location;

.field private e:Z

.field private f:Ljava/lang/String;

.field private g:Lcom/inmobi/commons/EducationType;

.field private h:Lcom/inmobi/commons/EthnicityType;

.field private i:Lcom/inmobi/commons/GenderType;

.field private j:Ljava/util/Calendar;

.field private k:Ljava/lang/Integer;

.field private l:Ljava/lang/Integer;

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:Ljava/lang/String;

.field private p:Ljava/lang/String;

.field private q:Lcom/inmobi/commons/HasChildren;

.field private r:Lcom/inmobi/commons/MaritalStatus;

.field private s:Ljava/lang/String;

.field private t:Lcom/inmobi/commons/SexualOrientation;

.field private u:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/inmobi/commons/IMIDType;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/inmobi/commons/data/UserInfo;

    invoke-direct {v0}, Lcom/inmobi/commons/data/UserInfo;-><init>()V

    sput-object v0, Lcom/inmobi/commons/data/UserInfo;->a:Lcom/inmobi/commons/data/UserInfo;

    const/4 v0, 0x1

    sput v0, Lcom/inmobi/commons/data/UserInfo;->c:I

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/inmobi/commons/data/UserInfo;->e:Z

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/inmobi/commons/data/UserInfo;->k:Ljava/lang/Integer;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/inmobi/commons/data/UserInfo;->l:Ljava/lang/Integer;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/inmobi/commons/data/UserInfo;->u:Ljava/util/Map;

    return-void
.end method

.method public static getInstance()Lcom/inmobi/commons/data/UserInfo;
    .locals 1

    sget-object v0, Lcom/inmobi/commons/data/UserInfo;->a:Lcom/inmobi/commons/data/UserInfo;

    return-object v0
.end method


# virtual methods
.method public final addIDType(Lcom/inmobi/commons/IMIDType;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/inmobi/commons/data/UserInfo;->u:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inmobi/commons/data/UserInfo;->u:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public final getAge()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/inmobi/commons/data/UserInfo;->l:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getAreaCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/inmobi/commons/data/UserInfo;->p:Ljava/lang/String;

    return-object v0
.end method

.method public final getCurrentLocation()Landroid/location/Location;
    .locals 1

    iget-object v0, p0, Lcom/inmobi/commons/data/UserInfo;->d:Landroid/location/Location;

    return-object v0
.end method

.method public final getDateOfBirth()Ljava/util/Calendar;
    .locals 1

    iget-object v0, p0, Lcom/inmobi/commons/data/UserInfo;->j:Ljava/util/Calendar;

    return-object v0
.end method

.method public final getDeviceIDMask()I
    .locals 1

    sget v0, Lcom/inmobi/commons/data/UserInfo;->c:I

    return v0
.end method

.method public final getEducation()Lcom/inmobi/commons/EducationType;
    .locals 1

    iget-object v0, p0, Lcom/inmobi/commons/data/UserInfo;->g:Lcom/inmobi/commons/EducationType;

    return-object v0
.end method

.method public final getEthnicity()Lcom/inmobi/commons/EthnicityType;
    .locals 1

    iget-object v0, p0, Lcom/inmobi/commons/data/UserInfo;->h:Lcom/inmobi/commons/EthnicityType;

    return-object v0
.end method

.method public final getGender()Lcom/inmobi/commons/GenderType;
    .locals 1

    iget-object v0, p0, Lcom/inmobi/commons/data/UserInfo;->i:Lcom/inmobi/commons/GenderType;

    return-object v0
.end method

.method public final getHasChildren()Lcom/inmobi/commons/HasChildren;
    .locals 1

    iget-object v0, p0, Lcom/inmobi/commons/data/UserInfo;->q:Lcom/inmobi/commons/HasChildren;

    return-object v0
.end method

.method public final getIDType(Lcom/inmobi/commons/IMIDType;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/inmobi/commons/data/UserInfo;->u:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inmobi/commons/data/UserInfo;->u:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getIncome()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/inmobi/commons/data/UserInfo;->k:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getInterests()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/inmobi/commons/data/UserInfo;->m:Ljava/lang/String;

    return-object v0
.end method

.method public final getLanguage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/inmobi/commons/data/UserInfo;->s:Ljava/lang/String;

    return-object v0
.end method

.method public final getLocationWithCityStateCountry()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/inmobi/commons/data/UserInfo;->n:Ljava/lang/String;

    return-object v0
.end method

.method public final getMaritalStatus()Lcom/inmobi/commons/MaritalStatus;
    .locals 1

    iget-object v0, p0, Lcom/inmobi/commons/data/UserInfo;->r:Lcom/inmobi/commons/MaritalStatus;

    return-object v0
.end method

.method public final getPostalCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/inmobi/commons/data/UserInfo;->o:Ljava/lang/String;

    return-object v0
.end method

.method public final getSearchString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/inmobi/commons/data/UserInfo;->f:Ljava/lang/String;

    return-object v0
.end method

.method public final getSexualOrientation()Lcom/inmobi/commons/SexualOrientation;
    .locals 1

    iget-object v0, p0, Lcom/inmobi/commons/data/UserInfo;->t:Lcom/inmobi/commons/SexualOrientation;

    return-object v0
.end method

.method public final isLocationInquiryAllowed()Z
    .locals 1

    iget-boolean v0, p0, Lcom/inmobi/commons/data/UserInfo;->e:Z

    return v0
.end method

.method public final isTestMode()Z
    .locals 1

    iget-boolean v0, p0, Lcom/inmobi/commons/data/UserInfo;->b:Z

    return v0
.end method

.method public final removeIDType(Lcom/inmobi/commons/IMIDType;)V
    .locals 1

    iget-object v0, p0, Lcom/inmobi/commons/data/UserInfo;->u:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inmobi/commons/data/UserInfo;->u:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public final setAge(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/inmobi/commons/data/UserInfo;->l:Ljava/lang/Integer;

    return-void
.end method

.method public final setAreaCode(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/inmobi/commons/data/UserInfo;->p:Ljava/lang/String;

    return-void
.end method

.method public final setCurrentLocation(Landroid/location/Location;)V
    .locals 0

    iput-object p1, p0, Lcom/inmobi/commons/data/UserInfo;->d:Landroid/location/Location;

    return-void
.end method

.method public final setDateOfBirth(Ljava/util/Calendar;)V
    .locals 0

    iput-object p1, p0, Lcom/inmobi/commons/data/UserInfo;->j:Ljava/util/Calendar;

    return-void
.end method

.method public final setDeviceIDMask(I)V
    .locals 0

    sput p1, Lcom/inmobi/commons/data/UserInfo;->c:I

    return-void
.end method

.method public final setEducation(Lcom/inmobi/commons/EducationType;)V
    .locals 0

    iput-object p1, p0, Lcom/inmobi/commons/data/UserInfo;->g:Lcom/inmobi/commons/EducationType;

    return-void
.end method

.method public final setEthnicity(Lcom/inmobi/commons/EthnicityType;)V
    .locals 0

    iput-object p1, p0, Lcom/inmobi/commons/data/UserInfo;->h:Lcom/inmobi/commons/EthnicityType;

    return-void
.end method

.method public final setGender(Lcom/inmobi/commons/GenderType;)V
    .locals 0

    iput-object p1, p0, Lcom/inmobi/commons/data/UserInfo;->i:Lcom/inmobi/commons/GenderType;

    return-void
.end method

.method public final setHasChildren(Lcom/inmobi/commons/HasChildren;)V
    .locals 0

    iput-object p1, p0, Lcom/inmobi/commons/data/UserInfo;->q:Lcom/inmobi/commons/HasChildren;

    return-void
.end method

.method public final setIncome(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/inmobi/commons/data/UserInfo;->k:Ljava/lang/Integer;

    return-void
.end method

.method public final setInterests(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/inmobi/commons/data/UserInfo;->m:Ljava/lang/String;

    return-void
.end method

.method public final setLanguage(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/inmobi/commons/data/UserInfo;->s:Ljava/lang/String;

    return-void
.end method

.method public final setLocationInquiryAllowed(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/inmobi/commons/data/UserInfo;->e:Z

    return-void
.end method

.method public final setLocationWithCityStateCountry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/inmobi/commons/data/UserInfo;->n:Ljava/lang/String;

    :cond_0
    if-eqz p2, :cond_1

    const-string v0, ""

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/inmobi/commons/data/UserInfo;->n:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/inmobi/commons/data/UserInfo;->n:Ljava/lang/String;

    :cond_1
    if-eqz p3, :cond_2

    const-string v0, ""

    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/inmobi/commons/data/UserInfo;->n:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/inmobi/commons/data/UserInfo;->n:Ljava/lang/String;

    :cond_2
    return-void
.end method

.method public final setMaritalStatus(Lcom/inmobi/commons/MaritalStatus;)V
    .locals 0

    iput-object p1, p0, Lcom/inmobi/commons/data/UserInfo;->r:Lcom/inmobi/commons/MaritalStatus;

    return-void
.end method

.method public final setPostalCode(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/inmobi/commons/data/UserInfo;->o:Ljava/lang/String;

    return-void
.end method

.method public final setSexualOrientation(Lcom/inmobi/commons/SexualOrientation;)V
    .locals 0

    iput-object p1, p0, Lcom/inmobi/commons/data/UserInfo;->t:Lcom/inmobi/commons/SexualOrientation;

    return-void
.end method

.method public final setTestMode(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/inmobi/commons/data/UserInfo;->b:Z

    return-void
.end method

.method public final updateDeviceInfo()V
    .locals 3

    :try_start_0
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-static {}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "window"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    invoke-static {v0}, Lcom/inmobi/commons/internal/WrapperFunctions;->getDisplayWidth(Landroid/view/Display;)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v1

    float-to-int v2, v2

    invoke-static {v0}, Lcom/inmobi/commons/internal/WrapperFunctions;->getDisplayHeight(Landroid/view/Display;)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    float-to-int v0, v0

    invoke-static {v1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/inmobi/commons/data/DeviceInfo;->setScreenDensity(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "X"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/inmobi/commons/data/DeviceInfo;->setScreenSize(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "[InMobi]-4.4.1"

    const-string v2, "Exception setting device info"

    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final declared-synchronized updateInfo()V
    .locals 3

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/inmobi/commons/data/UserInfo;->updateDeviceInfo()V

    invoke-static {}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getUserAgent(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/inmobi/commons/data/DeviceInfo;->setPhoneDefaultUserAgent(Ljava/lang/String;)V

    invoke-static {}, Lcom/inmobi/commons/data/DeviceInfo;->getInstance()Lcom/inmobi/commons/data/DeviceInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/commons/data/DeviceInfo;->fillDeviceInfo()V

    invoke-static {}, Lcom/inmobi/commons/data/AppInfo;->fillAppInfo()V

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/inmobi/commons/data/LocationInfo;->b(Z)V

    invoke-virtual {p0}, Lcom/inmobi/commons/data/UserInfo;->isLocationInquiryAllowed()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/inmobi/commons/data/UserInfo;->getCurrentLocation()Landroid/location/Location;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/inmobi/commons/data/UserInfo;->getCurrentLocation()Landroid/location/Location;

    move-result-object v0

    invoke-static {v0}, Lcom/inmobi/commons/data/LocationInfo;->a(Landroid/location/Location;)V

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/inmobi/commons/data/LocationInfo;->b(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    invoke-static {}, Lcom/inmobi/commons/data/LocationInfo;->verifyLocationPermission()V

    invoke-static {}, Lcom/inmobi/commons/data/LocationInfo;->isLocationDeniedByUser()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/inmobi/commons/data/LocationInfo;->updateBestKnownLocation()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    const-string v1, "[InMobi]-4.4.1"

    const-string v2, "Exception updating user info"

    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_2
    const/4 v0, 0x1

    :try_start_3
    invoke-static {v0}, Lcom/inmobi/commons/data/LocationInfo;->a(Z)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method
