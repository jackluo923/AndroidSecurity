.class public final Lcom/millennialmedia/google/gson/JsonObject;
.super Lcom/millennialmedia/google/gson/JsonElement;


# instance fields
.field private final members:Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/millennialmedia/google/gson/JsonElement;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/millennialmedia/google/gson/JsonElement;-><init>()V

    new-instance v0, Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap;

    invoke-direct {v0}, Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap;-><init>()V

    iput-object v0, p0, Lcom/millennialmedia/google/gson/JsonObject;->members:Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap;

    return-void
.end method

.method private createJsonElement(Ljava/lang/Object;)Lcom/millennialmedia/google/gson/JsonElement;
    .locals 1

    if-nez p1, :cond_0

    sget-object v0, Lcom/millennialmedia/google/gson/JsonNull;->INSTANCE:Lcom/millennialmedia/google/gson/JsonNull;

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/millennialmedia/google/gson/JsonPrimitive;

    invoke-direct {v0, p1}, Lcom/millennialmedia/google/gson/JsonPrimitive;-><init>(Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public final add(Ljava/lang/String;Lcom/millennialmedia/google/gson/JsonElement;)V
    .locals 1

    if-nez p2, :cond_0

    sget-object p2, Lcom/millennialmedia/google/gson/JsonNull;->INSTANCE:Lcom/millennialmedia/google/gson/JsonNull;

    :cond_0
    iget-object v0, p0, Lcom/millennialmedia/google/gson/JsonObject;->members:Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap;

    invoke-virtual {v0, p1, p2}, Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final addProperty(Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 1

    invoke-direct {p0, p2}, Lcom/millennialmedia/google/gson/JsonObject;->createJsonElement(Ljava/lang/Object;)Lcom/millennialmedia/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/millennialmedia/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/millennialmedia/google/gson/JsonElement;)V

    return-void
.end method

.method public final addProperty(Ljava/lang/String;Ljava/lang/Character;)V
    .locals 1

    invoke-direct {p0, p2}, Lcom/millennialmedia/google/gson/JsonObject;->createJsonElement(Ljava/lang/Object;)Lcom/millennialmedia/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/millennialmedia/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/millennialmedia/google/gson/JsonElement;)V

    return-void
.end method

.method public final addProperty(Ljava/lang/String;Ljava/lang/Number;)V
    .locals 1

    invoke-direct {p0, p2}, Lcom/millennialmedia/google/gson/JsonObject;->createJsonElement(Ljava/lang/Object;)Lcom/millennialmedia/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/millennialmedia/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/millennialmedia/google/gson/JsonElement;)V

    return-void
.end method

.method public final addProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p2}, Lcom/millennialmedia/google/gson/JsonObject;->createJsonElement(Ljava/lang/Object;)Lcom/millennialmedia/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/millennialmedia/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/millennialmedia/google/gson/JsonElement;)V

    return-void
.end method

.method final bridge synthetic deepCopy()Lcom/millennialmedia/google/gson/JsonElement;
    .locals 1

    invoke-virtual {p0}, Lcom/millennialmedia/google/gson/JsonObject;->deepCopy()Lcom/millennialmedia/google/gson/JsonObject;

    move-result-object v0

    return-object v0
.end method

.method final deepCopy()Lcom/millennialmedia/google/gson/JsonObject;
    .locals 4

    new-instance v2, Lcom/millennialmedia/google/gson/JsonObject;

    invoke-direct {v2}, Lcom/millennialmedia/google/gson/JsonObject;-><init>()V

    iget-object v0, p0, Lcom/millennialmedia/google/gson/JsonObject;->members:Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap;

    invoke-virtual {v0}, Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/google/gson/JsonElement;

    invoke-virtual {v0}, Lcom/millennialmedia/google/gson/JsonElement;->deepCopy()Lcom/millennialmedia/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Lcom/millennialmedia/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/millennialmedia/google/gson/JsonElement;)V

    goto :goto_0

    :cond_0
    return-object v2
.end method

.method public final entrySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/String;",
            "Lcom/millennialmedia/google/gson/JsonElement;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/millennialmedia/google/gson/JsonObject;->members:Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap;

    invoke-virtual {v0}, Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p1, p0, :cond_0

    instance-of v0, p1, Lcom/millennialmedia/google/gson/JsonObject;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/millennialmedia/google/gson/JsonObject;

    iget-object v0, p1, Lcom/millennialmedia/google/gson/JsonObject;->members:Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap;

    iget-object v1, p0, Lcom/millennialmedia/google/gson/JsonObject;->members:Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap;

    invoke-virtual {v0, v1}, Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final get(Ljava/lang/String;)Lcom/millennialmedia/google/gson/JsonElement;
    .locals 1

    iget-object v0, p0, Lcom/millennialmedia/google/gson/JsonObject;->members:Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap;

    invoke-virtual {v0, p1}, Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/google/gson/JsonElement;

    return-object v0
.end method

.method public final getAsJsonArray(Ljava/lang/String;)Lcom/millennialmedia/google/gson/JsonArray;
    .locals 1

    iget-object v0, p0, Lcom/millennialmedia/google/gson/JsonObject;->members:Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap;

    invoke-virtual {v0, p1}, Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/google/gson/JsonArray;

    return-object v0
.end method

.method public final getAsJsonObject(Ljava/lang/String;)Lcom/millennialmedia/google/gson/JsonObject;
    .locals 1

    iget-object v0, p0, Lcom/millennialmedia/google/gson/JsonObject;->members:Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap;

    invoke-virtual {v0, p1}, Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/google/gson/JsonObject;

    return-object v0
.end method

.method public final getAsJsonPrimitive(Ljava/lang/String;)Lcom/millennialmedia/google/gson/JsonPrimitive;
    .locals 1

    iget-object v0, p0, Lcom/millennialmedia/google/gson/JsonObject;->members:Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap;

    invoke-virtual {v0, p1}, Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/google/gson/JsonPrimitive;

    return-object v0
.end method

.method public final has(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/millennialmedia/google/gson/JsonObject;->members:Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap;

    invoke-virtual {v0, p1}, Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/millennialmedia/google/gson/JsonObject;->members:Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap;

    invoke-virtual {v0}, Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap;->hashCode()I

    move-result v0

    return v0
.end method

.method public final remove(Ljava/lang/String;)Lcom/millennialmedia/google/gson/JsonElement;
    .locals 1

    iget-object v0, p0, Lcom/millennialmedia/google/gson/JsonObject;->members:Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap;

    invoke-virtual {v0, p1}, Lcom/millennialmedia/google/gson/internal/LinkedHashTreeMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/google/gson/JsonElement;

    return-object v0
.end method
