.class public final Lcom/alibaba/wireless/security/open/dynamicdatastore/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alibaba/wireless/security/open/dynamicdatastore/IDynamicDataStoreComponent;


# instance fields
.field private a:Lcom/taobao/wireless/security/adapter/d/a;


# direct methods
.method public constructor <init>(Landroid/content/ContextWrapper;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/taobao/wireless/security/adapter/d/a;

    invoke-direct {v0, p1}, Lcom/taobao/wireless/security/adapter/d/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alibaba/wireless/security/open/dynamicdatastore/a;->a:Lcom/taobao/wireless/security/adapter/d/a;

    return-void
.end method


# virtual methods
.method public final getBoolean(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/alibaba/wireless/security/open/dynamicdatastore/a;->a:Lcom/taobao/wireless/security/adapter/d/a;

    const-string/jumbo v2, "Z"

    invoke-virtual {v1, p1, v2, v0}, Lcom/taobao/wireless/security/adapter/d/a;->a(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    const-string/jumbo v2, "1"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :cond_0
    :goto_0
    return v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public final getByteArray(Ljava/lang/String;)[B
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/alibaba/wireless/security/open/dynamicdatastore/a;->a:Lcom/taobao/wireless/security/adapter/d/a;

    const-string/jumbo v2, "[B"

    const/4 v3, 0x0

    invoke-virtual {v1, p1, v2, v3}, Lcom/taobao/wireless/security/adapter/d/a;->a(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-static {v1}, Lcom/alibaba/wireless/security/open/a/a;->a(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public final getByteArrayDDp(Ljava/lang/String;)[B
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/alibaba/wireless/security/open/dynamicdatastore/a;->a:Lcom/taobao/wireless/security/adapter/d/a;

    const-string/jumbo v2, "[B"

    const/4 v3, 0x1

    invoke-virtual {v1, p1, v2, v3}, Lcom/taobao/wireless/security/adapter/d/a;->a(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-static {v1}, Lcom/alibaba/wireless/security/open/a/a;->a(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public final getFloat(Ljava/lang/String;)F
    .locals 4

    const/high16 v0, -0x40800000    # -1.0f

    iget-object v1, p0, Lcom/alibaba/wireless/security/open/dynamicdatastore/a;->a:Lcom/taobao/wireless/security/adapter/d/a;

    const-string/jumbo v2, "F"

    const/4 v3, 0x0

    invoke-virtual {v1, p1, v2, v3}, Lcom/taobao/wireless/security/adapter/d/a;->a(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :cond_0
    :goto_0
    return v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public final getInt(Ljava/lang/String;)I
    .locals 4

    const/4 v0, -0x1

    iget-object v1, p0, Lcom/alibaba/wireless/security/open/dynamicdatastore/a;->a:Lcom/taobao/wireless/security/adapter/d/a;

    const-string/jumbo v2, "I"

    const/4 v3, 0x0

    invoke-virtual {v1, p1, v2, v3}, Lcom/taobao/wireless/security/adapter/d/a;->a(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :cond_0
    :goto_0
    return v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public final getLong(Ljava/lang/String;)J
    .locals 5

    const-wide/16 v0, -0x1

    iget-object v2, p0, Lcom/alibaba/wireless/security/open/dynamicdatastore/a;->a:Lcom/taobao/wireless/security/adapter/d/a;

    const-string/jumbo v3, "J"

    const/4 v4, 0x0

    invoke-virtual {v2, p1, v3, v4}, Lcom/taobao/wireless/security/adapter/d/a;->a(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    :try_start_0
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    :cond_0
    :goto_0
    return-wide v0

    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public final getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/alibaba/wireless/security/open/dynamicdatastore/a;->a:Lcom/taobao/wireless/security/adapter/d/a;

    const-string/jumbo v1, "LString"

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Lcom/taobao/wireless/security/adapter/d/a;->a(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getStringDDp(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/alibaba/wireless/security/open/dynamicdatastore/a;->a:Lcom/taobao/wireless/security/adapter/d/a;

    const-string/jumbo v1, "LString"

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v1, v2}, Lcom/taobao/wireless/security/adapter/d/a;->a(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final putBoolean(Ljava/lang/String;Z)I
    .locals 4

    iget-object v1, p0, Lcom/alibaba/wireless/security/open/dynamicdatastore/a;->a:Lcom/taobao/wireless/security/adapter/d/a;

    if-eqz p2, :cond_0

    const-string/jumbo v0, "1"

    :goto_0
    const-string/jumbo v2, "Z"

    const/4 v3, 0x0

    invoke-virtual {v1, p1, v0, v2, v3}, Lcom/taobao/wireless/security/adapter/d/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)I

    move-result v0

    return v0

    :cond_0
    const-string/jumbo v0, "0"

    goto :goto_0
.end method

.method public final putByteArray(Ljava/lang/String;[B)I
    .locals 4

    iget-object v0, p0, Lcom/alibaba/wireless/security/open/dynamicdatastore/a;->a:Lcom/taobao/wireless/security/adapter/d/a;

    invoke-static {p2}, Lcom/alibaba/wireless/security/open/a/a;->a([B)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "[B"

    const/4 v3, 0x0

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/taobao/wireless/security/adapter/d/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)I

    move-result v0

    return v0
.end method

.method public final putByteArrayDDp(Ljava/lang/String;[B)I
    .locals 4

    iget-object v0, p0, Lcom/alibaba/wireless/security/open/dynamicdatastore/a;->a:Lcom/taobao/wireless/security/adapter/d/a;

    invoke-static {p2}, Lcom/alibaba/wireless/security/open/a/a;->a([B)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "[B"

    const/4 v3, 0x1

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/taobao/wireless/security/adapter/d/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)I

    move-result v0

    return v0
.end method

.method public final putFloat(Ljava/lang/String;F)I
    .locals 4

    iget-object v0, p0, Lcom/alibaba/wireless/security/open/dynamicdatastore/a;->a:Lcom/taobao/wireless/security/adapter/d/a;

    invoke-static {p2}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "F"

    const/4 v3, 0x0

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/taobao/wireless/security/adapter/d/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)I

    move-result v0

    return v0
.end method

.method public final putInt(Ljava/lang/String;I)I
    .locals 4

    iget-object v0, p0, Lcom/alibaba/wireless/security/open/dynamicdatastore/a;->a:Lcom/taobao/wireless/security/adapter/d/a;

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "I"

    const/4 v3, 0x0

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/taobao/wireless/security/adapter/d/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)I

    move-result v0

    return v0
.end method

.method public final putLong(Ljava/lang/String;J)I
    .locals 4

    iget-object v0, p0, Lcom/alibaba/wireless/security/open/dynamicdatastore/a;->a:Lcom/taobao/wireless/security/adapter/d/a;

    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "J"

    const/4 v3, 0x0

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/taobao/wireless/security/adapter/d/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)I

    move-result v0

    return v0
.end method

.method public final putString(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3

    iget-object v0, p0, Lcom/alibaba/wireless/security/open/dynamicdatastore/a;->a:Lcom/taobao/wireless/security/adapter/d/a;

    const-string/jumbo v1, "LString"

    const/4 v2, 0x0

    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/taobao/wireless/security/adapter/d/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)I

    move-result v0

    return v0
.end method

.method public final putStringDDp(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3

    iget-object v0, p0, Lcom/alibaba/wireless/security/open/dynamicdatastore/a;->a:Lcom/taobao/wireless/security/adapter/d/a;

    const-string/jumbo v1, "LString"

    const/4 v2, 0x1

    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/taobao/wireless/security/adapter/d/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)I

    move-result v0

    return v0
.end method

.method public final removeBoolean(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/alibaba/wireless/security/open/dynamicdatastore/a;->a:Lcom/taobao/wireless/security/adapter/d/a;

    const-string/jumbo v1, "Z"

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Lcom/taobao/wireless/security/adapter/d/a;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public final removeByteArray(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/alibaba/wireless/security/open/dynamicdatastore/a;->a:Lcom/taobao/wireless/security/adapter/d/a;

    const-string/jumbo v1, "[B"

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Lcom/taobao/wireless/security/adapter/d/a;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public final removeByteArrayDDp(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/alibaba/wireless/security/open/dynamicdatastore/a;->a:Lcom/taobao/wireless/security/adapter/d/a;

    const-string/jumbo v1, "[B"

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v1, v2}, Lcom/taobao/wireless/security/adapter/d/a;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public final removeFloat(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/alibaba/wireless/security/open/dynamicdatastore/a;->a:Lcom/taobao/wireless/security/adapter/d/a;

    const-string/jumbo v1, "F"

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Lcom/taobao/wireless/security/adapter/d/a;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public final removeInt(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/alibaba/wireless/security/open/dynamicdatastore/a;->a:Lcom/taobao/wireless/security/adapter/d/a;

    const-string/jumbo v1, "I"

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Lcom/taobao/wireless/security/adapter/d/a;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public final removeLong(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/alibaba/wireless/security/open/dynamicdatastore/a;->a:Lcom/taobao/wireless/security/adapter/d/a;

    const-string/jumbo v1, "J"

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Lcom/taobao/wireless/security/adapter/d/a;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public final removeString(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/alibaba/wireless/security/open/dynamicdatastore/a;->a:Lcom/taobao/wireless/security/adapter/d/a;

    const-string/jumbo v1, "LString"

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Lcom/taobao/wireless/security/adapter/d/a;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public final removeStringDDp(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/alibaba/wireless/security/open/dynamicdatastore/a;->a:Lcom/taobao/wireless/security/adapter/d/a;

    const-string/jumbo v1, "LString"

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v1, v2}, Lcom/taobao/wireless/security/adapter/d/a;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method
