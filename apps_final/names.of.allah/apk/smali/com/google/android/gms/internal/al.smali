.class public Lcom/google/android/gms/internal/al;
.super Ljava/lang/Object;


# static fields
.field public static final mb:Lcom/google/android/gms/internal/al;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/al;

    invoke-direct {v0}, Lcom/google/android/gms/internal/al;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/al;->mb:Lcom/google/android/gms/internal/al;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static aA()Lcom/google/android/gms/internal/al;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/al;->mb:Lcom/google/android/gms/internal/al;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/Context;Lcom/google/android/gms/internal/au;)Lcom/google/android/gms/internal/aj;
    .locals 17

    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gms/internal/au;->getBirthday()Ljava/util/Date;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    :goto_0
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gms/internal/au;->getContentUrl()Ljava/lang/String;

    move-result-object v15

    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gms/internal/au;->getGender()I

    move-result v7

    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gms/internal/au;->getKeywords()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v8

    :goto_1
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/au;->isTestDevice(Landroid/content/Context;)Z

    move-result v9

    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gms/internal/au;->aF()I

    move-result v10

    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gms/internal/au;->getLocation()Landroid/location/Location;

    move-result-object v14

    const-class v2, Lcom/google/ads/mediation/admob/AdMobAdapter;

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/au;->getNetworkExtrasBundle(Ljava/lang/Class;)Landroid/os/Bundle;

    move-result-object v6

    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gms/internal/au;->getManualImpressionsEnabled()Z

    move-result v11

    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gms/internal/au;->getPublisherProvidedId()Ljava/lang/String;

    move-result-object v12

    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gms/internal/au;->aC()Lcom/google/android/gms/ads/search/SearchAdRequest;

    move-result-object v2

    if-eqz v2, :cond_2

    new-instance v13, Lcom/google/android/gms/internal/ax;

    invoke-direct {v13, v2}, Lcom/google/android/gms/internal/ax;-><init>(Lcom/google/android/gms/ads/search/SearchAdRequest;)V

    :goto_2
    new-instance v2, Lcom/google/android/gms/internal/aj;

    const/4 v3, 0x4

    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gms/internal/au;->aE()Landroid/os/Bundle;

    move-result-object v16

    invoke-direct/range {v2 .. v16}, Lcom/google/android/gms/internal/aj;-><init>(IJLandroid/os/Bundle;ILjava/util/List;ZIZLjava/lang/String;Lcom/google/android/gms/internal/ax;Landroid/location/Location;Ljava/lang/String;Landroid/os/Bundle;)V

    return-object v2

    :cond_0
    const-wide/16 v4, -0x1

    goto :goto_0

    :cond_1
    const/4 v8, 0x0

    goto :goto_1

    :cond_2
    const/4 v13, 0x0

    goto :goto_2
.end method
