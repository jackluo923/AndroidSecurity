.class public Lcom/inmobi/androidsdk/AdRequest;
.super Ljava/lang/Object;


# instance fields
.field private a:Z

.field private b:Landroid/location/Location;

.field private c:Ljava/lang/String;

.field private d:Z

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/util/Calendar;

.field private h:Lcom/inmobi/commons/GenderType;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:I

.field private l:Lcom/inmobi/commons/EducationType;

.field private m:Lcom/inmobi/commons/EthnicityType;

.field private n:I

.field private o:Ljava/lang/String;

.field private p:Ljava/util/Map;
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

.field private q:Lcom/inmobi/commons/MaritalStatus;

.field private r:Ljava/lang/String;

.field private s:Lcom/inmobi/commons/SexualOrientation;

.field private t:Lcom/inmobi/commons/HasChildren;


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/inmobi/androidsdk/AdRequest;->a:Z

    iput-object v1, p0, Lcom/inmobi/androidsdk/AdRequest;->b:Landroid/location/Location;

    iput-object v1, p0, Lcom/inmobi/androidsdk/AdRequest;->c:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/inmobi/androidsdk/AdRequest;->d:Z

    iput-object v1, p0, Lcom/inmobi/androidsdk/AdRequest;->e:Ljava/lang/String;

    iput-object v1, p0, Lcom/inmobi/androidsdk/AdRequest;->f:Ljava/lang/String;

    iput-object v1, p0, Lcom/inmobi/androidsdk/AdRequest;->g:Ljava/util/Calendar;

    iput-object v1, p0, Lcom/inmobi/androidsdk/AdRequest;->i:Ljava/lang/String;

    iput-object v1, p0, Lcom/inmobi/androidsdk/AdRequest;->j:Ljava/lang/String;

    iput v2, p0, Lcom/inmobi/androidsdk/AdRequest;->k:I

    iput v2, p0, Lcom/inmobi/androidsdk/AdRequest;->n:I

    iput-object v1, p0, Lcom/inmobi/androidsdk/AdRequest;->o:Ljava/lang/String;

    iput-object v1, p0, Lcom/inmobi/androidsdk/AdRequest;->p:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public getAge()I
    .locals 1

    iget v0, p0, Lcom/inmobi/androidsdk/AdRequest;->n:I

    return v0
.end method

.method public getAreaCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/inmobi/androidsdk/AdRequest;->f:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentLocation()Landroid/location/Location;
    .locals 1

    iget-object v0, p0, Lcom/inmobi/androidsdk/AdRequest;->b:Landroid/location/Location;

    return-object v0
.end method

.method public getDateOfBirth()Ljava/util/Calendar;
    .locals 1

    iget-object v0, p0, Lcom/inmobi/androidsdk/AdRequest;->g:Ljava/util/Calendar;

    return-object v0
.end method

.method public getEducation()Lcom/inmobi/commons/EducationType;
    .locals 1

    iget-object v0, p0, Lcom/inmobi/androidsdk/AdRequest;->l:Lcom/inmobi/commons/EducationType;

    return-object v0
.end method

.method public getEthnicity()Lcom/inmobi/commons/EthnicityType;
    .locals 1

    iget-object v0, p0, Lcom/inmobi/androidsdk/AdRequest;->m:Lcom/inmobi/commons/EthnicityType;

    return-object v0
.end method

.method public getGender()Lcom/inmobi/commons/GenderType;
    .locals 1

    iget-object v0, p0, Lcom/inmobi/androidsdk/AdRequest;->h:Lcom/inmobi/commons/GenderType;

    return-object v0
.end method

.method public getHasChildren()Lcom/inmobi/commons/HasChildren;
    .locals 1

    iget-object v0, p0, Lcom/inmobi/androidsdk/AdRequest;->t:Lcom/inmobi/commons/HasChildren;

    return-object v0
.end method

.method public getIncome()I
    .locals 1

    iget v0, p0, Lcom/inmobi/androidsdk/AdRequest;->k:I

    return v0
.end method

.method public getInterests()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/inmobi/androidsdk/AdRequest;->o:Ljava/lang/String;

    return-object v0
.end method

.method public getKeywords()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/inmobi/androidsdk/AdRequest;->i:Ljava/lang/String;

    return-object v0
.end method

.method public getLanguage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/inmobi/androidsdk/AdRequest;->r:Ljava/lang/String;

    return-object v0
.end method

.method public getLocationWithCityStateCountry()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/inmobi/androidsdk/AdRequest;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getMaritalStatus()Lcom/inmobi/commons/MaritalStatus;
    .locals 1

    iget-object v0, p0, Lcom/inmobi/androidsdk/AdRequest;->q:Lcom/inmobi/commons/MaritalStatus;

    return-object v0
.end method

.method public getPostalCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/inmobi/androidsdk/AdRequest;->e:Ljava/lang/String;

    return-object v0
.end method

.method public getRequestParams()Ljava/util/Map;
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

    iget-object v0, p0, Lcom/inmobi/androidsdk/AdRequest;->p:Ljava/util/Map;

    return-object v0
.end method

.method public getSearchString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/inmobi/androidsdk/AdRequest;->j:Ljava/lang/String;

    return-object v0
