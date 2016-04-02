.class Lcom/j256/ormlite/logger/LocalLog$PatternLevel;
.super Ljava/lang/Object;


# instance fields
.field level:Lcom/j256/ormlite/logger/Log$Level;

.field pattern:Ljava/util/regex/Pattern;


# direct methods
.method public constructor <init>(Ljava/util/regex/Pattern;Lcom/j256/ormlite/logger/Log$Level;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/j256/ormlite/logger/LocalLog$PatternLevel;->pattern:Ljava/util/regex/Pattern;

    iput-object p2, p0, Lcom/j256/ormlite/logger/LocalLog$PatternLevel;->level:Lcom/j256/ormlite/logger/Log$Level;

    return-void
.end method
