.class public Lorg/apache/james/mime4j/message/Message;
.super Lorg/apache/james/mime4j/message/Entity;
.source "Message.java"

# interfaces
.implements Lorg/apache/james/mime4j/message/Body;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0}, Lorg/apache/james/mime4j/message/Entity;-><init>()V

    .line 64
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 2
    .param p1, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/james/mime4j/MimeIOException;
        }
    .end annotation

    .prologue
    .line 100
    const/4 v0, 0x0

    invoke-static {}, Lorg/apache/james/mime4j/storage/DefaultStorageProvider;->getInstance()Lorg/apache/james/mime4j/storage/StorageProvider;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lorg/apache/james/mime4j/message/Message;-><init>(Ljava/io/InputStream;Lorg/apache/james/mime4j/parser/MimeEntityConfig;Lorg/apache/james/mime4j/storage/StorageProvider;)V

    .line 101
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Lorg/apache/james/mime4j/parser/MimeEntityConfig;)V
    .locals 1
    .param p1, "is"    # Ljava/io/InputStream;
    .param p2, "config"    # Lorg/apache/james/mime4j/parser/MimeEntityConfig;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/james/mime4j/MimeIOException;
        }
    .end annotation

    .prologue
    .line 116
    invoke-static {}, Lorg/apache/james/mime4j/storage/DefaultStorageProvider;->getInstance()Lorg/apache/james/mime4j/storage/StorageProvider;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/james/mime4j/message/Message;-><init>(Ljava/io/InputStream;Lorg/apache/james/mime4j/parser/MimeEntityConfig;Lorg/apache/james/mime4j/storage/StorageProvider;)V

    .line 117
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Lorg/apache/james/mime4j/parser/MimeEntityConfig;Lorg/apache/james/mime4j/storage/StorageProvider;)V
    .locals 3
    .param p1, "is"    # Ljava/io/InputStream;
    .param p2, "config"    # Lorg/apache/james/mime4j/parser/MimeEntityConfig;
    .param p3, "storageProvider"    # Lorg/apache/james/mime4j/storage/StorageProvider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/james/mime4j/MimeIOException;
        }
    .end annotation

    .prologue
    .line 137
    invoke-direct {p0}, Lorg/apache/james/mime4j/message/Entity;-><init>()V

    .line 139
    :try_start_0
    new-instance v1, Lorg/apache/james/mime4j/parser/MimeStreamParser;

    invoke-direct {v1, p2}, Lorg/apache/james/mime4j/parser/MimeStreamParser;-><init>(Lorg/apache/james/mime4j/parser/MimeEntityConfig;)V

    .line 140
    .local v1, "parser":Lorg/apache/james/mime4j/parser/MimeStreamParser;
    new-instance v2, Lorg/apache/james/mime4j/message/MessageBuilder;

    invoke-direct {v2, p0, p3}, Lorg/apache/james/mime4j/message/MessageBuilder;-><init>(Lorg/apache/james/mime4j/message/Entity;Lorg/apache/james/mime4j/storage/StorageProvider;)V

    invoke-virtual {v1, v2}, Lorg/apache/james/mime4j/parser/MimeStreamParser;->setContentHandler(Lorg/apache/james/mime4j/parser/ContentHandler;)V

    .line 141
    invoke-virtual {v1, p1}, Lorg/apache/james/mime4j/parser/MimeStreamParser;->parse(Ljava/io/InputStream;)V
    :try_end_0
    .catch Lorg/apache/james/mime4j/MimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 145
    return-void

    .line 142
    .end local v1    # "parser":Lorg/apache/james/mime4j/parser/MimeStreamParser;
    :catch_0
    move-exception v0

    .line 143
    .local v0, "e":Lorg/apache/james/mime4j/MimeException;
    new-instance v2, Lorg/apache/james/mime4j/MimeIOException;

    invoke-direct {v2, v0}, Lorg/apache/james/mime4j/MimeIOException;-><init>(Lorg/apache/james/mime4j/MimeException;)V

    throw v2
.end method

