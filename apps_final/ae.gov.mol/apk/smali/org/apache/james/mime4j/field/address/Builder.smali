.class Lorg/apache/james/mime4j/field/address/Builder;
.super Ljava/lang/Object;
.source "Builder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/james/mime4j/field/address/Builder$ChildNodeIterator;
    }
.end annotation


# static fields
.field private static singleton:Lorg/apache/james/mime4j/field/address/Builder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    new-instance v0, Lorg/apache/james/mime4j/field/address/Builder;

    invoke-direct {v0}, Lorg/apache/james/mime4j/field/address/Builder;-><init>()V

    sput-object v0, Lorg/apache/james/mime4j/field/address/Builder;->singleton:Lorg/apache/james/mime4j/field/address/Builder;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 199
    return-void
.end method

.method private addSpecials(Ljava/lang/StringBuilder;Lorg/apache/james/mime4j/field/address/parser/Token;)V
    .locals 1
    .param p1, "out"    # Ljava/lang/StringBuilder;
    .param p2, "specialToken"    # Lorg/apache/james/mime4j/field/address/parser/Token;

    .prologue
    .line 193
    if-eqz p2, :cond_0

    .line 194
    iget-object v0, p2, Lorg/apache/james/mime4j/field/address/parser/Token;->specialToken:Lorg/apache/james/mime4j/field/address/parser/Token;

    invoke-direct {p0, p1, v0}, Lorg/apache/james/mime4j/field/address/Builder;->addSpecials(Ljava/lang/StringBuilder;Lorg/apache/james/mime4j/field/address/parser/Token;)V

    .line 195
    iget-object v0, p2, Lorg/apache/james/mime4j/field/address/parser/Token;->image:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    :cond_0
    return-void
.end method

.method private buildAddrSpec(Lorg/apache/james/mime4j/field/address/DomainList;Lorg/apache/james/mime4j/field/address/parser/ASTaddr_spec;)Lorg/apache/james/mime4j/field/address/Mailbox;
    .locals 5
    .param p1, "route"    # Lorg/apache/james/mime4j/field/address/DomainList;
    .param p2, "node"    # Lorg/apache/james/mime4j/field/address/parser/ASTaddr_spec;

    .prologue
    const/4 v4, 0x1

    .line 170
    new-instance v1, Lorg/apache/james/mime4j/field/address/Builder$ChildNodeIterator;

    invoke-direct {v1, p2}, Lorg/apache/james/mime4j/field/address/Builder$ChildNodeIterator;-><init>(Lorg/apache/james/mime4j/field/address/parser/SimpleNode;)V

    .line 171
    .local v1, "it":Lorg/apache/james/mime4j/field/address/Builder$ChildNodeIterator;
    invoke-virtual {v1}, Lorg/apache/james/mime4j/field/address/Builder$ChildNodeIterator;->next()Lorg/apache/james/mime4j/field/address/parser/Node;

    move-result-object v3

    check-cast v3, Lorg/apache/james/mime4j/field/address/parser/ASTlocal_part;

    invoke-direct {p0, v3, v4}, Lorg/apache/james/mime4j/field/address/Builder;->buildString(Lorg/apache/james/mime4j/field/address/parser/SimpleNode;Z)Ljava/lang/String;

    move-result-object v2

    .line 172
    .local v2, "localPart":Ljava/lang/String;
    invoke-virtual {v1}, Lorg/apache/james/mime4j/field/address/Builder$ChildNodeIterator;->next()Lorg/apache/james/mime4j/field/address/parser/Node;

    move-result-object v3

    check-cast v3, Lorg/apache/james/mime4j/field/address/parser/ASTdomain;

    invoke-direct {p0, v3, v4}, Lorg/apache/james/mime4j/field/address/Builder;->buildString(Lorg/apache/james/mime4j/field/address/parser/SimpleNode;Z)Ljava/lang/String;

    move-result-object v0

    .line 173
    .local v0, "domain":Ljava/lang/String;
    new-instance v3, Lorg/apache/james/mime4j/field/address/Mailbox;

    invoke-direct {v3, p1, v2, v0}, Lorg/apache/james/mime4j/field/address/Mailbox;-><init>(Lorg/apache/james/mime4j/field/address/DomainList;Ljava/lang/String;Ljava/lang/String;)V

    return-object v3
