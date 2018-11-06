.class public Lcom/samsung/android/server/wifi/sns/SnsBigDataWFMH;
.super Lcom/samsung/android/server/wifi/sns/SnsBigDataFeature;
.source "SnsBigDataWFMH.java"


# static fields
.field public static final KEY_MH_CONNECTION_STATUS:Ljava/lang/String; = "MHCT"

.field public static final KEY_MH_DAILY_COUNT:Ljava/lang/String; = "MHDC"

.field public static final KEY_MH_HASH_PRIMARY:Ljava/lang/String; = "MHHP"

.field public static final KEY_MH_HASH_SECONDARY:Ljava/lang/String; = "MHHS"

.field public static final KEY_MH_INTERNET_CONNECTION:Ljava/lang/String; = "MHIC"

.field public static final KEY_MH_OUI_PRIMARY:Ljava/lang/String; = "MHOP"

.field public static final KEY_MH_OUI_SECONDARY:Ljava/lang/String; = "MHOS"

.field public static final KEY_MH_SAME_COUNT:Ljava/lang/String; = "MHSC"

.field public static final KEY_MH_SECURITY_TYPE:Ljava/lang/String; = "MHST"

.field public static final KEY_MH_SERVER_INDEX:Ljava/lang/String; = "MHSI"

.field public static final KEY_MH_TYPE:Ljava/lang/String; = "MTYP"

.field private static final KEY_MH_VERSION:Ljava/lang/String; = "MVER"

.field private static final WFMH:[[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/16 v0, 0xc

    new-array v0, v0, [[Ljava/lang/String;

    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "MVER"

    aput-object v2, v1, v3

    const-string/jumbo v2, "2017091800"

    aput-object v2, v1, v4

    aput-object v1, v0, v3

    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "MTYP"

    aput-object v2, v1, v3

    const-string/jumbo v2, "0"

    aput-object v2, v1, v4

    aput-object v1, v0, v4

    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "MHCT"

    aput-object v2, v1, v3

    const-string/jumbo v2, "-1"

    aput-object v2, v1, v4

    aput-object v1, v0, v5

    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "MHST"

    aput-object v2, v1, v3

    const-string/jumbo v2, "-1"

    aput-object v2, v1, v4

    const/4 v2, 0x3

    aput-object v1, v0, v2

    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "MHOP"

    aput-object v2, v1, v3

    const-string/jumbo v2, "ff:ff:ff"

    aput-object v2, v1, v4

    const/4 v2, 0x4

    aput-object v1, v0, v2

    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "MHOS"

    aput-object v2, v1, v3

    const-string/jumbo v2, "ff:ff:ff"

    aput-object v2, v1, v4

    const/4 v2, 0x5

    aput-object v1, v0, v2

    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "MHSC"

    aput-object v2, v1, v3

    const-string/jumbo v2, "-1"

    aput-object v2, v1, v4

    const/4 v2, 0x6

    aput-object v1, v0, v2

    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "MHSI"

    aput-object v2, v1, v3

    const-string/jumbo v2, "-1"

    aput-object v2, v1, v4

    const/4 v2, 0x7

    aput-object v1, v0, v2

    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "MHHP"

    aput-object v2, v1, v3

    const-string/jumbo v2, "-1"

    aput-object v2, v1, v4

    const/16 v2, 0x8

    aput-object v1, v0, v2

    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "MHHS"

    aput-object v2, v1, v3

    const-string/jumbo v2, "-1"

    aput-object v2, v1, v4

    const/16 v2, 0x9

    aput-object v1, v0, v2

    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "MHIC"

    aput-object v2, v1, v3

    const-string/jumbo v2, "-1"

    aput-object v2, v1, v4

    const/16 v2, 0xa

    aput-object v1, v0, v2

    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "MHDC"

    aput-object v2, v1, v3

    const-string/jumbo v2, "-1"

    aput-object v2, v1, v4

    const/16 v2, 0xb

    aput-object v1, v0, v2

    sput-object v0, Lcom/samsung/android/server/wifi/sns/SnsBigDataWFMH;->WFMH:[[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/sns/SnsBigDataFeature;-><init>()V

    return-void
.end method

.method public constructor <init>(ZLjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/sns/SnsBigDataFeature;-><init>(ZLjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getJsonFormat()Ljava/lang/String;
    .locals 5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    :try_start_0
    sget-object v2, Lcom/samsung/android/server/wifi/sns/SnsBigDataWFMH;->WFMH:[[Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/samsung/android/server/wifi/sns/SnsBigDataWFMH;->getKeyValueStrings([[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/samsung/android/server/wifi/sns/SnsBigDataWFMH;->DBG:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/server/wifi/sns/SnsBigDataWFMH;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getJsonFormat - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    :catch_0
    move-exception v0

    sget-boolean v2, Lcom/samsung/android/server/wifi/sns/SnsBigDataWFMH;->DBG:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/server/wifi/sns/SnsBigDataWFMH;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Exception occured on getJsonFormat - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
