.class public Lcom/samsung/android/hqm/BigDataSetting;
.super Ljava/lang/Object;
.source "BigDataSetting.java"


# static fields
.field public static final BINARY_FACTORY:I = 0x2

.field public static final BINARY_USER_NO_SHIP:I = 0x0

.field public static final BINARY_USER_SHIP:I = 0x1

.field public static final HQM_INTERFACE_API:I = 0x1

.field public static final HQM_INTERFACE_INTENT:I = 0x2

.field public static final HQM_INTERFACE_KERNEL:I = 0x0

.field public static final HQM_INTERFACE_UNKNOWN:I = -0x1

.field public static binaryType:I

.field public static isEng:Z

.field public static isFactoryBinary:Z

.field public static isUserDebug:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/samsung/android/hqm/BigDataSetting;->binaryType:I

    sput-boolean v0, Lcom/samsung/android/hqm/BigDataSetting;->isEng:Z

    sput-boolean v0, Lcom/samsung/android/hqm/BigDataSetting;->isUserDebug:Z

    invoke-static {}, Landroid/os/FactoryTest;->isFactoryBinary()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/hqm/BigDataSetting;->isFactoryBinary:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