.method public constructor <init>(Lorg/apache/james/mime4j/message/Message;)V
    .locals 0
    .param p1, "other"    # Lorg/apache/james/mime4j/message/Message;

    .prologue
    .line 85
    invoke-direct {p0, p1}, Lorg/apache/james/mime4j/message/Entity;-><init>(Lorg/apache/james/mime4j/message/Entity;)V

    .line 86
    return-void
.end method

.method private getAddressList(Ljava/lang/String;)Lorg/apache/james/mime4j/field/address/AddressList;
    .locals 2
    .param p1, "fieldName"    # Ljava/lang/String;

    .prologue
    .line 577
    invoke-virtual {p0, p1}, Lorg/apache/james/mime4j/message/Message;->obtainField(Ljava/lang/String;)Lorg/apache/james/mime4j/parser/Field;

    move-result-object v0

    check-cast v0, Lorg/apache/james/mime4j/field/AddressListField;

    .line 578
    .local v0, "field":Lorg/apache/james/mime4j/field/AddressListField;
    if-nez v0, :cond_0

    .line 579
    const/4 v1, 0x0

    .line 581
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lorg/apache/james/mime4j/field/AddressListField;->getAddressList()Lorg/apache/james/mime4j/field/address/AddressList;

    move-result-object v1

    goto :goto_0
.end method

.method private getMailbox(Ljava/lang/String;)Lorg/apache/james/mime4j/field/address/Mailbox;
    .locals 2
    .param p1, "fieldName"    # Ljava/lang/String;

    .prologue
    .line 531
    invoke-virtual {p0, p1}, Lorg/apache/james/mime4j/message/Message;->obtainField(Ljava/lang/String;)Lorg/apache/james/mime4j/parser/Field;

    move-result-object v0

    check-cast v0, Lorg/apache/james/mime4j/field/MailboxField;

    .line 532
    .local v0, "field":Lorg/apache/james/mime4j/field/MailboxField;
    if-nez v0, :cond_0

    .line 533
    const/4 v1, 0x0

    .line 535
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lorg/apache/james/mime4j/field/MailboxField;->getMailbox()Lorg/apache/james/mime4j/field/address/Mailbox;

    move-result-object v1

    goto :goto_0
.end method

.method private getMailboxList(Ljava/lang/String;)Lorg/apache/james/mime4j/field/address/MailboxList;
    .locals 2
    .param p1, "fieldName"    # Ljava/lang/String;

    .prologue
    .line 549
    invoke-virtual {p0, p1}, Lorg/apache/james/mime4j/message/Message;->obtainField(Ljava/lang/String;)Lorg/apache/james/mime4j/parser/Field;

    move-result-object v0

    check-cast v0, Lorg/apache/james/mime4j/field/MailboxListField;

    .line 550
    .local v0, "field":Lorg/apache/james/mime4j/field/MailboxListField;
    if-nez v0, :cond_0

    .line 551
    const/4 v1, 0x0

    .line 553
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lorg/apache/james/mime4j/field/MailboxListField;->getMailboxList()Lorg/apache/james/mime4j/field/address/MailboxList;

    move-result-object v1

    goto :goto_0
.end method

.method private setAddressList(Ljava/lang/String;Ljava/util/Collection;)V
    .locals 2
    .param p1, "fieldName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/james/mime4j/field/address/Address;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 595
    .local p2, "addresses":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/james/mime4j/field/address/Address;>;"
    invoke-virtual {p0}, Lorg/apache/james/mime4j/message/Message;->obtainHeader()Lorg/apache/james/mime4j/message/Header;

    move-result-object v0

    .line 597
    .local v0, "header":Lorg/apache/james/mime4j/message/Header;
    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 598
    :cond_0
    invoke-virtual {v0, p1}, Lorg/apache/james/mime4j/message/Header;->removeFields(Ljava/lang/String;)I

    .line 602
    :goto_0
    return-void

    .line 600
    :cond_1
    invoke-static {p1, p2}, Lorg/apache/james/mime4j/field/Fields;->addressList(Ljava/lang/String;Ljava/lang/Iterable;)Lorg/apache/james/mime4j/field/AddressListField;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/james/mime4j/message/Header;->setField(Lorg/apache/james/mime4j/parser/Field;)V

    goto :goto_0
