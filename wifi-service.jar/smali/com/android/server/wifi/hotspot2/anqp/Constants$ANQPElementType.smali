.class public final enum Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;
.super Ljava/lang/Enum;
.source "Constants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/hotspot2/anqp/Constants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ANQPElementType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;

.field public static final enum ANQP3GPPNetwork:Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;

.field public static final enum ANQPDomName:Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;

.field public static final enum ANQPIPAddrAvailability:Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;

.field public static final enum ANQPNAIRealm:Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;

.field public static final enum ANQPQueryList:Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;

.field public static final enum ANQPRoamingConsortium:Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;

.field public static final enum ANQPVendorSpec:Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;

.field public static final enum ANQPVenueName:Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;

.field public static final enum HSConnCapability:Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;

.field public static final enum HSFriendlyName:Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;

.field public static final enum HSIconRequest:Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;

.field public static final enum HSNAIHomeRealmQuery:Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;

.field public static final enum HSOSUProviders:Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;

.field public static final enum HSQueryList:Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;

.field public static final enum HSWANMetrics:Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;

    const-string/jumbo v1, "ANQPQueryList"

    invoke-direct {v0, v1, v3}, Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;->ANQPQueryList:Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;

    new-instance v0, Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;

    const-string/jumbo v1, "ANQPVenueName"

    invoke-direct {v0, v1, v4}, Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;->ANQPVenueName:Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;

    new-instance v0, Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;

    const-string/jumbo v1, "ANQPRoamingConsortium"

    invoke-direct {v0, v1, v5}, Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;->ANQPRoamingConsortium:Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;

    new-instance v0, Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;

    const-string/jumbo v1, "ANQPIPAddrAvailability"

    invoke-direct {v0, v1, v6}, Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;->ANQPIPAddrAvailability:Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;

    new-instance v0, Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;

    const-string/jumbo v1, "ANQPNAIRealm"

    invoke-direct {v0, v1, v7}, Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;->ANQPNAIRealm:Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;

    new-instance v0, Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;

    const-string/jumbo v1, "ANQP3GPPNetwork"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;->ANQP3GPPNetwork:Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;

    new-instance v0, Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;

    const-string/jumbo v1, "ANQPDomName"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;->ANQPDomName:Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;

    new-instance v0, Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;

    const-string/jumbo v1, "ANQPVendorSpec"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;->ANQPVendorSpec:Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;

    new-instance v0, Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;

    const-string/jumbo v1, "HSQueryList"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;->HSQueryList:Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;

    new-instance v0, Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;

    const-string/jumbo v1, "HSFriendlyName"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;->HSFriendlyName:Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;

    new-instance v0, Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;

    const-string/jumbo v1, "HSWANMetrics"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;->HSWANMetrics:Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;

    new-instance v0, Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;

    const-string/jumbo v1, "HSConnCapability"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;->HSConnCapability:Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;

    new-instance v0, Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;

    const-string/jumbo v1, "HSNAIHomeRealmQuery"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;->HSNAIHomeRealmQuery:Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;

    new-instance v0, Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;

    const-string/jumbo v1, "HSOSUProviders"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;->HSOSUProviders:Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;

    new-instance v0, Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;

    const-string/jumbo v1, "HSIconRequest"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;->HSIconRequest:Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;

    const/16 v0, 0xf

    new-array v0, v0, [Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;

    sget-object v1, Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;->ANQPQueryList:Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;->ANQPVenueName:Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;->ANQPRoamingConsortium:Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;->ANQPIPAddrAvailability:Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;->ANQPNAIRealm:Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;->ANQP3GPPNetwork:Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;->ANQPDomName:Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;->ANQPVendorSpec:Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;->HSQueryList:Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;->HSFriendlyName:Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;->HSWANMetrics:Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;->HSConnCapability:Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;->HSNAIHomeRealmQuery:Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;->HSOSUProviders:Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;->HSIconRequest:Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;->$VALUES:[Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;
    .locals 1

    const-class v0, Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;

    return-object v0
.end method

.method public static values()[Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;
    .locals 1

    sget-object v0, Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;->$VALUES:[Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;

    return-object v0
.end method
