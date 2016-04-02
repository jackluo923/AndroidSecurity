.class public Lorg/aspectj/internal/lang/reflect/PerClauseImpl;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/aspectj/lang/reflect/PerClause;


# instance fields
.field private final a:Lorg/aspectj/lang/reflect/PerClauseKind;


# direct methods
.method protected constructor <init>(Lorg/aspectj/lang/reflect/PerClauseKind;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/aspectj/internal/lang/reflect/PerClauseImpl;->a:Lorg/aspectj/lang/reflect/PerClauseKind;

    return-void
.end method


# virtual methods
.method public getKind()Lorg/aspectj/lang/reflect/PerClauseKind;
    .locals 1

    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/PerClauseImpl;->a:Lorg/aspectj/lang/reflect/PerClauseKind;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "issingleton()"

    return-object v0
.end method