.end method

.method private setAddressList(Ljava/lang/String;Lorg/apache/james/mime4j/field/address/Address;)V
    .locals 1
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "address"    # Lorg/apache/james/mime4j/field/address/Address;

    .prologue
    .line 585
    if-nez p2, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, p1, v0}, Lorg/apache/james/mime4j/message/Message;->setAddressList(Ljava/lang/String;Ljava/util/Collection;)V

    .line 587
    return-void

    .line 585
    :cond_0
    invoke-static {p2}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    goto :goto_0
.end method

.method private varargs setAddressList(Ljava/lang/String;[Lorg/apache/james/mime4j/field/address/Address;)V
    .locals 1
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "addresses"    # [Lorg/apache/james/mime4j/field/address/Address;

    .prologue
    .line 590
    if-nez p2, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, p1, v0}, Lorg/apache/james/mime4j/message/Message;->setAddressList(Ljava/lang/String;Ljava/util/Collection;)V

    .line 592
    return-void

    .line 590
    :cond_0
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method private setMailbox(Ljava/lang/String;Lorg/apache/james/mime4j/field/address/Mailbox;)V
    .locals 2
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "mailbox"    # Lorg/apache/james/mime4j/field/address/Mailbox;

    .prologue
    .line 539
    invoke-virtual {p0}, Lorg/apache/james/mime4j/message/Message;->obtainHeader()Lorg/apache/james/mime4j/message/Header;

    move-result-object v0

    .line 541
    .local v0, "header":Lorg/apache/james/mime4j/message/Header;
    if-nez p2, :cond_0

    .line 542
    invoke-virtual {v0, p1}, Lorg/apache/james/mime4j/message/Header;->removeFields(Ljava/lang/String;)I

    .line 546
    :goto_0
    return-void

    .line 544
    :cond_0
    invoke-static {p1, p2}, Lorg/apache/james/mime4j/field/Fields;->mailbox(Ljava/lang/String;Lorg/apache/james/mime4j/field/address/Mailbox;)Lorg/apache/james/mime4j/field/MailboxField;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/james/mime4j/message/Header;->setField(Lorg/apache/james/mime4j/parser/Field;)V

    goto :goto_0
.end method

.method private setMailboxList(Ljava/lang/String;Ljava/util/Collection;)V
    .locals 2
    .param p1, "fieldName"    # Ljava/lang/String;
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
    .line 567
    .local p2, "mailboxes":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/james/mime4j/field/address/Mailbox;>;"
    invoke-virtual {p0}, Lorg/apache/james/mime4j/message/Message;->obtainHeader()Lorg/apache/james/mime4j/message/Header;

    move-result-object v0

    .line 569
    .local v0, "header":Lorg/apache/james/mime4j/message/Header;
    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 570
    :cond_0
    invoke-virtual {v0, p1}, Lorg/apache/james/mime4j/message/Header;->removeFields(Ljava/lang/String;)I

    .line 574
    :goto_0
    return-void

    .line 572
    :cond_1
    invoke-static {p1, p2}, Lorg/apache/james/mime4j/field/Fields;->mailboxList(Ljava/lang/String;Ljava/lang/Iterable;)Lorg/apache/james/mime4j/field/MailboxListField;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/james/mime4j/message/Header;->setField(Lorg/apache/james/mime4j/parser/Field;)V

    goto :goto_0
.end method

.method private setMailboxList(Ljava/lang/String;Lorg/apache/james/mime4j/field/address/Mailbox;)V
    .locals 1
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "mailbox"    # Lorg/apache/james/mime4j/field/address/Mailbox;

    .prologue
    .line 557
    if-nez p2, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, p1, v0}, Lorg/apache/james/mime4j/message/Message;->setMailboxList(Ljava/lang/String;Ljava/util/Collection;)V

    .line 559
    return-void

    .line 557
    :cond_0
    invoke-static {p2}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    goto :goto_0
