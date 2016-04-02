.class public final Lcom/mobfox/adapter/MobFoxExtras;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/ads/mediation/j;


# instance fields
.field private animation:Z

.field private location:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/mobfox/adapter/MobFoxExtras;->animation:Z

    iput-boolean v0, p0, Lcom/mobfox/adapter/MobFoxExtras;->location:Z

    return-void
.end method


# virtual methods
.method public final getAnimation()Z
    .locals 1

    iget-boolean v0, p0, Lcom/mobfox/adapter/MobFoxExtras;->animation:Z

    return v0
.end method

.method public final getLocation()Z
    .locals 1

    iget-boolean v0, p0, Lcom/mobfox/adapter/MobFoxExtras;->location:Z

    return v0
.end method

.method public final setAnimation(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/mobfox/adapter/MobFoxExtras;->animation:Z

    return-void
.end method

.method public final setLocation(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/mobfox/adapter/MobFoxExtras;->location:Z

    return-void
.end method
