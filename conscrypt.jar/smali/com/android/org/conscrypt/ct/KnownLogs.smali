.class public final Lcom/android/org/conscrypt/ct/KnownLogs;
.super Ljava/lang/Object;
.source "KnownLogs.java"


# static fields
.field public static final LOG_COUNT:I = 0x8

.field public static final LOG_DESCRIPTIONS:[Ljava/lang/String;

.field public static final LOG_KEYS:[[B

.field public static final LOG_URLS:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/16 v3, 0x5b

    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "Google \'Pilot\' log"

    aput-object v1, v0, v4

    const-string/jumbo v1, "Google \'Aviator\' log"

    aput-object v1, v0, v5

    const-string/jumbo v1, "DigiCert Log Server"

    aput-object v1, v0, v6

    const-string/jumbo v1, "Google \'Rocketeer\' log"

    aput-object v1, v0, v7

    const-string/jumbo v1, "Certly.IO log"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string/jumbo v1, "Izenpe log"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string/jumbo v1, "Symantec log"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string/jumbo v1, "Venafi log"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/org/conscrypt/ct/KnownLogs;->LOG_DESCRIPTIONS:[Ljava/lang/String;

    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "ct.googleapis.com/pilot"

    aput-object v1, v0, v4

    const-string/jumbo v1, "ct.googleapis.com/aviator"

    aput-object v1, v0, v5

    const-string/jumbo v1, "ct1.digicert-ct.com/log"

    aput-object v1, v0, v6

    const-string/jumbo v1, "ct.googleapis.com/rocketeer"

    aput-object v1, v0, v7

    const-string/jumbo v1, "log.certly.io"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string/jumbo v1, "ct.izenpe.com"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string/jumbo v1, "ct.ws.symantec.com"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string/jumbo v1, "ctlog.api.venafi.com"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/org/conscrypt/ct/KnownLogs;->LOG_URLS:[Ljava/lang/String;

    const/16 v0, 0x8

    new-array v0, v0, [[B

    new-array v1, v3, [B

    fill-array-data v1, :array_0

    aput-object v1, v0, v4

    new-array v1, v3, [B

    fill-array-data v1, :array_1

    aput-object v1, v0, v5

    new-array v1, v3, [B

    fill-array-data v1, :array_2

    aput-object v1, v0, v6

    new-array v1, v3, [B

    fill-array-data v1, :array_3

    aput-object v1, v0, v7

    new-array v1, v3, [B

    fill-array-data v1, :array_4

    const/4 v2, 0x4

    aput-object v1, v0, v2

    new-array v1, v3, [B

    fill-array-data v1, :array_5

    const/4 v2, 0x5

    aput-object v1, v0, v2

    new-array v1, v3, [B

    fill-array-data v1, :array_6

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const/16 v1, 0x126

    new-array v1, v1, [B

    fill-array-data v1, :array_7

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/org/conscrypt/ct/KnownLogs;->LOG_KEYS:[[B

    return-void

    nop

    :array_0
    .array-data 1
        0x30t
        0x59t
        0x30t
        0x13t
        0x6t
        0x7t
        0x2at
        -0x7at
        0x48t
        -0x32t
        0x3dt
        0x2t
        0x1t
        0x6t
        0x8t
        0x2at
        -0x7at
        0x48t
        -0x32t
        0x3dt
        0x3t
        0x1t
        0x7t
        0x3t
        0x42t
        0x0t
        0x4t
        0x7dt
        -0x58t
        0x4bt
        0x12t
        0x29t
        -0x80t
        -0x5dt
        0x3dt
        -0x53t
        -0x2dt
        0x5at
        0x77t
        -0x48t
        -0x34t
        -0x1et
        -0x78t
        -0x4dt
        -0x5bt
        -0x3t
        -0xft
        -0x2dt
        0xct
        -0x33t
        0x18t
        0xct
        -0x18t
        0x41t
        0x46t
        -0x18t
        -0x7ft
        0x1t
        0x1bt
        0x15t
        -0x1ft
        0x4bt
        -0xft
        0x1bt
        0x62t
        -0x23t
        0x36t
        0xat
        0x8t
        0x18t
        -0x46t
        -0x13t
        0xbt
        0x35t
        -0x7ct
        -0x30t
        -0x62t
        0x40t
        0x3ct
        0x2dt
        -0x62t
        -0x65t
        -0x7et
        0x65t
        -0x43t
        0x1ft
        0x4t
        0x10t
        0x41t
        0x4ct
        -0x60t
    .end array-data

    :array_1
    .array-data 1
        0x30t
        0x59t
        0x30t
        0x13t
        0x6t
        0x7t
        0x2at
        -0x7at
        0x48t
        -0x32t
        0x3dt
        0x2t
        0x1t
        0x6t
        0x8t
        0x2at
        -0x7at
        0x48t
        -0x32t
        0x3dt
        0x3t
        0x1t
        0x7t
        0x3t
        0x42t
        0x0t
        0x4t
        -0x29t
        -0xct
        -0x34t
        0x69t
        -0x4et
        -0x1ct
        0xet
        -0x70t
        -0x5dt
        -0x76t
        -0x16t
        0x5at
        0x70t
        0x9t
        0x4ft
        -0x11t
        0x13t
        0x62t
        -0x30t
        -0x73t
        0x49t
        0x60t
        -0x1t
        0x1bt
        0x40t
        0x50t
        0x7t
        0xct
        0x6dt
        0x71t
        -0x7at
        -0x26t
        0x25t
        0x49t
        -0x73t
        0x65t
        -0x1ft
        0x8t
        0xdt
        0x47t
        0x34t
        0x6bt
        -0x43t
        0x27t
        -0x44t
        -0x6at
        0x21t
        0x3et
        0x34t
        -0xbt
        -0x79t
        0x76t
        0x31t
        -0x4ft
        0x7ft
        0x1dt
        -0x37t
        -0x7bt
        0x3bt
        0xdt
        -0x9t
        0x1ft
        0x3ft
        -0x17t
    .end array-data

    :array_2
    .array-data 1
        0x30t
        0x59t
        0x30t
        0x13t
        0x6t
        0x7t
        0x2at
        -0x7at
        0x48t
        -0x32t
        0x3dt
        0x2t
        0x1t
        0x6t
        0x8t
        0x2at
        -0x7at
        0x48t
        -0x32t
        0x3dt
        0x3t
        0x1t
        0x7t
        0x3t
        0x42t
        0x0t
        0x4t
        0x2t
        0x46t
        -0x3bt
        -0x42t
        0x1bt
        -0x45t
        -0x7et
        0x40t
        0x16t
        -0x18t
        -0x3ft
        -0x2et
        -0x54t
        0x19t
        0x69t
        0x13t
        0x59t
        -0x8t
        -0x8t
        0x70t
        -0x7bt
        0x46t
        0x40t
        -0x47t
        0x38t
        -0x50t
        0x23t
        -0x7et
        -0x58t
        0x64t
        0x4ct
        0x7ft
        -0x41t
        -0x45t
        0x34t
        -0x61t
        0x4at
        0x5ft
        0x28t
        -0x76t
        -0x31t
        0x19t
        -0x3ct
        0x0t
        -0xat
        0x36t
        0x6t
        -0x6dt
        0x65t
        -0x13t
        0x4ct
        -0xbt
        -0x57t
        0x21t
        0x62t
        0x5at
        -0x28t
        -0x6ft
        -0x15t
        0x38t
        0x24t
        0x40t
        -0x54t
        -0x18t
    .end array-data

    :array_3
    .array-data 1
        0x30t
        0x59t
        0x30t
        0x13t
        0x6t
        0x7t
        0x2at
        -0x7at
        0x48t
        -0x32t
        0x3dt
        0x2t
        0x1t
        0x6t
        0x8t
        0x2at
        -0x7at
        0x48t
        -0x32t
        0x3dt
        0x3t
        0x1t
        0x7t
        0x3t
        0x42t
        0x0t
        0x4t
        0x20t
        0x5bt
        0x18t
        -0x38t
        0x3ct
        -0x3ft
        -0x75t
        -0x4dt
        0x31t
        0x8t
        0x0t
        -0x41t
        -0x60t
        -0x70t
        0x57t
        0x2bt
        -0x49t
        0x47t
        -0x74t
        0x6ft
        -0x4bt
        0x68t
        -0x50t
        -0x72t
        -0x70t
        0x78t
        -0x17t
        -0x60t
        0x73t
        -0x16t
        0x4ft
        0x28t
        0x21t
        0x2et
        -0x64t
        -0x40t
        -0xct
        0x16t
        0x1bt
        -0x56t
        -0x7t
        -0x2bt
        -0x29t
        -0x57t
        -0x80t
        -0x3dt
        0x4et
        0x2ft
        0x52t
        0x3ct
        -0x68t
        0x1t
        0x25t
        0x46t
        0x24t
        0x25t
        0x28t
        0x23t
        0x77t
        0x2dt
        0x5t
        -0x3et
        0x40t
        0x7at
    .end array-data

    :array_4
    .array-data 1
        0x30t
        0x59t
        0x30t
        0x13t
        0x6t
        0x7t
        0x2at
        -0x7at
        0x48t
        -0x32t
        0x3dt
        0x2t
        0x1t
        0x6t
        0x8t
        0x2at
        -0x7at
        0x48t
        -0x32t
        0x3dt
        0x3t
        0x1t
        0x7t
        0x3t
        0x42t
        0x0t
        0x4t
        0xbt
        0x23t
        -0x35t
        -0x7bt
        0x62t
        -0x68t
        0x61t
        0x48t
        0x4t
        0x73t
        -0x15t
        0x54t
        0x5dt
        -0xdt
        -0x30t
        0x7t
        -0x74t
        0x2dt
        0x19t
        0x2dt
        -0x74t
        0x36t
        -0xbt
        -0x15t
        -0x71t
        0x1t
        0x42t
        0xat
        0x7ct
        -0x68t
        0x26t
        0x27t
        -0x3ft
        -0x4bt
        -0x23t
        -0x6et
        -0x6dt
        -0x50t
        -0x52t
        -0x8t
        -0x65t
        0x3dt
        0xct
        -0x28t
        0x4ct
        0x4et
        0x1dt
        -0x7t
        0x15t
        -0x5t
        0x47t
        0x68t
        0x7bt
        -0x46t
        0x66t
        -0x49t
        0x25t
        -0x64t
        -0x30t
        0x4at
        -0x3et
        0x66t
        -0x25t
        0x48t
    .end array-data

    :array_5
    .array-data 1
        0x30t
        0x59t
        0x30t
        0x13t
        0x6t
        0x7t
        0x2at
        -0x7at
        0x48t
        -0x32t
        0x3dt
        0x2t
        0x1t
        0x6t
        0x8t
        0x2at
        -0x7at
        0x48t
        -0x32t
        0x3dt
        0x3t
        0x1t
        0x7t
        0x3t
        0x42t
        0x0t
        0x4t
        0x27t
        0x64t
        0x39t
        0xct
        0x2dt
        -0x24t
        0x50t
        0x18t
        -0x8t
        0x21t
        0x0t
        -0x5et
        0xet
        -0x13t
        0x2ct
        -0x16t
        0x3et
        0x75t
        -0x46t
        -0x61t
        -0x6dt
        0x64t
        0x9t
        0x0t
        0x11t
        -0x3ct
        0x11t
        0x17t
        -0x55t
        0x5ct
        -0x31t
        0xft
        0x74t
        -0x54t
        -0x4bt
        -0x69t
        -0x70t
        -0x6dt
        0x0t
        0x5bt
        -0x48t
        -0x15t
        -0x9t
        0x27t
        0x3dt
        -0x27t
        -0x4et
        0xat
        -0x7ft
        0x5ft
        0x2ft
        0xdt
        0x75t
        0x38t
        -0x6ct
        0x37t
        -0x67t
        0x1et
        -0xat
        0x7t
        0x76t
        -0x20t
        -0x12t
        -0x42t
    .end array-data

    :array_6
    .array-data 1
        0x30t
        0x59t
        0x30t
        0x13t
        0x6t
        0x7t
        0x2at
        -0x7at
        0x48t
        -0x32t
        0x3dt
        0x2t
        0x1t
        0x6t
        0x8t
        0x2at
        -0x7at
        0x48t
        -0x32t
        0x3dt
        0x3t
        0x1t
        0x7t
        0x3t
        0x42t
        0x0t
        0x4t
        -0x6at
        -0x16t
        -0x54t
        0x1ct
        0x46t
        0xct
        0x1bt
        0x55t
        -0x24t
        0xdt
        -0x4t
        -0x4bt
        -0x6ct
        0x27t
        0x46t
        0x57t
        0x42t
        0x70t
        0x3at
        0x69t
        0x18t
        -0x1et
        -0x41t
        0x3bt
        -0x3ct
        -0x25t
        -0x55t
        -0x60t
        -0xct
        -0x4at
        0x6ct
        -0x40t
        0x53t
        0x3ft
        0x4dt
        0x42t
        0x10t
        0x33t
        -0x10t
        0x58t
        -0x69t
        -0x71t
        0x6bt
        -0x42t
        0x72t
        -0xct
        0x2at
        -0x14t
        0x1ct
        0x42t
        -0x56t
        0x3t
        0x2ft
        0x1at
        0x7et
        0x28t
        0x35t
        0x76t
        -0x67t
        0x8t
        0x3dt
        0x21t
        0x14t
        -0x7at
    .end array-data

    :array_7
    .array-data 1
        0x30t
        -0x7et
        0x1t
        0x22t
        0x30t
        0xdt
        0x6t
        0x9t
        0x2at
        -0x7at
        0x48t
        -0x7at
        -0x9t
        0xdt
        0x1t
        0x1t
        0x1t
        0x5t
        0x0t
        0x3t
        -0x7et
        0x1t
        0xft
        0x0t
        0x30t
        -0x7et
        0x1t
        0xat
        0x2t
        -0x7et
        0x1t
        0x1t
        0x0t
        -0x5et
        0x5at
        0x48t
        0x1ft
        0x17t
        0x52t
        -0x6bt
        0x35t
        -0x35t
        -0x5dt
        0x5bt
        0x3at
        0x1ft
        0x53t
        -0x7et
        0x76t
        -0x6ct
        -0x5dt
        -0x1t
        -0x80t
        -0xet
        0x1ct
        0x37t
        0x3ct
        -0x40t
        -0x4ft
        -0x43t
        -0x3ft
        0x59t
        -0x75t
        -0x55t
        0x2dt
        0x65t
        -0x6dt
        -0x29t
        -0xdt
        -0x20t
        0x4t
        -0x2bt
        -0x66t
        0x6ft
        -0x41t
        -0x2at
        0x23t
        0x76t
        0x36t
        0x4ft
        0x23t
        -0x67t
        -0x35t
        0x54t
        0x28t
        -0x53t
        -0x74t
        0x15t
        0x4bt
        0x65t
        0x59t
        0x76t
        0x41t
        0x4at
        -0x64t
        -0x5at
        -0x9t
        -0x4dt
        0x3bt
        0x7et
        -0x4ft
        -0x5bt
        0x49t
        -0x5ct
        0x17t
        0x51t
        0x6ct
        -0x80t
        -0x24t
        0x2at
        -0x70t
        0x50t
        0x4bt
        -0x78t
        0x24t
        -0x17t
        -0x5bt
        0x12t
        0x32t
        -0x6dt
        0x4t
        0x48t
        -0x70t
        0x2t
        -0x6t
        0x5ft
        0xet
        0x30t
        -0x79t
        -0x72t
        0x55t
        0x76t
        0x5t
        -0x12t
        0x2at
        0x4ct
        -0x32t
        -0x5dt
        0x6at
        0x69t
        0x9t
        0x6et
        0x25t
        -0x53t
        -0x7et
        0x76t
        0xft
        -0x7ct
        -0x6et
        -0x6t
        0x38t
        -0x2at
        -0x7at
        0x4et
        0x24t
        -0x71t
        -0x65t
        -0x50t
        0x72t
        -0x35t
        -0x62t
        -0x1et
        0x6bt
        0x3ft
        -0x1ft
        0x6dt
        -0x37t
        0x25t
        0x75t
        0x23t
        -0x78t
        -0x5ft
        0x18t
        0x58t
        0x6t
        0x23t
        0x33t
        0x78t
        -0x26t
        0x0t
        -0x30t
        0x38t
        -0x6ft
        0x67t
        -0x2et
        -0x5at
        0x7dt
        0x27t
        -0x69t
        0x67t
        0x5at
        -0x3ft
        -0xdt
        0x2ft
        0x17t
        -0x1at
        -0x16t
        -0x2et
        0x5bt
        -0x18t
        -0x7ft
        -0x33t
        -0x3t
        -0x6et
        0x68t
        -0x19t
        -0xdt
        0x6t
        -0x10t
        -0x17t
        0x72t
        -0x7ct
        -0x12t
        0x1t
        -0x5bt
        -0x4ft
        -0x28t
        0x33t
        -0x26t
        -0x32t
        -0x7dt
        -0x5bt
        -0x25t
        -0x39t
        -0x31t
        -0x2at
        0x16t
        0x7et
        -0x70t
        0x75t
        0x18t
        -0x41t
        0x16t
        -0x24t
        0x32t
        0x3bt
        0x6dt
        -0x73t
        -0x55t
        -0x7et
        0x17t
        0x1ft
        -0x77t
        0x20t
        -0x73t
        0x1dt
        -0x66t
        -0x1at
        0x4dt
        0x23t
        0x8t
        -0x21t
        0x78t
        0x6ft
        -0x3at
        0x5t
        -0x41t
        0x5ft
        -0x52t
        -0x6ct
        -0x69t
        -0x25t
        0x5ft
        0x64t
        -0x2ct
        -0x12t
        0x16t
        -0x75t
        -0x5dt
        -0x7ct
        0x6ct
        0x71t
        0x2bt
        -0xft
        -0x55t
        0x7ft
        0x5dt
        0xdt
        0x32t
        -0x12t
        0x4t
        -0x1et
        -0x70t
        -0x14t
        0x41t
        -0x61t
        -0x5t
        0x39t
        -0x3ft
        0x2t
        0x3t
        0x1t
        0x0t
        0x1t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