.end method

.method private varargs setMailboxList(Ljava/lang/String;[Lorg/apache/james/mime4j/field/address/Mailbox;)V
    .locals 1
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "mailboxes"    # [Lorg/apache/james/mime4j/field/address/Mailbox;

    .prologue
    .line 562
    if-nez p2, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, p1, v0}, Lorg/apache/james/mime4j/message/Message;->setMailboxList(Ljava/lang/String;Ljava/util/Collection;)V

    .line 564
    return-void

    .line 562
    :cond_0
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public createMessageId(Ljava/lang/String;)V
    .locals 2
    .param p1, "hostname"    # Ljava/lang/String;

    .prologue
    .line 185
    invoke-virtual {p0}, Lorg/apache/james/mime4j/message/Message;->obtainHeader()Lorg/apache/james/mime4j/message/Header;

    move-result-object v0

    .line 187
    .local v0, "header":Lorg/apache/james/mime4j/message/Header;
    invoke-static {p1}, Lorg/apache/james/mime4j/field/Fields;->messageId(Ljava/lang/String;)Lorg/apache/james/mime4j/parser/Field;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/james/mime4j/message/Header;->setField(Lorg/apache/james/mime4j/parser/Field;)V

    .line 188
    return-void
.end method

.method public getBcc()Lorg/apache/james/mime4j/field/address/AddressList;
    .locals 1

    .prologue
    .line 444
    const-string v0, "Bcc"

    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/message/Message;->getAddressList(Ljava/lang/String;)Lorg/apache/james/mime4j/field/address/AddressList;

    move-result-object v0

    return-object v0
.end method

.method public getCc()Lorg/apache/james/mime4j/field/address/AddressList;
    .locals 1

    .prologue
    .line 397
    const-string v0, "Cc"

    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/message/Message;->getAddressList(Ljava/lang/String;)Lorg/apache/james/mime4j/field/address/AddressList;

    move-result-object v0

    return-object v0
.end method

.method public getDate()Ljava/util/Date;
    .locals 2

    .prologue
    .line 231
    const-string v1, "Date"

    invoke-virtual {p0, v1}, Lorg/apache/james/mime4j/message/Message;->obtainField(Ljava/lang/String;)Lorg/apache/james/mime4j/parser/Field;

    move-result-object v0

    check-cast v0, Lorg/apache/james/mime4j/field/DateTimeField;

    .line 232
    .local v0, "dateField":Lorg/apache/james/mime4j/field/DateTimeField;
    if-nez v0, :cond_0

    .line 233
    const/4 v1, 0x0

    .line 235
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lorg/apache/james/mime4j/field/DateTimeField;->getDate()Ljava/util/Date;

    move-result-object v1

    goto :goto_0
.end method

.method public getFrom()Lorg/apache/james/mime4j/field/address/MailboxList;
    .locals 1

    .prologue
    .line 303
    const-string v0, "From"

    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/message/Message;->getMailboxList(Ljava/lang/String;)Lorg/apache/james/mime4j/field/address/MailboxList;

    move-result-object v0

    return-object v0
.end method

.method public getMessageId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 168
    const-string v1, "Message-ID"

    invoke-virtual {p0, v1}, Lorg/apache/james/mime4j/message/Message;->obtainField(Ljava/lang/String;)Lorg/apache/james/mime4j/parser/Field;

    move-result-object v0

    .line 169
    .local v0, "field":Lorg/apache/james/mime4j/parser/Field;
    if-nez v0, :cond_0

    .line 170
    const/4 v1, 0x0

    .line 172
    :goto_0
    return-object v1

    :cond_0
    invoke-interface {v0}, Lorg/apache/james/mime4j/parser/Field;->getBody()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getReplyTo()Lorg/apache/james/mime4j/field/address/AddressList;
    .locals 1

    .prologue
    .line 491
    const-string v0, "Reply-To"

    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/message/Message;->getAddressList(Ljava/lang/String;)Lorg/apache/james/mime4j/field/address/AddressList;

    move-result-object v0

    return-object v0
