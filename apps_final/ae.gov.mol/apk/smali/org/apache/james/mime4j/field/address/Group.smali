.class public Lorg/apache/james/mime4j/field/address/Group;
.super Lorg/apache/james/mime4j/field/address/Address;
.source "Group.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final mailboxList:Lorg/apache/james/mime4j/field/address/MailboxList;

.field private final name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/Collection;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/james/mime4j/field/address/Mailbox;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 56
    .local p2, "mailboxes":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/james/mime4j/field/address/Mailbox;>;"
    new-instance v0, Lorg/apache/james/mime4j/field/address/MailboxList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lorg/apache/james/mime4j/field/address/MailboxList;-><init>(Ljava/util/List;Z)V

    invoke-direct {p0, p1, v0}, Lorg/apache/james/mime4j/field/address/Group;-><init>(Ljava/lang/String;Lorg/apache/james/mime4j/field/address/MailboxList;)V

    .line 57
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/apache/james/mime4j/field/address/MailboxList;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "mailboxes"    # Lorg/apache/james/mime4j/field/address/MailboxList;

    .prologue
    .line 65
    invoke-direct {p0}, Lorg/apache/james/mime4j/field/address/Address;-><init>()V

    .line 66
    if-nez p1, :cond_0

    .line 67
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 68
    :cond_0
    if-nez p2, :cond_1

    .line 69
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 71
    :cond_1
    iput-object p1, p0, Lorg/apache/james/mime4j/field/address/Group;->name:Ljava/lang/String;

    .line 72
    iput-object p2, p0, Lorg/apache/james/mime4j/field/address/Group;->mailboxList:Lorg/apache/james/mime4j/field/address/MailboxList;

    .line 73
    return-void
.end method

.method public varargs constructor <init>(Ljava/lang/String;[Lorg/apache/james/mime4j/field/address/Mailbox;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "mailboxes"    # [Lorg/apache/james/mime4j/field/address/Mailbox;

    .prologue
    .line 46
    new-instance v0, Lorg/apache/james/mime4j/field/address/MailboxList;

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lorg/apache/james/mime4j/field/address/MailboxList;-><init>(Ljava/util/List;Z)V

    invoke-direct {p0, p1, v0}, Lorg/apache/james/mime4j/field/address/Group;-><init>(Ljava/lang/String;Lorg/apache/james/mime4j/field/address/MailboxList;)V

    .line 47
    return-void
.end method

.method public static parse(Ljava/lang/String;)Lorg/apache/james/mime4j/field/address/Group;
    .locals 3
    .param p0, "rawGroupString"    # Ljava/lang/String;

    .prologue
    .line 85
    invoke-static {p0}, Lorg/apache/james/mime4j/field/address/Address;->parse(Ljava/lang/String;)Lorg/apache/james/mime4j/field/address/Address;

    move-result-object v0

    .line 86
    .local v0, "address":Lorg/apache/james/mime4j/field/address/Address;
    instance-of v1, v0, Lorg/apache/james/mime4j/field/address/Group;

    if-nez v1, :cond_0

    .line 87
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Not a group address"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 89
    :cond_0
    check-cast v0, Lorg/apache/james/mime4j/field/address/Group;

    .end local v0    # "address":Lorg/apache/james/mime4j/field/address/Address;
    return-object v0
.end method


# virtual methods
.method protected doAddMailboxesTo(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/apache/james/mime4j/field/address/Mailbox;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 156
    .local p1, "results":Ljava/util/List;, "Ljava/util/List<Lorg/apache/james/mime4j/field/address/Mailbox;>;"
    iget-object v2, p0, Lorg/apache/james/mime4j/field/address/Group;->mailboxList:Lorg/apache/james/mime4j/field/address/MailboxList;

    invoke-virtual {v2}, Lorg/apache/james/mime4j/field/address/MailboxList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/james/mime4j/field/address/Mailbox;

    .line 157
    .local v1, "mailbox":Lorg/apache/james/mime4j/field/address/Mailbox;
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 159
    .end local v1    # "mailbox":Lorg/apache/james/mime4j/field/address/Mailbox;
    :cond_0
    return-void
.end method

.method public getDisplayString(Z)Ljava/lang/String;
    .locals 5
    .param p1, "includeRoute"    # Z

    .prologue
    .line 108
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 110
    .local v3, "sb":Ljava/lang/StringBuilder;
    iget-object v4, p0, Lorg/apache/james/mime4j/field/address/Group;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    const/16 v4, 0x3a

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 113
    const/4 v0, 0x1

    .line 114
    .local v0, "first":Z
    iget-object v4, p0, Lorg/apache/james/mime4j/field/address/Group;->mailboxList:Lorg/apache/james/mime4j/field/address/MailboxList;

    invoke-virtual {v4}, Lorg/apache/james/mime4j/field/address/MailboxList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/james/mime4j/field/address/Mailbox;

    .line 115
    .local v2, "mailbox":Lorg/apache/james/mime4j/field/address/Mailbox;
    if-eqz v0, :cond_0

    .line 116
    const/4 v0, 0x0

    .line 121
    :goto_1
    const/16 v4, 0x20

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 122
    invoke-virtual {v2, p1}, Lorg/apache/james/mime4j/field/address/Mailbox;->getDisplayString(Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 118
    :cond_0
    const/16 v4, 0x2c

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 125
    .end local v2    # "mailbox":Lorg/apache/james/mime4j/field/address/Mailbox;
    :cond_1
    const-string v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public getEncodedString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 132
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 134
    .local v3, "sb":Ljava/lang/StringBuilder;
    iget-object v4, p0, Lorg/apache/james/mime4j/field/address/Group;->name:Ljava/lang/String;

    invoke-static {v4}, Lorg/apache/james/mime4j/codec/EncoderUtil;->encodeAddressDisplayName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    const/16 v4, 0x3a

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 137
    const/4 v0, 0x1

    .line 138
    .local v0, "first":Z
    iget-object v4, p0, Lorg/apache/james/mime4j/field/address/Group;->mailboxList:Lorg/apache/james/mime4j/field/address/MailboxList;

    invoke-virtual {v4}, Lorg/apache/james/mime4j/field/address/MailboxList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/james/mime4j/field/address/Mailbox;

    .line 139
    .local v2, "mailbox":Lorg/apache/james/mime4j/field/address/Mailbox;
    if-eqz v0, :cond_0

    .line 140
    const/4 v0, 0x0

    .line 145
    :goto_1
    const/16 v4, 0x20

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 146
    invoke-virtual {v2}, Lorg/apache/james/mime4j/field/address/Mailbox;->getEncodedString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 142
    :cond_0
    const/16 v4, 0x2c

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 149
    .end local v2    # "mailbox":Lorg/apache/james/mime4j/field/address/Mailbox;
    :cond_1
    const/16 v4, 0x3b

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 151
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public getMailboxes()Lorg/apache/james/mime4j/field/address/MailboxList;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/Group;->mailboxList:Lorg/apache/james/mime4j/field/address/MailboxList;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/Group;->name:Ljava/lang/String;

    return-object v0
.end method
