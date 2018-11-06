.class public final Ljava/security/PKCS12Attribute;
.super Ljava/lang/Object;
.source "PKCS12Attribute.java"

# interfaces
.implements Ljava/security/KeyStore$Entry$Attribute;


# static fields
.field private static final COLON_SEPARATED_HEX_PAIRS:Ljava/util/regex/Pattern;


# instance fields
.field private encoded:[B

.field private hashValue:I

.field private name:Ljava/lang/String;

.field private value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "^[0-9a-fA-F]{2}(:[0-9a-fA-F]{2})+$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Ljava/security/PKCS12Attribute;->COLON_SEPARATED_HEX_PAIRS:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v4, -0x1

    iput v4, p0, Ljava/security/PKCS12Attribute;->hashValue:I

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    new-instance v4, Ljava/lang/NullPointerException;

    invoke-direct {v4}, Ljava/lang/NullPointerException;-><init>()V

    throw v4

    :cond_1
    :try_start_0
    new-instance v2, Lsun/security/util/ObjectIdentifier;

    invoke-direct {v2, p1}, Lsun/security/util/ObjectIdentifier;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    iput-object p1, p0, Ljava/security/PKCS12Attribute;->name:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p2, v6}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x5b

    if-ne v4, v5, :cond_2

    add-int/lit8 v4, v1, -0x1

    invoke-virtual {p2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x5d

    if-ne v4, v5, :cond_2

    add-int/lit8 v4, v1, -0x1

    invoke-virtual {p2, v7, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    :goto_0
    iput-object p2, p0, Ljava/security/PKCS12Attribute;->value:Ljava/lang/String;

    :try_start_1
    invoke-direct {p0, v2, v3}, Ljava/security/PKCS12Attribute;->encode(Lsun/security/util/ObjectIdentifier;[Ljava/lang/String;)[B

    move-result-object v4

    iput-object v4, p0, Ljava/security/PKCS12Attribute;->encoded:[B
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :catch_0
    move-exception v0

    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v5, "Incorrect format: name"

    invoke-direct {v4, v5, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    :cond_2
    new-array v3, v7, [Ljava/lang/String;

    aput-object p2, v3, v6

    goto :goto_0

    :catch_1
    move-exception v0

    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v5, "Incorrect format: value"

    invoke-direct {v4, v5, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
.end method

.method public constructor <init>([B)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, -0x1

    iput v1, p0, Ljava/security/PKCS12Attribute;->hashValue:I

    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    iput-object v1, p0, Ljava/security/PKCS12Attribute;->encoded:[B

    :try_start_0
    invoke-direct {p0, p1}, Ljava/security/PKCS12Attribute;->parse([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Incorrect format: encoded"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private encode(Lsun/security/util/ObjectIdentifier;[Ljava/lang/String;)[B
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v6, 0x0

    new-instance v1, Lsun/security/util/DerOutputStream;

    invoke-direct {v1}, Lsun/security/util/DerOutputStream;-><init>()V

    invoke-virtual {v1, p1}, Lsun/security/util/DerOutputStream;->putOID(Lsun/security/util/ObjectIdentifier;)V

    new-instance v0, Lsun/security/util/DerOutputStream;

    invoke-direct {v0}, Lsun/security/util/DerOutputStream;-><init>()V

    array-length v7, p2

    move v5, v6

    :goto_0
    if-ge v5, v7, :cond_2

    aget-object v4, p2, v5

    sget-object v8, Ljava/security/PKCS12Attribute;->COLON_SEPARATED_HEX_PAIRS:Ljava/util/regex/Pattern;

    invoke-virtual {v8, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/regex/Matcher;->matches()Z

    move-result v8

    if-eqz v8, :cond_1

    new-instance v8, Ljava/math/BigInteger;

    const-string/jumbo v9, ":"

    const-string/jumbo v10, ""

    invoke-virtual {v4, v9, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0x10

    invoke-direct {v8, v9, v10}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v8}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v3

    aget-byte v8, v3, v6

    if-nez v8, :cond_0

    array-length v8, v3

    const/4 v9, 0x1

    invoke-static {v3, v9, v8}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v3

    :cond_0
    invoke-virtual {v0, v3}, Lsun/security/util/DerOutputStream;->putOctetString([B)V

    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0, v4}, Lsun/security/util/DerOutputStream;->putUTF8String(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    const/16 v5, 0x31

    invoke-virtual {v1, v5, v0}, Lsun/security/util/DerOutputStream;->write(BLsun/security/util/DerOutputStream;)V

    new-instance v2, Lsun/security/util/DerOutputStream;

    invoke-direct {v2}, Lsun/security/util/DerOutputStream;-><init>()V

    const/16 v5, 0x30

    invoke-virtual {v2, v5, v1}, Lsun/security/util/DerOutputStream;->write(BLsun/security/util/DerOutputStream;)V

    invoke-virtual {v2}, Lsun/security/util/DerOutputStream;->toByteArray()[B

    move-result-object v5

    return-object v5
.end method

.method private parse([B)V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v12, 0x2

    const/4 v11, 0x0

    const/4 v10, 0x1

    new-instance v3, Lsun/security/util/DerInputStream;

    invoke-direct {v3, p1}, Lsun/security/util/DerInputStream;-><init>([B)V

    invoke-virtual {v3, v12}, Lsun/security/util/DerInputStream;->getSequence(I)[Lsun/security/util/DerValue;

    move-result-object v1

    aget-object v8, v1, v11

    invoke-virtual {v8}, Lsun/security/util/DerValue;->getOID()Lsun/security/util/ObjectIdentifier;

    move-result-object v6

    new-instance v0, Lsun/security/util/DerInputStream;

    aget-object v8, v1, v10

    invoke-virtual {v8}, Lsun/security/util/DerValue;->toByteArray()[B

    move-result-object v8

    invoke-direct {v0, v8}, Lsun/security/util/DerInputStream;-><init>([B)V

    invoke-virtual {v0, v10}, Lsun/security/util/DerInputStream;->getSet(I)[Lsun/security/util/DerValue;

    move-result-object v2

    array-length v8, v2

    new-array v7, v8, [Ljava/lang/String;

    const/4 v4, 0x0

    :goto_0
    array-length v8, v2

    if-ge v4, v8, :cond_7

    aget-object v8, v2, v4

    iget-byte v8, v8, Lsun/security/util/DerValue;->tag:B

    const/4 v9, 0x4

    if-ne v8, v9, :cond_0

    aget-object v8, v2, v4

    invoke-virtual {v8}, Lsun/security/util/DerValue;->getOctetString()[B

    move-result-object v8

    invoke-static {v8}, Lsun/security/util/Debug;->toString([B)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v4

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    aget-object v8, v2, v4

    invoke-virtual {v8}, Lsun/security/util/DerValue;->getAsString()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1

    aput-object v5, v7, v4

    goto :goto_1

    :cond_1
    aget-object v8, v2, v4

    iget-byte v8, v8, Lsun/security/util/DerValue;->tag:B

    const/4 v9, 0x6

    if-ne v8, v9, :cond_2

    aget-object v8, v2, v4

    invoke-virtual {v8}, Lsun/security/util/DerValue;->getOID()Lsun/security/util/ObjectIdentifier;

    move-result-object v8

    invoke-virtual {v8}, Lsun/security/util/ObjectIdentifier;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v4

    goto :goto_1

    :cond_2
    aget-object v8, v2, v4

    iget-byte v8, v8, Lsun/security/util/DerValue;->tag:B

    const/16 v9, 0x18

    if-ne v8, v9, :cond_3

    aget-object v8, v2, v4

    invoke-virtual {v8}, Lsun/security/util/DerValue;->getGeneralizedTime()Ljava/util/Date;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v4

    goto :goto_1

    :cond_3
    aget-object v8, v2, v4

    iget-byte v8, v8, Lsun/security/util/DerValue;->tag:B

    const/16 v9, 0x17

    if-ne v8, v9, :cond_4

    aget-object v8, v2, v4

    invoke-virtual {v8}, Lsun/security/util/DerValue;->getUTCTime()Ljava/util/Date;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v4

    goto :goto_1

    :cond_4
    aget-object v8, v2, v4

    iget-byte v8, v8, Lsun/security/util/DerValue;->tag:B

    if-ne v8, v12, :cond_5

    aget-object v8, v2, v4

    invoke-virtual {v8}, Lsun/security/util/DerValue;->getBigInteger()Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual {v8}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v4

    goto :goto_1

    :cond_5
    aget-object v8, v2, v4

    iget-byte v8, v8, Lsun/security/util/DerValue;->tag:B

    if-ne v8, v10, :cond_6

    aget-object v8, v2, v4

    invoke-virtual {v8}, Lsun/security/util/DerValue;->getBoolean()Z

    move-result v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v4

    goto :goto_1

    :cond_6
    aget-object v8, v2, v4

    invoke-virtual {v8}, Lsun/security/util/DerValue;->getDataBytes()[B

    move-result-object v8

    invoke-static {v8}, Lsun/security/util/Debug;->toString([B)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v4

    goto :goto_1

    :cond_7
    invoke-virtual {v6}, Lsun/security/util/ObjectIdentifier;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Ljava/security/PKCS12Attribute;->name:Ljava/lang/String;

    array-length v8, v7

    if-ne v8, v10, :cond_8

    aget-object v8, v7, v11

    :goto_2
    iput-object v8, p0, Ljava/security/PKCS12Attribute;->value:Ljava/lang/String;

    return-void

    :cond_8
    invoke-static {v7}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    goto :goto_2
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    instance-of v0, p1, Ljava/security/PKCS12Attribute;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    :cond_1
    iget-object v0, p0, Ljava/security/PKCS12Attribute;->encoded:[B

    check-cast p1, Ljava/security/PKCS12Attribute;

    invoke-virtual {p1}, Ljava/security/PKCS12Attribute;->getEncoded()[B

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    return v0
.end method

.method public getEncoded()[B
    .locals 1

    iget-object v0, p0, Ljava/security/PKCS12Attribute;->encoded:[B

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljava/security/PKCS12Attribute;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljava/security/PKCS12Attribute;->value:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Ljava/security/PKCS12Attribute;->hashValue:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Ljava/security/PKCS12Attribute;->encoded:[B

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    :cond_0
    iget v0, p0, Ljava/security/PKCS12Attribute;->hashValue:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Ljava/security/PKCS12Attribute;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljava/security/PKCS12Attribute;->value:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
