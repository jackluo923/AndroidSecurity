.class public final Lcom/google/analytics/containertag/proto/Serving$Resource;
.super Lcom/google/b/a/a/d;


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/analytics/containertag/proto/Serving$Resource;

.field private static final TEMPLATE_VERSION_SET_DEFAULT:Ljava/lang/String; = "0"


# instance fields
.field public key:[Ljava/lang/String;

.field public liveJsCacheOption:Lcom/google/analytics/containertag/proto/Serving$CacheOption;

.field public macro:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

.field public malwareScanAuthCode:Ljava/lang/String;

.field public oBSOLETEEnableAutoEventTracking:Z

.field public predicate:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

.field public previewAuthCode:Ljava/lang/String;

.field public property:[Lcom/google/analytics/containertag/proto/Serving$Property;

.field public reportingSampleRate:F

.field public resourceFormatVersion:I

.field public rule:[Lcom/google/analytics/containertag/proto/Serving$Rule;

.field public supplemental:[Ljava/lang/String;

.field public tag:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

.field public templateVersionSet:Ljava/lang/String;

.field public usageContext:[Ljava/lang/String;

.field public value:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

.field public version:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/analytics/containertag/proto/Serving$Resource;

    sput-object v0, Lcom/google/analytics/containertag/proto/Serving$Resource;->EMPTY_ARRAY:[Lcom/google/analytics/containertag/proto/Serving$Resource;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/google/b/a/a/d;-><init>()V

    sget-object v0, Lcom/google/b/a/a/k;->j:[Ljava/lang/String;

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->supplemental:[Ljava/lang/String;

    sget-object v0, Lcom/google/b/a/a/k;->j:[Ljava/lang/String;

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->key:[Ljava/lang/String;

    sget-object v0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->EMPTY_ARRAY:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->value:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    sget-object v0, Lcom/google/analytics/containertag/proto/Serving$Property;->EMPTY_ARRAY:[Lcom/google/analytics/containertag/proto/Serving$Property;

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->property:[Lcom/google/analytics/containertag/proto/Serving$Property;

    sget-object v0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->EMPTY_ARRAY:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->macro:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    sget-object v0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->EMPTY_ARRAY:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->tag:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    sget-object v0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->EMPTY_ARRAY:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->predicate:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    sget-object v0, Lcom/google/analytics/containertag/proto/Serving$Rule;->EMPTY_ARRAY:[Lcom/google/analytics/containertag/proto/Serving$Rule;

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->rule:[Lcom/google/analytics/containertag/proto/Serving$Rule;

    const-string v0, ""

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->previewAuthCode:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->malwareScanAuthCode:Ljava/lang/String;

    const-string v0, "0"

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->templateVersionSet:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->version:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->liveJsCacheOption:Lcom/google/analytics/containertag/proto/Serving$CacheOption;

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->reportingSampleRate:F

    iput-boolean v1, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->oBSOLETEEnableAutoEventTracking:Z

    sget-object v0, Lcom/google/b/a/a/k;->j:[Ljava/lang/String;

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->usageContext:[Ljava/lang/String;

    iput v1, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->resourceFormatVersion:I

    return-void
.end method

.method public static parseFrom(Lcom/google/b/a/a/a;)Lcom/google/analytics/containertag/proto/Serving$Resource;
    .locals 1

    new-instance v0, Lcom/google/analytics/containertag/proto/Serving$Resource;

    invoke-direct {v0}, Lcom/google/analytics/containertag/proto/Serving$Resource;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/analytics/containertag/proto/Serving$Resource;->mergeFrom(Lcom/google/b/a/a/a;)Lcom/google/analytics/containertag/proto/Serving$Resource;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/analytics/containertag/proto/Serving$Resource;
    .locals 1

    new-instance v0, Lcom/google/analytics/containertag/proto/Serving$Resource;

    invoke-direct {v0}, Lcom/google/analytics/containertag/proto/Serving$Resource;-><init>()V

    invoke-static {v0, p0}, Lcom/google/b/a/a/h;->mergeFrom(Lcom/google/b/a/a/h;[B)Lcom/google/b/a/a/h;

    move-result-object v0

    check-cast v0, Lcom/google/analytics/containertag/proto/Serving$Resource;

    return-object v0
.end method


# virtual methods
.method public final clear()Lcom/google/analytics/containertag/proto/Serving$Resource;
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    sget-object v0, Lcom/google/b/a/a/k;->j:[Ljava/lang/String;

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->supplemental:[Ljava/lang/String;

    sget-object v0, Lcom/google/b/a/a/k;->j:[Ljava/lang/String;

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->key:[Ljava/lang/String;

    sget-object v0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->EMPTY_ARRAY:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->value:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    sget-object v0, Lcom/google/analytics/containertag/proto/Serving$Property;->EMPTY_ARRAY:[Lcom/google/analytics/containertag/proto/Serving$Property;

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->property:[Lcom/google/analytics/containertag/proto/Serving$Property;

    sget-object v0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->EMPTY_ARRAY:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->macro:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    sget-object v0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->EMPTY_ARRAY:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->tag:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    sget-object v0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->EMPTY_ARRAY:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->predicate:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    sget-object v0, Lcom/google/analytics/containertag/proto/Serving$Rule;->EMPTY_ARRAY:[Lcom/google/analytics/containertag/proto/Serving$Rule;

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->rule:[Lcom/google/analytics/containertag/proto/Serving$Rule;

    const-string v0, ""

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->previewAuthCode:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->malwareScanAuthCode:Ljava/lang/String;

    const-string v0, "0"

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->templateVersionSet:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->version:Ljava/lang/String;

    iput-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->liveJsCacheOption:Lcom/google/analytics/containertag/proto/Serving$CacheOption;

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->reportingSampleRate:F

    iput-boolean v1, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->oBSOLETEEnableAutoEventTracking:Z

    sget-object v0, Lcom/google/b/a/a/k;->j:[Ljava/lang/String;

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->usageContext:[Ljava/lang/String;

    iput v1, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->resourceFormatVersion:I

    iput-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->unknownFieldData:Ljava/util/List;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->cachedSize:I

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
    instance-of v2, p1, Lcom/google/analytics/containertag/proto/Serving$Resource;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    check-cast p1, Lcom/google/analytics/containertag/proto/Serving$Resource;

    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->supplemental:[Ljava/lang/String;

    iget-object v3, p1, Lcom/google/analytics/containertag/proto/Serving$Resource;->supplemental:[Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->key:[Ljava/lang/String;

    iget-object v3, p1, Lcom/google/analytics/containertag/proto/Serving$Resource;->key:[Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->value:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    iget-object v3, p1, Lcom/google/analytics/containertag/proto/Serving$Resource;->value:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->property:[Lcom/google/analytics/containertag/proto/Serving$Property;

    iget-object v3, p1, Lcom/google/analytics/containertag/proto/Serving$Resource;->property:[Lcom/google/analytics/containertag/proto/Serving$Property;

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->macro:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    iget-object v3, p1, Lcom/google/analytics/containertag/proto/Serving$Resource;->macro:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->tag:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    iget-object v3, p1, Lcom/google/analytics/containertag/proto/Serving$Resource;->tag:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->predicate:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    iget-object v3, p1, Lcom/google/analytics/containertag/proto/Serving$Resource;->predicate:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->rule:[Lcom/google/analytics/containertag/proto/Serving$Rule;

    iget-object v3, p1, Lcom/google/analytics/containertag/proto/Serving$Resource;->rule:[Lcom/google/analytics/containertag/proto/Serving$Rule;

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->previewAuthCode:Ljava/lang/String;

    if-nez v2, :cond_4

    iget-object v2, p1, Lcom/google/analytics/containertag/proto/Serving$Resource;->previewAuthCode:Ljava/lang/String;

    if-nez v2, :cond_3

    :goto_1
    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->malwareScanAuthCode:Ljava/lang/String;

    if-nez v2, :cond_5

    iget-object v2, p1, Lcom/google/analytics/containertag/proto/Serving$Resource;->malwareScanAuthCode:Ljava/lang/String;

    if-nez v2, :cond_3

    :goto_2
    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->templateVersionSet:Ljava/lang/String;

    if-nez v2, :cond_6

    iget-object v2, p1, Lcom/google/analytics/containertag/proto/Serving$Resource;->templateVersionSet:Ljava/lang/String;

    if-nez v2, :cond_3

    :goto_3
    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->version:Ljava/lang/String;

    if-nez v2, :cond_7

    iget-object v2, p1, Lcom/google/analytics/containertag/proto/Serving$Resource;->version:Ljava/lang/String;

    if-nez v2, :cond_3

    :goto_4
    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->liveJsCacheOption:Lcom/google/analytics/containertag/proto/Serving$CacheOption;

    if-nez v2, :cond_8

    iget-object v2, p1, Lcom/google/analytics/containertag/proto/Serving$Resource;->liveJsCacheOption:Lcom/google/analytics/containertag/proto/Serving$CacheOption;

    if-nez v2, :cond_3

    :goto_5
    iget v2, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->reportingSampleRate:F

    iget v3, p1, Lcom/google/analytics/containertag/proto/Serving$Resource;->reportingSampleRate:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_3

    iget-boolean v2, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->oBSOLETEEnableAutoEventTracking:Z

    iget-boolean v3, p1, Lcom/google/analytics/containertag/proto/Serving$Resource;->oBSOLETEEnableAutoEventTracking:Z

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->usageContext:[Ljava/lang/String;

    iget-object v3, p1, Lcom/google/analytics/containertag/proto/Serving$Resource;->usageContext:[Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget v2, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->resourceFormatVersion:I

    iget v3, p1, Lcom/google/analytics/containertag/proto/Serving$Resource;->resourceFormatVersion:I

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->unknownFieldData:Ljava/util/List;

    if-nez v2, :cond_9

    iget-object v2, p1, Lcom/google/analytics/containertag/proto/Serving$Resource;->unknownFieldData:Ljava/util/List;

    if-eqz v2, :cond_0

    :cond_3
    move v0, v1

    goto/16 :goto_0

    :cond_4
    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->previewAuthCode:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/analytics/containertag/proto/Serving$Resource;->previewAuthCode:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_1

    :cond_5
    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->malwareScanAuthCode:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/analytics/containertag/proto/Serving$Resource;->malwareScanAuthCode:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_2

    :cond_6
    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->templateVersionSet:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/analytics/containertag/proto/Serving$Resource;->templateVersionSet:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_3

    :cond_7
    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->version:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/analytics/containertag/proto/Serving$Resource;->version:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_4

    :cond_8
    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->liveJsCacheOption:Lcom/google/analytics/containertag/proto/Serving$CacheOption;

    iget-object v3, p1, Lcom/google/analytics/containertag/proto/Serving$Resource;->liveJsCacheOption:Lcom/google/analytics/containertag/proto/Serving$CacheOption;

    invoke-virtual {v2, v3}, Lcom/google/analytics/containertag/proto/Serving$CacheOption;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_5

    :cond_9
    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->unknownFieldData:Ljava/util/List;

    iget-object v3, p1, Lcom/google/analytics/containertag/proto/Serving$Resource;->unknownFieldData:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto/16 :goto_0
.end method

.method public final getSerializedSize()I
    .locals 7

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->key:[Ljava/lang/String;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->key:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_13

    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->key:[Ljava/lang/String;

    array-length v4, v3

    move v0, v1

    move v2, v1

    :goto_0
    if-ge v0, v4, :cond_0

    aget-object v5, v3, v0

    invoke-static {v5}, Lcom/google/b/a/a/b;->b(Ljava/lang/String;)I

    move-result v5

    add-int/2addr v2, v5

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v0, v2, 0x0

    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->key:[Ljava/lang/String;

    array-length v2, v2

    mul-int/lit8 v2, v2, 0x1

    add-int/2addr v0, v2

    :goto_1
    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->value:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    if-eqz v2, :cond_1

    iget-object v4, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->value:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    array-length v5, v4

    move v2, v1

    :goto_2
    if-ge v2, v5, :cond_1

    aget-object v3, v4, v2

    const/4 v6, 0x2

    invoke-static {v6, v3}, Lcom/google/b/a/a/b;->b(ILcom/google/b/a/a/h;)I

    move-result v3

    add-int/2addr v3, v0

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    move v0, v3

    goto :goto_2

    :cond_1
    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->property:[Lcom/google/analytics/containertag/proto/Serving$Property;

    if-eqz v2, :cond_2

    iget-object v4, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->property:[Lcom/google/analytics/containertag/proto/Serving$Property;

    array-length v5, v4

    move v2, v1

    :goto_3
    if-ge v2, v5, :cond_2

    aget-object v3, v4, v2

    const/4 v6, 0x3

    invoke-static {v6, v3}, Lcom/google/b/a/a/b;->b(ILcom/google/b/a/a/h;)I

    move-result v3

    add-int/2addr v3, v0

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    move v0, v3

    goto :goto_3

    :cond_2
    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->macro:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    if-eqz v2, :cond_3

    iget-object v4, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->macro:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    array-length v5, v4

    move v2, v1

    :goto_4
    if-ge v2, v5, :cond_3

    aget-object v3, v4, v2

    const/4 v6, 0x4

    invoke-static {v6, v3}, Lcom/google/b/a/a/b;->b(ILcom/google/b/a/a/h;)I

    move-result v3

    add-int/2addr v3, v0

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    move v0, v3

    goto :goto_4

    :cond_3
    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->tag:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    if-eqz v2, :cond_4

    iget-object v4, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->tag:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    array-length v5, v4

    move v2, v1

    :goto_5
    if-ge v2, v5, :cond_4

    aget-object v3, v4, v2

    const/4 v6, 0x5

    invoke-static {v6, v3}, Lcom/google/b/a/a/b;->b(ILcom/google/b/a/a/h;)I

    move-result v3

    add-int/2addr v3, v0

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    move v0, v3

    goto :goto_5

    :cond_4
    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->predicate:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    if-eqz v2, :cond_5

    iget-object v4, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->predicate:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    array-length v5, v4

    move v2, v1

    :goto_6
    if-ge v2, v5, :cond_5

    aget-object v3, v4, v2

    const/4 v6, 0x6

    invoke-static {v6, v3}, Lcom/google/b/a/a/b;->b(ILcom/google/b/a/a/h;)I

    move-result v3

    add-int/2addr v3, v0

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    move v0, v3

    goto :goto_6

    :cond_5
    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->rule:[Lcom/google/analytics/containertag/proto/Serving$Rule;

    if-eqz v2, :cond_6

    iget-object v4, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->rule:[Lcom/google/analytics/containertag/proto/Serving$Rule;

    array-length v5, v4

    move v2, v1

    :goto_7
    if-ge v2, v5, :cond_6

    aget-object v3, v4, v2

    const/4 v6, 0x7

    invoke-static {v6, v3}, Lcom/google/b/a/a/b;->b(ILcom/google/b/a/a/h;)I

    move-result v3

    add-int/2addr v3, v0

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    move v0, v3

    goto :goto_7

    :cond_6
    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->previewAuthCode:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    const/16 v2, 0x9

    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->previewAuthCode:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/b/a/a/b;->b(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    :cond_7
    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->malwareScanAuthCode:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    const/16 v2, 0xa

    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->malwareScanAuthCode:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/b/a/a/b;->b(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    :cond_8
    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->templateVersionSet:Ljava/lang/String;

    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    const/16 v2, 0xc

    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->templateVersionSet:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/b/a/a/b;->b(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    :cond_9
    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->version:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    const/16 v2, 0xd

    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->version:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/b/a/a/b;->b(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    :cond_a
    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->liveJsCacheOption:Lcom/google/analytics/containertag/proto/Serving$CacheOption;

    if-eqz v2, :cond_b

    const/16 v2, 0xe

    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->liveJsCacheOption:Lcom/google/analytics/containertag/proto/Serving$CacheOption;

    invoke-static {v2, v3}, Lcom/google/b/a/a/b;->b(ILcom/google/b/a/a/h;)I

    move-result v2

    add-int/2addr v0, v2

    :cond_b
    iget v2, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->reportingSampleRate:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_c

    iget v2, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->reportingSampleRate:F

    const/16 v2, 0xf

    invoke-static {v2}, Lcom/google/b/a/a/b;->d(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x4

    add-int/2addr v0, v2

    :cond_c
    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->usageContext:[Ljava/lang/String;

    if-eqz v2, :cond_e

    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->usageContext:[Ljava/lang/String;

    array-length v2, v2

    if-lez v2, :cond_e

    iget-object v4, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->usageContext:[Ljava/lang/String;

    array-length v5, v4

    move v2, v1

    move v3, v1

    :goto_8
    if-ge v2, v5, :cond_d

    aget-object v6, v4, v2

    invoke-static {v6}, Lcom/google/b/a/a/b;->b(Ljava/lang/String;)I

    move-result v6

    add-int/2addr v3, v6

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_d
    add-int/2addr v0, v3

    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->usageContext:[Ljava/lang/String;

    array-length v2, v2

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    :cond_e
    iget v2, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->resourceFormatVersion:I

    if-eqz v2, :cond_f

    const/16 v2, 0x11

    iget v3, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->resourceFormatVersion:I

    invoke-static {v2, v3}, Lcom/google/b/a/a/b;->b(II)I

    move-result v2

    add-int/2addr v0, v2

    :cond_f
    iget-boolean v2, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->oBSOLETEEnableAutoEventTracking:Z

    if-eqz v2, :cond_10

    const/16 v2, 0x12

    iget-boolean v3, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->oBSOLETEEnableAutoEventTracking:Z

    invoke-static {v2}, Lcom/google/b/a/a/b;->d(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    add-int/2addr v0, v2

    :cond_10
    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->supplemental:[Ljava/lang/String;

    if-eqz v2, :cond_12

    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->supplemental:[Ljava/lang/String;

    array-length v2, v2

    if-lez v2, :cond_12

    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->supplemental:[Ljava/lang/String;

    array-length v4, v3

    move v2, v1

    :goto_9
    if-ge v1, v4, :cond_11

    aget-object v5, v3, v1

    invoke-static {v5}, Lcom/google/b/a/a/b;->b(Ljava/lang/String;)I

    move-result v5

    add-int/2addr v2, v5

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_11
    add-int/2addr v0, v2

    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->supplemental:[Ljava/lang/String;

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    :cond_12
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->unknownFieldData:Ljava/util/List;

    invoke-static {v1}, Lcom/google/b/a/a/k;->a(Ljava/util/List;)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->cachedSize:I

    return v0

    :cond_13
    move v0, v1

    goto/16 :goto_1
.end method

.method public final hashCode()I
    .locals 4

    const/4 v1, 0x0

    const/16 v0, 0x11

    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->supplemental:[Ljava/lang/String;

    if-nez v2, :cond_9

    const/16 v2, 0x20f

    :cond_0
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->key:[Ljava/lang/String;

    if-nez v0, :cond_b

    mul-int/lit8 v2, v2, 0x1f

    :cond_1
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->value:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    if-nez v0, :cond_d

    mul-int/lit8 v2, v2, 0x1f

    :cond_2
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->property:[Lcom/google/analytics/containertag/proto/Serving$Property;

    if-nez v0, :cond_f

    mul-int/lit8 v2, v2, 0x1f

    :cond_3
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->macro:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    if-nez v0, :cond_11

    mul-int/lit8 v2, v2, 0x1f

    :cond_4
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->tag:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    if-nez v0, :cond_13

    mul-int/lit8 v2, v2, 0x1f

    :cond_5
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->predicate:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    if-nez v0, :cond_15

    mul-int/lit8 v2, v2, 0x1f

    :cond_6
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->rule:[Lcom/google/analytics/containertag/proto/Serving$Rule;

    if-nez v0, :cond_17

    mul-int/lit8 v2, v2, 0x1f

    :cond_7
    mul-int/lit8 v2, v2, 0x1f

    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->previewAuthCode:Ljava/lang/String;

    if-nez v0, :cond_19

    move v0, v1

    :goto_0
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->malwareScanAuthCode:Ljava/lang/String;

    if-nez v0, :cond_1a

    move v0, v1

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->templateVersionSet:Ljava/lang/String;

    if-nez v0, :cond_1b

    move v0, v1

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->version:Ljava/lang/String;

    if-nez v0, :cond_1c

    move v0, v1

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->liveJsCacheOption:Lcom/google/analytics/containertag/proto/Serving$CacheOption;

    if-nez v0, :cond_1d

    move v0, v1

    :goto_4
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->reportingSampleRate:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-boolean v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->oBSOLETEEnableAutoEventTracking:Z

    if-eqz v0, :cond_1e

    const/4 v0, 0x1

    :goto_5
    add-int/2addr v0, v2

    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->usageContext:[Ljava/lang/String;

    if-nez v2, :cond_1f

    mul-int/lit8 v2, v0, 0x1f

    :cond_8
    mul-int/lit8 v0, v2, 0x1f

    iget v2, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->resourceFormatVersion:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->unknownFieldData:Ljava/util/List;

    if-nez v2, :cond_21

    :goto_6
    add-int/2addr v0, v1

    return v0

    :cond_9
    move v2, v0

    move v0, v1

    :goto_7
    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->supplemental:[Ljava/lang/String;

    array-length v3, v3

    if-ge v0, v3, :cond_0

    mul-int/lit8 v3, v2, 0x1f

    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->supplemental:[Ljava/lang/String;

    aget-object v2, v2, v0

    if-nez v2, :cond_a

    move v2, v1

    :goto_8
    add-int/2addr v2, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_a
    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->supplemental:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_8

    :cond_b
    move v0, v1

    :goto_9
    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->key:[Ljava/lang/String;

    array-length v3, v3

    if-ge v0, v3, :cond_1

    mul-int/lit8 v3, v2, 0x1f

    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->key:[Ljava/lang/String;

    aget-object v2, v2, v0

    if-nez v2, :cond_c

    move v2, v1

    :goto_a
    add-int/2addr v2, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    :cond_c
    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->key:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_a

    :cond_d
    move v0, v1

    :goto_b
    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->value:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    array-length v3, v3

    if-ge v0, v3, :cond_2

    mul-int/lit8 v3, v2, 0x1f

    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->value:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    aget-object v2, v2, v0

    if-nez v2, :cond_e

    move v2, v1

    :goto_c
    add-int/2addr v2, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    :cond_e
    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->value:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->hashCode()I

    move-result v2

    goto :goto_c

    :cond_f
    move v0, v1

    :goto_d
    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->property:[Lcom/google/analytics/containertag/proto/Serving$Property;

    array-length v3, v3

    if-ge v0, v3, :cond_3

    mul-int/lit8 v3, v2, 0x1f

    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->property:[Lcom/google/analytics/containertag/proto/Serving$Property;

    aget-object v2, v2, v0

    if-nez v2, :cond_10

    move v2, v1

    :goto_e
    add-int/2addr v2, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    :cond_10
    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->property:[Lcom/google/analytics/containertag/proto/Serving$Property;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/google/analytics/containertag/proto/Serving$Property;->hashCode()I

    move-result v2

    goto :goto_e

    :cond_11
    move v0, v1

    :goto_f
    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->macro:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    array-length v3, v3

    if-ge v0, v3, :cond_4

    mul-int/lit8 v3, v2, 0x1f

    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->macro:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    aget-object v2, v2, v0

    if-nez v2, :cond_12

    move v2, v1

    :goto_10
    add-int/2addr v2, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    :cond_12
    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->macro:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->hashCode()I

    move-result v2

    goto :goto_10

    :cond_13
    move v0, v1

    :goto_11
    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->tag:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    array-length v3, v3

    if-ge v0, v3, :cond_5

    mul-int/lit8 v3, v2, 0x1f

    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->tag:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    aget-object v2, v2, v0

    if-nez v2, :cond_14

    move v2, v1

    :goto_12
    add-int/2addr v2, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    :cond_14
    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->tag:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->hashCode()I

    move-result v2

    goto :goto_12

    :cond_15
    move v0, v1

    :goto_13
    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->predicate:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    array-length v3, v3

    if-ge v0, v3, :cond_6

    mul-int/lit8 v3, v2, 0x1f

    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->predicate:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    aget-object v2, v2, v0

    if-nez v2, :cond_16

    move v2, v1

    :goto_14
    add-int/2addr v2, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    :cond_16
    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->predicate:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->hashCode()I

    move-result v2

    goto :goto_14

    :cond_17
    move v0, v1

    :goto_15
    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->rule:[Lcom/google/analytics/containertag/proto/Serving$Rule;

    array-length v3, v3

    if-ge v0, v3, :cond_7

    mul-int/lit8 v3, v2, 0x1f

    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->rule:[Lcom/google/analytics/containertag/proto/Serving$Rule;

    aget-object v2, v2, v0

    if-nez v2, :cond_18

    move v2, v1

    :goto_16
    add-int/2addr v2, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_15

    :cond_18
    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->rule:[Lcom/google/analytics/containertag/proto/Serving$Rule;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/google/analytics/containertag/proto/Serving$Rule;->hashCode()I

    move-result v2

    goto :goto_16

    :cond_19
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->previewAuthCode:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto/16 :goto_0

    :cond_1a
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->malwareScanAuthCode:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto/16 :goto_1

    :cond_1b
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->templateVersionSet:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto/16 :goto_2

    :cond_1c
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->version:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto/16 :goto_3

    :cond_1d
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->liveJsCacheOption:Lcom/google/analytics/containertag/proto/Serving$CacheOption;

    invoke-virtual {v0}, Lcom/google/analytics/containertag/proto/Serving$CacheOption;->hashCode()I

    move-result v0

    goto/16 :goto_4

    :cond_1e
    const/4 v0, 0x2

    goto/16 :goto_5

    :cond_1f
    move v2, v0

    move v0, v1

    :goto_17
    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->usageContext:[Ljava/lang/String;

    array-length v3, v3

    if-ge v0, v3, :cond_8

    mul-int/lit8 v3, v2, 0x1f

    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->usageContext:[Ljava/lang/String;

    aget-object v2, v2, v0

    if-nez v2, :cond_20

    move v2, v1

    :goto_18
    add-int/2addr v2, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_17

    :cond_20
    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->usageContext:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_18

    :cond_21
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->unknownFieldData:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    goto/16 :goto_6
.end method

.method public final mergeFrom(Lcom/google/b/a/a/a;)Lcom/google/analytics/containertag/proto/Serving$Resource;
    .locals 4

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/b/a/a/a;->a()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->unknownFieldData:Ljava/util/List;

    if-nez v2, :cond_1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->unknownFieldData:Ljava/util/List;

    :cond_1
    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->unknownFieldData:Ljava/util/List;

    invoke-static {v2, p1, v0}, Lcom/google/b/a/a/k;->a(Ljava/util/List;Lcom/google/b/a/a/a;I)Z

    move-result v0

    if-nez v0, :cond_0

    :sswitch_0
    return-object p0

    :sswitch_1
    const/16 v0, 0xa

    invoke-static {p1, v0}, Lcom/google/b/a/a/k;->a(Lcom/google/b/a/a/a;I)I

    move-result v2

    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->key:[Ljava/lang/String;

    array-length v0, v0

    add-int/2addr v2, v0

    new-array v2, v2, [Ljava/lang/String;

    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->key:[Ljava/lang/String;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->key:[Ljava/lang/String;

    :goto_1
    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->key:[Ljava/lang/String;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_2

    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->key:[Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/b/a/a/a;->e()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-virtual {p1}, Lcom/google/b/a/a/a;->a()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->key:[Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/b/a/a/a;->e()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    goto :goto_0

    :sswitch_2
    const/16 v0, 0x12

    invoke-static {p1, v0}, Lcom/google/b/a/a/k;->a(Lcom/google/b/a/a/a;I)I

    move-result v2

    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->value:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    if-nez v0, :cond_4

    move v0, v1

    :goto_2
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->value:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->value:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_3
    iput-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->value:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    :goto_3
    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->value:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_5

    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->value:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    new-instance v3, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    invoke-direct {v3}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;-><init>()V

    aput-object v3, v2, v0

    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->value:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    aget-object v2, v2, v0

    invoke-virtual {p1, v2}, Lcom/google/b/a/a/a;->a(Lcom/google/b/a/a/h;)V

    invoke-virtual {p1}, Lcom/google/b/a/a/a;->a()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_4
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->value:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    array-length v0, v0

    goto :goto_2

    :cond_5
    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->value:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    new-instance v3, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    invoke-direct {v3}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;-><init>()V

    aput-object v3, v2, v0

    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->value:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/b/a/a/a;->a(Lcom/google/b/a/a/h;)V

    goto/16 :goto_0

    :sswitch_3
    const/16 v0, 0x1a

    invoke-static {p1, v0}, Lcom/google/b/a/a/k;->a(Lcom/google/b/a/a/a;I)I

    move-result v2

    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->property:[Lcom/google/analytics/containertag/proto/Serving$Property;

    if-nez v0, :cond_7

    move v0, v1

    :goto_4
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/google/analytics/containertag/proto/Serving$Property;

    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->property:[Lcom/google/analytics/containertag/proto/Serving$Property;

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->property:[Lcom/google/analytics/containertag/proto/Serving$Property;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_6
    iput-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->property:[Lcom/google/analytics/containertag/proto/Serving$Property;

    :goto_5
    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->property:[Lcom/google/analytics/containertag/proto/Serving$Property;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_8

    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->property:[Lcom/google/analytics/containertag/proto/Serving$Property;

    new-instance v3, Lcom/google/analytics/containertag/proto/Serving$Property;

    invoke-direct {v3}, Lcom/google/analytics/containertag/proto/Serving$Property;-><init>()V

    aput-object v3, v2, v0

    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->property:[Lcom/google/analytics/containertag/proto/Serving$Property;

    aget-object v2, v2, v0

    invoke-virtual {p1, v2}, Lcom/google/b/a/a/a;->a(Lcom/google/b/a/a/h;)V

    invoke-virtual {p1}, Lcom/google/b/a/a/a;->a()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_7
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->property:[Lcom/google/analytics/containertag/proto/Serving$Property;

    array-length v0, v0

    goto :goto_4

    :cond_8
    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->property:[Lcom/google/analytics/containertag/proto/Serving$Property;

    new-instance v3, Lcom/google/analytics/containertag/proto/Serving$Property;

    invoke-direct {v3}, Lcom/google/analytics/containertag/proto/Serving$Property;-><init>()V

    aput-object v3, v2, v0

    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->property:[Lcom/google/analytics/containertag/proto/Serving$Property;

    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/b/a/a/a;->a(Lcom/google/b/a/a/h;)V

    goto/16 :goto_0

    :sswitch_4
    const/16 v0, 0x22

    invoke-static {p1, v0}, Lcom/google/b/a/a/k;->a(Lcom/google/b/a/a/a;I)I

    move-result v2

    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->macro:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    if-nez v0, :cond_a

    move v0, v1

    :goto_6
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->macro:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    if-eqz v3, :cond_9

    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->macro:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_9
    iput-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->macro:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    :goto_7
    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->macro:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_b

    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->macro:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    new-instance v3, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    invoke-direct {v3}, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;-><init>()V

    aput-object v3, v2, v0

    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->macro:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    aget-object v2, v2, v0

    invoke-virtual {p1, v2}, Lcom/google/b/a/a/a;->a(Lcom/google/b/a/a/h;)V

    invoke-virtual {p1}, Lcom/google/b/a/a/a;->a()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_a
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->macro:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    array-length v0, v0

    goto :goto_6

    :cond_b
    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->macro:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    new-instance v3, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    invoke-direct {v3}, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;-><init>()V

    aput-object v3, v2, v0

    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->macro:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/b/a/a/a;->a(Lcom/google/b/a/a/h;)V

    goto/16 :goto_0

    :sswitch_5
    const/16 v0, 0x2a

    invoke-static {p1, v0}, Lcom/google/b/a/a/k;->a(Lcom/google/b/a/a/a;I)I

    move-result v2

    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->tag:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    if-nez v0, :cond_d

    move v0, v1

    :goto_8
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->tag:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    if-eqz v3, :cond_c

    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->tag:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_c
    iput-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->tag:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    :goto_9
    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->tag:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_e

    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->tag:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    new-instance v3, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    invoke-direct {v3}, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;-><init>()V

    aput-object v3, v2, v0

    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->tag:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    aget-object v2, v2, v0

    invoke-virtual {p1, v2}, Lcom/google/b/a/a/a;->a(Lcom/google/b/a/a/h;)V

    invoke-virtual {p1}, Lcom/google/b/a/a/a;->a()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    :cond_d
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->tag:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    array-length v0, v0

    goto :goto_8

    :cond_e
    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->tag:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    new-instance v3, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    invoke-direct {v3}, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;-><init>()V

    aput-object v3, v2, v0

    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->tag:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/b/a/a/a;->a(Lcom/google/b/a/a/h;)V

    goto/16 :goto_0

    :sswitch_6
    const/16 v0, 0x32

    invoke-static {p1, v0}, Lcom/google/b/a/a/k;->a(Lcom/google/b/a/a/a;I)I

    move-result v2

    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->predicate:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    if-nez v0, :cond_10

    move v0, v1

    :goto_a
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->predicate:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    if-eqz v3, :cond_f

    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->predicate:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_f
    iput-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->predicate:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    :goto_b
    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->predicate:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_11

    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->predicate:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    new-instance v3, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    invoke-direct {v3}, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;-><init>()V

    aput-object v3, v2, v0

    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->predicate:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    aget-object v2, v2, v0

    invoke-virtual {p1, v2}, Lcom/google/b/a/a/a;->a(Lcom/google/b/a/a/h;)V

    invoke-virtual {p1}, Lcom/google/b/a/a/a;->a()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    :cond_10
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->predicate:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    array-length v0, v0

    goto :goto_a

    :cond_11
    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->predicate:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    new-instance v3, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    invoke-direct {v3}, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;-><init>()V

    aput-object v3, v2, v0

    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->predicate:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/b/a/a/a;->a(Lcom/google/b/a/a/h;)V

    goto/16 :goto_0

    :sswitch_7
    const/16 v0, 0x3a

    invoke-static {p1, v0}, Lcom/google/b/a/a/k;->a(Lcom/google/b/a/a/a;I)I

    move-result v2

    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->rule:[Lcom/google/analytics/containertag/proto/Serving$Rule;

    if-nez v0, :cond_13

    move v0, v1

    :goto_c
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/google/analytics/containertag/proto/Serving$Rule;

    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->rule:[Lcom/google/analytics/containertag/proto/Serving$Rule;

    if-eqz v3, :cond_12

    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->rule:[Lcom/google/analytics/containertag/proto/Serving$Rule;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_12
    iput-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->rule:[Lcom/google/analytics/containertag/proto/Serving$Rule;

    :goto_d
    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->rule:[Lcom/google/analytics/containertag/proto/Serving$Rule;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_14

    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->rule:[Lcom/google/analytics/containertag/proto/Serving$Rule;

    new-instance v3, Lcom/google/analytics/containertag/proto/Serving$Rule;

    invoke-direct {v3}, Lcom/google/analytics/containertag/proto/Serving$Rule;-><init>()V

    aput-object v3, v2, v0

    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->rule:[Lcom/google/analytics/containertag/proto/Serving$Rule;

    aget-object v2, v2, v0

    invoke-virtual {p1, v2}, Lcom/google/b/a/a/a;->a(Lcom/google/b/a/a/h;)V

    invoke-virtual {p1}, Lcom/google/b/a/a/a;->a()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    :cond_13
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->rule:[Lcom/google/analytics/containertag/proto/Serving$Rule;

    array-length v0, v0

    goto :goto_c

    :cond_14
    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->rule:[Lcom/google/analytics/containertag/proto/Serving$Rule;

    new-instance v3, Lcom/google/analytics/containertag/proto/Serving$Rule;

    invoke-direct {v3}, Lcom/google/analytics/containertag/proto/Serving$Rule;-><init>()V

    aput-object v3, v2, v0

    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->rule:[Lcom/google/analytics/containertag/proto/Serving$Rule;

    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/b/a/a/a;->a(Lcom/google/b/a/a/h;)V

    goto/16 :goto_0

    :sswitch_8
    invoke-virtual {p1}, Lcom/google/b/a/a/a;->e()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->previewAuthCode:Ljava/lang/String;

    goto/16 :goto_0

    :sswitch_9
    invoke-virtual {p1}, Lcom/google/b/a/a/a;->e()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->malwareScanAuthCode:Ljava/lang/String;

    goto/16 :goto_0

    :sswitch_a
    invoke-virtual {p1}, Lcom/google/b/a/a/a;->e()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->templateVersionSet:Ljava/lang/String;

    goto/16 :goto_0

    :sswitch_b
    invoke-virtual {p1}, Lcom/google/b/a/a/a;->e()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->version:Ljava/lang/String;

    goto/16 :goto_0

    :sswitch_c
    new-instance v0, Lcom/google/analytics/containertag/proto/Serving$CacheOption;

    invoke-direct {v0}, Lcom/google/analytics/containertag/proto/Serving$CacheOption;-><init>()V

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->liveJsCacheOption:Lcom/google/analytics/containertag/proto/Serving$CacheOption;

    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->liveJsCacheOption:Lcom/google/analytics/containertag/proto/Serving$CacheOption;

    invoke-virtual {p1, v0}, Lcom/google/b/a/a/a;->a(Lcom/google/b/a/a/h;)V

    goto/16 :goto_0

    :sswitch_d
    invoke-virtual {p1}, Lcom/google/b/a/a/a;->g()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    iput v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->reportingSampleRate:F

    goto/16 :goto_0

    :sswitch_e
    const/16 v0, 0x82

    invoke-static {p1, v0}, Lcom/google/b/a/a/k;->a(Lcom/google/b/a/a/a;I)I

    move-result v2

    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->usageContext:[Ljava/lang/String;

    array-length v0, v0

    add-int/2addr v2, v0

    new-array v2, v2, [Ljava/lang/String;

    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->usageContext:[Ljava/lang/String;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->usageContext:[Ljava/lang/String;

    :goto_e
    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->usageContext:[Ljava/lang/String;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_15

    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->usageContext:[Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/b/a/a/a;->e()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-virtual {p1}, Lcom/google/b/a/a/a;->a()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    :cond_15
    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->usageContext:[Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/b/a/a/a;->e()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    goto/16 :goto_0

    :sswitch_f
    invoke-virtual {p1}, Lcom/google/b/a/a/a;->c()I

    move-result v0

    iput v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->resourceFormatVersion:I

    goto/16 :goto_0

    :sswitch_10
    invoke-virtual {p1}, Lcom/google/b/a/a/a;->d()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->oBSOLETEEnableAutoEventTracking:Z

    goto/16 :goto_0

    :sswitch_11
    const/16 v0, 0x9a

    invoke-static {p1, v0}, Lcom/google/b/a/a/k;->a(Lcom/google/b/a/a/a;I)I

    move-result v2

    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->supplemental:[Ljava/lang/String;

    array-length v0, v0

    add-int/2addr v2, v0

    new-array v2, v2, [Ljava/lang/String;

    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->supplemental:[Ljava/lang/String;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->supplemental:[Ljava/lang/String;

    :goto_f
    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->supplemental:[Ljava/lang/String;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_16

    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->supplemental:[Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/b/a/a/a;->e()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-virtual {p1}, Lcom/google/b/a/a/a;->a()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    :cond_16
    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->supplemental:[Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/b/a/a/a;->e()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
        0x32 -> :sswitch_6
        0x3a -> :sswitch_7
        0x4a -> :sswitch_8
        0x52 -> :sswitch_9
        0x62 -> :sswitch_a
        0x6a -> :sswitch_b
        0x72 -> :sswitch_c
        0x7d -> :sswitch_d
        0x82 -> :sswitch_e
        0x88 -> :sswitch_f
        0x90 -> :sswitch_10
        0x9a -> :sswitch_11
    .end sparse-switch
.end method

.method public final bridge synthetic mergeFrom(Lcom/google/b/a/a/a;)Lcom/google/b/a/a/h;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/analytics/containertag/proto/Serving$Resource;->mergeFrom(Lcom/google/b/a/a/a;)Lcom/google/analytics/containertag/proto/Serving$Resource;

    move-result-object v0

    return-object v0
.end method

.method public final writeTo(Lcom/google/b/a/a/b;)V
    .locals 7

    const/4 v6, 0x5

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->key:[Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->key:[Ljava/lang/String;

    array-length v3, v2

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v4, v2, v1

    const/4 v5, 0x1

    invoke-virtual {p1, v5, v4}, Lcom/google/b/a/a/b;->a(ILjava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->value:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->value:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    array-length v3, v2

    move v1, v0

    :goto_1
    if-ge v1, v3, :cond_1

    aget-object v4, v2, v1

    const/4 v5, 0x2

    invoke-virtual {p1, v5, v4}, Lcom/google/b/a/a/b;->a(ILcom/google/b/a/a/h;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->property:[Lcom/google/analytics/containertag/proto/Serving$Property;

    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->property:[Lcom/google/analytics/containertag/proto/Serving$Property;

    array-length v3, v2

    move v1, v0

    :goto_2
    if-ge v1, v3, :cond_2

    aget-object v4, v2, v1

    const/4 v5, 0x3

    invoke-virtual {p1, v5, v4}, Lcom/google/b/a/a/b;->a(ILcom/google/b/a/a/h;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->macro:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    if-eqz v1, :cond_3

    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->macro:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    array-length v3, v2

    move v1, v0

    :goto_3
    if-ge v1, v3, :cond_3

    aget-object v4, v2, v1

    const/4 v5, 0x4

    invoke-virtual {p1, v5, v4}, Lcom/google/b/a/a/b;->a(ILcom/google/b/a/a/h;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_3
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->tag:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    if-eqz v1, :cond_4

    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->tag:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    array-length v3, v2

    move v1, v0

    :goto_4
    if-ge v1, v3, :cond_4

    aget-object v4, v2, v1

    invoke-virtual {p1, v6, v4}, Lcom/google/b/a/a/b;->a(ILcom/google/b/a/a/h;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_4
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->predicate:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    if-eqz v1, :cond_5

    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->predicate:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    array-length v3, v2

    move v1, v0

    :goto_5
    if-ge v1, v3, :cond_5

    aget-object v4, v2, v1

    const/4 v5, 0x6

    invoke-virtual {p1, v5, v4}, Lcom/google/b/a/a/b;->a(ILcom/google/b/a/a/h;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_5
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->rule:[Lcom/google/analytics/containertag/proto/Serving$Rule;

    if-eqz v1, :cond_6

    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->rule:[Lcom/google/analytics/containertag/proto/Serving$Rule;

    array-length v3, v2

    move v1, v0

    :goto_6
    if-ge v1, v3, :cond_6

    aget-object v4, v2, v1

    const/4 v5, 0x7

    invoke-virtual {p1, v5, v4}, Lcom/google/b/a/a/b;->a(ILcom/google/b/a/a/h;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_6
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->previewAuthCode:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    const/16 v1, 0x9

    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->previewAuthCode:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Lcom/google/b/a/a/b;->a(ILjava/lang/String;)V

    :cond_7
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->malwareScanAuthCode:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    const/16 v1, 0xa

    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->malwareScanAuthCode:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Lcom/google/b/a/a/b;->a(ILjava/lang/String;)V

    :cond_8
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->templateVersionSet:Ljava/lang/String;

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    const/16 v1, 0xc

    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->templateVersionSet:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Lcom/google/b/a/a/b;->a(ILjava/lang/String;)V

    :cond_9
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->version:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    const/16 v1, 0xd

    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->version:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Lcom/google/b/a/a/b;->a(ILjava/lang/String;)V

    :cond_a
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->liveJsCacheOption:Lcom/google/analytics/containertag/proto/Serving$CacheOption;

    if-eqz v1, :cond_b

    const/16 v1, 0xe

    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->liveJsCacheOption:Lcom/google/analytics/containertag/proto/Serving$CacheOption;

    invoke-virtual {p1, v1, v2}, Lcom/google/b/a/a/b;->a(ILcom/google/b/a/a/h;)V

    :cond_b
    iget v1, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->reportingSampleRate:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_c

    iget v1, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->reportingSampleRate:F

    const/16 v2, 0xf

    invoke-virtual {p1, v2, v6}, Lcom/google/b/a/a/b;->c(II)V

    invoke-virtual {p1, v1}, Lcom/google/b/a/a/b;->a(F)V

    :cond_c
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->usageContext:[Ljava/lang/String;

    if-eqz v1, :cond_d

    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->usageContext:[Ljava/lang/String;

    array-length v3, v2

    move v1, v0

    :goto_7
    if-ge v1, v3, :cond_d

    aget-object v4, v2, v1

    const/16 v5, 0x10

    invoke-virtual {p1, v5, v4}, Lcom/google/b/a/a/b;->a(ILjava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_d
    iget v1, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->resourceFormatVersion:I

    if-eqz v1, :cond_e

    const/16 v1, 0x11

    iget v2, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->resourceFormatVersion:I

    invoke-virtual {p1, v1, v2}, Lcom/google/b/a/a/b;->a(II)V

    :cond_e
    iget-boolean v1, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->oBSOLETEEnableAutoEventTracking:Z

    if-eqz v1, :cond_f

    const/16 v1, 0x12

    iget-boolean v2, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->oBSOLETEEnableAutoEventTracking:Z

    invoke-virtual {p1, v1, v2}, Lcom/google/b/a/a/b;->a(IZ)V

    :cond_f
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->supplemental:[Ljava/lang/String;

    if-eqz v1, :cond_10

    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->supplemental:[Ljava/lang/String;

    array-length v2, v1

    :goto_8
    if-ge v0, v2, :cond_10

    aget-object v3, v1, v0

    const/16 v4, 0x13

    invoke-virtual {p1, v4, v3}, Lcom/google/b/a/a/b;->a(ILjava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_10
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->unknownFieldData:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/google/b/a/a/k;->a(Ljava/util/List;Lcom/google/b/a/a/b;)V

    return-void
.end method
