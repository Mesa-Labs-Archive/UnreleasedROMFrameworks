.class public Lcom/google/android/mms/pdu/CharacterSets;
.super Ljava/lang/Object;
.source "CharacterSets.java"


# static fields
.field static final synthetic -assertionsDisabled:Z

.field public static final ANY_CHARSET:I = 0x0

.field public static final BIG5:I = 0x7ea

.field public static final DEFAULT_CHARSET:I = 0x6a

.field public static final DEFAULT_CHARSET_NAME:Ljava/lang/String; = "utf-8"

.field public static final EUC_KR:I = 0x26

.field public static final ISO_8859_1:I = 0x4

.field public static final ISO_8859_2:I = 0x5

.field public static final ISO_8859_3:I = 0x6

.field public static final ISO_8859_4:I = 0x7

.field public static final ISO_8859_5:I = 0x8

.field public static final ISO_8859_6:I = 0x9

.field public static final ISO_8859_7:I = 0xa

.field public static final ISO_8859_8:I = 0xb

.field public static final ISO_8859_9:I = 0xc

.field private static final MIBENUM_NUMBERS:[I

.field private static final MIBENUM_TO_NAME_MAP:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final MIMENAME_ANY_CHARSET:Ljava/lang/String; = "*"

.field public static final MIMENAME_BIG5:Ljava/lang/String; = "big5"

.field public static final MIMENAME_EUC_KR:Ljava/lang/String; = "EUC_KR"

.field public static final MIMENAME_ISO_8859_1:Ljava/lang/String; = "iso-8859-1"

.field public static final MIMENAME_ISO_8859_2:Ljava/lang/String; = "iso-8859-2"

.field public static final MIMENAME_ISO_8859_3:Ljava/lang/String; = "iso-8859-3"

.field public static final MIMENAME_ISO_8859_4:Ljava/lang/String; = "iso-8859-4"

.field public static final MIMENAME_ISO_8859_5:Ljava/lang/String; = "iso-8859-5"

.field public static final MIMENAME_ISO_8859_6:Ljava/lang/String; = "iso-8859-6"

.field public static final MIMENAME_ISO_8859_7:Ljava/lang/String; = "iso-8859-7"

.field public static final MIMENAME_ISO_8859_8:Ljava/lang/String; = "iso-8859-8"

.field public static final MIMENAME_ISO_8859_9:Ljava/lang/String; = "iso-8859-9"

.field public static final MIMENAME_SHIFT_JIS:Ljava/lang/String; = "shift_JIS"

.field public static final MIMENAME_UCS2:Ljava/lang/String; = "iso-10646-ucs-2"

.field public static final MIMENAME_US_ASCII:Ljava/lang/String; = "us-ascii"

.field public static final MIMENAME_UTF_16:Ljava/lang/String; = "utf-16"

.field public static final MIMENAME_UTF_8:Ljava/lang/String; = "utf-8"

.field private static final MIME_NAMES:[Ljava/lang/String;

.field private static final NAME_TO_MIBENUM_MAP:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final SHIFT_JIS:I = 0x11

.field public static final UCS2:I = 0x3e8

.field public static final US_ASCII:I = 0x3

.field public static final UTF_16:I = 0x3f7

.field public static final UTF_8:I = 0x6a


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/16 v3, 0x11

    const-class v2, Lcom/google/android/mms/pdu/CharacterSets;

    invoke-virtual {v2}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    sput-boolean v2, Lcom/google/android/mms/pdu/CharacterSets;->-assertionsDisabled:Z

    new-array v2, v3, [I

    fill-array-data v2, :array_0

    sput-object v2, Lcom/google/android/mms/pdu/CharacterSets;->MIBENUM_NUMBERS:[I

    new-array v2, v3, [Ljava/lang/String;

    const-string/jumbo v3, "*"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string/jumbo v3, "us-ascii"

    const/4 v4, 0x1

    aput-object v3, v2, v4

    const-string/jumbo v3, "iso-8859-1"

    const/4 v4, 0x2

    aput-object v3, v2, v4

    const-string/jumbo v3, "iso-8859-2"

    const/4 v4, 0x3

    aput-object v3, v2, v4

    const-string/jumbo v3, "iso-8859-3"

    const/4 v4, 0x4

    aput-object v3, v2, v4

    const-string/jumbo v3, "iso-8859-4"

    const/4 v4, 0x5

    aput-object v3, v2, v4

    const-string/jumbo v3, "iso-8859-5"

    const/4 v4, 0x6

    aput-object v3, v2, v4

    const-string/jumbo v3, "iso-8859-6"

    const/4 v4, 0x7

    aput-object v3, v2, v4

    const-string/jumbo v3, "iso-8859-7"

    const/16 v4, 0x8

    aput-object v3, v2, v4

    const-string/jumbo v3, "iso-8859-8"

    const/16 v4, 0x9

    aput-object v3, v2, v4

    const-string/jumbo v3, "iso-8859-9"

    const/16 v4, 0xa

    aput-object v3, v2, v4

    const-string/jumbo v3, "shift_JIS"

    const/16 v4, 0xb

    aput-object v3, v2, v4

    const-string/jumbo v3, "utf-8"

    const/16 v4, 0xc

    aput-object v3, v2, v4

    const-string/jumbo v3, "big5"

    const/16 v4, 0xd

    aput-object v3, v2, v4

    const-string/jumbo v3, "iso-10646-ucs-2"

    const/16 v4, 0xe

    aput-object v3, v2, v4

    const-string/jumbo v3, "utf-16"

    const/16 v4, 0xf

    aput-object v3, v2, v4

    const-string/jumbo v3, "EUC_KR"

    const/16 v4, 0x10

    aput-object v3, v2, v4

    sput-object v2, Lcom/google/android/mms/pdu/CharacterSets;->MIME_NAMES:[Ljava/lang/String;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    sput-object v2, Lcom/google/android/mms/pdu/CharacterSets;->MIBENUM_TO_NAME_MAP:Ljava/util/HashMap;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    sput-object v2, Lcom/google/android/mms/pdu/CharacterSets;->NAME_TO_MIBENUM_MAP:Ljava/util/HashMap;

    sget-boolean v2, Lcom/google/android/mms/pdu/CharacterSets;->-assertionsDisabled:Z

    if-nez v2, :cond_0

    sget-object v2, Lcom/google/android/mms/pdu/CharacterSets;->MIBENUM_NUMBERS:[I

    array-length v2, v2

    sget-object v3, Lcom/google/android/mms/pdu/CharacterSets;->MIME_NAMES:[Ljava/lang/String;

    array-length v3, v3

    if-eq v2, v3, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    :cond_0
    sget-object v2, Lcom/google/android/mms/pdu/CharacterSets;->MIBENUM_NUMBERS:[I

    array-length v2, v2

    add-int/lit8 v0, v2, -0x1

    const/4 v1, 0x0

    :goto_0
    if-gt v1, v0, :cond_1

    sget-object v2, Lcom/google/android/mms/pdu/CharacterSets;->MIBENUM_TO_NAME_MAP:Ljava/util/HashMap;

    sget-object v3, Lcom/google/android/mms/pdu/CharacterSets;->MIBENUM_NUMBERS:[I

    aget v3, v3, v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    sget-object v4, Lcom/google/android/mms/pdu/CharacterSets;->MIME_NAMES:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/google/android/mms/pdu/CharacterSets;->NAME_TO_MIBENUM_MAP:Ljava/util/HashMap;

    sget-object v3, Lcom/google/android/mms/pdu/CharacterSets;->MIME_NAMES:[Ljava/lang/String;

    aget-object v3, v3, v1

    sget-object v4, Lcom/google/android/mms/pdu/CharacterSets;->MIBENUM_NUMBERS:[I

    aget v4, v4, v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void

    :array_0
    .array-data 4
        0x0
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
        0x9
        0xa
        0xb
        0xc
        0x11
        0x6a
        0x7ea
        0x3e8
        0x3f7
        0x26
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getMibEnumValue(Ljava/lang/String;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 v1, -0x1

    return v1

    :cond_0
    sget-object v1, Lcom/google/android/mms/pdu/CharacterSets;->NAME_TO_MIBENUM_MAP:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_1

    new-instance v1, Ljava/io/UnsupportedEncodingException;

    invoke-direct {v1}, Ljava/io/UnsupportedEncodingException;-><init>()V

    throw v1

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1
.end method

.method public static getMimeName(I)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    sget-object v1, Lcom/google/android/mms/pdu/CharacterSets;->MIBENUM_TO_NAME_MAP:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_0

    new-instance v1, Ljava/io/UnsupportedEncodingException;

    invoke-direct {v1}, Ljava/io/UnsupportedEncodingException;-><init>()V

    throw v1

    :cond_0
    return-object v0
.end method