.end method

.method private buildAddrSpec(Lorg/apache/james/mime4j/field/address/parser/ASTaddr_spec;)Lorg/apache/james/mime4j/field/address/Mailbox;
    .locals 1
    .param p1, "node"    # Lorg/apache/james/mime4j/field/address/parser/ASTaddr_spec;

    .prologue
    .line 166
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lorg/apache/james/mime4j/field/address/Builder;->buildAddrSpec(Lorg/apache/james/mime4j/field/address/DomainList;Lorg/apache/james/mime4j/field/address/parser/ASTaddr_spec;)Lorg/apache/james/mime4j/field/address/Mailbox;

    move-result-object v0

    return-object v0
.end method

.method private buildAngleAddr(Lorg/apache/james/mime4j/field/address/parser/ASTangle_addr;)Lorg/apache/james/mime4j/field/address/Mailbox;
    .locals 4
    .param p1, "node"    # Lorg/apache/james/mime4j/field/address/parser/ASTangle_addr;

    .prologue
    .line 134
    new-instance v0, Lorg/apache/james/mime4j/field/address/Builder$ChildNodeIterator;

    invoke-direct {v0, p1}, Lorg/apache/james/mime4j/field/address/Builder$ChildNodeIterator;-><init>(Lorg/apache/james/mime4j/field/address/parser/SimpleNode;)V

    .line 135
    .local v0, "it":Lorg/apache/james/mime4j/field/address/Builder$ChildNodeIterator;
    const/4 v2, 0x0

    .line 136
    .local v2, "route":Lorg/apache/james/mime4j/field/address/DomainList;
    invoke-virtual {v0}, Lorg/apache/james/mime4j/field/address/Builder$ChildNodeIterator;->next()Lorg/apache/james/mime4j/field/address/parser/Node;

    move-result-object v1

    .line 137
    .local v1, "n":Lorg/apache/james/mime4j/field/address/parser/Node;
    instance-of v3, v1, Lorg/apache/james/mime4j/field/address/parser/ASTroute;

    if-eqz v3, :cond_1

    .line 138
    check-cast v1, Lorg/apache/james/mime4j/field/address/parser/ASTroute;

    .end local v1    # "n":Lorg/apache/james/mime4j/field/address/parser/Node;
    invoke-direct {p0, v1}, Lorg/apache/james/mime4j/field/address/Builder;->buildRoute(Lorg/apache/james/mime4j/field/address/parser/ASTroute;)Lorg/apache/james/mime4j/field/address/DomainList;

    move-result-object v2

    .line 139
    invoke-virtual {v0}, Lorg/apache/james/mime4j/field/address/Builder$ChildNodeIterator;->next()Lorg/apache/james/mime4j/field/address/parser/Node;

    move-result-object v1

    .line 146
    .restart local v1    # "n":Lorg/apache/james/mime4j/field/address/parser/Node;
    :cond_0
    instance-of v3, v1, Lorg/apache/james/mime4j/field/address/parser/ASTaddr_spec;

    if-eqz v3, :cond_2

    .line 147
    check-cast v1, Lorg/apache/james/mime4j/field/address/parser/ASTaddr_spec;

    .end local v1    # "n":Lorg/apache/james/mime4j/field/address/parser/Node;
    invoke-direct {p0, v2, v1}, Lorg/apache/james/mime4j/field/address/Builder;->buildAddrSpec(Lorg/apache/james/mime4j/field/address/DomainList;Lorg/apache/james/mime4j/field/address/parser/ASTaddr_spec;)Lorg/apache/james/mime4j/field/address/Mailbox;

    move-result-object v3

    return-object v3

    .line 140
    .restart local v1    # "n":Lorg/apache/james/mime4j/field/address/parser/Node;
    :cond_1
    instance-of v3, v1, Lorg/apache/james/mime4j/field/address/parser/ASTaddr_spec;

    if-nez v3, :cond_0

    .line 144
    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-direct {v3}, Ljava/lang/IllegalStateException;-><init>()V

    throw v3

    .line 149
    :cond_2
    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-direct {v3}, Ljava/lang/IllegalStateException;-><init>()V

    throw v3
