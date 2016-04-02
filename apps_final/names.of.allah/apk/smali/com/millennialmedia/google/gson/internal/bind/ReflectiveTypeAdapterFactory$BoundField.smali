.class abstract Lcom/millennialmedia/google/gson/internal/bind/ReflectiveTypeAdapterFactory$BoundField;
.super Ljava/lang/Object;


# instance fields
.field final deserialized:Z

.field final name:Ljava/lang/String;

.field final serialized:Z


# direct methods
.method protected constructor <init>(Ljava/lang/String;ZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/millennialmedia/google/gson/internal/bind/ReflectiveTypeAdapterFactory$BoundField;->name:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/millennialmedia/google/gson/internal/bind/ReflectiveTypeAdapterFactory$BoundField;->serialized:Z

    iput-boolean p3, p0, Lcom/millennialmedia/google/gson/internal/bind/ReflectiveTypeAdapterFactory$BoundField;->deserialized:Z

    return-void
.end method


# virtual methods
.method abstract read(Lcom/millennialmedia/google/gson/stream/JsonReader;Ljava/lang/Object;)V
.end method

.method abstract write(Lcom/millennialmedia/google/gson/stream/JsonWriter;Ljava/lang/Object;)V
.end method
