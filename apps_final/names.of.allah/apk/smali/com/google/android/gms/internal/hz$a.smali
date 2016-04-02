.class public Lcom/google/android/gms/internal/hz$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<I:",
        "Ljava/lang/Object;",
        "O:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;"
    }
.end annotation


# static fields
.field public static final CREATOR:Lcom/google/android/gms/internal/ia;


# instance fields
.field protected final GY:I

.field protected final GZ:Z

.field protected final Ha:I

.field protected final Hb:Z

.field protected final Hc:Ljava/lang/String;

.field protected final Hd:I

.field protected final He:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+",
            "Lcom/google/android/gms/internal/hz;",
            ">;"
        }
    .end annotation
.end field

.field protected final Hf:Ljava/lang/String;

.field private Hg:Lcom/google/android/gms/internal/ic;

.field private Hh:Lcom/google/android/gms/internal/hz$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/hz$b",
            "<TI;TO;>;"
        }
    .end annotation
.end field

.field private final xJ:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ia;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ia;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/hz$a;->CREATOR:Lcom/google/android/gms/internal/ia;

    return-void
.end method

.method constructor <init>(IIZIZLjava/lang/String;ILjava/lang/String;Lcom/google/android/gms/internal/hu;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/hz$a;->xJ:I

    iput p2, p0, Lcom/google/android/gms/internal/hz$a;->GY:I

    iput-boolean p3, p0, Lcom/google/android/gms/internal/hz$a;->GZ:Z

    iput p4, p0, Lcom/google/android/gms/internal/hz$a;->Ha:I

    iput-boolean p5, p0, Lcom/google/android/gms/internal/hz$a;->Hb:Z

    iput-object p6, p0, Lcom/google/android/gms/internal/hz$a;->Hc:Ljava/lang/String;

    iput p7, p0, Lcom/google/android/gms/internal/hz$a;->Hd:I

    if-nez p8, :cond_0

    iput-object v1, p0, Lcom/google/android/gms/internal/hz$a;->He:Ljava/lang/Class;

    iput-object v1, p0, Lcom/google/android/gms/internal/hz$a;->Hf:Ljava/lang/String;

    :goto_0
    if-nez p9, :cond_1

    iput-object v1, p0, Lcom/google/android/gms/internal/hz$a;->Hh:Lcom/google/android/gms/internal/hz$b;

    :goto_1
    return-void

    :cond_0
    const-class v0, Lcom/google/android/gms/internal/if;

    iput-object v0, p0, Lcom/google/android/gms/internal/hz$a;->He:Ljava/lang/Class;

    iput-object p8, p0, Lcom/google/android/gms/internal/hz$a;->Hf:Ljava/lang/String;

    goto :goto_0

    :cond_1
    invoke-virtual {p9}, Lcom/google/android/gms/internal/hu;->fx()Lcom/google/android/gms/internal/hz$b;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/hz$a;->Hh:Lcom/google/android/gms/internal/hz$b;

    goto :goto_1
.end method

.method protected constructor <init>(IZIZLjava/lang/String;ILjava/lang/Class;Lcom/google/android/gms/internal/hz$b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZIZ",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/Class",
            "<+",
            "Lcom/google/android/gms/internal/hz;",
            ">;",
            "Lcom/google/android/gms/internal/hz$b",
            "<TI;TO;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/hz$a;->xJ:I

    iput p1, p0, Lcom/google/android/gms/internal/hz$a;->GY:I

    iput-boolean p2, p0, Lcom/google/android/gms/internal/hz$a;->GZ:Z

    iput p3, p0, Lcom/google/android/gms/internal/hz$a;->Ha:I

    iput-boolean p4, p0, Lcom/google/android/gms/internal/hz$a;->Hb:Z

    iput-object p5, p0, Lcom/google/android/gms/internal/hz$a;->Hc:Ljava/lang/String;

    iput p6, p0, Lcom/google/android/gms/internal/hz$a;->Hd:I

    iput-object p7, p0, Lcom/google/android/gms/internal/hz$a;->He:Ljava/lang/Class;

    if-nez p7, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/hz$a;->Hf:Ljava/lang/String;

    :goto_0
    iput-object p8, p0, Lcom/google/android/gms/internal/hz$a;->Hh:Lcom/google/android/gms/internal/hz$b;

    return-void

    :cond_0
    invoke-virtual {p7}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/hz$a;->Hf:Ljava/lang/String;

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;ILcom/google/android/gms/internal/hz$b;Z)Lcom/google/android/gms/internal/hz$a;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Lcom/google/android/gms/internal/hz$b",
            "<**>;Z)",
            "Lcom/google/android/gms/internal/hz$a;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/hz$a;

    invoke-interface {p2}, Lcom/google/android/gms/internal/hz$b;->fz()I

    move-result v1

    invoke-interface {p2}, Lcom/google/android/gms/internal/hz$b;->fA()I

    move-result v3

    const/4 v4, 0x0

    const/4 v7, 0x0

    move v2, p3

    move-object v5, p0

    move v6, p1

    move-object v8, p2

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/internal/hz$a;-><init>(IZIZLjava/lang/String;ILjava/lang/Class;Lcom/google/android/gms/internal/hz$b;)V

    return-object v0
.end method

.method public static a(Ljava/lang/String;ILjava/lang/Class;)Lcom/google/android/gms/internal/hz$a;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/android/gms/internal/hz;",
            ">(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lcom/google/android/gms/internal/hz$a",
            "<TT;TT;>;"
        }
    .end annotation

    const/16 v1, 0xb

    const/4 v2, 0x0

    new-instance v0, Lcom/google/android/gms/internal/hz$a;

    const/4 v8, 0x0

    move v3, v1

    move v4, v2

    move-object v5, p0

    move v6, p1

    move-object v7, p2

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/internal/hz$a;-><init>(IZIZLjava/lang/String;ILjava/lang/Class;Lcom/google/android/gms/internal/hz$b;)V

    return-object v0