.end method

.method private buildGroupBody(Lorg/apache/james/mime4j/field/address/parser/ASTgroup_body;)Lorg/apache/james/mime4j/field/address/MailboxList;
    .locals 5
    .param p1, "node"    # Lorg/apache/james/mime4j/field/address/parser/ASTgroup_body;

    .prologue
    .line 88
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 89
    .local v2, "results":Ljava/util/List;, "Ljava/util/List<Lorg/apache/james/mime4j/field/address/Mailbox;>;"
    new-instance v0, Lorg/apache/james/mime4j/field/address/Builder$ChildNodeIterator;

    invoke-direct {v0, p1}, Lorg/apache/james/mime4j/field/address/Builder$ChildNodeIterator;-><init>(Lorg/apache/james/mime4j/field/address/parser/SimpleNode;)V

    .line 90
    .local v0, "it":Lorg/apache/james/mime4j/field/address/Builder$ChildNodeIterator;
    :goto_0
    invoke-virtual {v0}, Lorg/apache/james/mime4j/field/address/Builder$ChildNodeIterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 91
    invoke-virtual {v0}, Lorg/apache/james/mime4j/field/address/Builder$ChildNodeIterator;->next()Lorg/apache/james/mime4j/field/address/parser/Node;

    move-result-object v1

    .line 92
    .local v1, "n":Lorg/apache/james/mime4j/field/address/parser/Node;
    instance-of v3, v1, Lorg/apache/james/mime4j/field/address/parser/ASTmailbox;

    if-eqz v3, :cond_0

    .line 93
    check-cast v1, Lorg/apache/james/mime4j/field/address/parser/ASTmailbox;

    .end local v1    # "n":Lorg/apache/james/mime4j/field/address/parser/Node;
    invoke-virtual {p0, v1}, Lorg/apache/james/mime4j/field/address/Builder;->buildMailbox(Lorg/apache/james/mime4j/field/address/parser/ASTmailbox;)Lorg/apache/james/mime4j/field/address/Mailbox;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 95
    .restart local v1    # "n":Lorg/apache/james/mime4j/field/address/parser/Node;
    :cond_0
    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-direct {v3}, Ljava/lang/IllegalStateException;-><init>()V

    throw v3

    .line 97
    .end local v1    # "n":Lorg/apache/james/mime4j/field/address/parser/Node;
    :cond_1
    new-instance v3, Lorg/apache/james/mime4j/field/address/MailboxList;

    const/4 v4, 0x1

    invoke-direct {v3, v2, v4}, Lorg/apache/james/mime4j/field/address/MailboxList;-><init>(Ljava/util/List;Z)V

    return-object v3
.end method

