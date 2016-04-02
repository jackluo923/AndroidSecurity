.class public final Lcom/google/android/gms/internal/cc;
.super Ljava/lang/Object;


# direct methods
.method public static a(Lcom/google/ads/b;)I
    .locals 2

    sget-object v0, Lcom/google/android/gms/internal/cc$1;->nX:[I

    invoke-virtual {p0}, Lcom/google/ads/b;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x2

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x3

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static b(Lcom/google/android/gms/internal/am;)Lcom/google/ads/d;
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x6

    new-array v1, v1, [Lcom/google/ads/d;

    sget-object v2, Lcom/google/ads/d;->a:Lcom/google/ads/d;

    aput-object v2, v1, v0

    const/4 v2, 0x1

    sget-object v3, Lcom/google/ads/d;->b:Lcom/google/ads/d;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    sget-object v3, Lcom/google/ads/d;->c:Lcom/google/ads/d;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    sget-object v3, Lcom/google/ads/d;->d:Lcom/google/ads/d;

    aput-object v3, v1, v2

    const/4 v2, 0x4

    sget-object v3, Lcom/google/ads/d;->e:Lcom/google/ads/d;

    aput-object v3, v1, v2

    const/4 v2, 0x5

    sget-object v3, Lcom/google/ads/d;->f:Lcom/google/ads/d;

    aput-object v3, v1, v2

    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_1

    aget-object v2, v1, v0

    invoke-virtual {v2}, Lcom/google/ads/d;->a()I

    move-result v2

    iget v3, p0, Lcom/google/android/gms/internal/am;->width:I

    if-ne v2, v3, :cond_0

    aget-object v2, v1, v0

    invoke-virtual {v2}, Lcom/google/ads/d;->b()I

    move-result v2

    iget v3, p0, Lcom/google/android/gms/internal/am;->height:I

    if-ne v2, v3, :cond_0

    aget-object v0, v1, v0

    :goto_1
    return-object v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/google/ads/d;

    iget v1, p0, Lcom/google/android/gms/internal/am;->width:I

    iget v2, p0, Lcom/google/android/gms/internal/am;->height:I

    iget-object v3, p0, Lcom/google/android/gms/internal/am;->mc:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/ads/a;->a(IILjava/lang/String;)Lcom/google/android/gms/ads/AdSize;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/ads/d;-><init>(Lcom/google/android/gms/ads/AdSize;)V

    goto :goto_1
.end method

.method public static e(Lcom/google/android/gms/internal/aj;)Lcom/google/ads/mediation/a;
    .locals 6

    iget-object v0, p0, Lcom/google/android/gms/internal/aj;->lS:Ljava/util/List;

    if-eqz v0, :cond_0

    new-instance v3, Ljava/util/HashSet;

    iget-object v0, p0, Lcom/google/android/gms/internal/aj;->lS:Ljava/util/List;

    invoke-direct {v3, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    :goto_0
    new-instance v0, Lcom/google/ads/mediation/a;

    new-instance v1, Ljava/util/Date;

    iget-wide v4, p0, Lcom/google/android/gms/internal/aj;->lQ:J

    invoke-direct {v1, v4, v5}, Ljava/util/Date;-><init>(J)V

    iget v2, p0, Lcom/google/android/gms/internal/aj;->lR:I

    invoke-static {v2}, Lcom/google/android/gms/internal/cc;->h(I)Lcom/google/ads/c;

    move-result-object v2

    iget-boolean v4, p0, Lcom/google/android/gms/internal/aj;->lT:Z

    iget-object v5, p0, Lcom/google/android/gms/internal/aj;->lY:Landroid/location/Location;

    invoke-direct/range {v0 .. v5}, Lcom/google/ads/mediation/a;-><init>(Ljava/util/Date;Lcom/google/ads/c;Ljava/util/Set;ZLandroid/location/Location;)V

    return-object v0

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static h(I)Lcom/google/ads/c;
    .locals 1

    packed-switch p0, :pswitch_data_0

    sget-object v0, Lcom/google/ads/c;->a:Lcom/google/ads/c;

    :goto_0
    return-object v0

    :pswitch_0
    sget-object v0, Lcom/google/ads/c;->c:Lcom/google/ads/c;

    goto :goto_0

    :pswitch_1
    sget-object v0, Lcom/google/ads/c;->b:Lcom/google/ads/c;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