.end method

.method public static b(Ljava/lang/String;ILjava/lang/Class;)Lcom/google/android/gms/internal/hz$a;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/android/gms/internal/hz;",
            ">(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lcom/google/android/gms/internal/hz$a",
            "<",
            "Ljava/util/ArrayList",
            "<TT;>;",
            "Ljava/util/ArrayList",
            "<TT;>;>;"
        }
    .end annotation

    const/16 v1, 0xb

    const/4 v2, 0x1

    new-instance v0, Lcom/google/android/gms/internal/hz$a;

    const/4 v8, 0x0

    move v3, v1

    move v4, v2

    move-object v5, p0

    move v6, p1

    move-object v7, p2

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/internal/hz$a;-><init>(IZIZLjava/lang/String;ILjava/lang/Class;Lcom/google/android/gms/internal/hz$b;)V

    return-object v0
.end method

.method static synthetic c(Lcom/google/android/gms/internal/hz$a;)Lcom/google/android/gms/internal/hz$b;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/hz$a;->Hh:Lcom/google/android/gms/internal/hz$b;

    return-object v0
.end method

.method public static g(Ljava/lang/String;I)Lcom/google/android/gms/internal/hz$a;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Lcom/google/android/gms/internal/hz$a",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const/4 v7, 0x0

    const/4 v1, 0x0

    new-instance v0, Lcom/google/android/gms/internal/hz$a;

    move v2, v1

    move v3, v1

    move v4, v1

    move-object v5, p0

    move v6, p1

    move-object v8, v7

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/internal/hz$a;-><init>(IZIZLjava/lang/String;ILjava/lang/Class;Lcom/google/android/gms/internal/hz$b;)V

    return-object v0
.end method

.method public static h(Ljava/lang/String;I)Lcom/google/android/gms/internal/hz$a;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Lcom/google/android/gms/internal/hz$a",
            "<",
            "Ljava/lang/Double;",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    const/4 v7, 0x0

    const/4 v1, 0x4

    const/4 v2, 0x0

    new-instance v0, Lcom/google/android/gms/internal/hz$a;

    move v3, v1

    move v4, v2

    move-object v5, p0

    move v6, p1

    move-object v8, v7

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/internal/hz$a;-><init>(IZIZLjava/lang/String;ILjava/lang/Class;Lcom/google/android/gms/internal/hz$b;)V

    return-object v0
.end method

.method public static i(Ljava/lang/String;I)Lcom/google/android/gms/internal/hz$a;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Lcom/google/android/gms/internal/hz$a",
            "<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    const/4 v7, 0x0

    const/4 v1, 0x6

    const/4 v2, 0x0

    new-instance v0, Lcom/google/android/gms/internal/hz$a;

    move v3, v1

    move v4, v2

    move-object v5, p0

    move v6, p1

    move-object v8, v7

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/internal/hz$a;-><init>(IZIZLjava/lang/String;ILjava/lang/Class;Lcom/google/android/gms/internal/hz$b;)V

    return-object v0
.end method

.method public static j(Ljava/lang/String;I)Lcom/google/android/gms/internal/hz$a;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Lcom/google/android/gms/internal/hz$a",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v7, 0x0

    const/4 v1, 0x7

    const/4 v2, 0x0

    new-instance v0, Lcom/google/android/gms/internal/hz$a;

    move v3, v1

    move v4, v2

    move-object v5, p0

    move v6, p1

    move-object v8, v7

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/internal/hz$a;-><init>(IZIZLjava/lang/String;ILjava/lang/Class;Lcom/google/android/gms/internal/hz$b;)V

    return-object v0
.end method

.method public static k(Ljava/lang/String;I)Lcom/google/android/gms/internal/hz$a;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Lcom/google/android/gms/internal/hz$a",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    const/4 v7, 0x0

    const/4 v1, 0x7

    const/4 v2, 0x1

    new-instance v0, Lcom/google/android/gms/internal/hz$a;

    move v3, v1

    move v4, v2

    move-object v5, p0

    move v6, p1

    move-object v8, v7

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/internal/hz$a;-><init>(IZIZLjava/lang/String;ILjava/lang/Class;Lcom/google/android/gms/internal/hz$b;)V

    return-object v0
