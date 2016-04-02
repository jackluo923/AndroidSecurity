.class public final Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/ads/mediation/j;


# instance fields
.field private areaCode:Ljava/lang/String;

.field private cities:Ljava/lang/String;

.field private countries:Ljava/lang/String;

.field private education:Lcom/inmobi/commons/EducationType;

.field private ethnicity:Lcom/inmobi/commons/EthnicityType;

.field private hasChildren:Lcom/inmobi/commons/HasChildren;

.field private idtypeParams:Ljava/util/Map;
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

.field private income:Ljava/lang/Integer;

.field private interests:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private isLocationInquiryAllowed:Z

.field private keywords:Ljava/lang/String;

.field private languages:Ljava/lang/String;

.field private martialStatus:Lcom/inmobi/commons/MaritalStatus;

.field private postalCode:Ljava/lang/String;

.field private reftagKey:Ljava/lang/String;

.field private reftagValue:Ljava/lang/String;

.field private requestParams:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private searchString:Ljava/lang/String;

.field private sexualOrientations:Lcom/inmobi/commons/SexualOrientation;

.field private states:Ljava/lang/String;

.field private uidMapFlag:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras;->areaCode:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras;->reftagKey:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras;->reftagValue:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras;->education:Lcom/inmobi/commons/EducationType;

    iput-object v0, p0, Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras;->ethnicity:Lcom/inmobi/commons/EthnicityType;

    iput-object v0, p0, Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras;->income:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras;->interests:Ljava/util/Set;

    iput-object v0, p0, Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras;->postalCode:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras;->searchString:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras;->hasChildren:Lcom/inmobi/commons/HasChildren;

    iput-object v0, p0, Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras;->sexualOrientations:Lcom/inmobi/commons/SexualOrientation;

    iput-object v0, p0, Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras;->martialStatus:Lcom/inmobi/commons/MaritalStatus;

    iput-object v0, p0, Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras;->languages:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras;->keywords:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras;->states:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras;->cities:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras;->countries:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras;->isLocationInquiryAllowed:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras;->idtypeParams:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final addIDType(Lcom/inmobi/commons/IMIDType;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras;->idtypeParams:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras;->idtypeParams:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public final addInterests(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras;->interests:Ljava/util/Set;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras;->interests:Ljava/util/Set;

    :cond_0
    iget-object v0, p0, Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras;->interests:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final clearAreaCode()Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras;->setAreaCode(Ljava/lang/String;)Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras;

    move-result-object v0

    return-object v0
.end method

.method public final clearCityStateCountry()Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0, v0}, Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras;->setCityStateCountry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras;

    move-result-object v0

    return-object v0
.end method

.method public final clearDeviceIdMask()Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras;
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras;->uidMapFlag:I

    return-object p0
.end method

.method public final clearEducation()Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras;->setEducation(Lcom/inmobi/commons/EducationType;)Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras;

    move-result-object v0

    return-object v0
.end method

.method public final clearEthnicity()Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras;->setEthnicity(Lcom/inmobi/commons/EthnicityType;)Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras;

    move-result-object v0

    return-object v0
.end method

.method public final clearIncome()Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras;->setIncome(Ljava/lang/Integer;)Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras;

    move-result-object v0

    return-object v0
.end method

.method public final clearInterests()Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras;->setInterests(Ljava/util/Collection;)Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras;

    move-result-object v0

    return-object v0
.end method

.method public final clearKeywords()Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras;->setKeywords(Ljava/lang/String;)Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras;

    move-result-object v0

    return-object v0
.end method

.method public final clearLanguage()Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras;->setlanguage(Ljava/lang/String;)Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras;

    move-result-object v0

    return-object v0
.end method

.method public final clearLocationInquiryAllowed()Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras;
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras;->isLocationInquiryAllowed:Z

    return-object p0
.end method

.method public final clearMartialStatus()Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras;->setMartialStatus(Lcom/inmobi/commons/MaritalStatus;)Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras;

    move-result-object v0

    return-object v0
.end method

.method public final clearPostalCode()Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras;->setPostalCode(Ljava/lang/String;)Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras;

    move-result-object v0

    return-object v0
.end method

.method public final clearRefTag()Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras;->setRefTag(Ljava/lang/String;Ljava/lang/String;)Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras;

    move-result-object v0

    return-object v0
.end method

.method public final clearRequestParams()Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras;->setRequestParams(Ljava/util/Map;)Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras;

    move-result-object v0

    return-object v0
.end method

.method public final clearSearchString()Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras;->setSearchString(Ljava/lang/String;)Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras;

    move-result-object v0

    return-object v0
.end method

.method public final clearhasChildren()Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras;->setHasChildren(Lcom/inmobi/commons/HasChildren;)Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras;

    move-result-object v0

    return-object v0
.end method

.method public final clearsexualOrientations()Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras;->setSexualOrientation(Lcom/inmobi/commons/SexualOrientation;)Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras;

    move-result-object v0

    return-object v0
.end method

.method public final getAreaCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras;->areaCode:Ljava/lang/String;

    return-object v0
.end method

.method public final getCity()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras;->cities:Ljava/lang/String;

    return-object v0
.end method

.method public final getCountry()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras;->countries:Ljava/lang/String;

    return-object v0
.end method

.method public final getDeviceIdMask()I
    .locals 1

    iget v0, p0, Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras;->uidMapFlag:I

    return v0
.end method

.method public final getEducation()Lcom/inmobi/commons/EducationType;
    .locals 1

    iget-object v0, p0, Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras;->education:Lcom/inmobi/commons/EducationType;

    return-object v0
.end method

.method public final getEthnicity()Lcom/inmobi/commons/EthnicityType;
    .locals 1

    iget-object v0, p0, Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras;->ethnicity:Lcom/inmobi/commons/EthnicityType;

    return-object v0
.end method

.method public final getHasChildren()Lcom/inmobi/commons/HasChildren;
    .locals 1

    iget-object v0, p0, Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras;->hasChildren:Lcom/inmobi/commons/HasChildren;

    return-object v0
.end method

.method public final getIDType(Lcom/inmobi/commons/IMIDType;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras;->idtypeParams:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras;->idtypeParams:Ljava/util/Map;

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

    iget-object v0, p0, Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras;->income:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getInterests()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras;->interests:Ljava/util/Set;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras;->interests:Ljava/util/Set;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    goto :goto_0
.end method

.method public final getKeywords()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras;->keywords:Ljava/lang/String;

    return-object v0
.end method

.method public final getLangauge()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras;->languages:Ljava/lang/String;

    return-object v0
.end method

.method public final getMartialStatus()Lcom/inmobi/commons/MaritalStatus;
    .locals 1

    iget-object v0, p0, Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras;->martialStatus:Lcom/inmobi/commons/MaritalStatus;

    return-object v0
.end method

.method public final getPostalCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras;->postalCode:Ljava/lang/String;

    return-object v0
.end method

.method public final getRefTagKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras;->reftagKey:Ljava/lang/String;

    return-object v0
.end method

.method public final getRefTagValue()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras;->reftagValue:Ljava/lang/String;

    return-object v0
.end method

.method public final getRequestParams()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras;->requestParams:Ljava/util/Map;

    return-object v0
.end method

.method public final getSearchString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras;->searchString:Ljava/lang/String;

    return-object v0
.end method

.method public final getSexualOrientations()Lcom/inmobi/commons/SexualOrientation;
    .locals 1

    iget-object v0, p0, Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras;->sexualOrientations:Lcom/inmobi/commons/SexualOrientation;

    return-object v0
.end method

.method public final getState()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras;->states:Ljava/lang/String;

    return-object v0
.end method

.method public final isLocationInquiryAllowed()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras;->isLocationInquiryAllowed:Z

    return v0
.end method

.method public final removeIDType(Lcom/inmobi/commons/IMIDType;)V
    .locals 1

    iget-object v0, p0, Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras;->idtypeParams:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras;->idtypeParams:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public final setAreaCode(Ljava/lang/String;)Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras;
    .locals 0

    iput-object p1, p0, Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras;->areaCode:Ljava/lang/String;

    return-object p0
.end method

.method public final setCityStateCountry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras;
    .locals 0

    iput-object p2, p0, Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras;->states:Ljava/lang/String;

    iput-object p1, p0, Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras;->cities:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras;->countries:Ljava/lang/String;

    return-object p0
.end method

.method public final setDeviceIDMask(I)V
    .locals 0

    iput p1, p0, Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras;->uidMapFlag:I

    return-void
.end method

.method public final setEducation(Lcom/inmobi/commons/EducationType;)Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras;
    .locals 0

    iput-object p1, p0, Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras;->education:Lcom/inmobi/commons/EducationType;

    return-object p0
.end method

.method public final setEthnicity(Lcom/inmobi/commons/EthnicityType;)Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras;
    .locals 0

    iput-object p1, p0, Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras;->ethnicity:Lcom/inmobi/commons/EthnicityType;

    return-object p0
.end method

.method public final setHasChildren(Lcom/inmobi/commons/HasChildren;)Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras;
    .locals 0

    iput-object p1, p0, Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras;->hasChildren:Lcom/inmobi/commons/HasChildren;

    return-object p0
.end method

.method public final setIncome(Ljava/lang/Integer;)Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras;
    .locals 0

    iput-object p1, p0, Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras;->income:Ljava/lang/Integer;

    return-object p0
.end method

.method public final setInterests(Ljava/util/Collection;)Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras;"
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras;->interests:Ljava/util/Set;

    :goto_0
    return-object p0

    :cond_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras;->interests:Ljava/util/Set;

    goto :goto_0
.end method

.method public final setKeywords(Ljava/lang/String;)Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras;
    .locals 0

    iput-object p1, p0, Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras;->keywords:Ljava/lang/String;

    return-object p0
.end method

.method public final setLocationInquiryAllowed(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras;->isLocationInquiryAllowed:Z

    return-void
.end method

.method public final setMartialStatus(Lcom/inmobi/commons/MaritalStatus;)Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras;
    .locals 0

    iput-object p1, p0, Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras;->martialStatus:Lcom/inmobi/commons/MaritalStatus;

    return-object p0
.end method

.method public final setPostalCode(Ljava/lang/String;)Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras;
    .locals 0

    iput-object p1, p0, Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras;->postalCode:Ljava/lang/String;

    return-object p0
.end method

.method public final setRefTag(Ljava/lang/String;Ljava/lang/String;)Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras;
    .locals 0

    iput-object p1, p0, Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras;->reftagKey:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras;->reftagValue:Ljava/lang/String;

    return-object p0
.end method

.method public final setRequestParams(Ljava/util/Map;)Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras;"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras;->requestParams:Ljava/util/Map;

    return-object p0
.end method

.method public final setSearchString(Ljava/lang/String;)Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras;
    .locals 0

    iput-object p1, p0, Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras;->searchString:Ljava/lang/String;

    return-object p0
.end method

.method public final setSexualOrientation(Lcom/inmobi/commons/SexualOrientation;)Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras;
    .locals 0

    iput-object p1, p0, Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras;->sexualOrientations:Lcom/inmobi/commons/SexualOrientation;

    return-object p0
.end method

.method public final setlanguage(Ljava/lang/String;)Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras;
    .locals 0

    iput-object p1, p0, Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras;->languages:Ljava/lang/String;

    return-object p0
.end method
