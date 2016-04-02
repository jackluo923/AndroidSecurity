.class public final Lcom/google/analytics/containertag/proto/Debug$DebugEvents;
.super Lcom/google/b/a/a/d;


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/analytics/containertag/proto/Debug$DebugEvents;


# instance fields
.field public event:[Lcom/google/analytics/containertag/proto/Debug$EventInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/analytics/containertag/proto/Debug$DebugEvents;

    sput-object v0, Lcom/google/analytics/containertag/proto/Debug$DebugEvents;->EMPTY_ARRAY:[Lcom/google/analytics/containertag/proto/Debug$DebugEvents;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/b/a/a/d;-><init>()V

    sget-object v0, Lcom/google/analytics/containertag/proto/Debug$EventInfo;->EMPTY_ARRAY:[Lcom/google/analytics/containertag/proto/Debug$EventInfo;

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Debug$DebugEvents;->event:[Lcom/google/analytics/containertag/proto/Debug$EventInfo;

    return-void
.end method

.method public static parseFrom(Lcom/google/b/a/a/a;)Lcom/google/analytics/containertag/proto/Debug$DebugEvents;
    .locals 1

    new-instance v0, Lcom/google/analytics/containertag/proto/Debug$DebugEvents;

    invoke-direct {v0}, Lcom/google/analytics/containertag/proto/Debug$DebugEvents;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/analytics/containertag/proto/Debug$DebugEvents;->mergeFrom(Lcom/google/b/a/a/a;)Lcom/google/analytics/containertag/proto/Debug$DebugEvents;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/analytics/containertag/proto/Debug$DebugEvents;
    .locals 1

    new-instance v0, Lcom/google/analytics/containertag/proto/Debug$DebugEvents;

    invoke-direct {v0}, Lcom/google/analytics/containertag/proto/Debug$DebugEvents;-><init>()V

    invoke-static {v0, p0}, Lcom/google/b/a/a/h;->mergeFrom(Lcom/google/b/a/a/h;[B)Lcom/google/b/a/a/h;

    move-result-object v0

    check-cast v0, Lcom/google/analytics/containertag/proto/Debug$DebugEvents;

    return-object v0
.end method


# virtual methods
.method public final clear()Lcom/google/analytics/containertag/proto/Debug$DebugEvents;
    .locals 1

    sget-object v0, Lcom/google/analytics/containertag/proto/Debug$EventInfo;->EMPTY_ARRAY:[Lcom/google/analytics/containertag/proto/Debug$EventInfo;

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Debug$DebugEvents;->event:[Lcom/google/analytics/containertag/proto/Debug$EventInfo;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Debug$DebugEvents;->unknownFieldData:Ljava/util/List;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/analytics/containertag/proto/Debug$DebugEvents;->cachedSize:I

    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p1, p0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v2, p1, Lcom/google/analytics/containertag/proto/Debug$DebugEvents;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    check-cast p1, Lcom/google/analytics/containertag/proto/Debug$DebugEvents;

    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Debug$DebugEvents;->event:[Lcom/google/analytics/containertag/proto/Debug$EventInfo;

    iget-object v3, p1, Lcom/google/analytics/containertag/proto/Debug$DebugEvents;->event:[Lcom/google/analytics/containertag/proto/Debug$EventInfo;

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Debug$DebugEvents;->unknownFieldData:Ljava/util/List;

    if-nez v2, :cond_4

    iget-object v2, p1, Lcom/google/analytics/containertag/proto/Debug$DebugEvents;->unknownFieldData:Ljava/util/List;

    if-eqz v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Debug$DebugEvents;->unknownFieldData:Ljava/util/List;

    iget-object v3, p1, Lcom/google/analytics/containertag/proto/Debug$DebugEvents;->unknownFieldData:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_0
.end method

.method public final getSerializedSize()I
    .locals 6

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Debug$DebugEvents;->event:[Lcom/google/analytics/containertag/proto/Debug$EventInfo;

    if-eqz v1, :cond_0

    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Debug$DebugEvents;->event:[Lcom/google/analytics/containertag/proto/Debug$EventInfo;

    array-length v4, v3

    move v1, v0

    :goto_0
    if-ge v1, v4, :cond_0

    aget-object v2, v3, v1

    const/4 v5, 0x1

    invoke-static {v5, v2}, Lcom/google/b/a/a/b;->b(ILcom/google/b/a/a/h;)I

    move-result v2

    add-int/2addr v2, v0

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move v0, v2

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Debug$DebugEvents;->unknownFieldData:Ljava/util/List;

    invoke-static {v1}, Lcom/google/b/a/a/k;->a(Ljava/util/List;)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/analytics/containertag/proto/Debug$DebugEvents;->cachedSize:I

    return v0
.end method

.method public final hashCode()I
    .locals 4

    const/4 v1, 0x0

    const/16 v0, 0x11

    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Debug$DebugEvents;->event:[Lcom/google/analytics/containertag/proto/Debug$EventInfo;

    if-nez v2, :cond_1

    const/16 v2, 0x20f

    :cond_0
    mul-int/lit8 v0, v2, 0x1f

    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Debug$DebugEvents;->unknownFieldData:Ljava/util/List;

    if-nez v2, :cond_3

    :goto_0
    add-int/2addr v0, v1

    return v0

    :cond_1
    move v2, v0

    move v0, v1

    :goto_1
    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Debug$DebugEvents;->event:[Lcom/google/analytics/containertag/proto/Debug$EventInfo;

    array-length v3, v3

    if-ge v0, v3, :cond_0

    mul-int/lit8 v3, v2, 0x1f

    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Debug$DebugEvents;->event:[Lcom/google/analytics/containertag/proto/Debug$EventInfo;

    aget-object v2, v2, v0

    if-nez v2, :cond_2

    move v2, v1

    :goto_2
    add-int/2addr v2, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Debug$DebugEvents;->event:[Lcom/google/analytics/containertag/proto/Debug$EventInfo;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/google/analytics/containertag/proto/Debug$EventInfo;->hashCode()I

    move-result v2

    goto :goto_2

    :cond_3
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Debug$DebugEvents;->unknownFieldData:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    goto :goto_0
.end method

.method public final mergeFrom(Lcom/google/b/a/a/a;)Lcom/google/analytics/containertag/proto/Debug$DebugEvents;
    .locals 4

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/b/a/a/a;->a()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Debug$DebugEvents;->unknownFieldData:Ljava/util/List;

    if-nez v2, :cond_1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/google/analytics/containertag/proto/Debug$DebugEvents;->unknownFieldData:Ljava/util/List;

    :cond_1
    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Debug$DebugEvents;->unknownFieldData:Ljava/util/List;

    invoke-static {v2, p1, v0}, Lcom/google/b/a/a/k;->a(Ljava/util/List;Lcom/google/b/a/a/a;I)Z

    move-result v0

    if-nez v0, :cond_0

    :sswitch_0
    return-object p0

    :sswitch_1
    const/16 v0, 0xa

    invoke-static {p1, v0}, Lcom/google/b/a/a/k;->a(Lcom/google/b/a/a/a;I)I

    move-result v2

    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Debug$DebugEvents;->event:[Lcom/google/analytics/containertag/proto/Debug$EventInfo;

    if-nez v0, :cond_3

    move v0, v1

    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/google/analytics/containertag/proto/Debug$EventInfo;

    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Debug$DebugEvents;->event:[Lcom/google/analytics/containertag/proto/Debug$EventInfo;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Debug$DebugEvents;->event:[Lcom/google/analytics/containertag/proto/Debug$EventInfo;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_2
    iput-object v2, p0, Lcom/google/analytics/containertag/proto/Debug$DebugEvents;->event:[Lcom/google/analytics/containertag/proto/Debug$EventInfo;

    :goto_2
    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Debug$DebugEvents;->event:[Lcom/google/analytics/containertag/proto/Debug$EventInfo;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_4

    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Debug$DebugEvents;->event:[Lcom/google/analytics/containertag/proto/Debug$EventInfo;

    new-instance v3, Lcom/google/analytics/containertag/proto/Debug$EventInfo;

    invoke-direct {v3}, Lcom/google/analytics/containertag/proto/Debug$EventInfo;-><init>()V

    aput-object v3, v2, v0

    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Debug$DebugEvents;->event:[Lcom/google/analytics/containertag/proto/Debug$EventInfo;

    aget-object v2, v2, v0

    invoke-virtual {p1, v2}, Lcom/google/b/a/a/a;->a(Lcom/google/b/a/a/h;)V

    invoke-virtual {p1}, Lcom/google/b/a/a/a;->a()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Debug$DebugEvents;->event:[Lcom/google/analytics/containertag/proto/Debug$EventInfo;

    array-length v0, v0

    goto :goto_1

    :cond_4
    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Debug$DebugEvents;->event:[Lcom/google/analytics/containertag/proto/Debug$EventInfo;

    new-instance v3, Lcom/google/analytics/containertag/proto/Debug$EventInfo;

    invoke-direct {v3}, Lcom/google/analytics/containertag/proto/Debug$EventInfo;-><init>()V

    aput-object v3, v2, v0

    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Debug$DebugEvents;->event:[Lcom/google/analytics/containertag/proto/Debug$EventInfo;

    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/b/a/a/a;->a(Lcom/google/b/a/a/h;)V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
    .end sparse-switch
.end method

.method public final bridge synthetic mergeFrom(Lcom/google/b/a/a/a;)Lcom/google/b/a/a/h;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/analytics/containertag/proto/Debug$DebugEvents;->mergeFrom(Lcom/google/b/a/a/a;)Lcom/google/analytics/containertag/proto/Debug$DebugEvents;

    move-result-object v0

    return-object v0
.end method

.method public final writeTo(Lcom/google/b/a/a/b;)V
    .locals 5

    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Debug$DebugEvents;->event:[Lcom/google/analytics/containertag/proto/Debug$EventInfo;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Debug$DebugEvents;->event:[Lcom/google/analytics/containertag/proto/Debug$EventInfo;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    const/4 v4, 0x1

    invoke-virtual {p1, v4, v3}, Lcom/google/b/a/a/b;->a(ILcom/google/b/a/a/h;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Debug$DebugEvents;->unknownFieldData:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/google/b/a/a/k;->a(Ljava/util/List;Lcom/google/b/a/a/b;)V

    return-void
.end method
