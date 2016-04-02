.class public final Lcom/millennialmedia/android/MMRequest;
.super Ljava/lang/Object;


# static fields
.field public static final EDUCATION_ASSOCIATE:Ljava/lang/String; = "associate"

.field public static final EDUCATION_BACHELORS:Ljava/lang/String; = "bachelors"

.field public static final EDUCATION_HIGH_SCHOOL:Ljava/lang/String; = "highschool"

.field public static final EDUCATION_IN_COLLEGE:Ljava/lang/String; = "incollege"

.field public static final EDUCATION_MASTERS:Ljava/lang/String; = "masters"

.field public static final EDUCATION_PHD:Ljava/lang/String; = "phd"

.field public static final EDUCATION_PROFESSIONAL:Ljava/lang/String; = "professional"

.field public static final EDUCATION_SOME_COLLEGE:Ljava/lang/String; = "somecollege"

.field public static final ETHNICITY_ASIAN:Ljava/lang/String; = "asian"

.field public static final ETHNICITY_BLACK:Ljava/lang/String; = "black"

.field public static final ETHNICITY_HISPANIC:Ljava/lang/String; = "hispanic"

.field public static final ETHNICITY_INDIAN:Ljava/lang/String; = "indian"

.field public static final ETHNICITY_MIDDLE_EASTERN:Ljava/lang/String; = "middleeastern"

.field public static final ETHNICITY_NATIVE_AMERICAN:Ljava/lang/String; = "nativeamerican"

.field public static final ETHNICITY_OTHER:Ljava/lang/String; = "other"

.field public static final ETHNICITY_PACIFIC_ISLANDER:Ljava/lang/String; = "pacificislander"

.field public static final ETHNICITY_WHITE:Ljava/lang/String; = "white"

.field public static final GENDER_FEMALE:Ljava/lang/String; = "female"

.field public static final GENDER_MALE:Ljava/lang/String; = "male"

.field public static final KEY_AGE:Ljava/lang/String; = "age"

.field public static final KEY_CHILDREN:Ljava/lang/String; = "children"

.field public static final KEY_EDUCATION:Ljava/lang/String; = "education"

.field public static final KEY_ETHNICITY:Ljava/lang/String; = "ethnicity"

.field public static final KEY_GENDER:Ljava/lang/String; = "gender"

.field public static final KEY_HEIGHT:Ljava/lang/String; = "hsht"

.field public static final KEY_INCOME:Ljava/lang/String; = "income"

.field public static final KEY_KEYWORDS:Ljava/lang/String; = "keywords"

.field public static final KEY_MARITAL_STATUS:Ljava/lang/String; = "marital"

.field public static final KEY_ORIENTATION:Ljava/lang/String; = "orientation"

.field public static final KEY_POLITICS:Ljava/lang/String; = "politics"

.field public static final KEY_VENDOR:Ljava/lang/String; = "vendor"

.field public static final KEY_WIDTH:Ljava/lang/String; = "hswd"

.field public static final KEY_ZIP_CODE:Ljava/lang/String; = "zip"

.field public static final MARITAL_DIVORCED:Ljava/lang/String; = "divorced"

.field public static final MARITAL_ENGAGED:Ljava/lang/String; = "engaged"

.field public static final MARITAL_MARRIED:Ljava/lang/String; = "married"

.field public static final MARITAL_RELATIONSHIP:Ljava/lang/String; = "relationship"

.field public static final MARITAL_SINGLE:Ljava/lang/String; = "single"

.field public static final ORIENTATION_BISEXUAL:Ljava/lang/String; = "bisexual"

.field public static final ORIENTATION_GAY:Ljava/lang/String; = "gay"

.field public static final ORIENTATION_STRAIGHT:Ljava/lang/String; = "straight"

.field static location:Landroid/location/Location;


# instance fields
.field age:Ljava/lang/String;

.field children:Ljava/lang/String;

.field education:Ljava/lang/String;

.field ethnicity:Ljava/lang/String;

.field gender:Ljava/lang/String;

.field income:Ljava/lang/String;

.field keywords:Ljava/lang/String;

.field marital:Ljava/lang/String;