.end method

.method public getSexualOrientation()Lcom/inmobi/commons/SexualOrientation;
    .locals 1

    iget-object v0, p0, Lcom/inmobi/androidsdk/AdRequest;->s:Lcom/inmobi/commons/SexualOrientation;

    return-object v0
.end method

.method public isLocationInquiryAllowed()Z
    .locals 1

    iget-boolean v0, p0, Lcom/inmobi/androidsdk/AdRequest;->a:Z

    return v0
.end method

.method public isTestMode()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-boolean v0, p0, Lcom/inmobi/androidsdk/AdRequest;->d:Z

    return v0
.end method

.method public setAge(I)V
    .locals 0

    if-ltz p1, :cond_0

    iput p1, p0, Lcom/inmobi/androidsdk/AdRequest;->n:I

    :cond_0
    return-void
.end method

.method public setAreaCode(Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/inmobi/androidsdk/AdRequest;->f:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public setCurrentLocation(Landroid/location/Location;)V
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/inmobi/androidsdk/AdRequest;->b:Landroid/location/Location;

    :cond_0
    return-void
.end method

.method public setDateOfBirth(Ljava/util/Calendar;)V
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/inmobi/androidsdk/AdRequest;->g:Ljava/util/Calendar;

    :cond_0
    return-void
.end method

.method public setDateOfBirth(Ljava/util/Date;)V
    .locals 1

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/inmobi/androidsdk/AdRequest;->g:Ljava/util/Calendar;

    if-nez v0, :cond_1

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/inmobi/androidsdk/AdRequest;->g:Ljava/util/Calendar;

    :cond_1
    iget-object v0, p0, Lcom/inmobi/androidsdk/AdRequest;->g:Ljava/util/Calendar;

    invoke-virtual {v0, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    goto :goto_0
.end method

.method public setEducation(Lcom/inmobi/commons/EducationType;)V
    .locals 0

    iput-object p1, p0, Lcom/inmobi/androidsdk/AdRequest;->l:Lcom/inmobi/commons/EducationType;

    return-void
.end method

.method public setEthnicity(Lcom/inmobi/commons/EthnicityType;)V
    .locals 0

    iput-object p1, p0, Lcom/inmobi/androidsdk/AdRequest;->m:Lcom/inmobi/commons/EthnicityType;

    return-void
.end method

.method public setGender(Lcom/inmobi/commons/GenderType;)V
    .locals 0

    iput-object p1, p0, Lcom/inmobi/androidsdk/AdRequest;->h:Lcom/inmobi/commons/GenderType;

    return-void
.end method

.method public setHasChildren(Lcom/inmobi/commons/HasChildren;)V
    .locals 0

    iput-object p1, p0, Lcom/inmobi/androidsdk/AdRequest;->t:Lcom/inmobi/commons/HasChildren;

    return-void
.end method

.method public setIncome(I)V
    .locals 0

    iput p1, p0, Lcom/inmobi/androidsdk/AdRequest;->k:I

    return-void
.end method

.method public setInterests(Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/inmobi/androidsdk/AdRequest;->o:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public setKeywords(Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/inmobi/androidsdk/AdRequest;->i:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public setLanguage(Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/inmobi/androidsdk/AdRequest;->r:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public setLocationInquiryAllowed(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/inmobi/androidsdk/AdRequest;->a:Z

    return-void
.end method

.method public setLocationOfCityStateAndCountry(Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/inmobi/androidsdk/AdRequest;->c:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public setLocationWithCityStateCountry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/inmobi/androidsdk/AdRequest;->c:Ljava/lang/String;

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

    iget-object v1, p0, Lcom/inmobi/androidsdk/AdRequest;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/inmobi/androidsdk/AdRequest;->c:Ljava/lang/String;

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

    iget-object v1, p0, Lcom/inmobi/androidsdk/AdRequest;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/inmobi/androidsdk/AdRequest;->c:Ljava/lang/String;

    :cond_2
    return-void
.end method

.method public setMaritalStatus(Lcom/inmobi/commons/MaritalStatus;)V
    .locals 0

    iput-object p1, p0, Lcom/inmobi/androidsdk/AdRequest;->q:Lcom/inmobi/commons/MaritalStatus;

    return-void
.end method

.method public setPostalCode(Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/inmobi/androidsdk/AdRequest;->e:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public setRequestParams(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/inmobi/androidsdk/AdRequest;->p:Ljava/util/Map;

    if-nez v0, :cond_2

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/inmobi/androidsdk/AdRequest;->p:Ljava/util/Map;

    :cond_2
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v2, p0, Lcom/inmobi/androidsdk/AdRequest;->p:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public setSearchString(Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/inmobi/androidsdk/AdRequest;->j:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public setSexualOrientation(Lcom/inmobi/commons/SexualOrientation;)V
    .locals 0

    iput-object p1, p0, Lcom/inmobi/androidsdk/AdRequest;->s:Lcom/inmobi/commons/SexualOrientation;

    return-void
.end method

.method public setTestMode(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iput-boolean p1, p0, Lcom/inmobi/androidsdk/AdRequest;->d:Z

    return-void
.end method
