.class public Lcom/android/server/wifi/p2p/common/Hash;
.super Ljava/lang/Object;
.source "Hash.java"


# static fields
.field private static final CONTACT_NUMBER:[Ljava/lang/String;

.field static LONG_BYTES:I = 0x0

.field private static final TAG:Ljava/lang/String; = "Hash"

.field static checksum:Ljava/util/zip/Checksum;

.field static final key:[B

.field private static m:J

.field private static mV0:J

.field private static final mV0_init:J

.field private static mV1:J

.field private static final mV1_init:J

.field private static mV2:J

.field private static final mV2_init:J

.field private static mV3:J

.field private static final mV3_init:J

.field private static m_idx:I

.field private static msg_byte_counter:B


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/16 v5, 0x8

    const/4 v4, 0x0

    sput v5, Lcom/android/server/wifi/p2p/common/Hash;->LONG_BYTES:I

    sput-byte v4, Lcom/android/server/wifi/p2p/common/Hash;->msg_byte_counter:B

    sput v4, Lcom/android/server/wifi/p2p/common/Hash;->m_idx:I

    const-string/jumbo v0, "2309851Cdgewlk3E"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lcom/android/server/wifi/p2p/common/Hash;->key:[B

    sget-object v0, Lcom/android/server/wifi/p2p/common/Hash;->key:[B

    invoke-static {v0, v4}, Lcom/android/server/wifi/p2p/common/Hash;->bytesLEtoLong([BI)J

    move-result-wide v0

    const-wide v2, 0x736f6d6570736575L    # 1.0986868386607877E248

    xor-long/2addr v0, v2

    sput-wide v0, Lcom/android/server/wifi/p2p/common/Hash;->mV0_init:J

    sget-object v0, Lcom/android/server/wifi/p2p/common/Hash;->key:[B

    invoke-static {v0, v5}, Lcom/android/server/wifi/p2p/common/Hash;->bytesLEtoLong([BI)J

    move-result-wide v0

    const-wide v2, 0x646f72616e646f6dL    # 6.222199573468475E175

    xor-long/2addr v0, v2

    sput-wide v0, Lcom/android/server/wifi/p2p/common/Hash;->mV1_init:J

    sget-object v0, Lcom/android/server/wifi/p2p/common/Hash;->key:[B

    invoke-static {v0, v4}, Lcom/android/server/wifi/p2p/common/Hash;->bytesLEtoLong([BI)J

    move-result-wide v0

    const-wide v2, 0x6c7967656e657261L    # 3.4208747916531402E214

    xor-long/2addr v0, v2

    sput-wide v0, Lcom/android/server/wifi/p2p/common/Hash;->mV2_init:J

    sget-object v0, Lcom/android/server/wifi/p2p/common/Hash;->key:[B

    invoke-static {v0, v5}, Lcom/android/server/wifi/p2p/common/Hash;->bytesLEtoLong([BI)J

    move-result-wide v0

    const-wide v2, 0x7465646279746573L    # 4.901176695720602E252

    xor-long/2addr v0, v2

    sput-wide v0, Lcom/android/server/wifi/p2p/common/Hash;->mV3_init:J

    new-instance v0, Ljava/util/zip/CRC32;

    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    sput-object v0, Lcom/android/server/wifi/p2p/common/Hash;->checksum:Ljava/util/zip/Checksum;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "data1"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/server/wifi/p2p/common/Hash;->CONTACT_NUMBER:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static bytesLEtoLong([BI)J
    .locals 9

    const/16 v8, 0x8

    array-length v1, p0

    sub-int/2addr v1, p1

    if-ge v1, v8, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Less then 8 bytes starting from offset:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v8, :cond_1

    add-int v1, v0, p1

    aget-byte v1, p0, v1

    int-to-long v4, v1

    const-wide/16 v6, 0xff

    and-long/2addr v4, v6

    mul-int/lit8 v1, v0, 0x8

    shl-long/2addr v4, v1

    or-long/2addr v2, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-wide v2
.end method

.method private static finish()J
    .locals 6

    sget-byte v0, Lcom/android/server/wifi/p2p/common/Hash;->msg_byte_counter:B

    :goto_0
    sget v1, Lcom/android/server/wifi/p2p/common/Hash;->m_idx:I

    sget v2, Lcom/android/server/wifi/p2p/common/Hash;->LONG_BYTES:I

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_0

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/android/server/wifi/p2p/common/Hash;->updateHash(B)V

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lcom/android/server/wifi/p2p/common/Hash;->updateHash(B)V

    sget-wide v2, Lcom/android/server/wifi/p2p/common/Hash;->mV2:J

    const-wide/16 v4, 0xff

    xor-long/2addr v2, v4

    sput-wide v2, Lcom/android/server/wifi/p2p/common/Hash;->mV2:J

    invoke-static {}, Lcom/android/server/wifi/p2p/common/Hash;->siphash_round()V

    invoke-static {}, Lcom/android/server/wifi/p2p/common/Hash;->siphash_round()V

    invoke-static {}, Lcom/android/server/wifi/p2p/common/Hash;->siphash_round()V

    invoke-static {}, Lcom/android/server/wifi/p2p/common/Hash;->siphash_round()V

    sget-wide v2, Lcom/android/server/wifi/p2p/common/Hash;->mV0:J

    sget-wide v4, Lcom/android/server/wifi/p2p/common/Hash;->mV1:J

    xor-long/2addr v2, v4

    sget-wide v4, Lcom/android/server/wifi/p2p/common/Hash;->mV2:J

    xor-long/2addr v2, v4

    sget-wide v4, Lcom/android/server/wifi/p2p/common/Hash;->mV3:J

    xor-long/2addr v2, v4

    sput-wide v2, Lcom/android/server/wifi/p2p/common/Hash;->mV0:J

    sget-wide v2, Lcom/android/server/wifi/p2p/common/Hash;->mV0:J

    return-wide v2
.end method

.method public static getDataCheckByte(Ljava/lang/String;)[B
    .locals 10

    const-wide/16 v8, 0xff

    const/4 v6, 0x0

    const/4 v4, 0x2

    new-array v0, v4, [B

    fill-array-data v0, :array_0

    const-string/jumbo v4, "00000000"

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    sget-object v4, Lcom/android/server/wifi/p2p/common/Hash;->checksum:Ljava/util/zip/Checksum;

    array-length v5, v1

    invoke-interface {v4, v1, v6, v5}, Ljava/util/zip/Checksum;->update([BII)V

    sget-object v4, Lcom/android/server/wifi/p2p/common/Hash;->checksum:Ljava/util/zip/Checksum;

    invoke-interface {v4}, Ljava/util/zip/Checksum;->getValue()J

    move-result-wide v2

    sget-object v4, Lcom/android/server/wifi/p2p/common/Hash;->checksum:Ljava/util/zip/Checksum;

    invoke-interface {v4}, Ljava/util/zip/Checksum;->reset()V

    const/16 v4, 0x8

    ushr-long v4, v2, v4

    and-long/2addr v4, v8

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v0, v6

    and-long v4, v2, v8

    long-to-int v4, v4

    int-to-byte v4, v4

    const/4 v5, 0x1

    aput-byte v4, v0, v5

    :cond_0
    return-object v0

    :array_0
    .array-data 1
        0x0t
        0x0t
    .end array-data
.end method

.method public static getDataCheckString(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    const-string/jumbo v4, "00000000"

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string/jumbo v4, "0000"

    return-object v4

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sget-object v4, Lcom/android/server/wifi/p2p/common/Hash;->checksum:Ljava/util/zip/Checksum;

    array-length v5, v0

    const/4 v6, 0x0

    invoke-interface {v4, v0, v6, v5}, Ljava/util/zip/Checksum;->update([BII)V

    sget-object v4, Lcom/android/server/wifi/p2p/common/Hash;->checksum:Ljava/util/zip/Checksum;

    invoke-interface {v4}, Ljava/util/zip/Checksum;->getValue()J

    move-result-wide v2

    sget-object v4, Lcom/android/server/wifi/p2p/common/Hash;->checksum:Ljava/util/zip/Checksum;

    invoke-interface {v4}, Ljava/util/zip/Checksum;->reset()V

    invoke-static {v2, v3}, Lcom/android/server/wifi/p2p/common/Hash;->longToString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x4

    invoke-virtual {v1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v4, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public static getSipHashByte(Ljava/lang/String;)[B
    .locals 2

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/wifi/p2p/common/Hash;->hash([B)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/android/server/wifi/p2p/common/Hash;->longToBytes(J)[B

    move-result-object v0

    return-object v0
.end method

.method public static getSipHashString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/wifi/p2p/common/Hash;->hash([B)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/android/server/wifi/p2p/common/Hash;->longToString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static hash([B)J
    .locals 4

    invoke-static {}, Lcom/android/server/wifi/p2p/common/Hash;->initialize()V

    const/4 v0, 0x0

    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    aget-byte v1, p0, v0

    invoke-static {v1}, Lcom/android/server/wifi/p2p/common/Hash;->updateHash(B)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/android/server/wifi/p2p/common/Hash;->finish()J

    move-result-wide v2

    return-wide v2
.end method

.method private static initialize()V
    .locals 2

    sget-wide v0, Lcom/android/server/wifi/p2p/common/Hash;->mV0_init:J

    sput-wide v0, Lcom/android/server/wifi/p2p/common/Hash;->mV0:J

    sget-wide v0, Lcom/android/server/wifi/p2p/common/Hash;->mV1_init:J

    sput-wide v0, Lcom/android/server/wifi/p2p/common/Hash;->mV1:J

    sget-wide v0, Lcom/android/server/wifi/p2p/common/Hash;->mV2_init:J

    sput-wide v0, Lcom/android/server/wifi/p2p/common/Hash;->mV2:J

    sget-wide v0, Lcom/android/server/wifi/p2p/common/Hash;->mV3_init:J

    sput-wide v0, Lcom/android/server/wifi/p2p/common/Hash;->mV3:J

    const/4 v0, 0x0

    sput-byte v0, Lcom/android/server/wifi/p2p/common/Hash;->msg_byte_counter:B

    return-void
.end method

.method private static longToBytes(J)[B
    .locals 6

    const-wide/16 v4, 0xff

    const/4 v1, 0x3

    new-array v0, v1, [B

    const/16 v1, 0x38

    ushr-long v2, p0, v1

    and-long/2addr v2, v4

    long-to-int v1, v2

    int-to-byte v1, v1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    const/16 v1, 0x30

    ushr-long v2, p0, v1

    and-long/2addr v2, v4

    long-to-int v1, v2

    int-to-byte v1, v1

    const/4 v2, 0x1

    aput-byte v1, v0, v2

    const/16 v1, 0x28

    ushr-long v2, p0, v1

    and-long/2addr v2, v4

    long-to-int v1, v2

    int-to-byte v1, v1

    const/4 v2, 0x2

    aput-byte v1, v0, v2

    return-object v0
.end method

.method private static longToString(J)Ljava/lang/String;
    .locals 10

    const/4 v8, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x12

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v0, 0x7

    :goto_0
    if-ltz v0, :cond_0

    const-string/jumbo v2, "%02x"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    mul-int/lit8 v4, v0, 0x8

    ushr-long v4, p0, v4

    const-wide/16 v6, 0xff

    and-long/2addr v4, v6

    long-to-int v4, v4

    int-to-byte v4, v4

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static retrieveDB(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 12

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v11, 0x0

    const-string/jumbo v0, "Hash"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, " hash retrieveDB hash : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/server/wifi/p2p/common/Hash;->CONTACT_NUMBER:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mimetype=\'vnd.android.cursor.item/phone_v2\' AND data12 LIKE \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "%\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_3

    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "data1"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/android/server/wifi/p2p/common/Util;->cutNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/wifi/p2p/common/Hash;->getDataCheckString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "Hash"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, " hash retrieveDB - CHECK  : true  -- "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "!="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v11, v9

    goto :goto_0

    :cond_0
    const-string/jumbo v0, "Hash"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, " hash retrieveDB - CHECK  : false  -- "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "!="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v10

    :try_start_1
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1
    :goto_1
    return-object v11

    :cond_2
    :try_start_2
    const-string/jumbo v0, "Hash"

    const-string/jumbo v1, " hash retrieveDB - failed to cursor moveToNext"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_2
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :cond_3
    :try_start_3
    const-string/jumbo v0, "Hash"

    const-string/jumbo v1, " hash retrieveDB - CHECK :false - cursor is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    if-eqz v6, :cond_4

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0
.end method

.method private static rotateLeft(JI)J
    .locals 4

    shl-long v0, p0, p2

    rsub-int/lit8 v2, p2, 0x40

    ushr-long v2, p0, v2

    or-long/2addr v0, v2

    return-wide v0
.end method

.method private static siphash_round()V
    .locals 5

    const/16 v4, 0x20

    sget-wide v0, Lcom/android/server/wifi/p2p/common/Hash;->mV0:J

    sget-wide v2, Lcom/android/server/wifi/p2p/common/Hash;->mV1:J

    add-long/2addr v0, v2

    sput-wide v0, Lcom/android/server/wifi/p2p/common/Hash;->mV0:J

    sget-wide v0, Lcom/android/server/wifi/p2p/common/Hash;->mV2:J

    sget-wide v2, Lcom/android/server/wifi/p2p/common/Hash;->mV3:J

    add-long/2addr v0, v2

    sput-wide v0, Lcom/android/server/wifi/p2p/common/Hash;->mV2:J

    sget-wide v0, Lcom/android/server/wifi/p2p/common/Hash;->mV1:J

    const/16 v2, 0xd

    invoke-static {v0, v1, v2}, Lcom/android/server/wifi/p2p/common/Hash;->rotateLeft(JI)J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/wifi/p2p/common/Hash;->mV1:J

    sget-wide v0, Lcom/android/server/wifi/p2p/common/Hash;->mV3:J

    const/16 v2, 0x10

    invoke-static {v0, v1, v2}, Lcom/android/server/wifi/p2p/common/Hash;->rotateLeft(JI)J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/wifi/p2p/common/Hash;->mV3:J

    sget-wide v0, Lcom/android/server/wifi/p2p/common/Hash;->mV1:J

    sget-wide v2, Lcom/android/server/wifi/p2p/common/Hash;->mV0:J

    xor-long/2addr v0, v2

    sput-wide v0, Lcom/android/server/wifi/p2p/common/Hash;->mV1:J

    sget-wide v0, Lcom/android/server/wifi/p2p/common/Hash;->mV3:J

    sget-wide v2, Lcom/android/server/wifi/p2p/common/Hash;->mV2:J

    xor-long/2addr v0, v2

    sput-wide v0, Lcom/android/server/wifi/p2p/common/Hash;->mV3:J

    sget-wide v0, Lcom/android/server/wifi/p2p/common/Hash;->mV0:J

    invoke-static {v0, v1, v4}, Lcom/android/server/wifi/p2p/common/Hash;->rotateLeft(JI)J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/wifi/p2p/common/Hash;->mV0:J

    sget-wide v0, Lcom/android/server/wifi/p2p/common/Hash;->mV2:J

    sget-wide v2, Lcom/android/server/wifi/p2p/common/Hash;->mV1:J

    add-long/2addr v0, v2

    sput-wide v0, Lcom/android/server/wifi/p2p/common/Hash;->mV2:J

    sget-wide v0, Lcom/android/server/wifi/p2p/common/Hash;->mV0:J

    sget-wide v2, Lcom/android/server/wifi/p2p/common/Hash;->mV3:J

    add-long/2addr v0, v2

    sput-wide v0, Lcom/android/server/wifi/p2p/common/Hash;->mV0:J

    sget-wide v0, Lcom/android/server/wifi/p2p/common/Hash;->mV1:J

    const/16 v2, 0x11

    invoke-static {v0, v1, v2}, Lcom/android/server/wifi/p2p/common/Hash;->rotateLeft(JI)J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/wifi/p2p/common/Hash;->mV1:J

    sget-wide v0, Lcom/android/server/wifi/p2p/common/Hash;->mV3:J

    const/16 v2, 0x15

    invoke-static {v0, v1, v2}, Lcom/android/server/wifi/p2p/common/Hash;->rotateLeft(JI)J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/wifi/p2p/common/Hash;->mV3:J

    sget-wide v0, Lcom/android/server/wifi/p2p/common/Hash;->mV1:J

    sget-wide v2, Lcom/android/server/wifi/p2p/common/Hash;->mV2:J

    xor-long/2addr v0, v2

    sput-wide v0, Lcom/android/server/wifi/p2p/common/Hash;->mV1:J

    sget-wide v0, Lcom/android/server/wifi/p2p/common/Hash;->mV3:J

    sget-wide v2, Lcom/android/server/wifi/p2p/common/Hash;->mV0:J

    xor-long/2addr v0, v2

    sput-wide v0, Lcom/android/server/wifi/p2p/common/Hash;->mV3:J

    sget-wide v0, Lcom/android/server/wifi/p2p/common/Hash;->mV2:J

    invoke-static {v0, v1, v4}, Lcom/android/server/wifi/p2p/common/Hash;->rotateLeft(JI)J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/wifi/p2p/common/Hash;->mV2:J

    return-void
.end method

.method private static updateHash(B)V
    .locals 6

    sget-byte v0, Lcom/android/server/wifi/p2p/common/Hash;->msg_byte_counter:B

    add-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    sput-byte v0, Lcom/android/server/wifi/p2p/common/Hash;->msg_byte_counter:B

    sget-wide v0, Lcom/android/server/wifi/p2p/common/Hash;->m:J

    int-to-long v2, p0

    const-wide/16 v4, 0xff

    and-long/2addr v2, v4

    sget v4, Lcom/android/server/wifi/p2p/common/Hash;->m_idx:I

    mul-int/lit8 v4, v4, 0x8

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    sput-wide v0, Lcom/android/server/wifi/p2p/common/Hash;->m:J

    sget v0, Lcom/android/server/wifi/p2p/common/Hash;->m_idx:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/android/server/wifi/p2p/common/Hash;->m_idx:I

    sget v0, Lcom/android/server/wifi/p2p/common/Hash;->m_idx:I

    sget v1, Lcom/android/server/wifi/p2p/common/Hash;->LONG_BYTES:I

    if-lt v0, v1, :cond_0

    sget-wide v0, Lcom/android/server/wifi/p2p/common/Hash;->mV3:J

    sget-wide v2, Lcom/android/server/wifi/p2p/common/Hash;->m:J

    xor-long/2addr v0, v2

    sput-wide v0, Lcom/android/server/wifi/p2p/common/Hash;->mV3:J

    invoke-static {}, Lcom/android/server/wifi/p2p/common/Hash;->siphash_round()V

    invoke-static {}, Lcom/android/server/wifi/p2p/common/Hash;->siphash_round()V

    sget-wide v0, Lcom/android/server/wifi/p2p/common/Hash;->mV0:J

    sget-wide v2, Lcom/android/server/wifi/p2p/common/Hash;->m:J

    xor-long/2addr v0, v2

    sput-wide v0, Lcom/android/server/wifi/p2p/common/Hash;->mV0:J

    const/4 v0, 0x0

    sput v0, Lcom/android/server/wifi/p2p/common/Hash;->m_idx:I

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/android/server/wifi/p2p/common/Hash;->m:J

    :cond_0
    return-void
.end method
