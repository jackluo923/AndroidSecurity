.class final enum Lcom/millennialmedia/google/gson/FieldNamingPolicy$2;
.super Lcom/millennialmedia/google/gson/FieldNamingPolicy;


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/millennialmedia/google/gson/FieldNamingPolicy;-><init>(Ljava/lang/String;ILcom/millennialmedia/google/gson/FieldNamingPolicy$1;)V

    return-void
.end method


# virtual methods
.method public final translateName(Ljava/lang/reflect/Field;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v0

    # invokes: Lcom/millennialmedia/google/gson/FieldNamingPolicy;->upperCaseFirstLetter(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v0}, Lcom/millennialmedia/google/gson/FieldNamingPolicy;->access$100(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
