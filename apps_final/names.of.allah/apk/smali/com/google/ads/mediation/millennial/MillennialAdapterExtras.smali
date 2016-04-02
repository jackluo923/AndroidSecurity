.class public final Lcom/google/ads/mediation/millennial/MillennialAdapterExtras;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/ads/mediation/j;


# instance fields
.field private children:Ljava/lang/Boolean;

.field private education:Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$Education;

.field private ethnicity:Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$Ethnicity;

.field private income:Ljava/lang/Integer;

.field private interstitialTime:Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$InterstitialTime;

.field private maritalStatus:Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$MaritalStatus;

.field private orientation:Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$Orientation;

.field private politics:Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$Politics;

.field private postalCode:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$InterstitialTime;->UNKNOWN:Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$InterstitialTime;

    iput-object v0, p0, Lcom/google/ads/mediation/millennial/MillennialAdapterExtras;->interstitialTime:Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$InterstitialTime;

    iput-object v1, p0, Lcom/google/ads/mediation/millennial/MillennialAdapterExtras;->income:Ljava/lang/Integer;

    iput-object v1, p0, Lcom/google/ads/mediation/millennial/MillennialAdapterExtras;->maritalStatus:Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$MaritalStatus;

    iput-object v1, p0, Lcom/google/ads/mediation/millennial/MillennialAdapterExtras;->ethnicity:Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$Ethnicity;

    iput-object v1, p0, Lcom/google/ads/mediation/millennial/MillennialAdapterExtras;->orientation:Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$Orientation;

    iput-object v1, p0, Lcom/google/ads/mediation/millennial/MillennialAdapterExtras;->politics:Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$Politics;

    iput-object v1, p0, Lcom/google/ads/mediation/millennial/MillennialAdapterExtras;->education:Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$Education;

    iput-object v1, p0, Lcom/google/ads/mediation/millennial/MillennialAdapterExtras;->children:Ljava/lang/Boolean;

    iput-object v1, p0, Lcom/google/ads/mediation/millennial/MillennialAdapterExtras;->postalCode:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final clearChildren()Lcom/google/ads/mediation/millennial/MillennialAdapterExtras;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/ads/mediation/millennial/MillennialAdapterExtras;->setChildren(Ljava/lang/Boolean;)Lcom/google/ads/mediation/millennial/MillennialAdapterExtras;

    move-result-object v0

    return-object v0
.end method

.method public final clearEducation()Lcom/google/ads/mediation/millennial/MillennialAdapterExtras;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/ads/mediation/millennial/MillennialAdapterExtras;->setEducation(Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$Education;)Lcom/google/ads/mediation/millennial/MillennialAdapterExtras;

    move-result-object v0

    return-object v0
.end method

.method public final clearEthnicity()Lcom/google/ads/mediation/millennial/MillennialAdapterExtras;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/ads/mediation/millennial/MillennialAdapterExtras;->setEthnicity(Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$Ethnicity;)Lcom/google/ads/mediation/millennial/MillennialAdapterExtras;

    move-result-object v0

    return-object v0
.end method

.method public final clearIncomeInUsDollars()Lcom/google/ads/mediation/millennial/MillennialAdapterExtras;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/ads/mediation/millennial/MillennialAdapterExtras;->setIncomeInUsDollars(Ljava/lang/Integer;)Lcom/google/ads/mediation/millennial/MillennialAdapterExtras;

    move-result-object v0

    return-object v0
.end method

.method public final clearInterstitialTime()Lcom/google/ads/mediation/millennial/MillennialAdapterExtras;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/ads/mediation/millennial/MillennialAdapterExtras;->setInterstitialTime(Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$InterstitialTime;)Lcom/google/ads/mediation/millennial/MillennialAdapterExtras;

    move-result-object v0

    return-object v0
.end method

.method public final clearMaritalStatus()Lcom/google/ads/mediation/millennial/MillennialAdapterExtras;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/ads/mediation/millennial/MillennialAdapterExtras;->setMaritalStatus(Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$MaritalStatus;)Lcom/google/ads/mediation/millennial/MillennialAdapterExtras;

    move-result-object v0

    return-object v0
.end method

.method public final clearOrientation()Lcom/google/ads/mediation/millennial/MillennialAdapterExtras;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/ads/mediation/millennial/MillennialAdapterExtras;->setOrientation(Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$Orientation;)Lcom/google/ads/mediation/millennial/MillennialAdapterExtras;

    move-result-object v0

    return-object v0
.end method

.method public final clearPolitics()Lcom/google/ads/mediation/millennial/MillennialAdapterExtras;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/ads/mediation/millennial/MillennialAdapterExtras;->setPolitics(Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$Politics;)Lcom/google/ads/mediation/millennial/MillennialAdapterExtras;

    move-result-object v0

    return-object v0
.end method