.end method

.method public getSender()Lorg/apache/james/mime4j/field/address/Mailbox;
    .locals 1

    .prologue
    .line 280
    const-string v0, "Sender"

    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/message/Message;->getMailbox(Ljava/lang/String;)Lorg/apache/james/mime4j/field/address/Mailbox;

    move-result-object v0

    return-object v0
.end method

.method public getSubject()Ljava/lang/String;
    .locals 2

    .prologue
    .line 197
    const-string v1, "Subject"

    invoke-virtual {p0, v1}, Lorg/apache/james/mime4j/message/Message;->obtainField(Ljava/lang/String;)Lorg/apache/james/mime4j/parser/Field;

    move-result-object v0

    check-cast v0, Lorg/apache/james/mime4j/field/UnstructuredField;

    .line 198
    .local v0, "field":Lorg/apache/james/mime4j/field/UnstructuredField;
    if-nez v0, :cond_0

    .line 199
    const/4 v1, 0x0

    .line 201
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lorg/apache/james/mime4j/field/UnstructuredField;->getValue()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getTo()Lorg/apache/james/mime4j/field/address/AddressList;
    .locals 1

    .prologue
    .line 350
    const-string v0, "To"

    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/message/Message;->getAddressList(Ljava/lang/String;)Lorg/apache/james/mime4j/field/address/AddressList;

    move-result-object v0

    return-object v0
.end method