.method private buildNameAddr(Lorg/apache/james/mime4j/field/address/parser/ASTname_addr;)Lorg/apache/james/mime4j/field/address/Mailbox;
    .locals 5
    .param p1, "node"    # Lorg/apache/james/mime4j/field/address/parser/ASTname_addr;

    .prologue
    .line 115
    new-instance v0, Lorg/apache/james/mime4j/field/address/Builder$ChildNodeIterator;

    invoke-direct {v0, p1}, Lorg/apache/james/mime4j/field/address/Builder$ChildNodeIterator;-><init>(Lorg/apache/james/mime4j/field/address/parser/SimpleNode;)V

    .line 116
    .local v0, "it":Lorg/apache/james/mime4j/field/address/Builder$ChildNodeIterator;
    invoke-virtual {v0}, Lorg/apache/james/mime4j/field/address/Builder$ChildNodeIterator;->next()Lorg/apache/james/mime4j/field/address/parser/Node;

    move-result-object v1

    .line 118
    .local v1, "n":Lorg/apache/james/mime4j/field/address/parser/Node;
    instance-of v3, v1, Lorg/apache/james/mime4j/field/address/parser/ASTphrase;

    if-eqz v3, :cond_0

    .line 119
    check-cast v1, Lorg/apache/james/mime4j/field/address/parser/ASTphrase;

    .end local v1    # "n":Lorg/apache/james/mime4j/field/address/parser/Node;
    const/4 v3, 0x0

    invoke-direct {p0, v1, v3}, Lorg/apache/james/mime4j/field/address/Builder;->buildString(Lorg/apache/james/mime4j/field/address/parser/SimpleNode;Z)Ljava/lang/String;

    move-result-object v2

    .line 124
    .local v2, "name":Ljava/lang/String;
    invoke-virtual {v0}, Lorg/apache/james/mime4j/field/address/Builder$ChildNodeIterator;->next()Lorg/apache/james/mime4j/field/address/parser/Node;

    move-result-object v1

    .line 125
    .restart local v1    # "n":Lorg/apache/james/mime4j/field/address/parser/Node;
    instance-of v3, v1, Lorg/apache/james/mime4j/field/address/parser/ASTangle_addr;

    if-eqz v3, :cond_1

    .line 126
    invoke-static {v2}, Lorg/apache/james/mime4j/codec/DecoderUtil;->decodeEncodedWords(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 127
    new-instance v3, Lorg/apache/james/mime4j/field/address/Mailbox;

    check-cast v1, Lorg/apache/james/mime4j/field/address/parser/ASTangle_addr;

    .end local v1    # "n":Lorg/apache/james/mime4j/field/address/parser/Node;
    invoke-direct {p0, v1}, Lorg/apache/james/mime4j/field/address/Builder;->buildAngleAddr(Lorg/apache/james/mime4j/field/address/parser/ASTangle_addr;)Lorg/apache/james/mime4j/field/address/Mailbox;

    move-result-object v4

    invoke-direct {v3, v2, v4}, Lorg/apache/james/mime4j/field/address/Mailbox;-><init>(Ljava/lang/String;Lorg/apache/james/mime4j/field/address/Mailbox;)V

    return-object v3

    .line 121
    .end local v2    # "name":Ljava/lang/String;
    .restart local v1    # "n":Lorg/apache/james/mime4j/field/address/parser/Node;
    :cond_0
    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-direct {v3}, Ljava/lang/IllegalStateException;-><init>()V

    throw v3

    .line 129
    .restart local v2    # "name":Ljava/lang/String;
    :cond_1
    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-direct {v3}, Ljava/lang/IllegalStateException;-><init>()V

    throw v3
.end method

.method private buildRoute(Lorg/apache/james/mime4j/field/address/parser/ASTroute;)Lorg/apache/james/mime4j/field/address/DomainList;
    .locals 5
    .param p1, "node"    # Lorg/apache/james/mime4j/field/address/parser/ASTroute;

    .prologue
    const/4 v4, 0x1

    .line 153
    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {p1}, Lorg/apache/james/mime4j/field/address/parser/ASTroute;->jjtGetNumChildren()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 154
    .local v2, "results":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Lorg/apache/james/mime4j/field/address/Builder$ChildNodeIterator;

    invoke-direct {v0, p1}, Lorg/apache/james/mime4j/field/address/Builder$ChildNodeIterator;-><init>(Lorg/apache/james/mime4j/field/address/parser/SimpleNode;)V

    .line 155
    .local v0, "it":Lorg/apache/james/mime4j/field/address/Builder$ChildNodeIterator;
    :goto_0
    invoke-virtual {v0}, Lorg/apache/james/mime4j/field/address/Builder$ChildNodeIterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 156
    invoke-virtual {v0}, Lorg/apache/james/mime4j/field/address/Builder$ChildNodeIterator;->next()Lorg/apache/james/mime4j/field/address/parser/Node;

    move-result-object v1

    .line 157
    .local v1, "n":Lorg/apache/james/mime4j/field/address/parser/Node;
    instance-of v3, v1, Lorg/apache/james/mime4j/field/address/parser/ASTdomain;

    if-eqz v3, :cond_0

    .line 158
    check-cast v1, Lorg/apache/james/mime4j/field/address/parser/ASTdomain;

    .end local v1    # "n":Lorg/apache/james/mime4j/field/address/parser/Node;
    invoke-direct {p0, v1, v4}, Lorg/apache/james/mime4j/field/address/Builder;->buildString(Lorg/apache/james/mime4j/field/address/parser/SimpleNode;Z)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 160
    .restart local v1    # "n":Lorg/apache/james/mime4j/field/address/parser/Node;
    :cond_0
    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-direct {v3}, Ljava/lang/IllegalStateException;-><init>()V

    throw v3

    .line 162
    .end local v1    # "n":Lorg/apache/james/mime4j/field/address/parser/Node;
    :cond_1
    new-instance v3, Lorg/apache/james/mime4j/field/address/DomainList;

    invoke-direct {v3, v2, v4}, Lorg/apache/james/mime4j/field/address/DomainList;-><init>(Ljava/util/List;Z)V

    return-object v3
.end method

.method private buildString(Lorg/apache/james/mime4j/field/address/parser/SimpleNode;Z)Ljava/lang/String;
    .locals 4
    .param p1, "node"    # Lorg/apache/james/mime4j/field/address/parser/SimpleNode;
    .param p2, "stripSpaces"    # Z

    .prologue
    .line 177
    iget-object v0, p1, Lorg/apache/james/mime4j/field/address/parser/SimpleNode;->firstToken:Lorg/apache/james/mime4j/field/address/parser/Token;

    .line 178
    .local v0, "head":Lorg/apache/james/mime4j/field/address/parser/Token;
    iget-object v2, p1, Lorg/apache/james/mime4j/field/address/parser/SimpleNode;->lastToken:Lorg/apache/james/mime4j/field/address/parser/Token;

    .line 179
    .local v2, "tail":Lorg/apache/james/mime4j/field/address/parser/Token;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 181
    .local v1, "out":Ljava/lang/StringBuilder;
    :cond_0
    :goto_0
    if-eq v0, v2, :cond_1

    .line 182
    iget-object v3, v0, Lorg/apache/james/mime4j/field/address/parser/Token;->image:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    iget-object v0, v0, Lorg/apache/james/mime4j/field/address/parser/Token;->next:Lorg/apache/james/mime4j/field/address/parser/Token;

    .line 184
    if-nez p2, :cond_0

    .line 185
    iget-object v3, v0, Lorg/apache/james/mime4j/field/address/parser/Token;->specialToken:Lorg/apache/james/mime4j/field/address/parser/Token;

    invoke-direct {p0, v1, v3}, Lorg/apache/james/mime4j/field/address/Builder;->addSpecials(Ljava/lang/StringBuilder;Lorg/apache/james/mime4j/field/address/parser/Token;)V

    goto :goto_0

    .line 187
    :cond_1
    iget-object v3, v2, Lorg/apache/james/mime4j/field/address/parser/Token;->image:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static getInstance()Lorg/apache/james/mime4j/field/address/Builder;
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lorg/apache/james/mime4j/field/address/Builder;->singleton:Lorg/apache/james/mime4j/field/address/Builder;

    return-object v0
.end method


# virtual methods
.method public buildAddress(Lorg/apache/james/mime4j/field/address/parser/ASTaddress;)Lorg/apache/james/mime4j/field/address/Address;
    .locals 6
    .param p1, "node"    # Lorg/apache/james/mime4j/field/address/parser/ASTaddress;

    .prologue
    .line 65
    new-instance v0, Lorg/apache/james/mime4j/field/address/Builder$ChildNodeIterator;

    invoke-direct {v0, p1}, Lorg/apache/james/mime4j/field/address/Builder$ChildNodeIterator;-><init>(Lorg/apache/james/mime4j/field/address/parser/SimpleNode;)V

    .line 66
    .local v0, "it":Lorg/apache/james/mime4j/field/address/Builder$ChildNodeIterator;
    invoke-virtual {v0}, Lorg/apache/james/mime4j/field/address/Builder$ChildNodeIterator;->next()Lorg/apache/james/mime4j/field/address/parser/Node;

    move-result-object v1

    .line 67
    .local v1, "n":Lorg/apache/james/mime4j/field/address/parser/Node;
    instance-of v4, v1, Lorg/apache/james/mime4j/field/address/parser/ASTaddr_spec;

    if-eqz v4, :cond_0

    .line 68
    check-cast v1, Lorg/apache/james/mime4j/field/address/parser/ASTaddr_spec;

    .end local v1    # "n":Lorg/apache/james/mime4j/field/address/parser/Node;
    invoke-direct {p0, v1}, Lorg/apache/james/mime4j/field/address/Builder;->buildAddrSpec(Lorg/apache/james/mime4j/field/address/parser/ASTaddr_spec;)Lorg/apache/james/mime4j/field/address/Mailbox;

    move-result-object v4

    .line 78
    :goto_0
    return-object v4

    .line 69
    .restart local v1    # "n":Lorg/apache/james/mime4j/field/address/parser/Node;
    :cond_0
    instance-of v4, v1, Lorg/apache/james/mime4j/field/address/parser/ASTangle_addr;

    if-eqz v4, :cond_1

    .line 70
    check-cast v1, Lorg/apache/james/mime4j/field/address/parser/ASTangle_addr;

    .end local v1    # "n":Lorg/apache/james/mime4j/field/address/parser/Node;
    invoke-direct {p0, v1}, Lorg/apache/james/mime4j/field/address/Builder;->buildAngleAddr(Lorg/apache/james/mime4j/field/address/parser/ASTangle_addr;)Lorg/apache/james/mime4j/field/address/Mailbox;

    move-result-object v4

    goto :goto_0

    .line 71
    .restart local v1    # "n":Lorg/apache/james/mime4j/field/address/parser/Node;
    :cond_1
    instance-of v4, v1, Lorg/apache/james/mime4j/field/address/parser/ASTphrase;

    if-eqz v4, :cond_4

    .line 72
    check-cast v1, Lorg/apache/james/mime4j/field/address/parser/ASTphrase;

    .end local v1    # "n":Lorg/apache/james/mime4j/field/address/parser/Node;
    const/4 v4, 0x0

    invoke-direct {p0, v1, v4}, Lorg/apache/james/mime4j/field/address/Builder;->buildString(Lorg/apache/james/mime4j/field/address/parser/SimpleNode;Z)Ljava/lang/String;

    move-result-object v3

    .line 73
    .local v3, "name":Ljava/lang/String;
    invoke-virtual {v0}, Lorg/apache/james/mime4j/field/address/Builder$ChildNodeIterator;->next()Lorg/apache/james/mime4j/field/address/parser/Node;

    move-result-object v2

    .line 74
    .local v2, "n2":Lorg/apache/james/mime4j/field/address/parser/Node;
    instance-of v4, v2, Lorg/apache/james/mime4j/field/address/parser/ASTgroup_body;

    if-eqz v4, :cond_2

    .line 75
    new-instance v4, Lorg/apache/james/mime4j/field/address/Group;

    check-cast v2, Lorg/apache/james/mime4j/field/address/parser/ASTgroup_body;

    .end local v2    # "n2":Lorg/apache/james/mime4j/field/address/parser/Node;
    invoke-direct {p0, v2}, Lorg/apache/james/mime4j/field/address/Builder;->buildGroupBody(Lorg/apache/james/mime4j/field/address/parser/ASTgroup_body;)Lorg/apache/james/mime4j/field/address/MailboxList;

    move-result-object v5

    invoke-direct {v4, v3, v5}, Lorg/apache/james/mime4j/field/address/Group;-><init>(Ljava/lang/String;Lorg/apache/james/mime4j/field/address/MailboxList;)V

    goto :goto_0

    .line 76
    .restart local v2    # "n2":Lorg/apache/james/mime4j/field/address/parser/Node;
    :cond_2
    instance-of v4, v2, Lorg/apache/james/mime4j/field/address/parser/ASTangle_addr;

    if-eqz v4, :cond_3

    .line 77
    invoke-static {v3}, Lorg/apache/james/mime4j/codec/DecoderUtil;->decodeEncodedWords(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 78
    new-instance v4, Lorg/apache/james/mime4j/field/address/Mailbox;

    check-cast v2, Lorg/apache/james/mime4j/field/address/parser/ASTangle_addr;

    .end local v2    # "n2":Lorg/apache/james/mime4j/field/address/parser/Node;
    invoke-direct {p0, v2}, Lorg/apache/james/mime4j/field/address/Builder;->buildAngleAddr(Lorg/apache/james/mime4j/field/address/parser/ASTangle_addr;)Lorg/apache/james/mime4j/field/address/Mailbox;

    move-result-object v5

    invoke-direct {v4, v3, v5}, Lorg/apache/james/mime4j/field/address/Mailbox;-><init>(Ljava/lang/String;Lorg/apache/james/mime4j/field/address/Mailbox;)V

    goto :goto_0

    .line 80
    .restart local v2    # "n2":Lorg/apache/james/mime4j/field/address/parser/Node;
    :cond_3
    new-instance v4, Ljava/lang/IllegalStateException;

    invoke-direct {v4}, Ljava/lang/IllegalStateException;-><init>()V

    throw v4

    .line 83
    .end local v2    # "n2":Lorg/apache/james/mime4j/field/address/parser/Node;
    .end local v3    # "name":Ljava/lang/String;
    .restart local v1    # "n":Lorg/apache/james/mime4j/field/address/parser/Node;
    :cond_4
    new-instance v4, Ljava/lang/IllegalStateException;

    invoke-direct {v4}, Ljava/lang/IllegalStateException;-><init>()V

    throw v4
.end method

.method public buildAddressList(Lorg/apache/james/mime4j/field/address/parser/ASTaddress_list;)Lorg/apache/james/mime4j/field/address/AddressList;
    .locals 6
    .param p1, "node"    # Lorg/apache/james/mime4j/field/address/parser/ASTaddress_list;

    .prologue
    .line 55
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 56
    .local v3, "list":Ljava/util/List;, "Ljava/util/List<Lorg/apache/james/mime4j/field/address/Address;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {p1}, Lorg/apache/james/mime4j/field/address/parser/ASTaddress_list;->jjtGetNumChildren()I

    move-result v4

    if-ge v2, v4, :cond_0

    .line 57
    invoke-virtual {p1, v2}, Lorg/apache/james/mime4j/field/address/parser/ASTaddress_list;->jjtGetChild(I)Lorg/apache/james/mime4j/field/address/parser/Node;

    move-result-object v1

    check-cast v1, Lorg/apache/james/mime4j/field/address/parser/ASTaddress;

    .line 58
    .local v1, "childNode":Lorg/apache/james/mime4j/field/address/parser/ASTaddress;
    invoke-virtual {p0, v1}, Lorg/apache/james/mime4j/field/address/Builder;->buildAddress(Lorg/apache/james/mime4j/field/address/parser/ASTaddress;)Lorg/apache/james/mime4j/field/address/Address;

    move-result-object v0

    .line 59
    .local v0, "address":Lorg/apache/james/mime4j/field/address/Address;
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 56
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 61
    .end local v0    # "address":Lorg/apache/james/mime4j/field/address/Address;
    .end local v1    # "childNode":Lorg/apache/james/mime4j/field/address/parser/ASTaddress;
    :cond_0
    new-instance v4, Lorg/apache/james/mime4j/field/address/AddressList;

    const/4 v5, 0x1

    invoke-direct {v4, v3, v5}, Lorg/apache/james/mime4j/field/address/AddressList;-><init>(Ljava/util/List;Z)V

    return-object v4
.end method

.method public buildMailbox(Lorg/apache/james/mime4j/field/address/parser/ASTmailbox;)Lorg/apache/james/mime4j/field/address/Mailbox;
    .locals 3
    .param p1, "node"    # Lorg/apache/james/mime4j/field/address/parser/ASTmailbox;

    .prologue
    .line 101
    new-instance v0, Lorg/apache/james/mime4j/field/address/Builder$ChildNodeIterator;

    invoke-direct {v0, p1}, Lorg/apache/james/mime4j/field/address/Builder$ChildNodeIterator;-><init>(Lorg/apache/james/mime4j/field/address/parser/SimpleNode;)V

    .line 102
    .local v0, "it":Lorg/apache/james/mime4j/field/address/Builder$ChildNodeIterator;
    invoke-virtual {v0}, Lorg/apache/james/mime4j/field/address/Builder$ChildNodeIterator;->next()Lorg/apache/james/mime4j/field/address/parser/Node;

    move-result-object v1

    .line 103
    .local v1, "n":Lorg/apache/james/mime4j/field/address/parser/Node;
    instance-of v2, v1, Lorg/apache/james/mime4j/field/address/parser/ASTaddr_spec;

    if-eqz v2, :cond_0

    .line 104
    check-cast v1, Lorg/apache/james/mime4j/field/address/parser/ASTaddr_spec;

    .end local v1    # "n":Lorg/apache/james/mime4j/field/address/parser/Node;
    invoke-direct {p0, v1}, Lorg/apache/james/mime4j/field/address/Builder;->buildAddrSpec(Lorg/apache/james/mime4j/field/address/parser/ASTaddr_spec;)Lorg/apache/james/mime4j/field/address/Mailbox;

    move-result-object v2

    .line 108
    :goto_0
    return-object v2

    .line 105
    .restart local v1    # "n":Lorg/apache/james/mime4j/field/address/parser/Node;
    :cond_0
    instance-of v2, v1, Lorg/apache/james/mime4j/field/address/parser/ASTangle_addr;

    if-eqz v2, :cond_1

    .line 106
    check-cast v1, Lorg/apache/james/mime4j/field/address/parser/ASTangle_addr;

    .end local v1    # "n":Lorg/apache/james/mime4j/field/address/parser/Node;
    invoke-direct {p0, v1}, Lorg/apache/james/mime4j/field/address/Builder;->buildAngleAddr(Lorg/apache/james/mime4j/field/address/parser/ASTangle_addr;)Lorg/apache/james/mime4j/field/address/Mailbox;

    move-result-object v2

    goto :goto_0

    .line 107
    .restart local v1    # "n":Lorg/apache/james/mime4j/field/address/parser/Node;
    :cond_1
    instance-of v2, v1, Lorg/apache/james/mime4j/field/address/parser/ASTname_addr;

    if-eqz v2, :cond_2

    .line 108
    check-cast v1, Lorg/apache/james/mime4j/field/address/parser/ASTname_addr;

    .end local v1    # "n":Lorg/apache/james/mime4j/field/address/parser/Node;
    invoke-direct {p0, v1}, Lorg/apache/james/mime4j/field/address/Builder;->buildNameAddr(Lorg/apache/james/mime4j/field/address/parser/ASTname_addr;)Lorg/apache/james/mime4j/field/address/Mailbox;

    move-result-object v2

    goto :goto_0

    .line 110
    .restart local v1    # "n":Lorg/apache/james/mime4j/field/address/parser/Node;
    :cond_2
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2}, Ljava/lang/IllegalStateException;-><init>()V

    throw v2
.end method