.field orientation:Ljava/lang/String;

.field politics:Ljava/lang/String;

.field private values:Ljava/util/Map;
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

.field vendor:Ljava/lang/String;

.field zip:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/millennialmedia/android/MMRequest;->age:Ljava/lang/String;

    iput-object v0, p0, Lcom/millennialmedia/android/MMRequest;->children:Ljava/lang/String;

    iput-object v0, p0, Lcom/millennialmedia/android/MMRequest;->education:Ljava/lang/String;

    iput-object v0, p0, Lcom/millennialmedia/android/MMRequest;->ethnicity:Ljava/lang/String;

    iput-object v0, p0, Lcom/millennialmedia/android/MMRequest;->gender:Ljava/lang/String;

    iput-object v0, p0, Lcom/millennialmedia/android/MMRequest;->income:Ljava/lang/String;

    iput-object v0, p0, Lcom/millennialmedia/android/MMRequest;->keywords:Ljava/lang/String;

    iput-object v0, p0, Lcom/millennialmedia/android/MMRequest;->marital:Ljava/lang/String;

    iput-object v0, p0, Lcom/millennialmedia/android/MMRequest;->orientation:Ljava/lang/String;

    iput-object v0, p0, Lcom/millennialmedia/android/MMRequest;->politics:Ljava/lang/String;

    iput-object v0, p0, Lcom/millennialmedia/android/MMRequest;->vendor:Ljava/lang/String;

    iput-object v0, p0, Lcom/millennialmedia/android/MMRequest;->zip:Ljava/lang/String;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/millennialmedia/android/MMRequest;->values:Ljava/util/Map;

    return-void
.end method

.method public static getUserLocation()Landroid/location/Location;
    .locals 1

    sget-object v0, Lcom/millennialmedia/android/MMRequest;->location:Landroid/location/Location;

    return-object v0
.end method

