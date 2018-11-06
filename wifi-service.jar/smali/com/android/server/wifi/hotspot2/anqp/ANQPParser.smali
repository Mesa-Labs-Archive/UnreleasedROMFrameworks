.class public Lcom/android/server/wifi/hotspot2/anqp/ANQPParser;
.super Ljava/lang/Object;
.source "ANQPParser.java"


# static fields
.field private static final synthetic -com-android-server-wifi-hotspot2-anqp-Constants$ANQPElementTypeSwitchesValues:[I = null

.field public static final VENDOR_SPECIFIC_HS20_OI:I = 0x506f9a

.field public static final VENDOR_SPECIFIC_HS20_TYPE:I = 0x11


# direct methods
.method private static synthetic -getcom-android-server-wifi-hotspot2-anqp-Constants$ANQPElementTypeSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/android/server/wifi/hotspot2/anqp/ANQPParser;->-com-android-server-wifi-hotspot2-anqp-Constants$ANQPElementTypeSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/wifi/hotspot2/anqp/ANQPParser;->-com-android-server-wifi-hotspot2-anqp-Constants$ANQPElementTypeSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;->values()[Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;->ANQP3GPPNetwork:Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;

    invoke-virtual {v1}, Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_e

    :goto_0
    :try_start_1
    sget-object v1, Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;->ANQPDomName:Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;

    invoke-virtual {v1}, Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_d

    :goto_1
    :try_start_2
    sget-object v1, Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;->ANQPIPAddrAvailability:Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;

    invoke-virtual {v1}, Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_c

    :goto_2
    :try_start_3
    sget-object v1, Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;->ANQPNAIRealm:Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;

    invoke-virtual {v1}, Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_b

    :goto_3
    :try_start_4
    sget-object v1, Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;->ANQPQueryList:Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;

    invoke-virtual {v1}, Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_a

    :goto_4
    :try_start_5
    sget-object v1, Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;->ANQPRoamingConsortium:Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;

    invoke-virtual {v1}, Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_9

    :goto_5
    :try_start_6
    sget-object v1, Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;->ANQPVendorSpec:Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;

    invoke-virtual {v1}, Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_8

    :goto_6
    :try_start_7
    sget-object v1, Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;->ANQPVenueName:Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;

    invoke-virtual {v1}, Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    :goto_7
    :try_start_8
    sget-object v1, Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;->HSConnCapability:Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;

    invoke-virtual {v1}, Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_6

    :goto_8
    :try_start_9
    sget-object v1, Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;->HSFriendlyName:Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;

    invoke-virtual {v1}, Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_5

    :goto_9
    :try_start_a
    sget-object v1, Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;->HSIconRequest:Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;

    invoke-virtual {v1}, Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_4

    :goto_a
    :try_start_b
    sget-object v1, Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;->HSNAIHomeRealmQuery:Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;

    invoke-virtual {v1}, Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;->ordinal()I

    move-result v1

    const/16 v2, 0xe

    aput v2, v0, v1
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_3

    :goto_b
    :try_start_c
    sget-object v1, Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;->HSOSUProviders:Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;

    invoke-virtual {v1}, Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_2

    :goto_c
    :try_start_d
    sget-object v1, Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;->HSQueryList:Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;

    invoke-virtual {v1}, Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;->ordinal()I

    move-result v1

    const/16 v2, 0xf

    aput v2, v0, v1
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_1

    :goto_d
    :try_start_e
    sget-object v1, Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;->HSWANMetrics:Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;

    invoke-virtual {v1}, Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_0

    :goto_e
    sput-object v0, Lcom/android/server/wifi/hotspot2/anqp/ANQPParser;->-com-android-server-wifi-hotspot2-anqp-Constants$ANQPElementTypeSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_e

    :catch_1
    move-exception v1

    goto :goto_d

    :catch_2
    move-exception v1

    goto :goto_c

    :catch_3
    move-exception v1

    goto :goto_b

    :catch_4
    move-exception v1

    goto :goto_a

    :catch_5
    move-exception v1

    goto :goto_9

    :catch_6
    move-exception v1

    goto :goto_8

    :catch_7
    move-exception v1

    goto :goto_7

    :catch_8
    move-exception v1

    goto :goto_6

    :catch_9
    move-exception v1

    goto :goto_5

    :catch_a
    move-exception v1

    goto :goto_4

    :catch_b
    move-exception v1

    goto/16 :goto_3

    :catch_c
    move-exception v1

    goto/16 :goto_2

    :catch_d
    move-exception v1

    goto/16 :goto_1

    :catch_e
    move-exception v1

    goto/16 :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parseElement(Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;Ljava/nio/ByteBuffer;)Lcom/android/server/wifi/hotspot2/anqp/ANQPElement;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/ProtocolException;
        }
    .end annotation

    invoke-static {}, Lcom/android/server/wifi/hotspot2/anqp/ANQPParser;->-getcom-android-server-wifi-hotspot2-anqp-Constants$ANQPElementTypeSwitchesValues()[I

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/net/ProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unknown element ID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    invoke-static {p1}, Lcom/android/server/wifi/hotspot2/anqp/VenueNameElement;->parse(Ljava/nio/ByteBuffer;)Lcom/android/server/wifi/hotspot2/anqp/VenueNameElement;

    move-result-object v0

    return-object v0

    :pswitch_1
    invoke-static {p1}, Lcom/android/server/wifi/hotspot2/anqp/RoamingConsortiumElement;->parse(Ljava/nio/ByteBuffer;)Lcom/android/server/wifi/hotspot2/anqp/RoamingConsortiumElement;

    move-result-object v0

    return-object v0

    :pswitch_2
    invoke-static {p1}, Lcom/android/server/wifi/hotspot2/anqp/IPAddressTypeAvailabilityElement;->parse(Ljava/nio/ByteBuffer;)Lcom/android/server/wifi/hotspot2/anqp/IPAddressTypeAvailabilityElement;

    move-result-object v0

    return-object v0

    :pswitch_3
    invoke-static {p1}, Lcom/android/server/wifi/hotspot2/anqp/NAIRealmElement;->parse(Ljava/nio/ByteBuffer;)Lcom/android/server/wifi/hotspot2/anqp/NAIRealmElement;

    move-result-object v0

    return-object v0

    :pswitch_4
    invoke-static {p1}, Lcom/android/server/wifi/hotspot2/anqp/ThreeGPPNetworkElement;->parse(Ljava/nio/ByteBuffer;)Lcom/android/server/wifi/hotspot2/anqp/ThreeGPPNetworkElement;

    move-result-object v0

    return-object v0

    :pswitch_5
    invoke-static {p1}, Lcom/android/server/wifi/hotspot2/anqp/DomainNameElement;->parse(Ljava/nio/ByteBuffer;)Lcom/android/server/wifi/hotspot2/anqp/DomainNameElement;

    move-result-object v0

    return-object v0

    :pswitch_6
    invoke-static {p1}, Lcom/android/server/wifi/hotspot2/anqp/ANQPParser;->parseVendorSpecificElement(Ljava/nio/ByteBuffer;)Lcom/android/server/wifi/hotspot2/anqp/ANQPElement;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_5
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_6
        :pswitch_0
    .end packed-switch
.end method

.method public static parseHS20Element(Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;Ljava/nio/ByteBuffer;)Lcom/android/server/wifi/hotspot2/anqp/ANQPElement;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/ProtocolException;
        }
    .end annotation

    invoke-static {}, Lcom/android/server/wifi/hotspot2/anqp/ANQPParser;->-getcom-android-server-wifi-hotspot2-anqp-Constants$ANQPElementTypeSwitchesValues()[I

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/net/ProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unknown element ID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    invoke-static {p1}, Lcom/android/server/wifi/hotspot2/anqp/HSFriendlyNameElement;->parse(Ljava/nio/ByteBuffer;)Lcom/android/server/wifi/hotspot2/anqp/HSFriendlyNameElement;

    move-result-object v0

    return-object v0

    :pswitch_1
    invoke-static {p1}, Lcom/android/server/wifi/hotspot2/anqp/HSWanMetricsElement;->parse(Ljava/nio/ByteBuffer;)Lcom/android/server/wifi/hotspot2/anqp/HSWanMetricsElement;

    move-result-object v0

    return-object v0

    :pswitch_2
    invoke-static {p1}, Lcom/android/server/wifi/hotspot2/anqp/HSConnectionCapabilityElement;->parse(Ljava/nio/ByteBuffer;)Lcom/android/server/wifi/hotspot2/anqp/HSConnectionCapabilityElement;

    move-result-object v0

    return-object v0

    :pswitch_3
    invoke-static {p0, p1}, Lcom/android/server/wifi/hotspot2/anqp/RawByteElement;->parse(Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;Ljava/nio/ByteBuffer;)Lcom/android/server/wifi/hotspot2/anqp/RawByteElement;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method

.method private static parseVendorSpecificElement(Ljava/nio/ByteBuffer;)Lcom/android/server/wifi/hotspot2/anqp/ANQPElement;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/ProtocolException;
        }
    .end annotation

    sget-object v4, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    const/4 v5, 0x3

    invoke-static {p0, v4, v5}, Lcom/android/server/wifi/ByteBufferReader;->readInteger(Ljava/nio/ByteBuffer;Ljava/nio/ByteOrder;I)J

    move-result-wide v4

    long-to-int v1, v4

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v4

    and-int/lit16 v3, v4, 0xff

    const v4, 0x506f9a

    if-ne v1, v4, :cond_0

    const/16 v4, 0x11

    if-eq v3, v4, :cond_1

    :cond_0
    new-instance v4, Ljava/net/ProtocolException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Unsupported vendor specific OI="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " type="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_1
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v4

    and-int/lit16 v2, v4, 0xff

    invoke-static {v2}, Lcom/android/server/wifi/hotspot2/anqp/Constants;->mapHS20Element(I)Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;

    move-result-object v0

    if-nez v0, :cond_2

    new-instance v4, Ljava/net/ProtocolException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Unsupported subtype: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_2
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    invoke-static {v0, p0}, Lcom/android/server/wifi/hotspot2/anqp/ANQPParser;->parseHS20Element(Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;Ljava/nio/ByteBuffer;)Lcom/android/server/wifi/hotspot2/anqp/ANQPElement;

    move-result-object v4

    return-object v4
.end method
