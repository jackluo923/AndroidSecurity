.class public final Lcom/google/ads/mediation/a;
.super Ljava/lang/Object;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final a:Ljava/util/Date;

.field private final b:Lcom/google/ads/c;

.field private final c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Z

.field private final e:Landroid/location/Location;


# direct methods
.method public constructor <init>(Ljava/util/Date;Lcom/google/ads/c;Ljava/util/Set;ZLandroid/location/Location;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Date;",
            "Lcom/google/ads/c;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;Z",
            "Landroid/location/Location;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/ads/mediation/a;->a:Ljava/util/Date;

    iput-object p2, p0, Lcom/google/ads/mediation/a;->b:Lcom/google/ads/c;

    iput-object p3, p0, Lcom/google/ads/mediation/a;->c:Ljava/util/Set;

    iput-boolean p4, p0, Lcom/google/ads/mediation/a;->d:Z

    iput-object p5, p0, Lcom/google/ads/mediation/a;->e:Landroid/location/Location;

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/Date;
    .locals 1

    iget-object v0, p0, Lcom/google/ads/mediation/a;->a:Ljava/util/Date;

    return-object v0
.end method

.method public final b()Lcom/google/ads/c;
    .locals 1

    iget-object v0, p0, Lcom/google/ads/mediation/a;->b:Lcom/google/ads/c;

    return-object v0
.end method

.method public final c()Ljava/util/Set;
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

    iget-object v0, p0, Lcom/google/ads/mediation/a;->c:Ljava/util/Set;

    return-object v0
.end method

.method public final d()Landroid/location/Location;
    .locals 1

    iget-object v0, p0, Lcom/google/ads/mediation/a;->e:Landroid/location/Location;

    return-object v0
.end method