.method static insertLocation(Ljava/util/Map;)V
    .locals 3
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

    sget-object v0, Lcom/millennialmedia/android/MMRequest;->location:Landroid/location/Location;

    if-eqz v0, :cond_4

    const-string v0, "lat"

    sget-object v1, Lcom/millennialmedia/android/MMRequest;->location:Landroid/location/Location;

    invoke-virtual {v1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "long"

    sget-object v1, Lcom/millennialmedia/android/MMRequest;->location:Landroid/location/Location;

    invoke-virtual {v1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/millennialmedia/android/MMRequest;->location:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->hasAccuracy()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "ha"

    sget-object v1, Lcom/millennialmedia/android/MMRequest;->location:Landroid/location/Location;

    invoke-virtual {v1}, Landroid/location/Location;->getAccuracy()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "va"

    sget-object v1, Lcom/millennialmedia/android/MMRequest;->location:Landroid/location/Location;

    invoke-virtual {v1}, Landroid/location/Location;->getAccuracy()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    sget-object v0, Lcom/millennialmedia/android/MMRequest;->location:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->hasSpeed()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "spd"

    sget-object v1, Lcom/millennialmedia/android/MMRequest;->location:Landroid/location/Location;

    invoke-virtual {v1}, Landroid/location/Location;->getSpeed()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    sget-object v0, Lcom/millennialmedia/android/MMRequest;->location:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->hasBearing()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "brg"

    sget-object v1, Lcom/millennialmedia/android/MMRequest;->location:Landroid/location/Location;

    invoke-virtual {v1}, Landroid/location/Location;->getBearing()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    sget-object v0, Lcom/millennialmedia/android/MMRequest;->location:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->hasAltitude()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "alt"

    sget-object v1, Lcom/millennialmedia/android/MMRequest;->location:Landroid/location/Location;

    invoke-virtual {v1}, Landroid/location/Location;->getAltitude()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    const-string v0, "tslr"

    sget-object v1, Lcom/millennialmedia/android/MMRequest;->location:Landroid/location/Location;

    invoke-virtual {v1}, Landroid/location/Location;->getTime()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "loc"

    const-string v1, "true"

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "lsrc"

    sget-object v1, Lcom/millennialmedia/android/MMRequest;->location:Landroid/location/Location;

    invoke-virtual {v1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void

    :cond_4
    const-string v0, "loc"

    const-string v1, "false"

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public static setUserLocation(Landroid/location/Location;)V
    .locals 0

    if-nez p0, :cond_0

    :goto_0
    return-void

    :cond_0
    sput-object p0, Lcom/millennialmedia/android/MMRequest;->location:Landroid/location/Location;

    goto :goto_0
.end method


# virtual methods
.method final getUrlParams(Ljava/util/Map;)V
    .locals 3
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

    iget-object v0, p0, Lcom/millennialmedia/android/MMRequest;->values:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/millennialmedia/android/MMRequest;->age:Ljava/lang/String;

    if-eqz v0, :cond_1

    const-string v0, "age"

    iget-object v1, p0, Lcom/millennialmedia/android/MMRequest;->age:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iget-object v0, p0, Lcom/millennialmedia/android/MMRequest;->children:Ljava/lang/String;

    if-eqz v0, :cond_2

    const-string v0, "children"

    iget-object v1, p0, Lcom/millennialmedia/android/MMRequest;->children:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    iget-object v0, p0, Lcom/millennialmedia/android/MMRequest;->education:Ljava/lang/String;

    if-eqz v0, :cond_3

    const-string v0, "education"

    iget-object v1, p0, Lcom/millennialmedia/android/MMRequest;->education:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    iget-object v0, p0, Lcom/millennialmedia/android/MMRequest;->ethnicity:Ljava/lang/String;

    if-eqz v0, :cond_4

    const-string v0, "ethnicity"

    iget-object v1, p0, Lcom/millennialmedia/android/MMRequest;->ethnicity:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    iget-object v0, p0, Lcom/millennialmedia/android/MMRequest;->gender:Ljava/lang/String;

    if-eqz v0, :cond_5

    const-string v0, "gender"

    iget-object v1, p0, Lcom/millennialmedia/android/MMRequest;->gender:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    iget-object v0, p0, Lcom/millennialmedia/android/MMRequest;->income:Ljava/lang/String;

    if-eqz v0, :cond_6

    const-string v0, "income"

    iget-object v1, p0, Lcom/millennialmedia/android/MMRequest;->income:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    iget-object v0, p0, Lcom/millennialmedia/android/MMRequest;->keywords:Ljava/lang/String;

    if-eqz v0, :cond_7

    const-string v0, "keywords"

    iget-object v1, p0, Lcom/millennialmedia/android/MMRequest;->keywords:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    iget-object v0, p0, Lcom/millennialmedia/android/MMRequest;->marital:Ljava/lang/String;

    if-eqz v0, :cond_8

    const-string v0, "marital"

    iget-object v1, p0, Lcom/millennialmedia/android/MMRequest;->marital:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    iget-object v0, p0, Lcom/millennialmedia/android/MMRequest;->orientation:Ljava/lang/String;

    if-eqz v0, :cond_9

    const-string v0, "orientation"

    iget-object v1, p0, Lcom/millennialmedia/android/MMRequest;->orientation:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9
    iget-object v0, p0, Lcom/millennialmedia/android/MMRequest;->politics:Ljava/lang/String;

    if-eqz v0, :cond_a

    const-string v0, "politics"

    iget-object v1, p0, Lcom/millennialmedia/android/MMRequest;->politics:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_a
    iget-object v0, p0, Lcom/millennialmedia/android/MMRequest;->vendor:Ljava/lang/String;

    if-eqz v0, :cond_b

    const-string v0, "vendor"

    iget-object v1, p0, Lcom/millennialmedia/android/MMRequest;->vendor:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_b
    iget-object v0, p0, Lcom/millennialmedia/android/MMRequest;->zip:Ljava/lang/String;

    if-eqz v0, :cond_c

    const-string v0, "zip"

    iget-object v1, p0, Lcom/millennialmedia/android/MMRequest;->zip:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_c
    return-void
.end method

.method public final put(Ljava/lang/String;Ljava/lang/String;)Lcom/millennialmedia/android/MMRequest;
    .locals 1

    const-string v0, "age"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p2, p0, Lcom/millennialmedia/android/MMRequest;->age:Ljava/lang/String;

    :goto_0
    return-object p0

    :cond_0
    const-string v0, "children"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iput-object p2, p0, Lcom/millennialmedia/android/MMRequest;->children:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const-string v0, "education"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iput-object p2, p0, Lcom/millennialmedia/android/MMRequest;->education:Ljava/lang/String;

    goto :goto_0

    :cond_2
    const-string v0, "ethnicity"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iput-object p2, p0, Lcom/millennialmedia/android/MMRequest;->ethnicity:Ljava/lang/String;

    goto :goto_0

    :cond_3
    const-string v0, "gender"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iput-object p2, p0, Lcom/millennialmedia/android/MMRequest;->gender:Ljava/lang/String;

    goto :goto_0

    :cond_4
    const-string v0, "income"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iput-object p2, p0, Lcom/millennialmedia/android/MMRequest;->income:Ljava/lang/String;

    goto :goto_0

    :cond_5
    const-string v0, "keywords"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    iput-object p2, p0, Lcom/millennialmedia/android/MMRequest;->keywords:Ljava/lang/String;

    goto :goto_0

    :cond_6
    const-string v0, "marital"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    iput-object p2, p0, Lcom/millennialmedia/android/MMRequest;->marital:Ljava/lang/String;

    goto :goto_0

    :cond_7
    const-string v0, "orientation"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    iput-object p2, p0, Lcom/millennialmedia/android/MMRequest;->orientation:Ljava/lang/String;

    goto :goto_0

    :cond_8
    const-string v0, "politics"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    iput-object p2, p0, Lcom/millennialmedia/android/MMRequest;->politics:Ljava/lang/String;

    goto :goto_0

    :cond_9
    const-string v0, "vendor"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    iput-object p2, p0, Lcom/millennialmedia/android/MMRequest;->vendor:Ljava/lang/String;

    goto :goto_0

    :cond_a
    const-string v0, "zip"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    iput-object p2, p0, Lcom/millennialmedia/android/MMRequest;->zip:Ljava/lang/String;

    goto :goto_0

    :cond_b
    if-eqz p2, :cond_c

    iget-object v0, p0, Lcom/millennialmedia/android/MMRequest;->values:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_c
    iget-object v0, p0, Lcom/millennialmedia/android/MMRequest;->values:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0
.end method

.method public final setAge(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/millennialmedia/android/MMRequest;->age:Ljava/lang/String;

    return-void
.end method

.method public final setChildren(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/millennialmedia/android/MMRequest;->children:Ljava/lang/String;

    return-void
.end method

.method public final setEducation(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/millennialmedia/android/MMRequest;->education:Ljava/lang/String;

    return-void
.end method

.method public final setEthnicity(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/millennialmedia/android/MMRequest;->ethnicity:Ljava/lang/String;

    return-void
.end method

.method public final setGender(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/millennialmedia/android/MMRequest;->gender:Ljava/lang/String;

    return-void
.end method

.method public final setIncome(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/millennialmedia/android/MMRequest;->income:Ljava/lang/String;

    return-void
.end method

.method public final setKeywords(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/millennialmedia/android/MMRequest;->keywords:Ljava/lang/String;

    return-void
.end method

.method public final setMarital(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/millennialmedia/android/MMRequest;->marital:Ljava/lang/String;

    return-void
.end method

.method public final setMetaValues(Ljava/util/Map;)V
    .locals 3
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
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Lcom/millennialmedia/android/MMRequest;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/millennialmedia/android/MMRequest;

    goto :goto_0
.end method

.method public final setOrientation(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/millennialmedia/android/MMRequest;->orientation:Ljava/lang/String;

    return-void
.end method

.method public final setPolitics(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/millennialmedia/android/MMRequest;->politics:Ljava/lang/String;

    return-void
.end method

.method public final setVendor(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/millennialmedia/android/MMRequest;->vendor:Ljava/lang/String;

    return-void
.end method

.method public final setZip(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/millennialmedia/android/MMRequest;->zip:Ljava/lang/String;

    return-void
.end method
