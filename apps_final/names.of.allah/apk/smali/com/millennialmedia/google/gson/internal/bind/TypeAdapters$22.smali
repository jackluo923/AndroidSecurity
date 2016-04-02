.class final Lcom/millennialmedia/google/gson/internal/bind/TypeAdapters$22;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/millennialmedia/google/gson/TypeAdapterFactory;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final create(Lcom/millennialmedia/google/gson/Gson;Lcom/millennialmedia/google/gson/reflect/TypeToken;)Lcom/millennialmedia/google/gson/TypeAdapter;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/millennialmedia/google/gson/Gson;",
            "Lcom/millennialmedia/google/gson/reflect/TypeToken",
            "<TT;>;)",
            "Lcom/millennialmedia/google/gson/TypeAdapter",
            "<TT;>;"
        }
    .end annotation

    invoke-virtual {p2}, Lcom/millennialmedia/google/gson/reflect/TypeToken;->getRawType()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/sql/Timestamp;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const-class v0, Ljava/util/Date;

    invoke-virtual {p1, v0}, Lcom/millennialmedia/google/gson/Gson;->getAdapter(Ljava/lang/Class;)Lcom/millennialmedia/google/gson/TypeAdapter;

    move-result-object v1

    new-instance v0, Lcom/millennialmedia/google/gson/internal/bind/TypeAdapters$22$1;

    invoke-direct {v0, p0, v1}, Lcom/millennialmedia/google/gson/internal/bind/TypeAdapters$22$1;-><init>(Lcom/millennialmedia/google/gson/internal/bind/TypeAdapters$22;Lcom/millennialmedia/google/gson/TypeAdapter;)V

    goto :goto_0
.end method