.end method


# virtual methods
.method public a(Lcom/google/android/gms/internal/ic;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/hz$a;->Hg:Lcom/google/android/gms/internal/ic;

    return-void
.end method

.method public describeContents()I
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/hz$a;->CREATOR:Lcom/google/android/gms/internal/ia;

    const/4 v0, 0x0

    return v0
.end method

.method public fA()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/hz$a;->Ha:I

    return v0
.end method

.method public fE()Lcom/google/android/gms/internal/hz$a;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/hz$a",
            "<TI;TO;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/hz$a;

    iget v1, p0, Lcom/google/android/gms/internal/hz$a;->xJ:I

    iget v2, p0, Lcom/google/android/gms/internal/hz$a;->GY:I

    iget-boolean v3, p0, Lcom/google/android/gms/internal/hz$a;->GZ:Z

    iget v4, p0, Lcom/google/android/gms/internal/hz$a;->Ha:I

    iget-boolean v5, p0, Lcom/google/android/gms/internal/hz$a;->Hb:Z

    iget-object v6, p0, Lcom/google/android/gms/internal/hz$a;->Hc:Ljava/lang/String;

    iget v7, p0, Lcom/google/android/gms/internal/hz$a;->Hd:I

    iget-object v8, p0, Lcom/google/android/gms/internal/hz$a;->Hf:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/hz$a;->fM()Lcom/google/android/gms/internal/hu;

    move-result-object v9

    invoke-direct/range {v0 .. v9}, Lcom/google/android/gms/internal/hz$a;-><init>(IIZIZLjava/lang/String;ILjava/lang/String;Lcom/google/android/gms/internal/hu;)V

    return-object v0
.end method

.method public fF()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/hz$a;->GZ:Z

    return v0
.end method

.method public fG()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/hz$a;->Hb:Z

    return v0
.end method

.method public fH()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/hz$a;->Hc:Ljava/lang/String;

    return-object v0
.end method

.method public fI()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/hz$a;->Hd:I

    return v0
.end method

.method public fJ()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<+",
            "Lcom/google/android/gms/internal/hz;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/hz$a;->He:Ljava/lang/Class;

    return-object v0
.end method

.method fK()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/hz$a;->Hf:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/hz$a;->Hf:Ljava/lang/String;

    goto :goto_0
.end method

.method public fL()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/hz$a;->Hh:Lcom/google/android/gms/internal/hz$b;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method fM()Lcom/google/android/gms/internal/hu;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/hz$a;->Hh:Lcom/google/android/gms/internal/hz$b;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/hz$a;->Hh:Lcom/google/android/gms/internal/hz$b;

    invoke-static {v0}, Lcom/google/android/gms/internal/hu;->a(Lcom/google/android/gms/internal/hz$b;)Lcom/google/android/gms/internal/hu;

    move-result-object v0

    goto :goto_0
.end method

.method public fN()Ljava/util/HashMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/hz$a",
            "<**>;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/hz$a;->Hf:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/internal/hn;->f(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/internal/hz$a;->Hg:Lcom/google/android/gms/internal/ic;

    invoke-static {v0}, Lcom/google/android/gms/internal/hn;->f(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/internal/hz$a;->Hg:Lcom/google/android/gms/internal/ic;

    iget-object v1, p0, Lcom/google/android/gms/internal/hz$a;->Hf:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ic;->aJ(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method public fz()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/hz$a;->GY:I

    return v0
.end method

.method public g(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TO;)TI;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/hz$a;->Hh:Lcom/google/android/gms/internal/hz$b;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/hz$b;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getVersionCode()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/hz$a;->xJ:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    const/16 v3, 0xa

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Field\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "            versionCode="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/google/android/gms/internal/hz$a;->xJ:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v0, "                 typeIn="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/google/android/gms/internal/hz$a;->GY:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v0, "            typeInArray="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Lcom/google/android/gms/internal/hz$a;->GZ:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v0, "                typeOut="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/google/android/gms/internal/hz$a;->Ha:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v0, "           typeOutArray="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Lcom/google/android/gms/internal/hz$a;->Hb:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v0, "        outputFieldName="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/internal/hz$a;->Hc:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v0, "      safeParcelFieldId="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/google/android/gms/internal/hz$a;->Hd:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v0, "       concreteTypeName="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/hz$a;->fK()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/hz$a;->fJ()Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "     concreteType.class="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/hz$a;->fJ()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    const-string v0, "          converterName="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/google/android/gms/internal/hz$a;->Hh:Lcom/google/android/gms/internal/hz$b;

    if-nez v0, :cond_1

    const-string v0, "null"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/hz$a;->Hh:Lcom/google/android/gms/internal/hz$b;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/hz$a;->CREATOR:Lcom/google/android/gms/internal/ia;

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/ia;->a(Lcom/google/android/gms/internal/hz$a;Landroid/os/Parcel;I)V

    return-void
.end method
