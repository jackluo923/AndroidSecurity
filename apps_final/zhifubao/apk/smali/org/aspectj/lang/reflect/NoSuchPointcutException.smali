.class public Lorg/aspectj/lang/reflect/NoSuchPointcutException;
.super Ljava/lang/Exception;


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    iput-object p1, p0, Lorg/aspectj/lang/reflect/NoSuchPointcutException;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/aspectj/lang/reflect/NoSuchPointcutException;->a:Ljava/lang/String;

    return-object v0
.end method
