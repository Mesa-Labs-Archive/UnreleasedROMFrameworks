.class public Lcom/android/server/wifi/hotspot2/LegacyPasspointConfigParser;
.super Ljava/lang/Object;
.source "LegacyPasspointConfigParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/hotspot2/LegacyPasspointConfigParser$InternalNode;,
        Lcom/android/server/wifi/hotspot2/LegacyPasspointConfigParser$LeafNode;,
        Lcom/android/server/wifi/hotspot2/LegacyPasspointConfigParser$Node;
    }
.end annotation


# static fields
.field private static final END_OF_INTERNAL_NODE_INDICATOR:Ljava/lang/String; = "."

.field private static final LONG_ARRAY_SEPARATOR:Ljava/lang/String; = ","

.field private static final START_OF_INTERNAL_NODE_INDICATOR:C = '+'

.field private static final STRING_PREFIX_INDICATOR:C = ':'

.field private static final STRING_VALUE_INDICATOR:C = '='

.field private static final TAG:Ljava/lang/String; = "LegacyPasspointConfigParser"

.field private static final TAG_CREDENTIAL:Ljava/lang/String; = "Credential"

.field private static final TAG_FQDN:Ljava/lang/String; = "FQDN"

.field private static final TAG_FRIENDLY_NAME:Ljava/lang/String; = "FriendlyName"

.field private static final TAG_HOMESP:Ljava/lang/String; = "HomeSP"

.field private static final TAG_IMSI:Ljava/lang/String; = "IMSI"

.field private static final TAG_MANAGEMENT_TREE:Ljava/lang/String; = "MgmtTree"

.field private static final TAG_PER_PROVIDER_SUBSCRIPTION:Ljava/lang/String; = "PerProviderSubscription"

.field private static final TAG_REALM:Ljava/lang/String; = "Realm"

.field private static final TAG_ROAMING_CONSORTIUM_OI:Ljava/lang/String; = "RoamingConsortiumOI"