.method public final clearPostalCode()Lcom/google/ads/mediation/millennial/MillennialAdapterExtras;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/ads/mediation/millennial/MillennialAdapterExtras;->setPostalCode(Ljava/lang/String;)Lcom/google/ads/mediation/millennial/MillennialAdapterExtras;

    move-result-object v0

    return-object v0
.end method

.method public final getChildren()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/google/ads/mediation/millennial/MillennialAdapterExtras;->children:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final getEducation()Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$Education;
    .locals 1

    iget-object v0, p0, Lcom/google/ads/mediation/millennial/MillennialAdapterExtras;->education:Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$Education;

    return-object v0
.end method

.method public final getEthnicity()Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$Ethnicity;
    .locals 1

    iget-object v0, p0, Lcom/google/ads/mediation/millennial/MillennialAdapterExtras;->ethnicity:Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$Ethnicity;

    return-object v0
.end method

.method public final getIncomeInUsDollars()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/google/ads/mediation/millennial/MillennialAdapterExtras;->income:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getInterstitialTime()Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$InterstitialTime;
    .locals 1

    iget-object v0, p0, Lcom/google/ads/mediation/millennial/MillennialAdapterExtras;->interstitialTime:Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$InterstitialTime;

    return-object v0
.end method

.method public final getMaritalStatus()Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$MaritalStatus;
    .locals 1

    iget-object v0, p0, Lcom/google/ads/mediation/millennial/MillennialAdapterExtras;->maritalStatus:Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$MaritalStatus;

    return-object v0
.end method

.method public final getOrientation()Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$Orientation;
    .locals 1

    iget-object v0, p0, Lcom/google/ads/mediation/millennial/MillennialAdapterExtras;->orientation:Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$Orientation;

    return-object v0
.end method

.method public final getPolitics()Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$Politics;
    .locals 1

    iget-object v0, p0, Lcom/google/ads/mediation/millennial/MillennialAdapterExtras;->politics:Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$Politics;

    return-object v0
.end method

.method public final getPostalCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/ads/mediation/millennial/MillennialAdapterExtras;->postalCode:Ljava/lang/String;

    return-object v0
.end method

.method public final setChildren(Ljava/lang/Boolean;)Lcom/google/ads/mediation/millennial/MillennialAdapterExtras;
    .locals 0

    iput-object p1, p0, Lcom/google/ads/mediation/millennial/MillennialAdapterExtras;->children:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final setEducation(Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$Education;)Lcom/google/ads/mediation/millennial/MillennialAdapterExtras;
    .locals 0

    iput-object p1, p0, Lcom/google/ads/mediation/millennial/MillennialAdapterExtras;->education:Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$Education;

    return-object p0
.end method

.method public final setEthnicity(Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$Ethnicity;)Lcom/google/ads/mediation/millennial/MillennialAdapterExtras;
    .locals 0

    iput-object p1, p0, Lcom/google/ads/mediation/millennial/MillennialAdapterExtras;->ethnicity:Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$Ethnicity;

    return-object p0
.end method

.method public final setIncomeInUsDollars(Ljava/lang/Integer;)Lcom/google/ads/mediation/millennial/MillennialAdapterExtras;
    .locals 0

    iput-object p1, p0, Lcom/google/ads/mediation/millennial/MillennialAdapterExtras;->income:Ljava/lang/Integer;

    return-object p0
.end method

.method public final setInterstitialTime(Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$InterstitialTime;)Lcom/google/ads/mediation/millennial/MillennialAdapterExtras;
    .locals 0

    iput-object p1, p0, Lcom/google/ads/mediation/millennial/MillennialAdapterExtras;->interstitialTime:Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$InterstitialTime;

    return-object p0
.end method

.method public final setMaritalStatus(Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$MaritalStatus;)Lcom/google/ads/mediation/millennial/MillennialAdapterExtras;
    .locals 0

    iput-object p1, p0, Lcom/google/ads/mediation/millennial/MillennialAdapterExtras;->maritalStatus:Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$MaritalStatus;

    return-object p0
.end method

.method public final setOrientation(Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$Orientation;)Lcom/google/ads/mediation/millennial/MillennialAdapterExtras;
    .locals 0

    iput-object p1, p0, Lcom/google/ads/mediation/millennial/MillennialAdapterExtras;->orientation:Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$Orientation;

    return-object p0
.end method

.method public final setPolitics(Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$Politics;)Lcom/google/ads/mediation/millennial/MillennialAdapterExtras;
    .locals 0

    iput-object p1, p0, Lcom/google/ads/mediation/millennial/MillennialAdapterExtras;->politics:Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$Politics;

    return-object p0
.end method

.method public final setPostalCode(Ljava/lang/String;)Lcom/google/ads/mediation/millennial/MillennialAdapterExtras;
    .locals 0

    iput-object p1, p0, Lcom/google/ads/mediation/millennial/MillennialAdapterExtras;->postalCode:Ljava/lang/String;

    return-object p0
.end method