.method public setBcc(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/james/mime4j/field/address/Address;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 480
    .local p1, "bcc":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/james/mime4j/field/address/Address;>;"
    const-string v0, "Bcc"

    invoke-direct {p0, v0, p1}, Lorg/apache/james/mime4j/message/Message;->setAddressList(Ljava/lang/String;Ljava/util/Collection;)V

    .line 481
    return-void
.end method

.method public setBcc(Lorg/apache/james/mime4j/field/address/Address;)V
    .locals 1
    .param p1, "bcc"    # Lorg/apache/james/mime4j/field/address/Address;

    .prologue
    .line 456
    const-string v0, "Bcc"

    invoke-direct {p0, v0, p1}, Lorg/apache/james/mime4j/message/Message;->setAddressList(Ljava/lang/String;Lorg/apache/james/mime4j/field/address/Address;)V

    .line 457
    return-void
.end method

.method public varargs setBcc([Lorg/apache/james/mime4j/field/address/Address;)V
    .locals 1
    .param p1, "bcc"    # [Lorg/apache/james/mime4j/field/address/Address;

    .prologue
    .line 468
    const-string v0, "Bcc"

    invoke-direct {p0, v0, p1}, Lorg/apache/james/mime4j/message/Message;->setAddressList(Ljava/lang/String;[Lorg/apache/james/mime4j/field/address/Address;)V

    .line 469
    return-void
.end method

.method public setCc(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/james/mime4j/field/address/Address;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 433
    .local p1, "cc":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/james/mime4j/field/address/Address;>;"
    const-string v0, "Cc"

    invoke-direct {p0, v0, p1}, Lorg/apache/james/mime4j/message/Message;->setAddressList(Ljava/lang/String;Ljava/util/Collection;)V

    .line 434
    return-void
.end method

.method public setCc(Lorg/apache/james/mime4j/field/address/Address;)V
    .locals 1
    .param p1, "cc"    # Lorg/apache/james/mime4j/field/address/Address;

    .prologue
    .line 409
    const-string v0, "Cc"

    invoke-direct {p0, v0, p1}, Lorg/apache/james/mime4j/message/Message;->setAddressList(Ljava/lang/String;Lorg/apache/james/mime4j/field/address/Address;)V

    .line 410
    return-void
.end method

.method public varargs setCc([Lorg/apache/james/mime4j/field/address/Address;)V
    .locals 1
    .param p1, "cc"    # [Lorg/apache/james/mime4j/field/address/Address;

    .prologue
    .line 421
    const-string v0, "Cc"

    invoke-direct {p0, v0, p1}, Lorg/apache/james/mime4j/message/Message;->setAddressList(Ljava/lang/String;[Lorg/apache/james/mime4j/field/address/Address;)V

    .line 422
    return-void
.end method

.method public setDate(Ljava/util/Date;)V
    .locals 1
    .param p1, "date"    # Ljava/util/Date;

    .prologue
    .line 248
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/apache/james/mime4j/message/Message;->setDate(Ljava/util/Date;Ljava/util/TimeZone;)V

    .line 249
    return-void
.end method

.method public setDate(Ljava/util/Date;Ljava/util/TimeZone;)V
    .locals 2
    .param p1, "date"    # Ljava/util/Date;
    .param p2, "zone"    # Ljava/util/TimeZone;

    .prologue
    .line 263
    invoke-virtual {p0}, Lorg/apache/james/mime4j/message/Message;->obtainHeader()Lorg/apache/james/mime4j/message/Header;

    move-result-object v0

    .line 265
    .local v0, "header":Lorg/apache/james/mime4j/message/Header;
    if-nez p1, :cond_0

    .line 266
    const-string v1, "Date"

    invoke-virtual {v0, v1}, Lorg/apache/james/mime4j/message/Header;->removeFields(Ljava/lang/String;)I

    .line 270
    :goto_0
    return-void

    .line 268
    :cond_0
    const-string v1, "Date"

    invoke-static {v1, p1, p2}, Lorg/apache/james/mime4j/field/Fields;->date(Ljava/lang/String;Ljava/util/Date;Ljava/util/TimeZone;)Lorg/apache/james/mime4j/field/DateTimeField;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/james/mime4j/message/Header;->setField(Lorg/apache/james/mime4j/parser/Field;)V

    goto :goto_0
.end method

.method public setFrom(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/james/mime4j/field/address/Mailbox;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 339
    .local p1, "from":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/james/mime4j/field/address/Mailbox;>;"
    const-string v0, "From"

    invoke-direct {p0, v0, p1}, Lorg/apache/james/mime4j/message/Message;->setMailboxList(Ljava/lang/String;Ljava/util/Collection;)V

    .line 340
    return-void
.end method

.method public setFrom(Lorg/apache/james/mime4j/field/address/Mailbox;)V
    .locals 1
    .param p1, "from"    # Lorg/apache/james/mime4j/field/address/Mailbox;

    .prologue
    .line 315
    const-string v0, "From"

    invoke-direct {p0, v0, p1}, Lorg/apache/james/mime4j/message/Message;->setMailboxList(Ljava/lang/String;Lorg/apache/james/mime4j/field/address/Mailbox;)V

    .line 316
    return-void
.end method

.method public varargs setFrom([Lorg/apache/james/mime4j/field/address/Mailbox;)V
    .locals 1
    .param p1, "from"    # [Lorg/apache/james/mime4j/field/address/Mailbox;

    .prologue
    .line 327
    const-string v0, "From"

    invoke-direct {p0, v0, p1}, Lorg/apache/james/mime4j/message/Message;->setMailboxList(Ljava/lang/String;[Lorg/apache/james/mime4j/field/address/Mailbox;)V

    .line 328
    return-void
.end method

.method public setReplyTo(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/james/mime4j/field/address/Address;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 527
    .local p1, "replyTo":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/james/mime4j/field/address/Address;>;"
    const-string v0, "Reply-To"

    invoke-direct {p0, v0, p1}, Lorg/apache/james/mime4j/message/Message;->setAddressList(Ljava/lang/String;Ljava/util/Collection;)V

    .line 528
    return-void
.end method

.method public setReplyTo(Lorg/apache/james/mime4j/field/address/Address;)V
    .locals 1
    .param p1, "replyTo"    # Lorg/apache/james/mime4j/field/address/Address;

    .prologue
    .line 503
    const-string v0, "Reply-To"

    invoke-direct {p0, v0, p1}, Lorg/apache/james/mime4j/message/Message;->setAddressList(Ljava/lang/String;Lorg/apache/james/mime4j/field/address/Address;)V

    .line 504
    return-void
.end method

.method public varargs setReplyTo([Lorg/apache/james/mime4j/field/address/Address;)V
    .locals 1
    .param p1, "replyTo"    # [Lorg/apache/james/mime4j/field/address/Address;

    .prologue
    .line 515
    const-string v0, "Reply-To"

    invoke-direct {p0, v0, p1}, Lorg/apache/james/mime4j/message/Message;->setAddressList(Ljava/lang/String;[Lorg/apache/james/mime4j/field/address/Address;)V

    .line 516
    return-void
.end method

.method public setSender(Lorg/apache/james/mime4j/field/address/Mailbox;)V
    .locals 1
    .param p1, "sender"    # Lorg/apache/james/mime4j/field/address/Mailbox;

    .prologue
    .line 292
    const-string v0, "Sender"

    invoke-direct {p0, v0, p1}, Lorg/apache/james/mime4j/message/Message;->setMailbox(Ljava/lang/String;Lorg/apache/james/mime4j/field/address/Mailbox;)V

    .line 293
    return-void
.end method

.method public setSubject(Ljava/lang/String;)V
    .locals 2
    .param p1, "subject"    # Ljava/lang/String;

    .prologue
    .line 215
    invoke-virtual {p0}, Lorg/apache/james/mime4j/message/Message;->obtainHeader()Lorg/apache/james/mime4j/message/Header;

    move-result-object v0

    .line 217
    .local v0, "header":Lorg/apache/james/mime4j/message/Header;
    if-nez p1, :cond_0

    .line 218
    const-string v1, "Subject"

    invoke-virtual {v0, v1}, Lorg/apache/james/mime4j/message/Header;->removeFields(Ljava/lang/String;)I

    .line 222
    :goto_0
    return-void

    .line 220
    :cond_0
    invoke-static {p1}, Lorg/apache/james/mime4j/field/Fields;->subject(Ljava/lang/String;)Lorg/apache/james/mime4j/field/UnstructuredField;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/james/mime4j/message/Header;->setField(Lorg/apache/james/mime4j/parser/Field;)V

    goto :goto_0
.end method

.method public setTo(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/james/mime4j/field/address/Address;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 386
    .local p1, "to":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/james/mime4j/field/address/Address;>;"
    const-string v0, "To"

    invoke-direct {p0, v0, p1}, Lorg/apache/james/mime4j/message/Message;->setAddressList(Ljava/lang/String;Ljava/util/Collection;)V

    .line 387
    return-void
.end method

.method public setTo(Lorg/apache/james/mime4j/field/address/Address;)V
    .locals 1
    .param p1, "to"    # Lorg/apache/james/mime4j/field/address/Address;

    .prologue
    .line 362
    const-string v0, "To"

    invoke-direct {p0, v0, p1}, Lorg/apache/james/mime4j/message/Message;->setAddressList(Ljava/lang/String;Lorg/apache/james/mime4j/field/address/Address;)V

    .line 363
    return-void
.end method

.method public varargs setTo([Lorg/apache/james/mime4j/field/address/Address;)V
    .locals 1
    .param p1, "to"    # [Lorg/apache/james/mime4j/field/address/Address;

    .prologue
    .line 374
    const-string v0, "To"

    invoke-direct {p0, v0, p1}, Lorg/apache/james/mime4j/message/Message;->setAddressList(Ljava/lang/String;[Lorg/apache/james/mime4j/field/address/Address;)V

    .line 375
    return-void
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 1
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 158
    sget-object v0, Lorg/apache/james/mime4j/message/MessageWriter;->DEFAULT:Lorg/apache/james/mime4j/message/MessageWriter;

    invoke-virtual {v0, p0, p1}, Lorg/apache/james/mime4j/message/MessageWriter;->writeEntity(Lorg/apache/james/mime4j/message/Entity;Ljava/io/OutputStream;)V

    .line 159
    return-void
.end method