.field private static final TAG_SIM:Ljava/lang/String; = "SIM"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static buildNode(Ljava/io/BufferedReader;)Lcom/android/server/wifi/hotspot2/LegacyPasspointConfigParser$Node;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v5, 0x0

    const/4 v2, 0x0

    :cond_0
    invoke-virtual {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    :cond_1
    if-nez v2, :cond_2

    return-object v5

    :cond_2
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, "."

    invoke-static {v4, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    return-object v5

    :cond_3
    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v2, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/wifi/hotspot2/LegacyPasspointConfigParser;->parseLine([B)Landroid/util/Pair;

    move-result-object v3

    iget-object v4, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-eqz v4, :cond_4

    new-instance v6, Lcom/android/server/wifi/hotspot2/LegacyPasspointConfigParser$LeafNode;

    iget-object v4, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    iget-object v5, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    invoke-direct {v6, v4, v5}, Lcom/android/server/wifi/hotspot2/LegacyPasspointConfigParser$LeafNode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v6

    :cond_4
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    :goto_0
    invoke-static {p0}, Lcom/android/server/wifi/hotspot2/LegacyPasspointConfigParser;->buildNode(Ljava/io/BufferedReader;)Lcom/android/server/wifi/hotspot2/LegacyPasspointConfigParser$Node;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_5
    new-instance v5, Lcom/android/server/wifi/hotspot2/LegacyPasspointConfigParser$InternalNode;

    iget-object v4, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-direct {v5, v4, v1}, Lcom/android/server/wifi/hotspot2/LegacyPasspointConfigParser$InternalNode;-><init>(Ljava/lang/String;Ljava/util/List;)V

    return-object v5
.end method

.method private static getValue(Lcom/android/server/wifi/hotspot2/LegacyPasspointConfigParser$Node;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/LegacyPasspointConfigParser$Node;->getValue()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Attempt to retreive value from non-leaf node: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/LegacyPasspointConfigParser$Node;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/LegacyPasspointConfigParser$Node;->getValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static parseLine([B)Landroid/util/Pair;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v4, 0x0

    invoke-static {p0, v4}, Lcom/android/server/wifi/hotspot2/LegacyPasspointConfigParser;->parseString([BI)Landroid/util/Pair;

    move-result-object v2

    iget-object v4, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :try_start_0
    aget-byte v4, p0, v0

    const/16 v5, 0x2b

    if-ne v4, v5, :cond_0

    iget-object v4, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v4

    return-object v4

    :cond_0
    aget-byte v4, p0, v0

    const/16 v5, 0x3d

    if-eq v4, v5, :cond_1

    new-instance v4, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Invalid line - missing both node and value indicator: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    new-instance v6, Ljava/lang/String;

    sget-object v7, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v6, p0, v7}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v1

    new-instance v4, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Invalid line - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/IndexOutOfBoundsException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    new-instance v6, Ljava/lang/String;

    sget-object v7, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v6, p0, v7}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_1
    add-int/lit8 v4, v0, 0x1

    invoke-static {p0, v4}, Lcom/android/server/wifi/hotspot2/LegacyPasspointConfigParser;->parseString([BI)Landroid/util/Pair;

    move-result-object v3

    iget-object v4, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    iget-object v5, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    invoke-static {v4, v5}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v4

    return-object v4
.end method

.method private static parseLongArray(Ljava/lang/String;)[J
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string/jumbo v4, ","

    invoke-virtual {p0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    new-array v2, v4, [J

    const/4 v1, 0x0

    :goto_0
    array-length v4, v2

    if-ge v1, v4, :cond_0

    :try_start_0
    aget-object v4, v3, v1

    const/16 v5, 0x10

    invoke-static {v4, v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v4

    aput-wide v4, v2, v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v4, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Invalid long integer value: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v3, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_0
    return-object v2
.end method

.method private static parseString([BI)Landroid/util/Pair;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BI)",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v4, -0x1

    move v1, p1

    :goto_0
    array-length v6, p0

    if-ge v1, v6, :cond_0

    aget-byte v6, p0, v1

    const/16 v7, 0x3a

    if-ne v6, v7, :cond_1

    move v4, v1

    :cond_0
    const/4 v6, -0x1

    if-ne v4, v6, :cond_2

    new-instance v6, Ljava/io/IOException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Invalid line - missing string prefix: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    new-instance v8, Ljava/lang/String;

    sget-object v9, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v8, p0, v9}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :try_start_0
    new-instance v3, Ljava/lang/String;

    sub-int v6, v4, p1

    sget-object v7, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v3, p0, p1, v6, v7}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    const/16 v6, 0x10

    invoke-static {v3, v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    add-int/lit8 v5, v4, 0x1

    add-int v6, v5, v2

    array-length v7, p0

    if-le v6, v7, :cond_3

    array-length v6, p0

    sub-int v2, v6, v5

    :cond_3
    new-instance v6, Ljava/lang/String;

    sget-object v7, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v6, p0, v5, v2, v7}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    add-int v7, v5, v2

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    return-object v6

    :catch_0
    move-exception v0

    new-instance v6, Ljava/io/IOException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Invalid line - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ": "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    new-instance v8, Ljava/lang/String;

    sget-object v9, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v8, p0, v9}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6
.end method

.method private static processCredentialNode(Lcom/android/server/wifi/hotspot2/LegacyPasspointConfigParser$Node;Lcom/android/server/wifi/hotspot2/LegacyPasspointConfig;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/LegacyPasspointConfigParser$Node;->getChildren()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_0

    new-instance v2, Ljava/io/IOException;

    const-string/jumbo v3, "Credential node should contain at least one child node"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/LegacyPasspointConfigParser$Node;->getChildren()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wifi/hotspot2/LegacyPasspointConfigParser$Node;

    invoke-virtual {v0}, Lcom/android/server/wifi/hotspot2/LegacyPasspointConfigParser$Node;->getName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "Realm"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {v0}, Lcom/android/server/wifi/hotspot2/LegacyPasspointConfigParser;->getValue(Lcom/android/server/wifi/hotspot2/LegacyPasspointConfigParser$Node;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lcom/android/server/wifi/hotspot2/LegacyPasspointConfig;->mRealm:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const-string/jumbo v3, "SIM"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {v0, p1}, Lcom/android/server/wifi/hotspot2/LegacyPasspointConfigParser;->processSimNode(Lcom/android/server/wifi/hotspot2/LegacyPasspointConfigParser$Node;Lcom/android/server/wifi/hotspot2/LegacyPasspointConfig;)V

    goto :goto_0

    :cond_2
    const-string/jumbo v2, "LegacyPasspointConfigParser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Ignore uninterested field under Credential: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/server/wifi/hotspot2/LegacyPasspointConfigParser$Node;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    return-void
.end method

.method private static processHomeSPNode(Lcom/android/server/wifi/hotspot2/LegacyPasspointConfigParser$Node;Lcom/android/server/wifi/hotspot2/LegacyPasspointConfig;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/LegacyPasspointConfigParser$Node;->getChildren()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_0

    new-instance v2, Ljava/io/IOException;

    const-string/jumbo v3, "HomeSP node should contain at least one child node"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/LegacyPasspointConfigParser$Node;->getChildren()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wifi/hotspot2/LegacyPasspointConfigParser$Node;

    invoke-virtual {v0}, Lcom/android/server/wifi/hotspot2/LegacyPasspointConfigParser$Node;->getName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "FQDN"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {v0}, Lcom/android/server/wifi/hotspot2/LegacyPasspointConfigParser;->getValue(Lcom/android/server/wifi/hotspot2/LegacyPasspointConfigParser$Node;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lcom/android/server/wifi/hotspot2/LegacyPasspointConfig;->mFqdn:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const-string/jumbo v3, "FriendlyName"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {v0}, Lcom/android/server/wifi/hotspot2/LegacyPasspointConfigParser;->getValue(Lcom/android/server/wifi/hotspot2/LegacyPasspointConfigParser$Node;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lcom/android/server/wifi/hotspot2/LegacyPasspointConfig;->mFriendlyName:Ljava/lang/String;

    goto :goto_0

    :cond_2
    const-string/jumbo v3, "RoamingConsortiumOI"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {v0}, Lcom/android/server/wifi/hotspot2/LegacyPasspointConfigParser;->getValue(Lcom/android/server/wifi/hotspot2/LegacyPasspointConfigParser$Node;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/wifi/hotspot2/LegacyPasspointConfigParser;->parseLongArray(Ljava/lang/String;)[J

    move-result-object v2

    iput-object v2, p1, Lcom/android/server/wifi/hotspot2/LegacyPasspointConfig;->mRoamingConsortiumOis:[J

    goto :goto_0

    :cond_3
    const-string/jumbo v2, "LegacyPasspointConfigParser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Ignore uninterested field under HomeSP: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/server/wifi/hotspot2/LegacyPasspointConfigParser$Node;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    return-void
.end method

.method private static processPpsNode(Lcom/android/server/wifi/hotspot2/LegacyPasspointConfigParser$Node;)Lcom/android/server/wifi/hotspot2/LegacyPasspointConfig;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/LegacyPasspointConfigParser$Node;->getChildren()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/LegacyPasspointConfigParser$Node;->getChildren()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_1

    :cond_0
    new-instance v4, Ljava/io/IOException;

    const-string/jumbo v5, "PerProviderSubscription node should contain one instance node"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_1
    const-string/jumbo v4, "PerProviderSubscription"

    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/LegacyPasspointConfigParser$Node;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    new-instance v4, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Unexpected name for PPS node: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/LegacyPasspointConfigParser$Node;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_2
    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/LegacyPasspointConfigParser$Node;->getChildren()Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wifi/hotspot2/LegacyPasspointConfigParser$Node;

    invoke-virtual {v1}, Lcom/android/server/wifi/hotspot2/LegacyPasspointConfigParser$Node;->getChildren()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_3

    new-instance v4, Ljava/io/IOException;

    const-string/jumbo v5, "PPS instance node doesn\'t contained any children"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_3
    new-instance v0, Lcom/android/server/wifi/hotspot2/LegacyPasspointConfig;

    invoke-direct {v0}, Lcom/android/server/wifi/hotspot2/LegacyPasspointConfig;-><init>()V

    invoke-virtual {v1}, Lcom/android/server/wifi/hotspot2/LegacyPasspointConfigParser$Node;->getChildren()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wifi/hotspot2/LegacyPasspointConfigParser$Node;

    invoke-virtual {v2}, Lcom/android/server/wifi/hotspot2/LegacyPasspointConfigParser$Node;->getName()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "HomeSP"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-static {v2, v0}, Lcom/android/server/wifi/hotspot2/LegacyPasspointConfigParser;->processHomeSPNode(Lcom/android/server/wifi/hotspot2/LegacyPasspointConfigParser$Node;Lcom/android/server/wifi/hotspot2/LegacyPasspointConfig;)V

    goto :goto_0

    :cond_4
    const-string/jumbo v5, "Credential"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-static {v2, v0}, Lcom/android/server/wifi/hotspot2/LegacyPasspointConfigParser;->processCredentialNode(Lcom/android/server/wifi/hotspot2/LegacyPasspointConfigParser$Node;Lcom/android/server/wifi/hotspot2/LegacyPasspointConfig;)V

    goto :goto_0

    :cond_5
    const-string/jumbo v4, "LegacyPasspointConfigParser"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Ignore uninterested field under PPS instance: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Lcom/android/server/wifi/hotspot2/LegacyPasspointConfigParser$Node;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_6
    iget-object v4, v0, Lcom/android/server/wifi/hotspot2/LegacyPasspointConfig;->mFqdn:Ljava/lang/String;

    if-nez v4, :cond_7

    new-instance v4, Ljava/io/IOException;

    const-string/jumbo v5, "PPS instance missing FQDN"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_7
    return-object v0
.end method

.method private static processSimNode(Lcom/android/server/wifi/hotspot2/LegacyPasspointConfigParser$Node;Lcom/android/server/wifi/hotspot2/LegacyPasspointConfig;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/LegacyPasspointConfigParser$Node;->getChildren()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_0

    new-instance v2, Ljava/io/IOException;

    const-string/jumbo v3, "SIM node should contain at least one child node"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/LegacyPasspointConfigParser$Node;->getChildren()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wifi/hotspot2/LegacyPasspointConfigParser$Node;

    invoke-virtual {v0}, Lcom/android/server/wifi/hotspot2/LegacyPasspointConfigParser$Node;->getName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "IMSI"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {v0}, Lcom/android/server/wifi/hotspot2/LegacyPasspointConfigParser;->getValue(Lcom/android/server/wifi/hotspot2/LegacyPasspointConfigParser$Node;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lcom/android/server/wifi/hotspot2/LegacyPasspointConfig;->mImsi:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const-string/jumbo v2, "LegacyPasspointConfigParser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Ignore uninterested field under SIM: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/server/wifi/hotspot2/LegacyPasspointConfigParser$Node;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public parseConfig(Ljava/lang/String;)Ljava/util/Map;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/wifi/hotspot2/LegacyPasspointConfig;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    new-instance v2, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/FileReader;

    invoke-direct {v7, p1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    invoke-static {v2}, Lcom/android/server/wifi/hotspot2/LegacyPasspointConfigParser;->buildNode(Ljava/io/BufferedReader;)Lcom/android/server/wifi/hotspot2/LegacyPasspointConfigParser$Node;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-virtual {v6}, Lcom/android/server/wifi/hotspot2/LegacyPasspointConfigParser$Node;->getChildren()Ljava/util/List;

    move-result-object v7

    if-nez v7, :cond_1

    :cond_0
    const-string/jumbo v7, "LegacyPasspointConfigParser"

    const-string/jumbo v8, "Empty configuration data"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_1
    const-string/jumbo v7, "MgmtTree"

    invoke-virtual {v6}, Lcom/android/server/wifi/hotspot2/LegacyPasspointConfigParser$Node;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    new-instance v7, Ljava/io/IOException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Unexpected root node: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v6}, Lcom/android/server/wifi/hotspot2/LegacyPasspointConfigParser$Node;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_2
    invoke-virtual {v6}, Lcom/android/server/wifi/hotspot2/LegacyPasspointConfigParser$Node;->getChildren()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wifi/hotspot2/LegacyPasspointConfigParser$Node;

    invoke-static {v3}, Lcom/android/server/wifi/hotspot2/LegacyPasspointConfigParser;->processPpsNode(Lcom/android/server/wifi/hotspot2/LegacyPasspointConfigParser$Node;)Lcom/android/server/wifi/hotspot2/LegacyPasspointConfig;

    move-result-object v0

    iget-object v7, v0, Lcom/android/server/wifi/hotspot2/LegacyPasspointConfig;->mFqdn:Ljava/lang/String;

    invoke-interface {v1, v7, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    return-object v1
.end method
