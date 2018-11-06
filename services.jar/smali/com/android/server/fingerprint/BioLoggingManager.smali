.class public Lcom/android/server/fingerprint/BioLoggingManager;
.super Ljava/lang/Object;
.source "BioLoggingManager.java"


# static fields
.field public static final DEBUG:Z

.field private static final LOG_ARRAY_SIZE:I

.field public static final RESULT_ETC:Ljava/lang/String; = ""

.field public static final RESULT_EXCEPTION:Ljava/lang/String; = "E"

.field public static final RESULT_FAIL:Ljava/lang/String; = "F"

.field public static final RESULT_MATCH:Ljava/lang/String; = "M"

.field public static final RESULT_NO_MATCH:Ljava/lang/String; = "N"

.field public static final RESULT_SUCCESS:Ljava/lang/String; = "S"

.field public static final RESULT_TIMEOUT:Ljava/lang/String; = "T"

.field private static final TAG:Ljava/lang/String; = "FingerprintService"

.field public static final TYPE_AUTHENTICATE:Ljava/lang/String; = "A"

.field public static final TYPE_ENROLL:Ljava/lang/String; = "E"

.field public static final TYPE_REMOVE:Ljava/lang/String; = "R"

.field private static sLogList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sPackageName:Ljava/lang/String;

.field private static sRequestTimestamp:J

.field private static sType:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/android/server/fingerprint/BioLoggingManager;->DEBUG:Z

    sget-boolean v0, Lcom/android/server/fingerprint/BioLoggingManager;->DEBUG:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x32

    :goto_0
    sput v0, Lcom/android/server/fingerprint/BioLoggingManager;->LOG_ARRAY_SIZE:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/fingerprint/BioLoggingManager;->sLogList:Ljava/util/ArrayList;

    sput-object v1, Lcom/android/server/fingerprint/BioLoggingManager;->sPackageName:Ljava/lang/String;

    sput-object v1, Lcom/android/server/fingerprint/BioLoggingManager;->sType:Ljava/lang/String;

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/android/server/fingerprint/BioLoggingManager;->sRequestTimestamp:J

    return-void

    :cond_0
    const/16 v0, 0x14

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getDateFromTime(J)Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "MM/dd HH:mm:ss.sss"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static readLog()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/android/server/fingerprint/BioLoggingManager;->sLogList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static setResult(Ljava/lang/String;)V
    .locals 12

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    :try_start_0
    sget-wide v6, Lcom/android/server/fingerprint/BioLoggingManager;->sRequestTimestamp:J

    sub-long v0, v4, v6

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    const-string/jumbo v7, "%s, %s, %s, %s, %d, %s"

    const/4 v8, 0x6

    new-array v8, v8, [Ljava/lang/Object;

    sget-object v9, Lcom/android/server/fingerprint/BioLoggingManager;->sType:Ljava/lang/String;

    const/4 v10, 0x0

    aput-object v9, v8, v10

    sget-object v9, Lcom/android/server/fingerprint/BioLoggingManager;->sPackageName:Ljava/lang/String;

    const/4 v10, 0x1

    aput-object v9, v8, v10

    sget-wide v10, Lcom/android/server/fingerprint/BioLoggingManager;->sRequestTimestamp:J

    invoke-static {v10, v11}, Lcom/android/server/fingerprint/BioLoggingManager;->getDateFromTime(J)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x2

    aput-object v9, v8, v10

    invoke-static {v4, v5}, Lcom/android/server/fingerprint/BioLoggingManager;->getDateFromTime(J)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x3

    aput-object v9, v8, v10

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    const/4 v10, 0x4

    aput-object v9, v8, v10

    const/4 v9, 0x5

    aput-object p0, v8, v9

    invoke-static {v6, v7, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    sget-object v6, Lcom/android/server/fingerprint/BioLoggingManager;->sLogList:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    sget-object v6, Lcom/android/server/fingerprint/BioLoggingManager;->sLogList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    sget v7, Lcom/android/server/fingerprint/BioLoggingManager;->LOG_ARRAY_SIZE:I

    if-lt v6, v7, :cond_0

    sget-object v6, Lcom/android/server/fingerprint/BioLoggingManager;->sLogList:Ljava/util/ArrayList;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const-string/jumbo v6, "FingerprintService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Failed to set log info : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static setStartTime(J)V
    .locals 0

    sput-wide p0, Lcom/android/server/fingerprint/BioLoggingManager;->sRequestTimestamp:J

    return-void
.end method

.method public static setType(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    sput-object p0, Lcom/android/server/fingerprint/BioLoggingManager;->sType:Ljava/lang/String;

    sput-object p1, Lcom/android/server/fingerprint/BioLoggingManager;->sPackageName:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/fingerprint/BioLoggingManager;->sRequestTimestamp:J

    return-void
.end method
