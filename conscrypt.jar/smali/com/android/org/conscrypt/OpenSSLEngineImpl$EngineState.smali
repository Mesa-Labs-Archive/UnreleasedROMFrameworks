.class final enum Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;
.super Ljava/lang/Enum;
.source "OpenSSLEngineImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/conscrypt/OpenSSLEngineImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "EngineState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;

.field public static final enum CLOSED:Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;

.field public static final enum CLOSED_INBOUND:Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;

.field public static final enum CLOSED_OUTBOUND:Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;

.field public static final enum HANDSHAKE_COMPLETED:Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;

.field public static final enum HANDSHAKE_STARTED:Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;

.field public static final enum MODE_SET:Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;

.field public static final enum NEW:Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;

.field public static final enum READY:Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;

.field public static final enum READY_HANDSHAKE_CUT_THROUGH:Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;

    const-string/jumbo v1, "NEW"

    invoke-direct {v0, v1, v3}, Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;->NEW:Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;

    new-instance v0, Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;

    const-string/jumbo v1, "MODE_SET"

    invoke-direct {v0, v1, v4}, Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;->MODE_SET:Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;

    new-instance v0, Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;

    const-string/jumbo v1, "HANDSHAKE_STARTED"

    invoke-direct {v0, v1, v5}, Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;->HANDSHAKE_STARTED:Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;

    new-instance v0, Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;

    const-string/jumbo v1, "HANDSHAKE_COMPLETED"

    invoke-direct {v0, v1, v6}, Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;->HANDSHAKE_COMPLETED:Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;

    new-instance v0, Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;

    const-string/jumbo v1, "READY_HANDSHAKE_CUT_THROUGH"

    invoke-direct {v0, v1, v7}, Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;->READY_HANDSHAKE_CUT_THROUGH:Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;

    new-instance v0, Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;

    const-string/jumbo v1, "READY"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;->READY:Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;

    new-instance v0, Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;

    const-string/jumbo v1, "CLOSED_INBOUND"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;->CLOSED_INBOUND:Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;

    new-instance v0, Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;

    const-string/jumbo v1, "CLOSED_OUTBOUND"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;->CLOSED_OUTBOUND:Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;

    new-instance v0, Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;

    const-string/jumbo v1, "CLOSED"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;->CLOSED:Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;

    const/16 v0, 0x9

    new-array v0, v0, [Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;

    sget-object v1, Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;->NEW:Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;->MODE_SET:Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;->HANDSHAKE_STARTED:Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;->HANDSHAKE_COMPLETED:Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;->READY_HANDSHAKE_CUT_THROUGH:Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;

    aput-object v1, v0, v7

    sget-object v1, Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;->READY:Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;->CLOSED_INBOUND:Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;->CLOSED_OUTBOUND:Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;->CLOSED:Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;->$VALUES:[Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;
    .locals 1

    const-class v0, Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;

    return-object v0
.end method

.method public static values()[Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;
    .locals 1

    sget-object v0, Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;->$VALUES:[Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;

    return-object v0
.end method
