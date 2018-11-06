.class public Lcom/android/internal/telephony/VisualVoicemailSmsFilter;
.super Ljava/lang/Object;
.source "VisualVoicemailSmsFilter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/VisualVoicemailSmsFilter$1;,
        Lcom/android/internal/telephony/VisualVoicemailSmsFilter$FullMessage;,
        Lcom/android/internal/telephony/VisualVoicemailSmsFilter$PhoneAccountHandleConverter;
    }
.end annotation


# static fields
.field private static final DEFAULT_PHONE_ACCOUNT_HANDLE_CONVERTER:Lcom/android/internal/telephony/VisualVoicemailSmsFilter$PhoneAccountHandleConverter;

.field private static final PSTN_CONNECTION_SERVICE_COMPONENT:Landroid/content/ComponentName;

.field private static final TAG:Ljava/lang/String; = "VvmSmsFilter"

.field private static final TELEPHONY_SERVICE_PACKAGE:Ljava/lang/String; = "com.android.phone"

.field private static sPatterns:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/util/regex/Pattern;",
            ">;>;"
        }
    .end annotation
.end field

.field private static sPhoneAccountHandleConverter:Lcom/android/internal/telephony/VisualVoicemailSmsFilter$PhoneAccountHandleConverter;


# direct methods
.method static synthetic -get0()Landroid/content/ComponentName;
    .locals 1

    sget-object v0, Lcom/android/internal/telephony/VisualVoicemailSmsFilter;->PSTN_CONNECTION_SERVICE_COMPONENT:Landroid/content/ComponentName;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Landroid/content/ComponentName;

    const-string/jumbo v1, "com.android.phone"

    const-string/jumbo v2, "com.android.services.telephony.TelephonyConnectionService"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/internal/telephony/VisualVoicemailSmsFilter;->PSTN_CONNECTION_SERVICE_COMPONENT:Landroid/content/ComponentName;

    new-instance v0, Lcom/android/internal/telephony/VisualVoicemailSmsFilter$1;

    invoke-direct {v0}, Lcom/android/internal/telephony/VisualVoicemailSmsFilter$1;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/VisualVoicemailSmsFilter;->DEFAULT_PHONE_ACCOUNT_HANDLE_CONVERTER:Lcom/android/internal/telephony/VisualVoicemailSmsFilter$PhoneAccountHandleConverter;

    sget-object v0, Lcom/android/internal/telephony/VisualVoicemailSmsFilter;->DEFAULT_PHONE_ACCOUNT_HANDLE_CONVERTER:Lcom/android/internal/telephony/VisualVoicemailSmsFilter$PhoneAccountHandleConverter;

    sput-object v0, Lcom/android/internal/telephony/VisualVoicemailSmsFilter;->sPhoneAccountHandleConverter:Lcom/android/internal/telephony/VisualVoicemailSmsFilter$PhoneAccountHandleConverter;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static buildPatternsMap(Landroid/content/Context;)V
    .locals 12

    const/4 v6, 0x0

    sget-object v4, Lcom/android/internal/telephony/VisualVoicemailSmsFilter;->sPatterns:Ljava/util/Map;

    if-eqz v4, :cond_0

    return-void

    :cond_0
    new-instance v4, Landroid/util/ArrayMap;

    invoke-direct {v4}, Landroid/util/ArrayMap;-><init>()V

    sput-object v4, Lcom/android/internal/telephony/VisualVoicemailSmsFilter;->sPatterns:Ljava/util/Map;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x107009a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v8

    array-length v9, v8

    move v7, v6

    :goto_0
    if-ge v7, v9, :cond_3

    aget-object v0, v8, v7

    const-string/jumbo v4, ";"

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    aget-object v4, v4, v6

    const-string/jumbo v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, ";"

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    aget-object v4, v4, v5

    invoke-static {v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    array-length v10, v2

    move v5, v6

    :goto_1
    if-ge v5, v10, :cond_2

    aget-object v1, v2, v5

    sget-object v4, Lcom/android/internal/telephony/VisualVoicemailSmsFilter;->sPatterns:Ljava/util/Map;

    invoke-interface {v4, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    sget-object v4, Lcom/android/internal/telephony/VisualVoicemailSmsFilter;->sPatterns:Ljava/util/Map;

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v4, v1, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    sget-object v4, Lcom/android/internal/telephony/VisualVoicemailSmsFilter;->sPatterns:Ljava/util/Map;

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v5, 0x1

    move v5, v4

    goto :goto_1

    :cond_2
    add-int/lit8 v4, v7, 0x1

    move v7, v4

    goto :goto_0

    :cond_3
    return-void
.end method

.method public static filter(Landroid/content/Context;[[BLjava/lang/String;II)Z
    .locals 16

    const-string/jumbo v13, "phone"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/telephony/TelephonyManager;

    move/from16 v0, p4

    invoke-virtual {v12, v0}, Landroid/telephony/TelephonyManager;->getActiveVisualVoicemailSmsFilterSettings(I)Landroid/telephony/VisualVoicemailSmsFilterSettings;

    move-result-object v11

    if-nez v11, :cond_0

    const/4 v13, 0x0

    return v13

    :cond_0
    sget-object v13, Lcom/android/internal/telephony/VisualVoicemailSmsFilter;->sPhoneAccountHandleConverter:Lcom/android/internal/telephony/VisualVoicemailSmsFilter$PhoneAccountHandleConverter;

    move/from16 v0, p4

    invoke-interface {v13, v0}, Lcom/android/internal/telephony/VisualVoicemailSmsFilter$PhoneAccountHandleConverter;->fromSubId(I)Landroid/telecom/PhoneAccountHandle;

    move-result-object v10

    if-nez v10, :cond_1

    const-string/jumbo v13, "VvmSmsFilter"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "Unable to convert subId "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, p4

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, " to PhoneAccountHandle"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v13, 0x0

    return v13

    :cond_1
    invoke-static/range {p1 .. p2}, Lcom/android/internal/telephony/VisualVoicemailSmsFilter;->getFullMessage([[BLjava/lang/String;)Lcom/android/internal/telephony/VisualVoicemailSmsFilter$FullMessage;

    move-result-object v3

    if-nez v3, :cond_3

    const-string/jumbo v13, "VvmSmsFilter"

    const-string/jumbo v14, "Unparsable SMS received"

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static/range {p1 .. p1}, Lcom/android/internal/telephony/VisualVoicemailSmsFilter;->parseAsciiPduMessage([[B)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/VisualVoicemailSmsParser;->parseAlternativeFormat(Ljava/lang/String;)Lcom/android/internal/telephony/VisualVoicemailSmsParser$WrappedMessageData;

    move-result-object v6

    if-eqz v6, :cond_2

    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v10, v6, v13}, Lcom/android/internal/telephony/VisualVoicemailSmsFilter;->sendVvmSmsBroadcast(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;Lcom/android/internal/telephony/VisualVoicemailSmsParser$WrappedMessageData;Ljava/lang/String;)V

    :cond_2
    const/4 v13, 0x0

    return v13

    :cond_3
    iget-object v5, v3, Lcom/android/internal/telephony/VisualVoicemailSmsFilter$FullMessage;->fullMessageBody:Ljava/lang/String;

    iget-object v2, v11, Landroid/telephony/VisualVoicemailSmsFilterSettings;->clientPrefix:Ljava/lang/String;

    invoke-static {v2, v5}, Lcom/android/internal/telephony/VisualVoicemailSmsParser;->parse(Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/telephony/VisualVoicemailSmsParser$WrappedMessageData;

    move-result-object v6

    if-eqz v6, :cond_7

    iget v13, v11, Landroid/telephony/VisualVoicemailSmsFilterSettings;->destinationPort:I

    const/4 v14, -0x2

    if-ne v13, v14, :cond_4

    const/4 v13, -0x1

    move/from16 v0, p3

    if-ne v0, v13, :cond_5

    const-string/jumbo v13, "VvmSmsFilter"

    const-string/jumbo v14, "SMS matching VVM format received but is not a DATA SMS"

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v13, 0x0

    return v13

    :cond_4
    iget v13, v11, Landroid/telephony/VisualVoicemailSmsFilterSettings;->destinationPort:I

    const/4 v14, -0x1

    if-eq v13, v14, :cond_5

    iget v13, v11, Landroid/telephony/VisualVoicemailSmsFilterSettings;->destinationPort:I

    move/from16 v0, p3

    if-eq v13, v0, :cond_5

    const-string/jumbo v13, "VvmSmsFilter"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "SMS matching VVM format received but is not directed to port "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget v15, v11, Landroid/telephony/VisualVoicemailSmsFilterSettings;->destinationPort:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v13, 0x0

    return v13

    :cond_5
    iget-object v13, v11, Landroid/telephony/VisualVoicemailSmsFilterSettings;->originatingNumbers:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_6

    iget-object v13, v3, Lcom/android/internal/telephony/VisualVoicemailSmsFilter$FullMessage;->firstMessage:Landroid/telephony/SmsMessage;

    iget-object v14, v11, Landroid/telephony/VisualVoicemailSmsFilterSettings;->originatingNumbers:Ljava/util/List;

    invoke-static {v13, v14}, Lcom/android/internal/telephony/VisualVoicemailSmsFilter;->isSmsFromNumbers(Landroid/telephony/SmsMessage;Ljava/util/List;)Z

    move-result v13

    xor-int/lit8 v13, v13, 0x1

    if-eqz v13, :cond_6

    const-string/jumbo v13, "VvmSmsFilter"

    const-string/jumbo v14, "SMS matching VVM format received but is not from originating numbers"

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v13, 0x0

    return v13

    :cond_6
    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v10, v6, v13}, Lcom/android/internal/telephony/VisualVoicemailSmsFilter;->sendVvmSmsBroadcast(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;Lcom/android/internal/telephony/VisualVoicemailSmsParser$WrappedMessageData;Ljava/lang/String;)V

    const/4 v13, 0x1

    return v13

    :cond_7
    invoke-static/range {p0 .. p0}, Lcom/android/internal/telephony/VisualVoicemailSmsFilter;->buildPatternsMap(Landroid/content/Context;)V

    move/from16 v0, p4

    invoke-virtual {v12, v0}, Landroid/telephony/TelephonyManager;->getSimOperator(I)Ljava/lang/String;

    move-result-object v4

    sget-object v13, Lcom/android/internal/telephony/VisualVoicemailSmsFilter;->sPatterns:Ljava/util/Map;

    invoke-interface {v13, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    if-eqz v9, :cond_8

    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v13

    if-eqz v13, :cond_9

    :cond_8
    const/4 v13, 0x0

    return v13

    :cond_9
    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_a
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_b

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/regex/Pattern;

    invoke-virtual {v7, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v13

    invoke-virtual {v13}, Ljava/util/regex/Matcher;->matches()Z

    move-result v13

    if-eqz v13, :cond_a

    const-string/jumbo v13, "VvmSmsFilter"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "Incoming SMS matches pattern "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, " but has illegal format, "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, "still dropping as VVM SMS"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v10, v13, v5}, Lcom/android/internal/telephony/VisualVoicemailSmsFilter;->sendVvmSmsBroadcast(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;Lcom/android/internal/telephony/VisualVoicemailSmsParser$WrappedMessageData;Ljava/lang/String;)V

    const/4 v13, 0x1

    return v13

    :cond_b
    const/4 v13, 0x0

    return v13
.end method

.method private static getFullMessage([[BLjava/lang/String;)Lcom/android/internal/telephony/VisualVoicemailSmsFilter$FullMessage;
    .locals 12

    const/4 v11, 0x0

    new-instance v7, Lcom/android/internal/telephony/VisualVoicemailSmsFilter$FullMessage;

    invoke-direct {v7, v11}, Lcom/android/internal/telephony/VisualVoicemailSmsFilter$FullMessage;-><init>(Lcom/android/internal/telephony/VisualVoicemailSmsFilter$FullMessage;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v8}, Ljava/nio/charset/Charset;->newDecoder()Ljava/nio/charset/CharsetDecoder;

    move-result-object v3

    const/4 v8, 0x0

    array-length v9, p0

    :goto_0
    if-ge v8, v9, :cond_4

    aget-object v6, p0, v8

    invoke-static {v6, p1}, Landroid/telephony/SmsMessage;->createFromPdu([BLjava/lang/String;)Landroid/telephony/SmsMessage;

    move-result-object v5

    if-nez v5, :cond_0

    return-object v11

    :cond_0
    iget-object v10, v7, Lcom/android/internal/telephony/VisualVoicemailSmsFilter$FullMessage;->firstMessage:Landroid/telephony/SmsMessage;

    if-nez v10, :cond_1

    iput-object v5, v7, Lcom/android/internal/telephony/VisualVoicemailSmsFilter$FullMessage;->firstMessage:Landroid/telephony/SmsMessage;

    :cond_1
    invoke-virtual {v5}, Landroid/telephony/SmsMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-virtual {v5}, Landroid/telephony/SmsMessage;->getUserData()[B

    move-result-object v10

    if-eqz v10, :cond_2

    invoke-virtual {v5}, Landroid/telephony/SmsMessage;->getUserData()[B

    move-result-object v10

    invoke-static {v10}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    :try_start_0
    invoke-virtual {v3, v2}, Ljava/nio/charset/CharsetDecoder;->decode(Ljava/nio/ByteBuffer;)Ljava/nio/CharBuffer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/nio/charset/CharacterCodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :catch_0
    move-exception v4

    return-object v11

    :cond_4
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/android/internal/telephony/VisualVoicemailSmsFilter$FullMessage;->fullMessageBody:Ljava/lang/String;

    return-object v7
.end method

.method private static isSmsFromNumbers(Landroid/telephony/SmsMessage;Ljava/util/List;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/telephony/SmsMessage;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const/4 v4, 0x0

    if-nez p0, :cond_0

    const-string/jumbo v2, "VvmSmsFilter"

    const-string/jumbo v3, "Unable to create SmsMessage from PDU, cannot determine originating number"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_0
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0}, Landroid/telephony/SmsMessage;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/telephony/PhoneNumberUtils;->compare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    return v2

    :cond_2
    return v4
.end method

.method private static parseAsciiPduMessage([[B)Ljava/lang/String;
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    array-length v3, p0

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, p0, v2

    new-instance v4, Ljava/lang/String;

    sget-object v5, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-direct {v4, v1, v5}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private static sendVvmSmsBroadcast(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;Lcom/android/internal/telephony/VisualVoicemailSmsParser$WrappedMessageData;Ljava/lang/String;)V
    .locals 4

    const-string/jumbo v2, "VvmSmsFilter"

    const-string/jumbo v3, "VVM SMS received"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.android.internal.provider.action.VOICEMAIL_SMS_RECEIVED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v0, Landroid/telephony/VisualVoicemailSms$Builder;

    invoke-direct {v0}, Landroid/telephony/VisualVoicemailSms$Builder;-><init>()V

    if-eqz p2, :cond_0

    iget-object v2, p2, Lcom/android/internal/telephony/VisualVoicemailSmsParser$WrappedMessageData;->prefix:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/telephony/VisualVoicemailSms$Builder;->setPrefix(Ljava/lang/String;)Landroid/telephony/VisualVoicemailSms$Builder;

    iget-object v2, p2, Lcom/android/internal/telephony/VisualVoicemailSmsParser$WrappedMessageData;->fields:Landroid/os/Bundle;

    invoke-virtual {v0, v2}, Landroid/telephony/VisualVoicemailSms$Builder;->setFields(Landroid/os/Bundle;)Landroid/telephony/VisualVoicemailSms$Builder;

    :cond_0
    if-eqz p3, :cond_1

    invoke-virtual {v0, p3}, Landroid/telephony/VisualVoicemailSms$Builder;->setMessageBody(Ljava/lang/String;)Landroid/telephony/VisualVoicemailSms$Builder;

    :cond_1
    invoke-virtual {v0, p1}, Landroid/telephony/VisualVoicemailSms$Builder;->setPhoneAccountHandle(Landroid/telecom/PhoneAccountHandle;)Landroid/telephony/VisualVoicemailSms$Builder;

    const-string/jumbo v2, "android.provider.extra.VOICEMAIL_SMS"

    invoke-virtual {v0}, Landroid/telephony/VisualVoicemailSms$Builder;->build()Landroid/telephony/VisualVoicemailSms;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string/jumbo v2, "com.android.phone"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public static setPhoneAccountHandleConverterForTest(Lcom/android/internal/telephony/VisualVoicemailSmsFilter$PhoneAccountHandleConverter;)V
    .locals 1

    if-nez p0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/VisualVoicemailSmsFilter;->DEFAULT_PHONE_ACCOUNT_HANDLE_CONVERTER:Lcom/android/internal/telephony/VisualVoicemailSmsFilter$PhoneAccountHandleConverter;

    sput-object v0, Lcom/android/internal/telephony/VisualVoicemailSmsFilter;->sPhoneAccountHandleConverter:Lcom/android/internal/telephony/VisualVoicemailSmsFilter$PhoneAccountHandleConverter;

    :goto_0
    return-void

    :cond_0
    sput-object p0, Lcom/android/internal/telephony/VisualVoicemailSmsFilter;->sPhoneAccountHandleConverter:Lcom/android/internal/telephony/VisualVoicemailSmsFilter$PhoneAccountHandleConverter;

    goto :goto_0
.end method
